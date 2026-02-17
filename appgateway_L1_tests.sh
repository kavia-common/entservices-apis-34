#!/usr/bin/env bash
set -euo pipefail

# -----------------------------------------------------------------------------
# appgateway_L1_tests.sh
#
# Purpose:
#   Container-friendly helper script implementing the *discussed 16-step*
#   workflow for AppGateway L1 prerequisites/build dependencies in environments
#   where GitHub Actions runner/container creation is not possible.
#
# Key goals:
#   - Mirror the 16 workflow steps and log them clearly.
#   - Be non-interactive (apt, git).
#   - Best-effort for checkouts if repos already exist.
#
# Workspace/layout note:
#   GitHub workflow assumes sibling repos:
#     Thunder/, ThunderTools/, entservices-testframework/, entservices-apis/, googletest/
#   next to entservices-appgateway (this repo).
#   This script will look in /home/kavia/workspace/code-generation by default.
# -----------------------------------------------------------------------------

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_DIR="${SCRIPT_DIR}"

# Adjust if your umbrella workspace is elsewhere.
WORKSPACE_ROOT_DEFAULT="/home/kavia/workspace/code-generation"
WORKSPACE_ROOT="${WORKSPACE_ROOT:-${WORKSPACE_ROOT_DEFAULT}}"

# Expected sibling repo directories (under WORKSPACE_ROOT)
THUNDER_DIR="${THUNDER_DIR:-${WORKSPACE_ROOT}/Thunder}"
THUNDERTOOLS_DIR="${THUNDERTOOLS_DIR:-${WORKSPACE_ROOT}/ThunderTools}"
TESTFW_DIR="${TESTFW_DIR:-${WORKSPACE_ROOT}/entservices-testframework}"
APIS_DIR="${APIS_DIR:-${WORKSPACE_ROOT}/entservices-apis}"
GTEST_DIR="${GTEST_DIR:-${WORKSPACE_ROOT}/googletest}"

# Install prefix (matches common "install/usr" patterns used in workflows)
INSTALL_ROOT="${INSTALL_ROOT:-${WORKSPACE_ROOT}/install}"
INSTALL_USR="${INSTALL_ROOT}/usr"

# Central build output dir
BUILD_ROOT="${BUILD_ROOT:-${WORKSPACE_ROOT}/build}"

log() { echo "==> $*"; }
warn() { echo "WARNING: $*" >&2; }
err() { echo "ERROR: $*" >&2; }

have_cmd() { command -v "$1" >/dev/null 2>&1; }
is_root() { [[ "${EUID:-$(id -u)}" -eq 0 ]]; }

apt_can_run() {
  if is_root; then return 0; fi
  if have_cmd sudo; then return 0; fi
  return 1
}

apt_get() {
  local -a cmd
  if is_root; then
    cmd=(apt-get)
  else
    cmd=(sudo -n apt-get)
  fi

  DEBIAN_FRONTEND=noninteractive "${cmd[@]}" -y \
    -o Dpkg::Options::="--force-confnew" \
    -o Dpkg::Options::="--force-confdef" \
    "$@"
}

run_best_effort() {
  # Usage: run_best_effort "description" command...
  local desc="$1"
  shift
  (
    set +e
    "$@"
  )
  local rc=$?
  if [[ $rc -ne 0 ]]; then
    warn "${desc} failed with exit code ${rc} (non-fatal)."
  fi
  return 0
}

git_noninteractive_env() {
  export GIT_TERMINAL_PROMPT=0
  export GIT_ASKPASS=/bin/false
}

ensure_repo() {
  # Ensure a git repo exists at $1. If missing, clone $2 at ref $3 (branch/tag).
  # Usage: ensure_repo /path https://url ref
  local dir="$1"
  local url="$2"
  local ref="$3"

  if [[ -d "${dir}/.git" || -f "${dir}/CMakeLists.txt" ]]; then
    log "Repo present: ${dir}"
    return 0
  fi

  if ! have_cmd git; then
    warn "git not available; cannot clone ${url} into ${dir}."
    return 1
  fi

  git_noninteractive_env

  log "Cloning ${url} -> ${dir} (ref: ${ref})"
  mkdir -p "$(dirname "${dir}")"
  rm -rf "${dir}"
  if ! git clone --depth 1 --branch "${ref}" "${url}" "${dir}"; then
    warn "Clone failed for ${url} (non-fatal if repo is already available elsewhere)."
    return 1
  fi
  return 0
}

ensure_symlink_layout() {
  # Workflow expects entservices-appgateway/ at workspace root.
  # If our repo dir isn't that path, create a symlink.
  local expected="${WORKSPACE_ROOT}/entservices-appgateway"
  if [[ "${REPO_DIR}" == "${expected}" ]]; then
    return 0
  fi
  if [[ -e "${expected}" ]]; then
    # If exists but isn't our repo, don't touch it.
    warn "Path ${expected} already exists; not modifying. (Current repo: ${REPO_DIR})"
    return 0
  fi
  log "Creating symlink for workflow layout: ${expected} -> ${REPO_DIR}"
  ln -s "${REPO_DIR}" "${expected}"
}

apply_patch_dir() {
  # Apply a patch to a repo directory if not already applied.
  # Usage: apply_patch_dir /repo /path/to/patch -pN
  local repo_dir="$1"
  local patch_file="$2"
  local p_level="$3"

  if [[ ! -f "${patch_file}" ]]; then
    warn "Patch file not found: ${patch_file}"
    return 1
  fi
  if [[ ! -d "${repo_dir}" ]]; then
    warn "Repo dir not found for patch: ${repo_dir}"
    return 1
  fi
  if ! have_cmd patch; then
    warn "patch command not available; cannot apply ${patch_file}"
    return 1
  fi

  log "Applying patch: ${patch_file} -> ${repo_dir}"
  (
    cd "${repo_dir}"
    # -N avoids reapplying; if already applied it returns non-zero, treat as best-effort.
    patch "${p_level}" -N < "${patch_file}"
  )
}

cmake_configure_build_install() {
  # Configure/build/install a cmake project using Ninja if available.
  # Usage: cmake_configure_build_install src_dir build_dir install_prefix extra_cmake_args...
  local src_dir="$1"
  local build_dir="$2"
  local install_prefix="$3"
  shift 3
  local -a extra_args=("$@")

  if [[ ! -d "${src_dir}" ]]; then
    err "CMake source directory not found: ${src_dir}"
    return 1
  fi

  mkdir -p "${build_dir}" "${install_prefix}"

  local -a gen_args=()
  if have_cmd ninja; then
    gen_args=(-G Ninja)
  fi

  log "CMake configure: -S ${src_dir} -B ${build_dir} -DCMAKE_INSTALL_PREFIX=${install_prefix}"
  cmake "${gen_args[@]}" -S "${src_dir}" -B "${build_dir}" \
    -DCMAKE_BUILD_TYPE=Debug \
    -DCMAKE_INSTALL_PREFIX="${install_prefix}" \
    "${extra_args[@]}"

  log "CMake build: ${build_dir}"
  cmake --build "${build_dir}" -- -j"$(getconf _NPROCESSORS_ONLN 2>/dev/null || echo 2)"

  log "CMake install: ${build_dir}"
  cmake --install "${build_dir}"
}

# -----------------------------------------------------------------------------
# Step 1: Set up cache (SKIP)
# -----------------------------------------------------------------------------
log "[Step 1] Set up cache (SKIP)"
log "Reason: GitHub Actions cache only."

# -----------------------------------------------------------------------------
# Step 2: Set up Python + pip install jsonref
# -----------------------------------------------------------------------------
log "[Step 2] Set up Python + pip install jsonref"

if ! have_cmd python3; then
  err "python3 is not available on PATH"
  exit 1
fi
if ! python3 -m pip --version >/dev/null 2>&1; then
  err "pip for python3 is not available (python3 -m pip failed)"
  err "Hint: install python3-pip in the container base image."
  exit 1
fi
echo "Python: $(python3 --version)"
echo "Pip: $(python3 -m pip --version)"
python3 -m pip install --user -q jsonref
python3 -c "import jsonref; print('jsonref', getattr(jsonref, '__version__', 'unknown'))"
log "[OK] Python/pip/jsonref are ready"

# -----------------------------------------------------------------------------
# Step 3: ACK External Trigger (OPTIONAL echo/log)
# -----------------------------------------------------------------------------
log "[Step 3] ACK External Trigger (OPTIONAL)"
log "ACK external trigger: N/A in container run. (Non-blocking step.)"

# -----------------------------------------------------------------------------
# Step 4: Set up CMake (Skip if already installed)
# -----------------------------------------------------------------------------
log "[Step 4] Set up CMake (Skip if already installed)"
if have_cmd cmake; then
  echo "CMake: $(cmake --version | head -n 1)"
else
  warn "cmake not found."
  if apt_can_run; then
    log "Installing cmake via apt-get..."
    apt_get update
    apt_get install cmake
    echo "CMake: $(cmake --version | head -n 1)"
  else
    warn "Cannot install cmake (not root and sudo not available)."
  fi
fi

if have_cmd ninja; then
  echo "Ninja: $(ninja --version)"
else
  warn "ninja not found."
  if apt_can_run; then
    log "Installing ninja-build via apt-get..."
    apt_get update
    apt_get install ninja-build
    echo "Ninja: $(ninja --version)"
  else
    warn "Cannot install ninja-build (not root and sudo not available)."
  fi
fi

# -----------------------------------------------------------------------------
# Step 5: Install packages
# -----------------------------------------------------------------------------
log "[Step 5] Install packages"

APT_PACKAGES=(
  libsqlite3-dev
  libcurl4-openssl-dev
  valgrind
  lcov
  clang
  libsystemd-dev
  libboost-all-dev
  libwebsocketpp-dev
  meson
  libcunit1
  libcunit1-dev
  curl
  protobuf-compiler-grpc
  libgrpc-dev
  libgrpc++-dev
  libjsoncpp-dev
  git
  pkg-config
  patch
)

if apt_can_run; then
  log "Updating apt indexes and installing dependencies (non-interactive)..."
  apt_get update
  apt_get install "${APT_PACKAGES[@]}"
  log "[OK] apt packages installed"
else
  warn "Skipping apt package install: not root and sudo not available."
  warn "If compilation fails, ensure these are present:"
  printf '  - %s\n' "${APT_PACKAGES[@]}" >&2
fi

# -----------------------------------------------------------------------------
# Step 6: Build trower-base64
# -----------------------------------------------------------------------------
log "[Step 6] Build trower-base64"

(
  set +e

  if ls /usr/local/include 2>/dev/null | grep -qi "base64" || ls /usr/include 2>/dev/null | grep -qi "base64"; then
    log "trower-base64 appears installed already (headers found). Skipping."
    exit 0
  fi

  if ! have_cmd git; then
    warn "git not available; cannot clone trower-base64. Skipping."
    exit 0
  fi
  if ! have_cmd meson || ! have_cmd ninja; then
    warn "meson and/or ninja not available; cannot build trower-base64. Skipping."
    exit 0
  fi

  if ! apt_can_run && ! is_root; then
    warn "Not root and sudo not available; cannot install system-wide. Skipping."
    exit 0
  fi

  TROWER_DIR="${WORKSPACE_ROOT}/.deps/trower-base64"
  git_noninteractive_env

  if [[ ! -d "${TROWER_DIR}/.git" ]]; then
    log "Cloning trower-base64 -> ${TROWER_DIR}"
    rm -rf "${TROWER_DIR}"
    mkdir -p "$(dirname "${TROWER_DIR}")"
    if ! git clone --depth 1 https://github.com/tdunning/trower-base64.git "${TROWER_DIR}"; then
      warn "Clone failed (non-fatal)."
      exit 0
    fi
  fi

  log "Building trower-base64 with meson/ninja..."
  pushd "${TROWER_DIR}" >/dev/null || exit 0
  if [[ -d build ]]; then
    meson setup build --reconfigure >/dev/null 2>&1 || { warn "meson reconfigure failed"; popd >/dev/null; exit 0; }
  else
    meson setup build >/dev/null 2>&1 || { warn "meson setup failed"; popd >/dev/null; exit 0; }
  fi
  ninja -C build || { warn "ninja build failed"; popd >/dev/null; exit 0; }

  log "Installing trower-base64..."
  if is_root; then
    ninja -C build install || warn "install failed"
  else
    sudo -n ninja -C build install || warn "install via sudo failed"
  fi
  popd >/dev/null
  exit 0
) || true

# -----------------------------------------------------------------------------
# Step 7: Checkout Thunder (R4.4.1)
# -----------------------------------------------------------------------------
log "[Step 7] Checkout Thunder (Ensure Thunder/ exists at R4.4.1)"
ensure_repo "${THUNDER_DIR}" "https://github.com/rdkcentral/Thunder.git" "R4.4.1" || true

# -----------------------------------------------------------------------------
# Step 8: Checkout ThunderTools (R4.4.3)
# -----------------------------------------------------------------------------
log "[Step 8] Checkout ThunderTools (Ensure ThunderTools/ exists at R4.4.3)"
ensure_repo "${THUNDERTOOLS_DIR}" "https://github.com/rdkcentral/ThunderTools.git" "R4.4.3" || true

# -----------------------------------------------------------------------------
# Step 9: Checkout entservices-testframework (develop)
# -----------------------------------------------------------------------------
log "[Step 9] Checkout entservices-testframework (Ensure exists: develop)"
# Repo URL may differ in your environment; if already present, this is skipped.
ensure_repo "${TESTFW_DIR}" "https://github.com/rdkcentral/entservices-testframework.git" "develop" || true

# -----------------------------------------------------------------------------
# Step 10: Checkout entservices-appgateway (this repo) / layout alignment
# -----------------------------------------------------------------------------
log "[Step 10] Checkout entservices-appgateway (Use local repo checkout)"
echo "This repo: ${REPO_DIR}"
echo "Workspace root: ${WORKSPACE_ROOT}"
ensure_symlink_layout

# -----------------------------------------------------------------------------
# Step 11: Checkout googletest (v1.15.0)
# -----------------------------------------------------------------------------
log "[Step 11] Checkout googletest (Ensure exists at v1.15.0)"
ensure_repo "${GTEST_DIR}" "https://github.com/google/googletest.git" "v1.15.0" || true

# -----------------------------------------------------------------------------
# Step 12: Apply patches ThunderTools
# -----------------------------------------------------------------------------
log "[Step 12] Apply patches ThunderTools"
if [[ -d "${TESTFW_DIR}/patches" ]]; then
  run_best_effort "ThunderTools patch" apply_patch_dir \
    "${THUNDERTOOLS_DIR}" \
    "${TESTFW_DIR}/patches/00010-R4.4-Add-support-for-project-dir.patch" \
    "-p1"
else
  warn "Testframework patches dir not found at ${TESTFW_DIR}/patches; cannot apply ThunderTools patch."
fi

# -----------------------------------------------------------------------------
# Step 13: Build ThunderTools (install into install/usr)
# -----------------------------------------------------------------------------
log "[Step 13] Build ThunderTools"
if [[ -d "${THUNDERTOOLS_DIR}" ]]; then
  mkdir -p "${BUILD_ROOT}"
  cmake_configure_build_install \
    "${THUNDERTOOLS_DIR}" \
    "${BUILD_ROOT}/ThunderTools" \
    "${INSTALL_USR}" \
    -DPROJECT_DIR="${WORKSPACE_ROOT}"
else
  warn "ThunderTools dir not found at ${THUNDERTOOLS_DIR}; skipping build."
fi

# -----------------------------------------------------------------------------
# Step 14: Apply patches Thunder
# -----------------------------------------------------------------------------
log "[Step 14] Apply patches Thunder"

# Authoritative patch list per user_input_ref attachment:
# Apply ONLY these patches to Thunder/ (no extra patches):
#   - 1004-Add-support-for-project-dir.patch
#   - 00010-R4.4-Add-support-for-project-dir.patch
#
# Non-interactive/best-effort behavior:
#   - patch -N: don't reapply if already applied
#   - failures are logged but do not abort the whole script
if [[ -d "${TESTFW_DIR}/patches" ]]; then
  THUNDER_PATCHES=(
    "1004-Add-support-for-project-dir.patch"
    "00010-R4.4-Add-support-for-project-dir.patch"
  )

  for p in "${THUNDER_PATCHES[@]}"; do
    if [[ -f "${TESTFW_DIR}/patches/${p}" ]]; then
      run_best_effort "Thunder patch ${p}" apply_patch_dir "${THUNDER_DIR}" "${TESTFW_DIR}/patches/${p}" "-p1"
    else
      warn "Missing Thunder patch in testframework: ${TESTFW_DIR}/patches/${p}"
    fi
  done
else
  warn "Testframework patches dir not found; cannot apply Thunder patches."
fi

# -----------------------------------------------------------------------------
# Step 15: Build Thunder (install into install/usr)
# -----------------------------------------------------------------------------
log "[Step 15] Build Thunder"
if [[ -d "${THUNDER_DIR}" ]]; then
  cmake_configure_build_install \
    "${THUNDER_DIR}" \
    "${BUILD_ROOT}/Thunder" \
    "${INSTALL_USR}" \
    -DPROJECT_DIR="${WORKSPACE_ROOT}"
else
  warn "Thunder dir not found at ${THUNDER_DIR}; skipping build."
fi

# -----------------------------------------------------------------------------
# Step 16: Checkout entservices-apis
# -----------------------------------------------------------------------------
log "[Step 16] Checkout entservices-apis (Ensure exists)"
# Repo URL may differ in your environment; if already present, this is skipped.
ensure_repo "${APIS_DIR}" "https://github.com/rdkcentral/entservices-apis.git" "develop" || true

# Workflow note: remove jsonrpc/DTV.json (best-effort).
if [[ -f "${APIS_DIR}/jsonrpc/DTV.json" ]]; then
  log "Removing ${APIS_DIR}/jsonrpc/DTV.json (workflow parity)"
  rm -f "${APIS_DIR}/jsonrpc/DTV.json" || true
fi

log "[DONE] 16-step workflow actions completed (as applicable in this container)."
echo "Summary:"
echo "  WORKSPACE_ROOT=${WORKSPACE_ROOT}"
echo "  Thunder=${THUNDER_DIR}"
echo "  ThunderTools=${THUNDERTOOLS_DIR}"
echo "  Testframework=${TESTFW_DIR}"
echo "  Googletest=${GTEST_DIR}"
echo "  Entservices-apis=${APIS_DIR}"
echo "  Build root=${BUILD_ROOT}"
echo "  Install prefix=${INSTALL_USR}"

//
// generated automatically from "ICOM.h"
//
// implements COM-RPC proxy stubs for:
//   - class IIteratorType<typename ELEMENT, const uint32_t> [with ELEMENT = string, INTERFACE_ID = ID_STRINGITERATOR]
//   - class IIteratorType<typename ELEMENT, const uint32_t> [with ELEMENT = uint32_t, INTERFACE_ID = ID_VALUEITERATOR]
//   - class IRemoteConnection
//   - class IRemoteConnection::INotification
//

#include "Module.h"
#include "ICOM.h"

#include <com/com.h>

namespace WPEFramework {

namespace ProxyStubs {

    using namespace RPC;

    PUSH_WARNING(DISABLE_WARNING_DEPRECATED_USE)
    PUSH_WARNING(DISABLE_WARNING_TYPE_LIMITS)

    // -----------------------------------------------------------------
    // STUBS
    // -----------------------------------------------------------------

    //
    // IIteratorTypeInstanceE179289B interface stub definitions
    //
    // Methods:
    //  (0) virtual bool Next(string&) = 0
    //  (1) virtual bool Previous(string&) = 0
    //  (2) virtual void Reset(const uint32_t) = 0
    //  (3) virtual bool IsValid() const = 0
    //  (4) virtual uint32_t Count() const = 0
    //  (5) virtual string Current() const = 0
    //

    ProxyStub::MethodHandler IteratorTypeInstanceE179289BStubMethods[] = {
        // (0) virtual bool Next(string&) = 0
        //
        [](Core::ProxyType<Core::IPCChannel>& /* channel */, Core::ProxyType<RPC::InvokeMessage>& message) {
            using interface = IIteratorType<string, ID_STRINGITERATOR>;

            interface* implementation = reinterpret_cast<interface*>(message->Parameters().Implementation());
            ASSERT(implementation != nullptr);

            string _info{};

            bool result = implementation->Next(_info);

            RPC::Data::Frame::Writer writer(message->Response().Writer());
            writer.Boolean(result);
            writer.Text(_info);
        },

        // (1) virtual bool Previous(string&) = 0
        //
        [](Core::ProxyType<Core::IPCChannel>& /* channel */, Core::ProxyType<RPC::InvokeMessage>& message) {
            using interface = IIteratorType<string, ID_STRINGITERATOR>;

            interface* implementation = reinterpret_cast<interface*>(message->Parameters().Implementation());
            ASSERT(implementation != nullptr);

            string _info{};

            bool result = implementation->Previous(_info);

            RPC::Data::Frame::Writer writer(message->Response().Writer());
            writer.Boolean(result);
            writer.Text(_info);
        },

        // (2) virtual void Reset(const uint32_t) = 0
        //
        [](Core::ProxyType<Core::IPCChannel>& /* channel */, Core::ProxyType<RPC::InvokeMessage>& message) {
            using interface = IIteratorType<string, ID_STRINGITERATOR>;

            interface* implementation = reinterpret_cast<interface*>(message->Parameters().Implementation());
            ASSERT(implementation != nullptr);

            RPC::Data::Frame::Reader reader(message->Parameters().Reader());
            const uint32_t _position = reader.Number<uint32_t>();

            implementation->Reset(_position);
        },

        // (3) virtual bool IsValid() const = 0
        //
        [](Core::ProxyType<Core::IPCChannel>& /* channel */, Core::ProxyType<RPC::InvokeMessage>& message) {
            using interface = IIteratorType<string, ID_STRINGITERATOR>;

            const interface* implementation = reinterpret_cast<const interface*>(message->Parameters().Implementation());
            ASSERT(implementation != nullptr);

            bool result = implementation->IsValid();

            RPC::Data::Frame::Writer writer(message->Response().Writer());
            writer.Boolean(result);
        },

        // (4) virtual uint32_t Count() const = 0
        //
        [](Core::ProxyType<Core::IPCChannel>& /* channel */, Core::ProxyType<RPC::InvokeMessage>& message) {
            using interface = IIteratorType<string, ID_STRINGITERATOR>;

            const interface* implementation = reinterpret_cast<const interface*>(message->Parameters().Implementation());
            ASSERT(implementation != nullptr);

            uint32_t result = implementation->Count();

            RPC::Data::Frame::Writer writer(message->Response().Writer());
            writer.Number<uint32_t>(result);
        },

        // (5) virtual string Current() const = 0
        //
        [](Core::ProxyType<Core::IPCChannel>& /* channel */, Core::ProxyType<RPC::InvokeMessage>& message) {
            using interface = IIteratorType<string, ID_STRINGITERATOR>;

            const interface* implementation = reinterpret_cast<const interface*>(message->Parameters().Implementation());
            ASSERT(implementation != nullptr);

            string result = implementation->Current();

            RPC::Data::Frame::Writer writer(message->Response().Writer());
            writer.Text(result);
        }
        , nullptr
    }; // IteratorTypeInstanceE179289BStubMethods

    //
    // IIteratorTypeInstance243204EA interface stub definitions
    //
    // Methods:
    //  (0) virtual bool Next(uint32_t&) = 0
    //  (1) virtual bool Previous(uint32_t&) = 0
    //  (2) virtual void Reset(const uint32_t) = 0
    //  (3) virtual bool IsValid() const = 0
    //  (4) virtual uint32_t Count() const = 0
    //  (5) virtual uint32_t Current() const = 0
    //

    ProxyStub::MethodHandler IteratorTypeInstance243204EAStubMethods[] = {
        // (0) virtual bool Next(uint32_t&) = 0
        //
        [](Core::ProxyType<Core::IPCChannel>& /* channel */, Core::ProxyType<RPC::InvokeMessage>& message) {
            using interface = IIteratorType<uint32_t, ID_VALUEITERATOR>;

            interface* implementation = reinterpret_cast<interface*>(message->Parameters().Implementation());
            ASSERT(implementation != nullptr);

            uint32_t _info{};

            bool result = implementation->Next(_info);

            RPC::Data::Frame::Writer writer(message->Response().Writer());
            writer.Boolean(result);
            writer.Number<uint32_t>(_info);
        },

        // (1) virtual bool Previous(uint32_t&) = 0
        //
        [](Core::ProxyType<Core::IPCChannel>& /* channel */, Core::ProxyType<RPC::InvokeMessage>& message) {
            using interface = IIteratorType<uint32_t, ID_VALUEITERATOR>;

            interface* implementation = reinterpret_cast<interface*>(message->Parameters().Implementation());
            ASSERT(implementation != nullptr);

            uint32_t _info{};

            bool result = implementation->Previous(_info);

            RPC::Data::Frame::Writer writer(message->Response().Writer());
            writer.Boolean(result);
            writer.Number<uint32_t>(_info);
        },

        // (2) virtual void Reset(const uint32_t) = 0
        //
        [](Core::ProxyType<Core::IPCChannel>& /* channel */, Core::ProxyType<RPC::InvokeMessage>& message) {
            using interface = IIteratorType<uint32_t, ID_VALUEITERATOR>;

            interface* implementation = reinterpret_cast<interface*>(message->Parameters().Implementation());
            ASSERT(implementation != nullptr);

            RPC::Data::Frame::Reader reader(message->Parameters().Reader());
            const uint32_t _position = reader.Number<uint32_t>();

            implementation->Reset(_position);
        },

        // (3) virtual bool IsValid() const = 0
        //
        [](Core::ProxyType<Core::IPCChannel>& /* channel */, Core::ProxyType<RPC::InvokeMessage>& message) {
            using interface = IIteratorType<uint32_t, ID_VALUEITERATOR>;

            const interface* implementation = reinterpret_cast<const interface*>(message->Parameters().Implementation());
            ASSERT(implementation != nullptr);

            bool result = implementation->IsValid();

            RPC::Data::Frame::Writer writer(message->Response().Writer());
            writer.Boolean(result);
        },

        // (4) virtual uint32_t Count() const = 0
        //
        [](Core::ProxyType<Core::IPCChannel>& /* channel */, Core::ProxyType<RPC::InvokeMessage>& message) {
            using interface = IIteratorType<uint32_t, ID_VALUEITERATOR>;

            const interface* implementation = reinterpret_cast<const interface*>(message->Parameters().Implementation());
            ASSERT(implementation != nullptr);

            uint32_t result = implementation->Count();

            RPC::Data::Frame::Writer writer(message->Response().Writer());
            writer.Number<uint32_t>(result);
        },

        // (5) virtual uint32_t Current() const = 0
        //
        [](Core::ProxyType<Core::IPCChannel>& /* channel */, Core::ProxyType<RPC::InvokeMessage>& message) {
            using interface = IIteratorType<uint32_t, ID_VALUEITERATOR>;

            const interface* implementation = reinterpret_cast<const interface*>(message->Parameters().Implementation());
            ASSERT(implementation != nullptr);

            uint32_t result = implementation->Current();

            RPC::Data::Frame::Writer writer(message->Response().Writer());
            writer.Number<uint32_t>(result);
        }
        , nullptr
    }; // IteratorTypeInstance243204EAStubMethods

    //
    // IRemoteConnection interface stub definitions
    //
    // Methods:
    //  (0) virtual uint32_t Id() const = 0
    //  (1) virtual uint32_t RemoteId() const = 0
    //  (2) virtual void* Acquire(const uint32_t, const string&, const uint32_t, const uint32_t) = 0
    //  (3) virtual void Terminate() = 0
    //  (4) virtual uint32_t Launch() = 0
    //  (5) virtual void PostMortem() = 0
    //

    ProxyStub::MethodHandler RemoteConnectionStubMethods[] = {
        // (0) virtual uint32_t Id() const = 0
        //
        [](Core::ProxyType<Core::IPCChannel>& /* channel */, Core::ProxyType<RPC::InvokeMessage>& message) {
            const IRemoteConnection* implementation = reinterpret_cast<const IRemoteConnection*>(message->Parameters().Implementation());
            ASSERT(implementation != nullptr);

            uint32_t result = implementation->Id();

            RPC::Data::Frame::Writer writer(message->Response().Writer());
            writer.Number<uint32_t>(result);
        },

        // (1) virtual uint32_t RemoteId() const = 0
        //
        [](Core::ProxyType<Core::IPCChannel>& /* channel */, Core::ProxyType<RPC::InvokeMessage>& message) {
            const IRemoteConnection* implementation = reinterpret_cast<const IRemoteConnection*>(message->Parameters().Implementation());
            ASSERT(implementation != nullptr);

            uint32_t result = implementation->RemoteId();

            RPC::Data::Frame::Writer writer(message->Response().Writer());
            writer.Number<uint32_t>(result);
        },

        // (2) virtual void* Acquire(const uint32_t, const string&, const uint32_t, const uint32_t) = 0
        //
        [](Core::ProxyType<Core::IPCChannel>& channel, Core::ProxyType<RPC::InvokeMessage>& message) {
            IRemoteConnection* implementation = reinterpret_cast<IRemoteConnection*>(message->Parameters().Implementation());
            ASSERT(implementation != nullptr);

            RPC::Data::Frame::Reader reader(message->Parameters().Reader());
            const uint32_t _waitTime = reader.Number<uint32_t>();
            const string _className = reader.Text();
            const uint32_t _interfaceId = reader.Number<uint32_t>();
            const uint32_t _version = reader.Number<uint32_t>();

            void* result = implementation->Acquire(_waitTime, static_cast<const string&>(_className), _interfaceId, _version);

            RPC::Data::Frame::Writer writer(message->Response().Writer());
            writer.Number<Core::instance_id>(RPC::instance_cast(result));

            RPC::Administrator::Instance().RegisterInterface(channel, result, _interfaceId);
        },

        // (3) virtual void Terminate() = 0
        //
        [](Core::ProxyType<Core::IPCChannel>& /* channel */, Core::ProxyType<RPC::InvokeMessage>& message) {
            IRemoteConnection* implementation = reinterpret_cast<IRemoteConnection*>(message->Parameters().Implementation());
            ASSERT(implementation != nullptr);

            implementation->Terminate();
        },

        // (4) virtual uint32_t Launch() = 0
        //
        [](Core::ProxyType<Core::IPCChannel>& /* channel */, Core::ProxyType<RPC::InvokeMessage>& message) {
            IRemoteConnection* implementation = reinterpret_cast<IRemoteConnection*>(message->Parameters().Implementation());
            ASSERT(implementation != nullptr);

            uint32_t result = implementation->Launch();

            RPC::Data::Frame::Writer writer(message->Response().Writer());
            writer.Number<uint32_t>(result);
        },

        // (5) virtual void PostMortem() = 0
        //
        [](Core::ProxyType<Core::IPCChannel>& /* channel */, Core::ProxyType<RPC::InvokeMessage>& message) {
            IRemoteConnection* implementation = reinterpret_cast<IRemoteConnection*>(message->Parameters().Implementation());
            ASSERT(implementation != nullptr);

            implementation->PostMortem();
        }
        , nullptr
    }; // RemoteConnectionStubMethods

    //
    // IRemoteConnection::INotification interface stub definitions
    //
    // Methods:
    //  (0) virtual void Activated(IRemoteConnection*) = 0
    //  (1) virtual void Deactivated(IRemoteConnection*) = 0
    //  (2) virtual void Terminated(IRemoteConnection*)
    //

    ProxyStub::MethodHandler RemoteConnectionNotificationStubMethods[] = {
        // (0) virtual void Activated(IRemoteConnection*) = 0
        //
        [](Core::ProxyType<Core::IPCChannel>& channel, Core::ProxyType<RPC::InvokeMessage>& message) {
            IRemoteConnection::INotification* implementation = reinterpret_cast<IRemoteConnection::INotification*>(message->Parameters().Implementation());
            ASSERT(implementation != nullptr);

            RPC::Data::Frame::Reader reader(message->Parameters().Reader());
            const Core::instance_id parameter_f3395f48Implementation = reader.Number<Core::instance_id>();

            IRemoteConnection* _parameter_f3395f48 = nullptr;
            ProxyStub::UnknownProxy* parameter_f3395f48Proxy = nullptr;
            if (parameter_f3395f48Implementation != 0) {
                parameter_f3395f48Proxy = RPC::Administrator::Instance().ProxyInstance(channel, parameter_f3395f48Implementation, false, _parameter_f3395f48);

                ASSERT((_parameter_f3395f48 != nullptr) && (parameter_f3395f48Proxy != nullptr));
            }

            implementation->Activated(_parameter_f3395f48);

            if (parameter_f3395f48Proxy != nullptr) {
                RPC::Administrator::Instance().Release(parameter_f3395f48Proxy, message->Response());
            }
        },

        // (1) virtual void Deactivated(IRemoteConnection*) = 0
        //
        [](Core::ProxyType<Core::IPCChannel>& channel, Core::ProxyType<RPC::InvokeMessage>& message) {
            IRemoteConnection::INotification* implementation = reinterpret_cast<IRemoteConnection::INotification*>(message->Parameters().Implementation());
            ASSERT(implementation != nullptr);

            RPC::Data::Frame::Reader reader(message->Parameters().Reader());
            const Core::instance_id parameter_cbbfd577Implementation = reader.Number<Core::instance_id>();

            IRemoteConnection* _parameter_cbbfd577 = nullptr;
            ProxyStub::UnknownProxy* parameter_cbbfd577Proxy = nullptr;
            if (parameter_cbbfd577Implementation != 0) {
                parameter_cbbfd577Proxy = RPC::Administrator::Instance().ProxyInstance(channel, parameter_cbbfd577Implementation, false, _parameter_cbbfd577);

                ASSERT((_parameter_cbbfd577 != nullptr) && (parameter_cbbfd577Proxy != nullptr));
            }

            implementation->Deactivated(_parameter_cbbfd577);

            if (parameter_cbbfd577Proxy != nullptr) {
                RPC::Administrator::Instance().Release(parameter_cbbfd577Proxy, message->Response());
            }
        },

        // (2) virtual void Terminated(IRemoteConnection*)
        //
        [](Core::ProxyType<Core::IPCChannel>& channel, Core::ProxyType<RPC::InvokeMessage>& message) {
            IRemoteConnection::INotification* implementation = reinterpret_cast<IRemoteConnection::INotification*>(message->Parameters().Implementation());
            ASSERT(implementation != nullptr);

            RPC::Data::Frame::Reader reader(message->Parameters().Reader());
            const Core::instance_id parameter_52cbc4e8Implementation = reader.Number<Core::instance_id>();

            IRemoteConnection* _parameter_52cbc4e8 = nullptr;
            ProxyStub::UnknownProxy* parameter_52cbc4e8Proxy = nullptr;
            if (parameter_52cbc4e8Implementation != 0) {
                parameter_52cbc4e8Proxy = RPC::Administrator::Instance().ProxyInstance(channel, parameter_52cbc4e8Implementation, false, _parameter_52cbc4e8);

                ASSERT((_parameter_52cbc4e8 != nullptr) && (parameter_52cbc4e8Proxy != nullptr));
            }

            implementation->Terminated(_parameter_52cbc4e8);

            if (parameter_52cbc4e8Proxy != nullptr) {
                RPC::Administrator::Instance().Release(parameter_52cbc4e8Proxy, message->Response());
            }
        }
        , nullptr
    }; // RemoteConnectionNotificationStubMethods

    // -----------------------------------------------------------------
    // PROXIES
    // -----------------------------------------------------------------

    //
    // IIteratorTypeInstanceE179289B interface proxy definitions
    //
    // Methods:
    //  (0) virtual bool Next(string&) = 0
    //  (1) virtual bool Previous(string&) = 0
    //  (2) virtual void Reset(const uint32_t) = 0
    //  (3) virtual bool IsValid() const = 0
    //  (4) virtual uint32_t Count() const = 0
    //  (5) virtual string Current() const = 0
    //

    class IteratorTypeInstanceE179289BProxy final : public ProxyStub::UnknownProxyType<IIteratorType<string, ID_STRINGITERATOR>> {
    public:
        IteratorTypeInstanceE179289BProxy(const Core::ProxyType<Core::IPCChannel>& channel, const Core::instance_id implementation, const bool otherSideInformed)
            : BaseClass(channel, implementation, otherSideInformed)
        {
        }

        uint32_t Complete(RPC::Data::Frame::Reader& reader)
        {
            uint32_t result = Core::ERROR_NONE;

            while (reader.HasData() == true) {
                const Core::instance_id implementation = reader.Number<Core::instance_id>();
                ASSERT(implementation != 0);

                const uint32_t id = reader.Number<uint32_t>();
                const RPC::Data::Output::mode how = reader.Number<RPC::Data::Output::mode>();

                result = UnknownProxyType::Complete(implementation, id, how);
                if (result != Core::ERROR_NONE) { return (COM_ERROR | result); }
            }

            return (result);
        }

        bool Next(string& _info) override
        {
            IPCMessage message(BaseClass::Message(0));

            bool result{};

            UnknownProxyType::Invoke(message);
            RPC::Data::Frame::Reader reader(message->Response().Reader());
            result = reader.Boolean();
            _info = reader.Text();

            return (result);
        }

        bool Previous(string& _info) override
        {
            IPCMessage message(BaseClass::Message(1));

            bool result{};

            UnknownProxyType::Invoke(message);
            RPC::Data::Frame::Reader reader(message->Response().Reader());
            result = reader.Boolean();
            _info = reader.Text();

            return (result);
        }

        void Reset(const uint32_t _position) override
        {
            IPCMessage message(BaseClass::Message(2));

            RPC::Data::Frame::Writer writer(message->Parameters().Writer());
            writer.Number<uint32_t>(_position);

            UnknownProxyType::Invoke(message);
        }

        bool IsValid() const override
        {
            IPCMessage message(BaseClass::Message(3));

            bool result{};

            UnknownProxyType::Invoke(message);
            RPC::Data::Frame::Reader reader(message->Response().Reader());
            result = reader.Boolean();

            return (result);
        }

        uint32_t Count() const override
        {
            IPCMessage message(BaseClass::Message(4));

            uint32_t result{};

            UnknownProxyType::Invoke(message);
            RPC::Data::Frame::Reader reader(message->Response().Reader());
            result = reader.Number<uint32_t>();

            return (result);
        }

        string Current() const override
        {
            IPCMessage message(BaseClass::Message(5));

            string result{};

            UnknownProxyType::Invoke(message);
            RPC::Data::Frame::Reader reader(message->Response().Reader());
            result = reader.Text();

            return (result);
        }

    }; // class IteratorTypeInstanceE179289BProxy

    //
    // IIteratorTypeInstance243204EA interface proxy definitions
    //
    // Methods:
    //  (0) virtual bool Next(uint32_t&) = 0
    //  (1) virtual bool Previous(uint32_t&) = 0
    //  (2) virtual void Reset(const uint32_t) = 0
    //  (3) virtual bool IsValid() const = 0
    //  (4) virtual uint32_t Count() const = 0
    //  (5) virtual uint32_t Current() const = 0
    //

    class IteratorTypeInstance243204EAProxy final : public ProxyStub::UnknownProxyType<IIteratorType<uint32_t, ID_VALUEITERATOR>> {
    public:
        IteratorTypeInstance243204EAProxy(const Core::ProxyType<Core::IPCChannel>& channel, const Core::instance_id implementation, const bool otherSideInformed)
            : BaseClass(channel, implementation, otherSideInformed)
        {
        }

        uint32_t Complete(RPC::Data::Frame::Reader& reader)
        {
            uint32_t result = Core::ERROR_NONE;

            while (reader.HasData() == true) {
                const Core::instance_id implementation = reader.Number<Core::instance_id>();
                ASSERT(implementation != 0);

                const uint32_t id = reader.Number<uint32_t>();
                const RPC::Data::Output::mode how = reader.Number<RPC::Data::Output::mode>();

                result = UnknownProxyType::Complete(implementation, id, how);
                if (result != Core::ERROR_NONE) { return (COM_ERROR | result); }
            }

            return (result);
        }

        bool Next(uint32_t& _info) override
        {
            IPCMessage message(BaseClass::Message(0));

            bool result{};

            UnknownProxyType::Invoke(message);
            RPC::Data::Frame::Reader reader(message->Response().Reader());
            result = reader.Boolean();
            _info = reader.Number<uint32_t>();

            return (result);
        }

        bool Previous(uint32_t& _info) override
        {
            IPCMessage message(BaseClass::Message(1));

            bool result{};

            UnknownProxyType::Invoke(message);
            RPC::Data::Frame::Reader reader(message->Response().Reader());
            result = reader.Boolean();
            _info = reader.Number<uint32_t>();

            return (result);
        }

        void Reset(const uint32_t _position) override
        {
            IPCMessage message(BaseClass::Message(2));

            RPC::Data::Frame::Writer writer(message->Parameters().Writer());
            writer.Number<uint32_t>(_position);

            UnknownProxyType::Invoke(message);
        }

        bool IsValid() const override
        {
            IPCMessage message(BaseClass::Message(3));

            bool result{};

            UnknownProxyType::Invoke(message);
            RPC::Data::Frame::Reader reader(message->Response().Reader());
            result = reader.Boolean();

            return (result);
        }

        uint32_t Count() const override
        {
            IPCMessage message(BaseClass::Message(4));

            uint32_t result{};

            UnknownProxyType::Invoke(message);
            RPC::Data::Frame::Reader reader(message->Response().Reader());
            result = reader.Number<uint32_t>();

            return (result);
        }

        uint32_t Current() const override
        {
            IPCMessage message(BaseClass::Message(5));

            uint32_t result{};

            UnknownProxyType::Invoke(message);
            RPC::Data::Frame::Reader reader(message->Response().Reader());
            result = reader.Number<uint32_t>();

            return (result);
        }

    }; // class IteratorTypeInstance243204EAProxy

    //
    // IRemoteConnection interface proxy definitions
    //
    // Methods:
    //  (0) virtual uint32_t Id() const = 0
    //  (1) virtual uint32_t RemoteId() const = 0
    //  (2) virtual void* Acquire(const uint32_t, const string&, const uint32_t, const uint32_t) = 0
    //  (3) virtual void Terminate() = 0
    //  (4) virtual uint32_t Launch() = 0
    //  (5) virtual void PostMortem() = 0
    //

    class RemoteConnectionProxy final : public ProxyStub::UnknownProxyType<IRemoteConnection> {
    public:
        RemoteConnectionProxy(const Core::ProxyType<Core::IPCChannel>& channel, const Core::instance_id implementation, const bool otherSideInformed)
            : BaseClass(channel, implementation, otherSideInformed)
        {
        }

        uint32_t Complete(RPC::Data::Frame::Reader& reader)
        {
            uint32_t result = Core::ERROR_NONE;

            while (reader.HasData() == true) {
                const Core::instance_id implementation = reader.Number<Core::instance_id>();
                ASSERT(implementation != 0);

                const uint32_t id = reader.Number<uint32_t>();
                const RPC::Data::Output::mode how = reader.Number<RPC::Data::Output::mode>();

                result = UnknownProxyType::Complete(implementation, id, how);
                if (result != Core::ERROR_NONE) { return (COM_ERROR | result); }
            }

            return (result);
        }

        uint32_t Id() const override
        {
            IPCMessage message(BaseClass::Message(0));

            uint32_t result{};

            UnknownProxyType::Invoke(message);
            RPC::Data::Frame::Reader reader(message->Response().Reader());
            result = reader.Number<uint32_t>();

            return (result);
        }

        uint32_t RemoteId() const override
        {
            IPCMessage message(BaseClass::Message(1));

            uint32_t result{};

            UnknownProxyType::Invoke(message);
            RPC::Data::Frame::Reader reader(message->Response().Reader());
            result = reader.Number<uint32_t>();

            return (result);
        }

        void* Acquire(const uint32_t _waitTime, const string& _className, const uint32_t _interfaceId, const uint32_t _version) override
        {
            IPCMessage message(BaseClass::Message(2));

            RPC::Data::Frame::Writer writer(message->Parameters().Writer());
            writer.Number<uint32_t>(_waitTime);
            writer.Text(static_cast<const string&>(_className));
            writer.Number<uint32_t>(_interfaceId);
            writer.Number<uint32_t>(_version);

            void* result{};

            UnknownProxyType::Invoke(message);
            RPC::Data::Frame::Reader reader(message->Response().Reader());
            result = reinterpret_cast<void*>(Interface(reader.Number<Core::instance_id>(), _interfaceId));

            return (result);
        }

        void Terminate() override
        {
            IPCMessage message(BaseClass::Message(3));

            UnknownProxyType::Invoke(message);
        }

        uint32_t Launch() override
        {
            IPCMessage message(BaseClass::Message(4));

            uint32_t result{};

            UnknownProxyType::Invoke(message);
            RPC::Data::Frame::Reader reader(message->Response().Reader());
            result = reader.Number<uint32_t>();

            return (result);
        }

        void PostMortem() override
        {
            IPCMessage message(BaseClass::Message(5));

            UnknownProxyType::Invoke(message);
        }

    }; // class RemoteConnectionProxy

    //
    // IRemoteConnection::INotification interface proxy definitions
    //
    // Methods:
    //  (0) virtual void Activated(IRemoteConnection*) = 0
    //  (1) virtual void Deactivated(IRemoteConnection*) = 0
    //  (2) virtual void Terminated(IRemoteConnection*)
    //

    class RemoteConnectionNotificationProxy final : public ProxyStub::UnknownProxyType<IRemoteConnection::INotification> {
    public:
        RemoteConnectionNotificationProxy(const Core::ProxyType<Core::IPCChannel>& channel, const Core::instance_id implementation, const bool otherSideInformed)
            : BaseClass(channel, implementation, otherSideInformed)
        {
        }

        uint32_t Complete(RPC::Data::Frame::Reader& reader)
        {
            uint32_t result = Core::ERROR_NONE;

            while (reader.HasData() == true) {
                const Core::instance_id implementation = reader.Number<Core::instance_id>();
                ASSERT(implementation != 0);

                const uint32_t id = reader.Number<uint32_t>();
                const RPC::Data::Output::mode how = reader.Number<RPC::Data::Output::mode>();

                result = UnknownProxyType::Complete(implementation, id, how);
                if (result != Core::ERROR_NONE) { return (COM_ERROR | result); }
            }

            return (result);
        }

        void Activated(IRemoteConnection* _parameter_f3395f48) override
        {
            IPCMessage message(BaseClass::Message(0));

            RPC::Data::Frame::Writer writer(message->Parameters().Writer());
            writer.Number<Core::instance_id>(RPC::instance_cast(_parameter_f3395f48));

            UnknownProxyType::Invoke(message);
            RPC::Data::Frame::Reader reader(message->Response().Reader());

            Complete(reader);
        }

        void Deactivated(IRemoteConnection* _parameter_cbbfd577) override
        {
            IPCMessage message(BaseClass::Message(1));

            RPC::Data::Frame::Writer writer(message->Parameters().Writer());
            writer.Number<Core::instance_id>(RPC::instance_cast(_parameter_cbbfd577));

            UnknownProxyType::Invoke(message);
            RPC::Data::Frame::Reader reader(message->Response().Reader());

            Complete(reader);
        }

        void Terminated(IRemoteConnection* _parameter_52cbc4e8) override
        {
            IPCMessage message(BaseClass::Message(2));

            RPC::Data::Frame::Writer writer(message->Parameters().Writer());
            writer.Number<Core::instance_id>(RPC::instance_cast(_parameter_52cbc4e8));

            UnknownProxyType::Invoke(message);
            RPC::Data::Frame::Reader reader(message->Response().Reader());

            Complete(reader);
        }

    }; // class RemoteConnectionNotificationProxy

    POP_WARNING()
    POP_WARNING()

    // -----------------------------------------------------------------
    // REGISTRATION
    // -----------------------------------------------------------------

    namespace {

        typedef ProxyStub::UnknownStubType<IIteratorType<string, ID_STRINGITERATOR>, IteratorTypeInstanceE179289BStubMethods> IteratorTypeInstanceE179289BStub;
        typedef ProxyStub::UnknownStubType<IIteratorType<uint32_t, ID_VALUEITERATOR>, IteratorTypeInstance243204EAStubMethods> IteratorTypeInstance243204EAStub;
        typedef ProxyStub::UnknownStubType<IRemoteConnection, RemoteConnectionStubMethods> RemoteConnectionStub;
        typedef ProxyStub::UnknownStubType<IRemoteConnection::INotification, RemoteConnectionNotificationStubMethods> RemoteConnectionNotificationStub;

        static class Instantiation {
        public:
            Instantiation()
            {
                RPC::Administrator::Instance().Announce<IIteratorType<string, ID_STRINGITERATOR>, IteratorTypeInstanceE179289BProxy, IteratorTypeInstanceE179289BStub>();
                RPC::Administrator::Instance().Announce<IIteratorType<uint32_t, ID_VALUEITERATOR>, IteratorTypeInstance243204EAProxy, IteratorTypeInstance243204EAStub>();
                RPC::Administrator::Instance().Announce<IRemoteConnection, RemoteConnectionProxy, RemoteConnectionStub>();
                RPC::Administrator::Instance().Announce<IRemoteConnection::INotification, RemoteConnectionNotificationProxy, RemoteConnectionNotificationStub>();
            }
            ~Instantiation()
            {
                RPC::Administrator::Instance().Recall<IIteratorType<string, ID_STRINGITERATOR>>();
                RPC::Administrator::Instance().Recall<IIteratorType<uint32_t, ID_VALUEITERATOR>>();
                RPC::Administrator::Instance().Recall<IRemoteConnection>();
                RPC::Administrator::Instance().Recall<IRemoteConnection::INotification>();
            }
        } ProxyStubRegistration;

    } // namespace

} // namespace ProxyStubs

}

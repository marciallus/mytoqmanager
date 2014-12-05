// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.services.common;

import org.alljoyn.bus.*;

// Referenced classes of package org.alljoyn.services.common:
//            ClientBase, ServiceAvailabilityListener, PropertyStore

public abstract class ClientBaseImpl
    implements ClientBase
{

    public static final String TAG = org/alljoyn/services/common/ClientBaseImpl.getName();
    protected BusAttachment m_bus;
    protected Class m_interfaceClassArr[];
    protected boolean m_isConnected;
    protected String m_objectPath;
    protected String m_peerName;
    protected char m_pinCode[];
    protected short m_port;
    protected PropertyStore m_propertyStore;
    protected ServiceAvailabilityListener m_serviceAvailabilityListener;
    protected Integer m_sessionId;

    public ClientBaseImpl(String s, BusAttachment busattachment, ServiceAvailabilityListener serviceavailabilitylistener, String s1, Class class1, short word0)
    {
        this(s, busattachment, serviceavailabilitylistener, s1, word0);
        if (class1 != null)
        {
            m_interfaceClassArr = (new Class[] {
                class1
            });
            return;
        } else
        {
            throw new IllegalArgumentException("InterfaceClass can't be null");
        }
    }

    private ClientBaseImpl(String s, BusAttachment busattachment, ServiceAvailabilityListener serviceavailabilitylistener, String s1, short word0)
    {
        m_isConnected = false;
        if (s != null)
        {
            m_peerName = s;
            if (!setBusAttachment(busattachment))
                throw new IllegalArgumentException("Illegal BusAttachment received");
            if (s1 != null)
            {
                m_objectPath = s1;
                m_port = word0;
                m_serviceAvailabilityListener = serviceavailabilitylistener;
                return;
            } else
            {
                throw new IllegalArgumentException("ObjectPath can't be null");
            }
        } else
        {
            throw new IllegalArgumentException("PeerName can't be null");
        }
    }

    public ClientBaseImpl(String s, BusAttachment busattachment, ServiceAvailabilityListener serviceavailabilitylistener, String s1, Class aclass[], short word0)
    {
        this(s, busattachment, serviceavailabilitylistener, s1, word0);
        if (aclass != null && aclass.length != 0)
        {
            m_interfaceClassArr = aclass;
            return;
        } else
        {
            throw new IllegalArgumentException("InterfaceClass array can't be empty");
        }
    }

    private boolean setBusAttachment(BusAttachment busattachment)
    {
        if (busattachment != null && busattachment.isConnected() && (m_bus == null || m_bus.getUniqueName().equals(busattachment.getUniqueName())))
        {
            m_bus = busattachment;
            return true;
        } else
        {
            return false;
        }
    }

    public Status connect()
    {
        SessionOpts sessionopts = createSessionOpts();
        org.alljoyn.bus.Mutable.IntegerValue integervalue = new org.alljoyn.bus.Mutable.IntegerValue();
        Status status = m_bus.joinSession(getPeerName(), m_port, integervalue, sessionopts, new SessionListener() {

            final ClientBaseImpl this$0;

            public void sessionLost(int i)
            {
                if (getSessionId() == i)
                {
                    m_isConnected = false;
                    connectionLost();
                }
            }

            public void sessionMemberAdded(int i, String s)
            {
            }

            public void sessionMemberRemoved(int i, String s)
            {
            }

            
            {
                this$0 = ClientBaseImpl.this;
                super();
            }
        }
);
        if (Status.OK != status && Status.ALLJOYN_JOINSESSION_REPLY_ALREADY_JOINED != status)
        {
            m_isConnected = false;
            return status;
        } else
        {
            m_isConnected = true;
            m_sessionId = Integer.valueOf(integervalue.value);
            return status;
        }
    }

    public void connectionLost()
    {
        m_isConnected = false;
        if (m_serviceAvailabilityListener != null)
            m_serviceAvailabilityListener.connectionLost();
    }

    protected SessionOpts createSessionOpts()
    {
        SessionOpts sessionopts = new SessionOpts();
        sessionopts.traffic = 1;
        sessionopts.isMultipoint = false;
        sessionopts.proximity = -1;
        sessionopts.transports = -129;
        return sessionopts;
    }

    public void disconnect()
    {
        if (m_isConnected && m_bus.leaveSession(getSessionId()) == Status.OK)
            m_isConnected = false;
    }

    public Class[] getObjClassArr()
    {
        return m_interfaceClassArr;
    }

    public Class getObjectClass()
    {
        if (m_interfaceClassArr != null && m_interfaceClassArr.length != 0)
            return m_interfaceClassArr[0];
        else
            return null;
    }

    public String getObjectPath()
    {
        return m_objectPath;
    }

    public String getPeerName()
    {
        return m_peerName;
    }

    protected ProxyBusObject getProxyObject()
        throws BusException
    {
        if (!m_isConnected)
            throw new BusException("Session is not connected, need to check isConnected, and reconnect.");
        else
            return m_bus.getProxyBusObject(getPeerName(), getObjectPath(), getSessionId(), getObjClassArr());
    }

    public int getSessionId()
    {
        return m_sessionId.intValue();
    }

    public abstract short getVersion()
        throws BusException;

    public void initBus(BusAttachment busattachment)
        throws Exception
    {
        if (!setBusAttachment(busattachment))
            throw new Exception("Illegal BusAttachment received");
        else
            return;
    }

    public boolean isConnected()
    {
        return m_isConnected;
    }

    public void setSessionId(Integer integer)
    {
        if (integer == null)
            m_isConnected = false;
        else
            m_isConnected = true;
        m_sessionId = integer;
    }

}

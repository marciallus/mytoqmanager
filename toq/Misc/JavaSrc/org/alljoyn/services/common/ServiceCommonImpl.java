// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.services.common;

import java.util.List;
import org.alljoyn.bus.BusAttachment;
import org.alljoyn.services.common.utils.GenericLogger;

// Referenced classes of package org.alljoyn.services.common:
//            ServiceCommon, DefaultGenericLogger, BusAlreadyExistException

public abstract class ServiceCommonImpl
    implements ServiceCommon
{

    protected static final String DAEMON_NAME_PREFIX = "org.alljoyn.BusNode.";
    protected static final String DAEMON_QUIET_PREFIX = "quiet@";
    protected static short m_port;
    protected String TAG;
    private BusAttachment m_bus;
    private boolean m_isClientRunning;
    private boolean m_isServerRunning;
    protected GenericLogger m_logger;

    public ServiceCommonImpl()
    {
        TAG = "";
    }

    protected BusAttachment getBus()
    {
        return m_bus;
    }

    public abstract List getBusObjectDescriptions();

    public GenericLogger getLogger()
    {
        if (m_logger == null)
            m_logger = new DefaultGenericLogger();
        return m_logger;
    }

    public boolean isClientRunning()
    {
        return m_isClientRunning;
    }

    public boolean isServerRunning()
    {
        return m_isServerRunning;
    }

    protected void setBus(BusAttachment busattachment)
        throws BusAlreadyExistException
    {
        if (busattachment == null)
            throw new IllegalArgumentException("BusAttachment can't be NULL");
        if (!busattachment.isConnected())
            throw new IllegalArgumentException("The received BusAttachment wasn't connected to the daemon");
        if (m_bus != null && !m_bus.getUniqueName().equals(busattachment.getUniqueName()))
        {
            throw new BusAlreadyExistException("The object has been set previously with a BusAttachment");
        } else
        {
            m_bus = busattachment;
            return;
        }
    }

    public void setLogger(GenericLogger genericlogger)
    {
        m_logger = genericlogger;
    }

    protected void startClient()
    {
        m_isClientRunning = true;
    }

    protected void startServer()
    {
        m_isServerRunning = true;
    }

    protected void stopClient()
    {
        m_isClientRunning = false;
        if (!m_isServerRunning)
            m_bus = null;
    }

    protected void stopServer()
    {
        m_isServerRunning = false;
        if (!m_isClientRunning)
            m_bus = null;
    }
}

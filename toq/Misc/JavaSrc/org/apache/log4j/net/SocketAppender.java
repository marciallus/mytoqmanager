// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.net;

import java.io.*;
import java.net.*;
import org.apache.log4j.AppenderSkeleton;
import org.apache.log4j.helpers.LogLog;
import org.apache.log4j.spi.ErrorHandler;
import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j.net:
//            ZeroConfSupport

public class SocketAppender extends AppenderSkeleton
{
    class Connector extends Thread
    {

        boolean interrupted;
        private final SocketAppender this$0;

        public void run()
        {
_L2:
            if (interrupted)
                break; /* Loop/switch isn't completed */
            sleep(reconnectionDelay);
            LogLog.debug("Attempting connection to " + address.getHostName());
            Socket socket = new Socket(address, port);
            this;
            JVM INSTR monitorenter ;
            oos = new ObjectOutputStream(socket.getOutputStream());
            connector = null;
            LogLog.debug("Connection established. Exiting connector thread.");
            this;
            JVM INSTR monitorexit ;
            return;
            Exception exception;
            exception;
            this;
            JVM INSTR monitorexit ;
            try
            {
                throw exception;
            }
            catch (InterruptedException interruptedexception)
            {
                LogLog.debug("Connector interrupted. Leaving loop.");
                return;
            }
            catch (ConnectException connectexception)
            {
                LogLog.debug("Remote host " + address.getHostName() + " refused connection.");
            }
            catch (IOException ioexception)
            {
                if (ioexception instanceof InterruptedIOException)
                    Thread.currentThread().interrupt();
                LogLog.debug("Could not connect to " + address.getHostName() + ". Exception is " + ioexception);
            }
            if (true) goto _L2; else goto _L1
_L1:
        }

        Connector()
        {
            this$0 = SocketAppender.this;
            super();
            interrupted = false;
        }
    }


    public static final int DEFAULT_PORT = 4560;
    static final int DEFAULT_RECONNECTION_DELAY = 30000;
    private static final int RESET_FREQUENCY = 1;
    public static final String ZONE = "_log4j_obj_tcpconnect_appender.local.";
    InetAddress address;
    private boolean advertiseViaMulticastDNS;
    private String application;
    private Connector connector;
    int counter;
    boolean locationInfo;
    ObjectOutputStream oos;
    int port;
    int reconnectionDelay;
    String remoteHost;
    private ZeroConfSupport zeroConf;

    public SocketAppender()
    {
        port = 4560;
        reconnectionDelay = 30000;
        locationInfo = false;
        counter = 0;
    }

    public SocketAppender(String s, int i)
    {
        port = 4560;
        reconnectionDelay = 30000;
        locationInfo = false;
        counter = 0;
        port = i;
        address = getAddressByName(s);
        remoteHost = s;
        connect(address, i);
    }

    public SocketAppender(InetAddress inetaddress, int i)
    {
        port = 4560;
        reconnectionDelay = 30000;
        locationInfo = false;
        counter = 0;
        address = inetaddress;
        remoteHost = inetaddress.getHostName();
        port = i;
        connect(inetaddress, i);
    }

    static InetAddress getAddressByName(String s)
    {
        InetAddress inetaddress;
        try
        {
            inetaddress = InetAddress.getByName(s);
        }
        catch (Exception exception)
        {
            if ((exception instanceof InterruptedIOException) || (exception instanceof InterruptedException))
                Thread.currentThread().interrupt();
            LogLog.error("Could not find address of [" + s + "].", exception);
            return null;
        }
        return inetaddress;
    }

    public void activateOptions()
    {
        if (advertiseViaMulticastDNS)
        {
            zeroConf = new ZeroConfSupport("_log4j_obj_tcpconnect_appender.local.", port, getName());
            zeroConf.advertise();
        }
        connect(address, port);
    }

    public void append(LoggingEvent loggingevent)
    {
        if (loggingevent != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (address == null)
        {
            errorHandler.error("No remote host is set for SocketAppender named \"" + name + "\".");
            return;
        }
        if (oos == null) goto _L1; else goto _L3
_L3:
        int i;
        try
        {
            if (locationInfo)
                loggingevent.getLocationInformation();
            if (application != null)
                loggingevent.setProperty("application", application);
            loggingevent.getNDC();
            loggingevent.getThreadName();
            loggingevent.getMDCCopy();
            loggingevent.getRenderedMessage();
            loggingevent.getThrowableStrRep();
            oos.writeObject(loggingevent);
            oos.flush();
            i = 1 + counter;
            counter = i;
        }
        catch (IOException ioexception)
        {
            if (ioexception instanceof InterruptedIOException)
                Thread.currentThread().interrupt();
            oos = null;
            LogLog.warn("Detected problem with connection: " + ioexception);
            if (reconnectionDelay > 0)
            {
                fireConnector();
                return;
            } else
            {
                errorHandler.error("Detected problem with connection, not reconnecting.", ioexception, 0);
                return;
            }
        }
        if (i < 1) goto _L1; else goto _L4
_L4:
        counter = 0;
        oos.reset();
        return;
    }

    public void cleanUp()
    {
        if (oos != null)
        {
            try
            {
                oos.close();
            }
            catch (IOException ioexception)
            {
                if (ioexception instanceof InterruptedIOException)
                    Thread.currentThread().interrupt();
                LogLog.error("Could not close oos.", ioexception);
            }
            oos = null;
        }
        if (connector != null)
        {
            connector.interrupted = true;
            connector = null;
        }
    }

    public void close()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = closed;
        if (!flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        closed = true;
        if (advertiseViaMulticastDNS)
            zeroConf.unadvertise();
        cleanUp();
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    void connect(InetAddress inetaddress, int i)
    {
        if (address == null)
            return;
        try
        {
            cleanUp();
            oos = new ObjectOutputStream((new Socket(inetaddress, i)).getOutputStream());
            return;
        }
        catch (IOException ioexception)
        {
            if (ioexception instanceof InterruptedIOException)
                Thread.currentThread().interrupt();
            String s = "Could not connect to remote log4j server at [" + inetaddress.getHostName() + "].";
            String s1;
            if (reconnectionDelay > 0)
            {
                s1 = s + " We will try again later.";
                fireConnector();
            } else
            {
                s1 = s + " We are not retrying.";
                errorHandler.error(s1, ioexception, 0);
            }
            LogLog.error(s1);
            return;
        }
    }

    void fireConnector()
    {
        if (connector == null)
        {
            LogLog.debug("Starting a new connector thread.");
            connector = new Connector();
            connector.setDaemon(true);
            connector.setPriority(1);
            connector.start();
        }
    }

    public String getApplication()
    {
        return application;
    }

    public boolean getLocationInfo()
    {
        return locationInfo;
    }

    public int getPort()
    {
        return port;
    }

    public int getReconnectionDelay()
    {
        return reconnectionDelay;
    }

    public String getRemoteHost()
    {
        return remoteHost;
    }

    public boolean isAdvertiseViaMulticastDNS()
    {
        return advertiseViaMulticastDNS;
    }

    public boolean requiresLayout()
    {
        return false;
    }

    public void setAdvertiseViaMulticastDNS(boolean flag)
    {
        advertiseViaMulticastDNS = flag;
    }

    public void setApplication(String s)
    {
        application = s;
    }

    public void setLocationInfo(boolean flag)
    {
        locationInfo = flag;
    }

    public void setPort(int i)
    {
        port = i;
    }

    public void setReconnectionDelay(int i)
    {
        reconnectionDelay = i;
    }

    public void setRemoteHost(String s)
    {
        address = getAddressByName(s);
        remoteHost = s;
    }


/*
    static Connector access$002(SocketAppender socketappender, Connector connector1)
    {
        socketappender.connector = connector1;
        return connector1;
    }

*/
}

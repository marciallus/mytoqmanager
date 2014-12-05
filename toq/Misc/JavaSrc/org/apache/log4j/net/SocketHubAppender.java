// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.net;

import java.io.*;
import java.net.*;
import java.util.Vector;
import org.apache.log4j.AppenderSkeleton;
import org.apache.log4j.helpers.CyclicBuffer;
import org.apache.log4j.helpers.LogLog;
import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j.net:
//            ZeroConfSupport

public class SocketHubAppender extends AppenderSkeleton
{
    private class ServerMonitor
        implements Runnable
    {

        private boolean keepRunning;
        private Thread monitorThread;
        private Vector oosList;
        private int port;
        private final SocketHubAppender this$0;

        private void sendCachedEvents(ObjectOutputStream objectoutputstream)
            throws IOException
        {
            if (buffer != null)
            {
                for (int i = 0; i < buffer.length(); i++)
                    objectoutputstream.writeObject(buffer.get(i));

                objectoutputstream.flush();
                objectoutputstream.reset();
            }
        }

        public void run()
        {
            Socket socket;
            serverSocket = null;
            Exception exception1;
            boolean flag;
            IOException ioexception3;
            InetAddress inetaddress;
            ObjectOutputStream objectoutputstream;
            Socket socket1;
            try
            {
                serverSocket = createServerSocket(port);
                serverSocket.setSoTimeout(1000);
            }
            catch (Exception exception)
            {
                if ((exception instanceof InterruptedIOException) || (exception instanceof InterruptedException))
                    Thread.currentThread().interrupt();
                LogLog.error("exception setting timeout, shutting down server socket.", exception);
                keepRunning = false;
                return;
            }
            serverSocket.setSoTimeout(1000);
_L4:
            flag = keepRunning;
            if (!flag) goto _L2; else goto _L1
_L1:
            socket1 = serverSocket.accept();
            socket = socket1;
_L5:
            if (socket == null) goto _L4; else goto _L3
_L3:
            inetaddress = socket.getInetAddress();
            LogLog.debug("accepting connection from " + inetaddress.getHostName() + " (" + inetaddress.getHostAddress() + ")");
            objectoutputstream = new ObjectOutputStream(socket.getOutputStream());
            if (buffer != null && buffer.length() > 0)
                sendCachedEvents(objectoutputstream);
            oosList.addElement(objectoutputstream);
              goto _L4
            ioexception3;
            if (ioexception3 instanceof InterruptedIOException)
                Thread.currentThread().interrupt();
            LogLog.error("exception creating output stream on socket.", ioexception3);
              goto _L4
            exception1;
            SocketException socketexception;
            InterruptedIOException interruptedioexception;
            InterruptedIOException interruptedioexception2;
            IOException ioexception4;
            SocketException socketexception1;
            try
            {
                serverSocket.close();
            }
            catch (InterruptedIOException interruptedioexception1)
            {
                Thread.currentThread().interrupt();
            }
            catch (IOException ioexception1) { }
            throw exception1;
            socketexception;
            LogLog.error("exception setting timeout, shutting down server socket.", socketexception);
            InterruptedIOException interruptedioexception3;
            try
            {
                serverSocket.close();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (InterruptedIOException interruptedioexception)
            {
                Thread.currentThread().interrupt();
                return;
            }
            catch (IOException ioexception)
            {
                return;
            }
              goto _L4
            socketexception1;
            LogLog.error("exception accepting socket, shutting down server socket.", socketexception1);
            keepRunning = false;
            socket = null;
              goto _L5
            ioexception4;
            LogLog.error("exception accepting socket.", ioexception4);
            socket = null;
              goto _L5
_L2:
            try
            {
                serverSocket.close();
                return;
            }
            // Misplaced declaration of an exception variable
            catch (InterruptedIOException interruptedioexception2)
            {
                Thread.currentThread().interrupt();
            }
            catch (IOException ioexception2)
            {
                return;
            }
            return;
            interruptedioexception3;
            socket = null;
              goto _L5
        }

        public void stopMonitor()
        {
            this;
            JVM INSTR monitorenter ;
            if (!keepRunning) goto _L2; else goto _L1
_L1:
            LogLog.debug("server monitor thread shutting down");
            keepRunning = false;
            Exception exception;
            InterruptedException interruptedexception;
            try
            {
                if (serverSocket != null)
                {
                    serverSocket.close();
                    serverSocket = null;
                }
            }
            catch (IOException ioexception) { }
            monitorThread.join();
_L3:
            monitorThread = null;
            LogLog.debug("server monitor thread shut down");
_L2:
            this;
            JVM INSTR monitorexit ;
            return;
            interruptedexception;
            Thread.currentThread().interrupt();
              goto _L3
            exception;
            throw exception;
        }

        public ServerMonitor(int i, Vector vector)
        {
            this$0 = SocketHubAppender.this;
            super();
            port = i;
            oosList = vector;
            keepRunning = true;
            monitorThread = new Thread(this);
            monitorThread.setDaemon(true);
            monitorThread.setName("SocketHubAppender-Monitor-" + port);
            monitorThread.start();
        }
    }


    static final int DEFAULT_PORT = 4560;
    public static final String ZONE = "_log4j_obj_tcpaccept_appender.local.";
    private boolean advertiseViaMulticastDNS;
    private String application;
    private CyclicBuffer buffer;
    private boolean locationInfo;
    private Vector oosList;
    private int port;
    private ServerMonitor serverMonitor;
    private ServerSocket serverSocket;
    private ZeroConfSupport zeroConf;

    public SocketHubAppender()
    {
        port = 4560;
        oosList = new Vector();
        serverMonitor = null;
        locationInfo = false;
        buffer = null;
    }

    public SocketHubAppender(int i)
    {
        port = 4560;
        oosList = new Vector();
        serverMonitor = null;
        locationInfo = false;
        buffer = null;
        port = i;
        startServer();
    }

    private void startServer()
    {
        serverMonitor = new ServerMonitor(port, oosList);
    }

    public void activateOptions()
    {
        if (advertiseViaMulticastDNS)
        {
            zeroConf = new ZeroConfSupport("_log4j_obj_tcpaccept_appender.local.", port, getName());
            zeroConf.advertise();
        }
        startServer();
    }

    public void append(LoggingEvent loggingevent)
    {
        if (loggingevent != null)
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
            if (buffer != null)
                buffer.add(loggingevent);
        }
        if (loggingevent != null && oosList.size() != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i = 0;
_L5:
        if (i >= oosList.size()) goto _L1; else goto _L3
_L3:
        ObjectOutputStream objectoutputstream;
        try
        {
            objectoutputstream = (ObjectOutputStream)oosList.elementAt(i);
        }
        catch (ArrayIndexOutOfBoundsException arrayindexoutofboundsexception)
        {
            objectoutputstream = null;
        }
        if (objectoutputstream == null) goto _L1; else goto _L4
_L4:
        try
        {
            objectoutputstream.writeObject(loggingevent);
            objectoutputstream.flush();
            objectoutputstream.reset();
        }
        catch (IOException ioexception)
        {
            if (ioexception instanceof InterruptedIOException)
                Thread.currentThread().interrupt();
            oosList.removeElementAt(i);
            LogLog.debug("dropped connection");
            i--;
        }
        i++;
          goto _L5
    }

    public void cleanUp()
    {
        LogLog.debug("stopping ServerSocket");
        serverMonitor.stopMonitor();
        serverMonitor = null;
        LogLog.debug("closing client connections");
        do
        {
            if (oosList.size() == 0)
                break;
            ObjectOutputStream objectoutputstream = (ObjectOutputStream)oosList.elementAt(0);
            if (objectoutputstream != null)
            {
                try
                {
                    objectoutputstream.close();
                }
                catch (InterruptedIOException interruptedioexception)
                {
                    Thread.currentThread().interrupt();
                    LogLog.error("could not close oos.", interruptedioexception);
                }
                catch (IOException ioexception)
                {
                    LogLog.error("could not close oos.", ioexception);
                }
                oosList.removeElementAt(0);
            }
        } while (true);
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
        LogLog.debug("closing SocketHubAppender " + getName());
        closed = true;
        if (advertiseViaMulticastDNS)
            zeroConf.unadvertise();
        cleanUp();
        LogLog.debug("SocketHubAppender " + getName() + " closed");
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    protected ServerSocket createServerSocket(int i)
        throws IOException
    {
        return new ServerSocket(i);
    }

    public String getApplication()
    {
        return application;
    }

    public int getBufferSize()
    {
        if (buffer == null)
            return 0;
        else
            return buffer.getMaxSize();
    }

    public boolean getLocationInfo()
    {
        return locationInfo;
    }

    public int getPort()
    {
        return port;
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

    public void setBufferSize(int i)
    {
        buffer = new CyclicBuffer(i);
    }

    public void setLocationInfo(boolean flag)
    {
        locationInfo = flag;
    }

    public void setPort(int i)
    {
        port = i;
    }



/*
    static ServerSocket access$002(SocketHubAppender sockethubappender, ServerSocket serversocket)
    {
        sockethubappender.serverSocket = serversocket;
        return serversocket;
    }

*/

}

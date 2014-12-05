// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.net;

import java.io.*;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.*;
import org.apache.log4j.AppenderSkeleton;
import org.apache.log4j.Layout;
import org.apache.log4j.helpers.LogLog;
import org.apache.log4j.spi.LoggingEvent;

public class TelnetAppender extends AppenderSkeleton
{
    protected class SocketHandler extends Thread
    {

        private int MAX_CONNECTIONS;
        private Vector connections;
        private ServerSocket serverSocket;
        private final TelnetAppender this$0;
        private Vector writers;

        public void close()
        {
            this;
            JVM INSTR monitorenter ;
            Enumeration enumeration = connections.elements();
_L2:
            boolean flag = enumeration.hasMoreElements();
            if (!flag)
                break MISSING_BLOCK_LABEL_52;
            ((Socket)enumeration.nextElement()).close();
            continue; /* Loop/switch isn't completed */
            InterruptedIOException interruptedioexception1;
            interruptedioexception1;
            Thread.currentThread().interrupt();
            continue; /* Loop/switch isn't completed */
            Exception exception;
            exception;
            this;
            JVM INSTR monitorexit ;
            throw exception;
            this;
            JVM INSTR monitorexit ;
            try
            {
                serverSocket.close();
                return;
            }
            catch (InterruptedIOException interruptedioexception)
            {
                Thread.currentThread().interrupt();
            }
            catch (IOException ioexception)
            {
                return;
            }
            catch (RuntimeException runtimeexception)
            {
                return;
            }
            return;
            RuntimeException runtimeexception1;
            runtimeexception1;
            continue; /* Loop/switch isn't completed */
            IOException ioexception1;
            ioexception1;
            if (true) goto _L2; else goto _L1
_L1:
        }

        public void finalize()
        {
            close();
        }

        public void run()
        {
_L2:
            if (serverSocket.isClosed())
                break MISSING_BLOCK_LABEL_156;
            Socket socket;
            PrintWriter printwriter;
            socket = serverSocket.accept();
            printwriter = new PrintWriter(socket.getOutputStream());
            if (connections.size() >= MAX_CONNECTIONS)
                break MISSING_BLOCK_LABEL_164;
            this;
            JVM INSTR monitorenter ;
            connections.addElement(socket);
            writers.addElement(printwriter);
            printwriter.print("TelnetAppender v1.0 (" + connections.size() + " active connections)\r\n\r\n");
            printwriter.flush();
            this;
            JVM INSTR monitorexit ;
            continue; /* Loop/switch isn't completed */
            Exception exception1;
            exception1;
            this;
            JVM INSTR monitorexit ;
            try
            {
                throw exception1;
            }
            catch (Exception exception)
            {
                if ((exception instanceof InterruptedIOException) || (exception instanceof InterruptedException))
                    Thread.currentThread().interrupt();
                if (!serverSocket.isClosed())
                    LogLog.error("Encountered error while in SocketHandler loop.", exception);
            }
            try
            {
                serverSocket.close();
                return;
            }
            catch (InterruptedIOException interruptedioexception)
            {
                Thread.currentThread().interrupt();
            }
            catch (IOException ioexception)
            {
                return;
            }
            break; /* Loop/switch isn't completed */
            printwriter.print("Too many connections.\r\n");
            printwriter.flush();
            socket.close();
            if (true) goto _L2; else goto _L1
_L1:
        }

        public void send(String s)
        {
            this;
            JVM INSTR monitorenter ;
            Iterator iterator = connections.iterator();
            Iterator iterator1 = writers.iterator();
            do
            {
                if (!iterator1.hasNext())
                    break;
                iterator.next();
                PrintWriter printwriter = (PrintWriter)iterator1.next();
                printwriter.print(s);
                if (printwriter.checkError())
                {
                    iterator.remove();
                    iterator1.remove();
                }
            } while (true);
            break MISSING_BLOCK_LABEL_83;
            Exception exception;
            exception;
            throw exception;
            this;
            JVM INSTR monitorexit ;
        }

        public SocketHandler(int i)
            throws IOException
        {
            this$0 = TelnetAppender.this;
            super();
            writers = new Vector();
            connections = new Vector();
            MAX_CONNECTIONS = 20;
            serverSocket = new ServerSocket(i);
            setName("TelnetAppender-" + getName() + "-" + i);
        }
    }


    private int port;
    private SocketHandler sh;

    public TelnetAppender()
    {
        port = 23;
    }

    public void activateOptions()
    {
        try
        {
            sh = new SocketHandler(port);
            sh.start();
        }
        catch (InterruptedIOException interruptedioexception)
        {
            Thread.currentThread().interrupt();
            interruptedioexception.printStackTrace();
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        catch (RuntimeException runtimeexception)
        {
            runtimeexception.printStackTrace();
        }
        super.activateOptions();
    }

    protected void append(LoggingEvent loggingevent)
    {
        if (sh != null)
        {
            sh.send(layout.format(loggingevent));
            if (layout.ignoresThrowable())
            {
                String as[] = loggingevent.getThrowableStrRep();
                if (as != null)
                {
                    StringBuffer stringbuffer = new StringBuffer();
                    for (int i = 0; i < as.length; i++)
                    {
                        stringbuffer.append(as[i]);
                        stringbuffer.append("\r\n");
                    }

                    sh.send(stringbuffer.toString());
                }
            }
        }
    }

    public void close()
    {
        if (sh == null)
            break MISSING_BLOCK_LABEL_21;
        sh.close();
        sh.join();
        return;
        InterruptedException interruptedexception;
        interruptedexception;
        Thread.currentThread().interrupt();
        return;
    }

    public int getPort()
    {
        return port;
    }

    public boolean requiresLayout()
    {
        return true;
    }

    public void setPort(int i)
    {
        port = i;
    }
}

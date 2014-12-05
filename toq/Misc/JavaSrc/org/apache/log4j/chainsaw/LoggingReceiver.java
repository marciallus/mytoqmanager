// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.chainsaw;

import java.io.*;
import java.net.*;
import org.apache.log4j.Logger;
import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j.chainsaw:
//            MyTableModel, EventDetails

class LoggingReceiver extends Thread
{
    private class Slurper
        implements Runnable
    {

        private final Socket mClient;
        private final LoggingReceiver this$0;

        public void run()
        {
            LoggingReceiver.LOG.debug("Starting to get data");
            try
            {
                ObjectInputStream objectinputstream = new ObjectInputStream(mClient.getInputStream());
                do
                {
                    LoggingEvent loggingevent = (LoggingEvent)objectinputstream.readObject();
                    mModel.addEvent(new EventDetails(loggingevent));
                } while (true);
            }
            catch (EOFException eofexception)
            {
                LoggingReceiver.LOG.info("Reached EOF, closing connection");
            }
            catch (SocketException socketexception)
            {
                LoggingReceiver.LOG.info("Caught SocketException, closing connection");
            }
            catch (IOException ioexception1)
            {
                LoggingReceiver.LOG.warn("Got IOException, closing connection", ioexception1);
            }
            catch (ClassNotFoundException classnotfoundexception)
            {
                LoggingReceiver.LOG.warn("Got ClassNotFoundException, closing connection", classnotfoundexception);
            }
            try
            {
                mClient.close();
                return;
            }
            catch (IOException ioexception)
            {
                LoggingReceiver.LOG.warn("Error closing connection", ioexception);
            }
        }

        Slurper(Socket socket)
        {
            this$0 = LoggingReceiver.this;
            super();
            mClient = socket;
        }
    }


    private static final Logger LOG;
    static Class class$org$apache$log4j$chainsaw$LoggingReceiver;
    private MyTableModel mModel;
    private ServerSocket mSvrSock;

    LoggingReceiver(MyTableModel mytablemodel, int i)
        throws IOException
    {
        setDaemon(true);
        mModel = mytablemodel;
        mSvrSock = new ServerSocket(i);
    }

    static Class _mthclass$(String s)
    {
        Class class1;
        try
        {
            class1 = Class.forName(s);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            throw (new NoClassDefFoundError()).initCause(classnotfoundexception);
        }
        return class1;
    }

    public void run()
    {
        LOG.info("Thread started");
        try
        {
            do
            {
                LOG.debug("Waiting for a connection");
                Socket socket = mSvrSock.accept();
                LOG.debug("Got a connection from " + socket.getInetAddress().getHostName());
                Thread thread = new Thread(new Slurper(socket));
                thread.setDaemon(true);
                thread.start();
            } while (true);
        }
        catch (IOException ioexception)
        {
            LOG.error("Error in accepting connections, stopping.", ioexception);
        }
    }

    static 
    {
        Class class1;
        if (class$org$apache$log4j$chainsaw$LoggingReceiver == null)
        {
            class1 = _mthclass$("org.apache.log4j.chainsaw.LoggingReceiver");
            class$org$apache$log4j$chainsaw$LoggingReceiver = class1;
        } else
        {
            class1 = class$org$apache$log4j$chainsaw$LoggingReceiver;
        }
        LOG = Logger.getLogger(class1);
    }


}

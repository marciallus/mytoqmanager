// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.varia;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ServerSocket;
import java.net.Socket;
import org.apache.log4j.helpers.LogLog;

// Referenced classes of package org.apache.log4j.varia:
//            HUPNode, ExternallyRolledFileAppender

class HUP extends Thread
{

    ExternallyRolledFileAppender er;
    int port;

    HUP(ExternallyRolledFileAppender externallyrolledfileappender, int i)
    {
        er = externallyrolledfileappender;
        port = i;
    }

    public void run()
    {
        while (!isInterrupted()) 
            try
            {
                ServerSocket serversocket = new ServerSocket(port);
                do
                {
                    Socket socket = serversocket.accept();
                    LogLog.debug("Connected to client at " + socket.getInetAddress());
                    (new Thread(new HUPNode(socket, er), "ExternallyRolledFileAppender-HUP")).start();
                } while (true);
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
    }
}

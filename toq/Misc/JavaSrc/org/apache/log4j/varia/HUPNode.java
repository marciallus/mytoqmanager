// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.varia;

import java.io.*;
import java.net.Socket;
import org.apache.log4j.helpers.LogLog;

// Referenced classes of package org.apache.log4j.varia:
//            ExternallyRolledFileAppender

class HUPNode
    implements Runnable
{

    DataInputStream dis;
    DataOutputStream dos;
    ExternallyRolledFileAppender er;
    Socket socket;

    public HUPNode(Socket socket1, ExternallyRolledFileAppender externallyrolledfileappender)
    {
        socket = socket1;
        er = externallyrolledfileappender;
        try
        {
            dis = new DataInputStream(socket1.getInputStream());
            dos = new DataOutputStream(socket1.getOutputStream());
            return;
        }
        catch (InterruptedIOException interruptedioexception)
        {
            Thread.currentThread().interrupt();
            interruptedioexception.printStackTrace();
            return;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return;
        }
        catch (RuntimeException runtimeexception)
        {
            runtimeexception.printStackTrace();
        }
    }

    public void run()
    {
        String s = dis.readUTF();
        LogLog.debug("Got external roll over signal.");
        if (!"RollOver".equals(s))
            break MISSING_BLOCK_LABEL_82;
        synchronized (er)
        {
            er.rollOver();
        }
        dos.writeUTF("OK");
_L1:
        dos.close();
        return;
        exception;
        externallyrolledfileappender;
        JVM INSTR monitorexit ;
        try
        {
            throw exception;
        }
        catch (InterruptedIOException interruptedioexception)
        {
            Thread.currentThread().interrupt();
            LogLog.error("Unexpected exception. Exiting HUPNode.", interruptedioexception);
            return;
        }
        catch (IOException ioexception)
        {
            LogLog.error("Unexpected exception. Exiting HUPNode.", ioexception);
            return;
        }
        catch (RuntimeException runtimeexception)
        {
            LogLog.error("Unexpected exception. Exiting HUPNode.", runtimeexception);
        }
        break MISSING_BLOCK_LABEL_109;
        dos.writeUTF("Expecting [RollOver] string.");
          goto _L1
    }
}

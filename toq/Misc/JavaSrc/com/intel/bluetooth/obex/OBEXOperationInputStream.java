// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth.obex;

import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package com.intel.bluetooth.obex:
//            OBEXOperation, OBEXOperationReceive

class OBEXOperationInputStream extends InputStream
{

    private int appendPos;
    private byte buffer[];
    private boolean eofReceived;
    private boolean isClosed;
    private Object lock;
    private final OBEXOperation operation;
    private int readPos;

    OBEXOperationInputStream(OBEXOperation obexoperation)
    {
        buffer = new byte[256];
        readPos = 0;
        appendPos = 0;
        lock = new Object();
        isClosed = false;
        eofReceived = false;
        operation = obexoperation;
    }

    void appendData(byte abyte0[], boolean flag)
    {
        if (isClosed || eofReceived)
            return;
        Object obj = lock;
        obj;
        JVM INSTR monitorenter ;
        if (!flag)
            break MISSING_BLOCK_LABEL_31;
        eofReceived = true;
        if (abyte0 == null)
            break MISSING_BLOCK_LABEL_167;
        if (abyte0.length != 0)
        {
            if (appendPos + abyte0.length > buffer.length)
            {
                int i = 2 * (abyte0.length + (appendPos - readPos));
                if (i < buffer.length)
                    i = buffer.length;
                byte abyte1[] = new byte[i];
                System.arraycopy(buffer, readPos, abyte1, 0, appendPos - readPos);
                buffer = abyte1;
                appendPos = appendPos - readPos;
                readPos = 0;
            }
            System.arraycopy(abyte0, 0, buffer, appendPos, abyte0.length);
            appendPos = appendPos + abyte0.length;
        }
        lock.notifyAll();
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public int available()
        throws IOException
    {
        int i;
        synchronized (lock)
        {
            i = appendPos - readPos;
        }
        return i;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void close()
        throws IOException
    {
        isClosed = true;
        synchronized (lock)
        {
            lock.notifyAll();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public int read()
        throws IOException
    {
        if (isClosed)
            throw new IOException("Stream closed");
        if (operation.isClosed() && appendPos == readPos)
            return -1;
        if (true) goto _L2; else goto _L1
_L1:
        obj;
        JVM INSTR monitorenter ;
_L2:
label0:
        {
            synchronized (lock)
            {
                if (!eofReceived && (operation instanceof OBEXOperationReceive) && !isClosed && !operation.isClosed() && appendPos == readPos)
                    break label0;
                if (appendPos != readPos)
                    break MISSING_BLOCK_LABEL_132;
            }
            return -1;
        }
        ((OBEXOperationReceive)operation).receiveData(this);
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        int j;
        byte abyte0[] = buffer;
        int i = readPos;
        readPos = i + 1;
        j = 0xff & abyte0[i];
        obj;
        JVM INSTR monitorexit ;
        return j;
    }
}

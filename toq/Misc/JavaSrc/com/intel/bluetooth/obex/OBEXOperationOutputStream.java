// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth.obex;

import java.io.IOException;
import java.io.OutputStream;

// Referenced classes of package com.intel.bluetooth.obex:
//            OBEXOperationDelivery

class OBEXOperationOutputStream extends OutputStream
{

    private byte buffer[];
    private int bufferLength;
    private boolean isClosed;
    private Object lock;
    private final OBEXOperationDelivery operation;

    OBEXOperationOutputStream(int i, OBEXOperationDelivery obexoperationdelivery)
    {
        lock = new Object();
        isClosed = false;
        operation = obexoperationdelivery;
        buffer = new byte[i - 11];
        bufferLength = 0;
    }

    void abort()
    {
        synchronized (lock)
        {
            isClosed = true;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void close()
        throws IOException
    {
        if (!isClosed)
        {
            synchronized (lock)
            {
                isClosed = true;
                if (!operation.isClosed())
                    deliverBuffer(true);
            }
            return;
        } else
        {
            return;
        }
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    void deliverBuffer(boolean flag)
        throws IOException
    {
        synchronized (lock)
        {
            byte abyte0[] = new byte[bufferLength];
            System.arraycopy(buffer, 0, abyte0, 0, bufferLength);
            operation.deliverPacket(flag, abyte0);
            bufferLength = 0;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void flush()
        throws IOException
    {
        if (bufferLength > 0)
            deliverBuffer(false);
    }

    public void write(int i)
        throws IOException
    {
        byte abyte0[] = new byte[1];
        abyte0[0] = (byte)i;
        write(abyte0, 0, 1);
    }

    public void write(byte abyte0[], int i, int j)
        throws IOException
    {
        if (operation.isClosed() || isClosed)
            throw new IOException("stream closed");
        if (abyte0 == null)
            throw new NullPointerException();
        if (i < 0 || j < 0 || i + j > abyte0.length)
            throw new IndexOutOfBoundsException();
        if (j == 0)
            return;
        Object obj = lock;
        obj;
        JVM INSTR monitorenter ;
        int k = 0;
_L2:
        if (k < j)
            break MISSING_BLOCK_LABEL_100;
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        int l = buffer.length - bufferLength;
        if (j - k < l)
            l = j - k;
        System.arraycopy(abyte0, i + k, buffer, bufferLength, l);
        bufferLength = l + bufferLength;
        k += l;
        if (bufferLength != buffer.length) goto _L2; else goto _L1
_L1:
        operation.deliverPacket(false, buffer);
        bufferLength = 0;
          goto _L2
    }
}

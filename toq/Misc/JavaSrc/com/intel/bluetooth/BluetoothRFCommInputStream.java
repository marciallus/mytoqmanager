// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package com.intel.bluetooth:
//            BluetoothRFCommConnection, BluetoothStack

class BluetoothRFCommInputStream extends InputStream
{

    private volatile BluetoothRFCommConnection conn;

    public BluetoothRFCommInputStream(BluetoothRFCommConnection bluetoothrfcommconnection)
    {
        conn = bluetoothrfcommconnection;
    }

    public int available()
        throws IOException
    {
        this;
        JVM INSTR monitorenter ;
        if (conn == null)
            throw new IOException("Stream closed");
        break MISSING_BLOCK_LABEL_24;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        int i = conn.bluetoothStack.connectionRfReadAvailable(conn.handle);
        this;
        JVM INSTR monitorexit ;
        return i;
    }

    public void close()
        throws IOException
    {
        BluetoothRFCommConnection bluetoothrfcommconnection = conn;
        if (bluetoothrfcommconnection != null)
        {
            conn = null;
            bluetoothrfcommconnection.streamClosed();
        }
    }

    boolean isClosed()
    {
        return conn == null;
    }

    public int read()
        throws IOException
    {
        if (conn == null)
            throw new IOException("Stream closed");
        int i;
        try
        {
            i = conn.bluetoothStack.connectionRfRead(conn.handle);
        }
        catch (IOException ioexception)
        {
            if (isClosed())
                return -1;
            else
                throw ioexception;
        }
        return i;
    }

    public int read(byte abyte0[], int i, int j)
        throws IOException
    {
        if (i < 0 || j < 0 || i + j > abyte0.length)
            throw new IndexOutOfBoundsException();
        if (conn == null)
            throw new IOException("Stream closed");
        if (j == 0)
            return 0;
        int k;
        try
        {
            k = conn.bluetoothStack.connectionRfRead(conn.handle, abyte0, i, j);
        }
        catch (IOException ioexception)
        {
            if (isClosed())
                return -1;
            else
                throw ioexception;
        }
        return k;
    }
}

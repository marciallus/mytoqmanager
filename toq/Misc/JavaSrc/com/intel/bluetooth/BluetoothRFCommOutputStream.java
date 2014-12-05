// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.IOException;
import java.io.OutputStream;

// Referenced classes of package com.intel.bluetooth:
//            BluetoothRFCommConnection, BluetoothStack

class BluetoothRFCommOutputStream extends OutputStream
{

    private volatile BluetoothRFCommConnection conn;

    public BluetoothRFCommOutputStream(BluetoothRFCommConnection bluetoothrfcommconnection)
    {
        conn = bluetoothrfcommconnection;
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

    public void flush()
        throws IOException
    {
        if (conn == null)
        {
            throw new IOException("Stream closed");
        } else
        {
            super.flush();
            conn.bluetoothStack.connectionRfFlush(conn.handle);
            return;
        }
    }

    boolean isClosed()
    {
        return conn == null;
    }

    public void write(int i)
        throws IOException
    {
        if (conn == null)
        {
            throw new IOException("Stream closed");
        } else
        {
            conn.bluetoothStack.connectionRfWrite(conn.handle, i);
            return;
        }
    }

    public void write(byte abyte0[], int i, int j)
        throws IOException
    {
        if (i >= 0 && j >= 0 && i + j <= abyte0.length)
        {
            if (conn == null)
            {
                throw new IOException("Stream closed");
            } else
            {
                conn.bluetoothStack.connectionRfWrite(conn.handle, abyte0, i, j);
                return;
            }
        } else
        {
            throw new IndexOutOfBoundsException();
        }
    }
}

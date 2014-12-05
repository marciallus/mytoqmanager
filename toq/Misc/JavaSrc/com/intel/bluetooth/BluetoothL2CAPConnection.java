// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.IOException;
import javax.bluetooth.L2CAPConnection;
import javax.bluetooth.RemoteDevice;

// Referenced classes of package com.intel.bluetooth:
//            BluetoothConnectionAccess, BluetoothStack, DebugLog

abstract class BluetoothL2CAPConnection
    implements BluetoothConnectionAccess, L2CAPConnection
{

    protected BluetoothStack bluetoothStack;
    protected volatile long handle;
    private boolean isClosed;
    private RemoteDevice remoteDevice;
    protected int securityOpt;
    protected int transmitMTU;

    protected BluetoothL2CAPConnection(BluetoothStack bluetoothstack, long l)
    {
        bluetoothStack = bluetoothstack;
        handle = l;
        isClosed = false;
    }

    public void close()
        throws IOException
    {
        if (isClosed)
        {
            return;
        } else
        {
            isClosed = true;
            shutdown();
            return;
        }
    }

    abstract void closeConnectionHandle(long l)
        throws IOException;

    public boolean encrypt(long l, boolean flag)
        throws IOException
    {
        boolean flag1;
label0:
        {
            if (isClosed)
                throw new IOException("L2CAP Connection is already closed");
            flag1 = bluetoothStack.l2Encrypt(l, handle, flag);
            if (flag1)
            {
                if (!flag)
                    break label0;
                securityOpt = 2;
            }
            return flag1;
        }
        securityOpt = 1;
        return flag1;
    }

    protected void finalize()
    {
        try
        {
            close();
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
    }

    public BluetoothStack getBluetoothStack()
    {
        return bluetoothStack;
    }

    public int getReceiveMTU()
        throws IOException
    {
        if (isClosed)
            throw new IOException("Connection closed");
        else
            return bluetoothStack.l2GetReceiveMTU(handle);
    }

    public long getRemoteAddress()
        throws IOException
    {
        if (isClosed)
            throw new IOException("Connection closed");
        else
            return bluetoothStack.l2RemoteAddress(handle);
    }

    public RemoteDevice getRemoteDevice()
    {
        return remoteDevice;
    }

    public int getSecurityOpt()
    {
        try
        {
            securityOpt = bluetoothStack.l2GetSecurityOpt(handle, securityOpt);
        }
        catch (IOException ioexception) { }
        return securityOpt;
    }

    public int getTransmitMTU()
        throws IOException
    {
        if (isClosed)
            throw new IOException("Connection closed");
        else
            return bluetoothStack.l2GetTransmitMTU(handle);
    }

    public boolean isClosed()
    {
        return isClosed;
    }

    public void markAuthenticated()
    {
        if (securityOpt == 0)
            securityOpt = 1;
    }

    public boolean ready()
        throws IOException
    {
        if (isClosed)
            throw new IOException("Connection closed");
        else
            return bluetoothStack.l2Ready(handle);
    }

    public int receive(byte abyte0[])
        throws IOException
    {
        if (isClosed)
            throw new IOException("Connection closed");
        if (abyte0 == null)
            throw new NullPointerException("inBuf is null");
        else
            return bluetoothStack.l2Receive(handle, abyte0);
    }

    public void send(byte abyte0[])
        throws IOException
    {
        if (isClosed)
            throw new IOException("Connection closed");
        if (abyte0 == null)
        {
            throw new NullPointerException("data is null");
        } else
        {
            bluetoothStack.l2Send(handle, abyte0, transmitMTU);
            return;
        }
    }

    public void setRemoteDevice(RemoteDevice remotedevice)
    {
        remoteDevice = remotedevice;
    }

    public void shutdown()
        throws IOException
    {
        if (handle == 0L)
            break MISSING_BLOCK_LABEL_43;
        DebugLog.debug("closing L2CAP Connection", handle);
        this;
        JVM INSTR monitorenter ;
        long l;
        l = handle;
        handle = 0L;
        this;
        JVM INSTR monitorexit ;
        if (l != 0L)
            closeConnectionHandle(l);
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }
}

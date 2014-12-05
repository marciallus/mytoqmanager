// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.*;
import javax.bluetooth.RemoteDevice;
import javax.microedition.io.StreamConnection;

// Referenced classes of package com.intel.bluetooth:
//            BluetoothConnectionAccess, BluetoothStack, BluetoothRFCommInputStream, BluetoothRFCommOutputStream, 
//            DebugLog

abstract class BluetoothRFCommConnection
    implements BluetoothConnectionAccess, StreamConnection
{

    protected BluetoothStack bluetoothStack;
    protected volatile long handle;
    private BluetoothRFCommInputStream in;
    private boolean isClosed;
    private BluetoothRFCommOutputStream out;
    RemoteDevice remoteDevice;
    protected int securityOpt;

    protected BluetoothRFCommConnection(BluetoothStack bluetoothstack, long l)
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
            streamClosed();
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
                throw new IOException("RFCOMM Connection is already closed");
            flag1 = bluetoothStack.rfEncrypt(l, handle, flag);
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

    public long getRemoteAddress()
        throws IOException
    {
        if (isClosed)
            throw new IOException("Connection closed");
        else
            return bluetoothStack.getConnectionRfRemoteAddress(handle);
    }

    public RemoteDevice getRemoteDevice()
    {
        return remoteDevice;
    }

    public int getSecurityOpt()
    {
        try
        {
            securityOpt = bluetoothStack.rfGetSecurityOpt(handle, securityOpt);
        }
        catch (IOException ioexception) { }
        return securityOpt;
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

    public DataInputStream openDataInputStream()
        throws IOException
    {
        return new DataInputStream(openInputStream());
    }

    public DataOutputStream openDataOutputStream()
        throws IOException
    {
        return new DataOutputStream(openOutputStream());
    }

    public InputStream openInputStream()
        throws IOException
    {
        if (isClosed)
            throw new IOException("RFCOMM Connection is already closed");
        if (in == null)
        {
            in = new BluetoothRFCommInputStream(this);
            return in;
        }
        if (in.isClosed())
            throw new IOException("Stream cannot be reopened");
        else
            throw new IOException("Another InputStream already opened");
    }

    public OutputStream openOutputStream()
        throws IOException
    {
        if (isClosed)
            throw new IOException("RFCOMM Connection is already closed");
        if (out == null)
        {
            out = new BluetoothRFCommOutputStream(this);
            return out;
        }
        if (out.isClosed())
            throw new IOException("Stream cannot be reopened");
        else
            throw new IOException("Another OutputStream already opened");
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
        DebugLog.debug("closing RFCOMM Connection", handle);
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

    void streamClosed()
        throws IOException
    {
        if (isClosed && (in == null || in.isClosed()) && (out == null || out.isClosed()))
        {
            shutdown();
            return;
        } else
        {
            return;
        }
    }
}

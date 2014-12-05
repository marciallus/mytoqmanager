// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.IOException;
import javax.bluetooth.RemoteDevice;

// Referenced classes of package com.intel.bluetooth:
//            BluetoothConnectionAccess, BluetoothStack

public abstract class BluetoothConnectionAccessAdapter
    implements BluetoothConnectionAccess
{


    public boolean encrypt(long l, boolean flag)
        throws IOException
    {
        return getImpl().encrypt(l, flag);
    }

    public BluetoothStack getBluetoothStack()
    {
        return getImpl().getBluetoothStack();
    }

    protected abstract BluetoothConnectionAccess getImpl();

    public long getRemoteAddress()
        throws IOException
    {
        return getImpl().getRemoteAddress();
    }

    public RemoteDevice getRemoteDevice()
    {
        return getImpl().getRemoteDevice();
    }

    public int getSecurityOpt()
    {
        return getImpl().getSecurityOpt();
    }

    public boolean isClosed()
    {
        return getImpl().isClosed();
    }

    public void markAuthenticated()
    {
        getImpl().markAuthenticated();
    }

    public void setRemoteDevice(RemoteDevice remotedevice)
    {
        getImpl().setRemoteDevice(remotedevice);
    }

    public void shutdown()
        throws IOException
    {
        getImpl().shutdown();
    }
}

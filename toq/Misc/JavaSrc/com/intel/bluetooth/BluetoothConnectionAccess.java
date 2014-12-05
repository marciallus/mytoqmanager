// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.IOException;
import javax.bluetooth.RemoteDevice;

// Referenced classes of package com.intel.bluetooth:
//            BluetoothStack

public interface BluetoothConnectionAccess
{

    public abstract boolean encrypt(long l, boolean flag)
        throws IOException;

    public abstract BluetoothStack getBluetoothStack();

    public abstract long getRemoteAddress()
        throws IOException;

    public abstract RemoteDevice getRemoteDevice();

    public abstract int getSecurityOpt();

    public abstract boolean isClosed();

    public abstract void markAuthenticated();

    public abstract void setRemoteDevice(RemoteDevice remotedevice);

    public abstract void shutdown()
        throws IOException;
}

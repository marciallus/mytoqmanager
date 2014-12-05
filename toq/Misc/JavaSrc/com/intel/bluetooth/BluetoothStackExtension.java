// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.IOException;

public interface BluetoothStackExtension
{

    public abstract int readRemoteDeviceRSSI(long l)
        throws IOException;
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import javax.bluetooth.BluetoothStateException;
import javax.bluetooth.DiscoveryListener;

// Referenced classes of package com.intel.bluetooth:
//            DeviceInquiryThread

interface DeviceInquiryRunnable
{

    public abstract void deviceDiscoveredCallback(DiscoveryListener discoverylistener, long l, int i, String s, boolean flag);

    public abstract int runDeviceInquiry(DeviceInquiryThread deviceinquirythread, int i, DiscoveryListener discoverylistener)
        throws BluetoothStateException;
}

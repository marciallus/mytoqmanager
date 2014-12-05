// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package javax.bluetooth;

import com.intel.bluetooth.BluetoothConsts;
import com.intel.bluetooth.DebugLog;

public class DeviceClass
{

    private static final int MAJOR_MASK = 7936;
    private static final int MINOR_MASK = 252;
    private static final int SERVICE_MASK = 0xffe000;
    private int record;

    public DeviceClass(int i)
    {
        DebugLog.debug("new DeviceClass", i);
        record = i;
        if ((0xff000000 & i) != 0)
            throw new IllegalArgumentException();
        else
            return;
    }

    public int getMajorDeviceClass()
    {
        return 0x1f00 & record;
    }

    public int getMinorDeviceClass()
    {
        return 0xfc & record;
    }

    public int getServiceClasses()
    {
        return 0xffe000 & record;
    }

    public String toString()
    {
        return BluetoothConsts.toString(this);
    }
}

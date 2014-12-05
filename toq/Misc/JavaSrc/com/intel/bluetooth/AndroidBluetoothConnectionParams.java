// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;


// Referenced classes of package com.intel.bluetooth:
//            BluetoothConnectionParams

class AndroidBluetoothConnectionParams extends BluetoothConnectionParams
{

    String serviceUUID;

    public AndroidBluetoothConnectionParams(long l, boolean flag, boolean flag1)
    {
        super(l, -1, flag, flag1);
    }

    public void setServiceUUID(String s)
    {
        serviceUUID = s;
    }
}

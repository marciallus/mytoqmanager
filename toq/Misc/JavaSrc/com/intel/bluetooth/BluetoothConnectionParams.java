// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;


class BluetoothConnectionParams
{

    public static final int DEFAULT_CONNECT_TIMEOUT = 0x1d4c0;
    long address;
    boolean authenticate;
    int channel;
    boolean encrypt;
    public int timeout;
    boolean timeouts;

    public BluetoothConnectionParams(long l, int i, boolean flag, boolean flag1)
    {
        timeout = 0x1d4c0;
        address = l;
        channel = i;
        authenticate = flag;
        encrypt = flag1;
    }
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth.obex;


public class OBEXConnectionParams
{

    public static final int DEFAULT_TIMEOUT = 0x1d4c0;
    public static final int OBEX_DEFAULT_MTU = 1024;
    public int mtu;
    public int timeout;
    public boolean timeouts;

    public OBEXConnectionParams()
    {
        timeout = 0x1d4c0;
        mtu = 1024;
    }
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import javax.bluetooth.UUID;

class BluetoothConnectionNotifierParams
{

    boolean authenticate;
    boolean authorize;
    int bluecove_ext_psm;
    boolean encrypt;
    boolean master;
    String name;
    boolean obex;
    boolean timeouts;
    UUID uuid;

    public BluetoothConnectionNotifierParams(UUID uuid1, boolean flag, boolean flag1, boolean flag2, String s, boolean flag3)
    {
        bluecove_ext_psm = 0;
        uuid = uuid1;
        authenticate = flag;
        encrypt = flag1;
        authorize = flag2;
        name = s;
        master = flag3;
        obex = false;
    }
}

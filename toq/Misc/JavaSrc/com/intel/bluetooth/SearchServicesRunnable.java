// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import javax.bluetooth.*;

// Referenced classes of package com.intel.bluetooth:
//            SearchServicesThread

interface SearchServicesRunnable
{

    public abstract int runSearchServices(SearchServicesThread searchservicesthread, int ai[], UUID auuid[], RemoteDevice remotedevice, DiscoveryListener discoverylistener)
        throws BluetoothStateException;
}

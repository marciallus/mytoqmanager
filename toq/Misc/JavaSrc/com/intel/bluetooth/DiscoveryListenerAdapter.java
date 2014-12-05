// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import javax.bluetooth.*;

// Referenced classes of package com.intel.bluetooth:
//            DebugLog

class DiscoveryListenerAdapter
    implements DiscoveryListener
{


    public void deviceDiscovered(RemoteDevice remotedevice, DeviceClass deviceclass)
    {
    }

    public void inquiryCompleted(int i)
    {
        DebugLog.debug("inquiryCompleted", i);
    }

    public void serviceSearchCompleted(int i, int j)
    {
        DebugLog.debug("serviceSearchCompleted", j);
    }

    public void servicesDiscovered(int i, ServiceRecord aservicerecord[])
    {
    }
}

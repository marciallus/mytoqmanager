// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice;

import android.util.Log;
import java.util.*;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice:
//            DeviceRegistry, ControllableDevice

public class DefaultDeviceRegistry
    implements DeviceRegistry
{

    private static final String TAG = (new StringBuilder()).append("cpan").append(org/alljoyn/ioe/controlpanelservice/DefaultDeviceRegistry.getSimpleName()).toString();
    private Map controllableDevices;

    public DefaultDeviceRegistry()
    {
        controllableDevices = new HashMap();
    }

    public void foundNewDevice(ControllableDevice controllabledevice)
    {
        controllableDevices.put(controllabledevice.getDeviceId(), controllabledevice);
        Log.d(TAG, (new StringBuilder()).append("Added device, deviceId: '").append(controllabledevice.getDeviceId()).append("'").toString());
    }

    public Map getDevices()
    {
        return Collections.unmodifiableMap(controllableDevices);
    }

    public void reachabilityChanged(ControllableDevice controllabledevice, boolean flag)
    {
        Log.d(TAG, (new StringBuilder()).append("ReachabilityChanged for device: '").append(controllabledevice.getDeviceId()).append("' the device isReachable: '").append(flag).append("'").toString());
    }

    public void removeDevice(ControllableDevice controllabledevice)
    {
        Log.d(TAG, (new StringBuilder()).append("Remove device called, deviceId: '").append(controllabledevice.getDeviceId()).append("', cancelFindAdvertise name and remove the device from the registry").toString());
        controllabledevice.stopDeviceActivities();
        controllableDevices.remove(controllabledevice.getDeviceId());
    }

}

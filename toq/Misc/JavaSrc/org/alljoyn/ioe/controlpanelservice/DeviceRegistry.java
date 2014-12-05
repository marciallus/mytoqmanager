// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice;

import java.util.Map;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice:
//            ControllableDevice

public interface DeviceRegistry
{

    public abstract void foundNewDevice(ControllableDevice controllabledevice);

    public abstract Map getDevices();

    public abstract void reachabilityChanged(ControllableDevice controllabledevice, boolean flag);

    public abstract void removeDevice(ControllableDevice controllabledevice);
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice;

import java.util.Collection;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice:
//            ControllableDevice

public interface DeviceEventsListener
{

    public abstract void errorOccurred(ControllableDevice controllabledevice, String s);

    public abstract void sessionEstablished(ControllableDevice controllabledevice, Collection collection);

    public abstract void sessionLost(ControllableDevice controllabledevice);
}

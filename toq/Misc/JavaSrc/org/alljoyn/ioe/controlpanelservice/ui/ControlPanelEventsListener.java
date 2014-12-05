// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.ui;


// Referenced classes of package org.alljoyn.ioe.controlpanelservice.ui:
//            DeviceControlPanel, UIElement

public interface ControlPanelEventsListener
{

    public abstract void errorOccurred(DeviceControlPanel devicecontrolpanel, String s);

    public abstract void metadataChanged(DeviceControlPanel devicecontrolpanel, UIElement uielement);

    public abstract void notificationActionDismiss(DeviceControlPanel devicecontrolpanel);

    public abstract void valueChanged(DeviceControlPanel devicecontrolpanel, UIElement uielement, Object obj);
}

// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.ui;

import java.util.List;
import org.alljoyn.bus.Variant;
import org.alljoyn.ioe.controlpanelservice.ControlPanelException;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice.ui:
//            UIElement, WidgetFactory, UIElementType, DeviceControlPanel

public class ErrorWidget extends UIElement
{

    private final String LABEL = "NOT AVAILABLE";
    private String errorMsg;

    public ErrorWidget(UIElementType uielementtype, String s, String s1, DeviceControlPanel devicecontrolpanel, List list)
        throws ControlPanelException
    {
        super(uielementtype, s, s1, devicecontrolpanel, list);
    }

    protected void createChildWidgets()
        throws ControlPanelException
    {
    }

    public String getError()
    {
        return errorMsg;
    }

    public String getLabel()
    {
        return "NOT AVAILABLE";
    }

    public UIElementType getOriginalUIElement()
    {
        if (ifName != null && WidgetFactory.isInitialized())
        {
            WidgetFactory widgetfactory = WidgetFactory.getWidgetFactory(ifName);
            if (widgetfactory != null)
                return widgetfactory.getElementType();
        }
        return null;
    }

    public short getVersion()
    {
        return 0;
    }

    public void refreshProperties()
        throws ControlPanelException
    {
    }

    protected void registerSignalHandler()
        throws ControlPanelException
    {
    }

    void setError(String s)
    {
        errorMsg = s;
    }

    protected void setProperty(String s, Variant variant)
        throws ControlPanelException
    {
    }

    protected void setRemoteController()
        throws ControlPanelException
    {
    }

    protected void versionCheck()
        throws ControlPanelException
    {
    }
}

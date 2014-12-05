// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.ui;

import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.*;
import org.alljoyn.bus.BusException;
import org.alljoyn.bus.Variant;
import org.alljoyn.bus.ifaces.Properties;
import org.alljoyn.ioe.controlpanelservice.ControlPanelException;
import org.alljoyn.ioe.controlpanelservice.ControllableDevice;
import org.alljoyn.ioe.controlpanelservice.communication.UIWidgetSignalHandler;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice.ui:
//            DeviceControlPanel, WidgetFactory, UIElementType

public abstract class UIElement
{

    private static final String TAG = (new StringBuilder()).append("cpan").append(org/alljoyn/ioe/controlpanelservice/ui/UIElement.getSimpleName()).toString();
    protected List children;
    protected DeviceControlPanel controlPanel;
    protected ControllableDevice device;
    protected UIElementType elementType;
    protected String ifName;
    protected String objectPath;
    protected Properties properties;
    protected Integer sessionId;
    protected short version;

    public UIElement(UIElementType uielementtype, String s, String s1, DeviceControlPanel devicecontrolpanel, List list)
        throws ControlPanelException
    {
        elementType = uielementtype;
        ifName = s;
        objectPath = s1;
        children = list;
        controlPanel = devicecontrolpanel;
        device = devicecontrolpanel.getDevice();
        sessionId = device.getSessionId();
        if (sessionId == null)
        {
            throw new ControlPanelException((new StringBuilder()).append("Failed to create widget: '").append(uielementtype).append("', objPath: '").append(s1).append("', session not established").toString());
        } else
        {
            setRemoteController();
            versionCheck();
            registerSignalHandler();
            refreshProperties();
            createChildWidgets();
            return;
        }
    }

    protected abstract void createChildWidgets()
        throws ControlPanelException;

    public UIElementType getElementType()
    {
        return elementType;
    }

    public String getObjectPath()
    {
        return objectPath;
    }

    public short getVersion()
    {
        return version;
    }

    public void refreshProperties()
        throws ControlPanelException
    {
        Log.d(TAG, (new StringBuilder()).append("Retreive the ").append(elementType).append(" properties, object path: '").append(objectPath).append("'").toString());
        Map map;
        Iterator iterator;
        String s;
        try
        {
            map = properties.GetAll(ifName);
        }
        catch (BusException busexception)
        {
            throw new ControlPanelException((new StringBuilder()).append("Failed to retreive properties for ifName: '").append(ifName).append("', Error: '").append(busexception.getMessage()).append("'").toString());
        }
        catch (Exception exception)
        {
            throw new ControlPanelException((new StringBuilder()).append("Unexpected error happened on retrieving properties for ifName: '").append(ifName).append("', Error: '").append(exception.getMessage()).append("'").toString());
        }
        for (iterator = map.keySet().iterator(); iterator.hasNext(); setProperty(s, (Variant)map.get(s)))
        {
            s = (String)iterator.next();
            Log.v(TAG, (new StringBuilder()).append("Set property: '").append(s).append("', object path: '").append(objectPath).append("'").toString());
        }

    }

    protected void registerSignalHander(Object obj, Method method)
        throws ControlPanelException
    {
        UIWidgetSignalHandler uiwidgetsignalhandler = new UIWidgetSignalHandler(objectPath, obj, method, ifName);
        uiwidgetsignalhandler.register();
        controlPanel.addSignalHandler(uiwidgetsignalhandler);
    }

    protected abstract void registerSignalHandler()
        throws ControlPanelException;

    protected abstract void setProperty(String s, Variant variant)
        throws ControlPanelException;

    protected abstract void setRemoteController()
        throws ControlPanelException;

    protected void versionCheck()
        throws ControlPanelException
    {
        WidgetFactory widgetfactory = WidgetFactory.getWidgetFactory(ifName);
        if (widgetfactory == null)
        {
            String s = (new StringBuilder()).append("Received an unknown ControlPanel interface: '").append(ifName).append("'").toString();
            Log.e(TAG, s);
            throw new ControlPanelException(s);
        }
        Class class1 = widgetfactory.getIfaceClass();
        try
        {
            short word0 = class1.getDeclaredField("VERSION").getShort(Short.TYPE);
            Log.d(TAG, (new StringBuilder()).append("Version check for interface: '").append(ifName).append("' my version is: '").append(word0).append("'").append(" the remote device version is: '").append(version).append("'").toString());
            if (version > word0)
                throw new ControlPanelException((new StringBuilder()).append("Incompatible interface version: '").append(ifName).append("', my interface version is: '").append(word0).append("'").append(" the remote device interface version is: '").append(version).append("'").toString());
        }
        catch (Exception exception)
        {
            throw new ControlPanelException((new StringBuilder()).append("Failed to perform version check for interface: '").append(ifName).append("', unable to get the reflection of the VERSION field").toString());
        }
    }

}

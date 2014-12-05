// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.ui;

import android.util.Log;
import java.util.*;
import org.alljoyn.ioe.controlpanelservice.*;
import org.alljoyn.ioe.controlpanelservice.communication.*;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice.ui:
//            WidgetFactory, ControlPanelEventsListener, UIElement

public class DeviceControlPanel
{

    private static final String TAG = (new StringBuilder()).append("cpan").append(org/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel.getSimpleName()).toString();
    private ControlPanelCollection collection;
    private ControllableDevice device;
    private ControlPanelEventsListener eventsListener;
    private String language;
    private String objPath;
    private Unit unit;
    private List widgetSignalHandlers;

    public DeviceControlPanel(ControllableDevice controllabledevice, Unit unit1, ControlPanelCollection controlpanelcollection, String s, String s1)
    {
        device = controllabledevice;
        objPath = s;
        unit = unit1;
        collection = controlpanelcollection;
        language = s1;
        widgetSignalHandlers = new LinkedList();
    }

    private void cleanSignalHandlers()
        throws ControlPanelException
    {
        if (widgetSignalHandlers.size() > 0)
        {
            Log.d(TAG, "Found the previous signal handlers, unregistering them from the bus");
            for (Iterator iterator = widgetSignalHandlers.iterator(); iterator.hasNext(); ((UIWidgetSignalHandler)iterator.next()).unregister());
            widgetSignalHandlers.clear();
        }
    }

    void addSignalHandler(UIWidgetSignalHandler uiwidgetsignalhandler)
    {
        this;
        JVM INSTR monitorenter ;
        widgetSignalHandlers.add(uiwidgetsignalhandler);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public ControlPanelCollection getCollection()
    {
        return collection;
    }

    public ControllableDevice getDevice()
    {
        return device;
    }

    public ControlPanelEventsListener getEventsListener()
    {
        this;
        JVM INSTR monitorenter ;
        ControlPanelEventsListener controlpaneleventslistener = eventsListener;
        this;
        JVM INSTR monitorexit ;
        return controlpaneleventslistener;
        Exception exception;
        exception;
        throw exception;
    }

    public String getLanguage()
    {
        return language;
    }

    public String getObjPath()
    {
        return objPath;
    }

    public UIElement getRootElement(ControlPanelEventsListener controlpaneleventslistener)
        throws ControlPanelException
    {
        UIElement uielement = null;
        this;
        JVM INSTR monitorenter ;
        if (controlpaneleventslistener != null)
            break MISSING_BLOCK_LABEL_25;
        throw new ControlPanelException("Received an undefined ControlPanelEventsListener");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        Integer integer;
        eventsListener = controlpaneleventslistener;
        integer = device.getSessionId();
        if (integer != null)
            break MISSING_BLOCK_LABEL_89;
        Log.e(TAG, (new StringBuilder()).append("Device: '").append(device.getDeviceId()).append("', getRootElement() called, but session not defined").toString());
        throw new ControlPanelException("Session not established");
        cleanSignalHandlers();
        Log.i(TAG, "GetRootElement was called, handling...");
        IntrospectionNode introspectionnode;
        introspectionnode = new IntrospectionNode(objPath);
        introspectionnode.parse(ConnectionManager.getInstance().getBusAttachment(), device.getSender(), integer.intValue());
        List list;
        list = introspectionnode.getInterfaces();
        Log.v(TAG, (new StringBuilder()).append("For requested objPath: '").append(objPath).append("', the found interfaces are: '").append(list).append("'").toString());
        Log.d(TAG, "Search for Container or Dialog interface");
        if (WidgetFactory.isInitialized()) goto _L2; else goto _L1
_L1:
        Log.e(TAG, "Failed to initialize the WidgetFactory, returning NULL");
_L4:
        this;
        JVM INSTR monitorexit ;
        return uielement;
        Exception exception1;
        exception1;
        String s = (new StringBuilder()).append("Failed to introspect the path '").append(objPath).append("', Error: '").append(exception1.getMessage()).append("'").toString();
        Log.e(TAG, s);
        throw new ControlPanelException(s);
_L2:
        Iterator iterator = list.iterator();
_L5:
        boolean flag = iterator.hasNext();
        uielement = null;
        if (!flag) goto _L4; else goto _L3
_L3:
        String s1;
label0:
        {
            s1 = (String)iterator.next();
            if (s1.startsWith("org.alljoyn.ControlPanel."))
                break label0;
            Log.v(TAG, (new StringBuilder()).append("Found not a ControlPanel interface: '").append(s1).append("'").toString());
        }
          goto _L5
        WidgetFactory widgetfactory = WidgetFactory.getWidgetFactory(s1);
        if (widgetfactory != null)
            continue; /* Loop/switch isn't completed */
        Log.e(TAG, (new StringBuilder()).append("Received an unknown ControlPanel interface: '").append(s1).append("', return NULL").toString());
        uielement = null;
          goto _L4
        if (!widgetfactory.isTopLevelObj()) goto _L5; else goto _L6
_L6:
        UIElement uielement1;
        Log.d(TAG, (new StringBuilder()).append("Found the top level interface: '").append(s1).append("', creating widgets...").toString());
        uielement1 = widgetfactory.create(objPath, this, introspectionnode.getChidren());
        uielement = uielement1;
          goto _L4
    }

    public Unit getUnit()
    {
        return unit;
    }

    public void release()
    {
        this;
        JVM INSTR monitorenter ;
        Log.d(TAG, (new StringBuilder()).append("Cleaning the DeviceControlPanel, objPath: '").append(objPath).append("'").toString());
        cleanSignalHandlers();
_L1:
        eventsListener = null;
        this;
        JVM INSTR monitorexit ;
        return;
        ControlPanelException controlpanelexception;
        controlpanelexception;
        Log.e(TAG, "Failed to unregister a signal handler from the bus");
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

}

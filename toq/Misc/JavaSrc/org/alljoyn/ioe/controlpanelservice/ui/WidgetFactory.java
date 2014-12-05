// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.ui;

import android.util.Log;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.*;
import org.alljoyn.ioe.controlpanelservice.ControlPanelException;
import org.alljoyn.ioe.controlpanelservice.communication.interfaces.*;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice.ui:
//            DeviceControlPanel, ActionWidget, UIElementType, ContainerWidget, 
//            AlertDialogWidget, PropertyWidget, LabelWidget, ListPropertyWidget, 
//            UIElement

public class WidgetFactory
{

    private static final String TAG = (new StringBuilder()).append("cpan").append(org/alljoyn/ioe/controlpanelservice/ui/WidgetFactory.getSimpleName()).toString();
    private static Map ifaceLookup = new HashMap();
    private static boolean isInitialized = false;
    private Constructor constructor;
    private UIElementType elementType;
    private String iface;
    private Class ifaceClass;
    private boolean isTopLevelObj;

    private WidgetFactory(String s, Class class1, Constructor constructor1, UIElementType uielementtype, boolean flag)
    {
        iface = s;
        ifaceClass = class1;
        constructor = constructor1;
        elementType = uielementtype;
        isTopLevelObj = flag;
    }

    private static Constructor getConstructorReflection(Class class1)
        throws NoSuchMethodException
    {
        return class1.getConstructor(new Class[] {
            java/lang/String, java/lang/String, org/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel, java/util/List
        });
    }

    public static WidgetFactory getWidgetFactory(String s)
    {
        if (!isInitialized)
        {
            return null;
        } else
        {
            Log.d(TAG, (new StringBuilder()).append("getWidgetFactory() is looking for the interface '").append(s).append("'").toString());
            return (WidgetFactory)ifaceLookup.get(s);
        }
    }

    private static void init()
    {
        try
        {
            ifaceLookup.put("org.alljoyn.ControlPanel.Action", new WidgetFactory("org.alljoyn.ControlPanel.Action", org/alljoyn/ioe/controlpanelservice/communication/interfaces/ActionControl, getConstructorReflection(org/alljoyn/ioe/controlpanelservice/ui/ActionWidget), UIElementType.ACTION_WIDGET, false));
            ifaceLookup.put("org.alljoyn.ControlPanel.SecuredAction", new WidgetFactory("org.alljoyn.ControlPanel.SecuredAction", org/alljoyn/ioe/controlpanelservice/communication/interfaces/ActionControlSecured, getConstructorReflection(org/alljoyn/ioe/controlpanelservice/ui/ActionWidget), UIElementType.ACTION_WIDGET, false));
            ifaceLookup.put("org.alljoyn.ControlPanel.Container", new WidgetFactory("org.alljoyn.ControlPanel.Container", org/alljoyn/ioe/controlpanelservice/communication/interfaces/Container, getConstructorReflection(org/alljoyn/ioe/controlpanelservice/ui/ContainerWidget), UIElementType.CONTAINER, true));
            ifaceLookup.put("org.alljoyn.ControlPanel.SecuredContainer", new WidgetFactory("org.alljoyn.ControlPanel.SecuredContainer", org/alljoyn/ioe/controlpanelservice/communication/interfaces/ContainerSecured, getConstructorReflection(org/alljoyn/ioe/controlpanelservice/ui/ContainerWidget), UIElementType.CONTAINER, true));
            ifaceLookup.put("org.alljoyn.ControlPanel.Dialog", new WidgetFactory("org.alljoyn.ControlPanel.Dialog", org/alljoyn/ioe/controlpanelservice/communication/interfaces/AlertDialog, getConstructorReflection(org/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget), UIElementType.ALERT_DIALOG, true));
            ifaceLookup.put("org.alljoyn.ControlPanel.SecuredDialog", new WidgetFactory("org.alljoyn.ControlPanel.SecuredDialog", org/alljoyn/ioe/controlpanelservice/communication/interfaces/AlertDialogSecured, getConstructorReflection(org/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget), UIElementType.ALERT_DIALOG, true));
            ifaceLookup.put("org.alljoyn.ControlPanel.Property", new WidgetFactory("org.alljoyn.ControlPanel.Property", org/alljoyn/ioe/controlpanelservice/communication/interfaces/PropertyControl, getConstructorReflection(org/alljoyn/ioe/controlpanelservice/ui/PropertyWidget), UIElementType.PROPERTY_WIDGET, false));
            ifaceLookup.put("org.alljoyn.ControlPanel.SecuredProperty", new WidgetFactory("org.alljoyn.ControlPanel.SecuredProperty", org/alljoyn/ioe/controlpanelservice/communication/interfaces/PropertyControlSecured, getConstructorReflection(org/alljoyn/ioe/controlpanelservice/ui/PropertyWidget), UIElementType.PROPERTY_WIDGET, false));
            ifaceLookup.put("org.alljoyn.ControlPanel.LabelProperty", new WidgetFactory("org.alljoyn.ControlPanel.LabelProperty", org/alljoyn/ioe/controlpanelservice/communication/interfaces/Label, getConstructorReflection(org/alljoyn/ioe/controlpanelservice/ui/LabelWidget), UIElementType.LABEL_WIDGET, false));
            ifaceLookup.put("org.alljoyn.ControlPanel.ListProperty", new WidgetFactory("org.alljoyn.ControlPanel.ListProperty", org/alljoyn/ioe/controlpanelservice/communication/interfaces/ListPropertyControl, getConstructorReflection(org/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget), UIElementType.LIST_PROPERTY_WIDGET, false));
            ifaceLookup.put("org.alljoyn.ControlPanel.SecuredListProperty", new WidgetFactory("org.alljoyn.ControlPanel.SecuredListProperty", org/alljoyn/ioe/controlpanelservice/communication/interfaces/ListPropertyControlSecured, getConstructorReflection(org/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget), UIElementType.LIST_PROPERTY_WIDGET, false));
            isInitialized = true;
            return;
        }
        catch (Exception exception)
        {
            Log.e(TAG, (new StringBuilder()).append("Failed to initialize widget factory, Error: '").append(exception.getMessage()).append("'").toString());
        }
        isInitialized = false;
    }

    public static boolean isInitialized()
    {
        return isInitialized;
    }

    public UIElement create(String s, DeviceControlPanel devicecontrolpanel, List list)
        throws ControlPanelException
    {
        Log.i(TAG, (new StringBuilder()).append("Create element: '").append(elementType).append("' objPath: '").append(s).append("'").toString());
        UIElement uielement;
        try
        {
            Constructor constructor1 = constructor;
            Object aobj[] = new Object[4];
            aobj[0] = iface;
            aobj[1] = s;
            aobj[2] = devicecontrolpanel;
            aobj[3] = list;
            uielement = (UIElement)constructor1.newInstance(aobj);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            String s1 = invocationtargetexception.getTargetException().getMessage();
            Log.e(TAG, (new StringBuilder()).append("Error happened when invoking the constructor of  '").append(elementType).append("', Error: '").append(s1).append("'").toString());
            throw new ControlPanelException(s1);
        }
        catch (Exception exception)
        {
            Log.e(TAG, (new StringBuilder()).append("Unexpected error happened, failed to create the UIElement: '").append(elementType).append("'").toString());
            throw new ControlPanelException(exception);
        }
        return uielement;
    }

    public UIElementType getElementType()
    {
        return elementType;
    }

    public String getIface()
    {
        return iface;
    }

    public Class getIfaceClass()
    {
        return ifaceClass;
    }

    public boolean isTopLevelObj()
    {
        return isTopLevelObj;
    }

    static 
    {
        init();
    }
}

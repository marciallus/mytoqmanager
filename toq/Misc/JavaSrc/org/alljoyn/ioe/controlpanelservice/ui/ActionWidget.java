// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.ui;

import android.util.Log;
import java.util.*;
import org.alljoyn.bus.*;
import org.alljoyn.bus.ifaces.Properties;
import org.alljoyn.ioe.controlpanelservice.ControlPanelException;
import org.alljoyn.ioe.controlpanelservice.ControllableDevice;
import org.alljoyn.ioe.controlpanelservice.communication.*;
import org.alljoyn.ioe.controlpanelservice.communication.interfaces.ActionControlSuper;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice.ui:
//            UIElement, UIElementType, ActionWidgetEnum, ActionWidgetHintsType, 
//            WidgetFactory, AlertDialogWidget, ActionWidgetSignalHandler, DeviceControlPanel, 
//            ControlPanelEventsListener

public class ActionWidget extends UIElement
{

    private static final int ENABLED_MASK = 1;
    private static final String TAG = (new StringBuilder()).append("cpan").append(org/alljoyn/ioe/controlpanelservice/ui/ActionWidget.getSimpleName()).toString();
    private AlertDialogWidget alertDialog;
    private Integer bgColor;
    private boolean enabled;
    private List hints;
    private String label;
    private ActionControlSuper remoteControl;

    public ActionWidget(String s, String s1, DeviceControlPanel devicecontrolpanel, List list)
        throws ControlPanelException
    {
        super(UIElementType.ACTION_WIDGET, s, s1, devicecontrolpanel, list);
    }

    private void fillOptionalParams(Map map)
        throws ControlPanelException
    {
        ActionWidgetEnum aactionwidgetenum[];
        int i;
        int j;
        Log.d(TAG, "ActionWidget - scanning optional parameters");
        aactionwidgetenum = ActionWidgetEnum.values();
        i = aactionwidgetenum.length;
        j = 0;
_L5:
        if (j >= i) goto _L2; else goto _L1
_L1:
        ActionWidgetEnum actionwidgetenum;
        Variant variant;
        actionwidgetenum = aactionwidgetenum[j];
        variant = (Variant)map.get(Short.valueOf(actionwidgetenum.ID));
        if (variant != null) goto _L4; else goto _L3
_L3:
        Log.v(TAG, (new StringBuilder()).append("OptionalParameter: '").append(actionwidgetenum).append("', is not found").toString());
_L11:
        j++;
          goto _L5
_L4:
        Log.v(TAG, (new StringBuilder()).append("Found OptionalParameter: '").append(actionwidgetenum).append("'").toString());
        static class _cls2
        {

            static final int $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$ActionWidgetEnum[];

            static 
            {
                $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$ActionWidgetEnum = new int[ActionWidgetEnum.values().length];
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$ActionWidgetEnum[ActionWidgetEnum.LABEL.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$ActionWidgetEnum[ActionWidgetEnum.BG_COLOR.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$ActionWidgetEnum[ActionWidgetEnum.HINTS.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        _cls2..SwitchMap.org.alljoyn.ioe.controlpanelservice.ui.ActionWidgetEnum[actionwidgetenum.ordinal()];
        JVM INSTR tableswitch 1 3: default 255
    //                   1 164
    //                   2 219
    //                   3 237;
           goto _L6 _L7 _L8 _L9
_L6:
        if (true) goto _L11; else goto _L10
_L10:
_L7:
        BusException busexception;
        label = (String)variant.getObject(java/lang/String);
          goto _L11
_L8:
        try
        {
            bgColor = (Integer)variant.getObject(Integer.TYPE);
        }
        // Misplaced declaration of an exception variable
        catch (BusException busexception)
        {
            throw new ControlPanelException((new StringBuilder()).append("Failed to unmarshal optional parameters, Error: '").append(busexception.getMessage()).append("'").toString());
        }
          goto _L11
_L9:
        setListOfActionWidgetHints((short[])variant.getObject([S));
          goto _L11
_L2:
    }

    private void setListOfActionWidgetHints(short aword0[])
    {
        Log.v(TAG, "Scanning ActionWidgetHints");
        hints = new ArrayList(aword0.length);
        int i = aword0.length;
        for (int j = 0; j < i; j++)
        {
            short word0 = aword0[j];
            ActionWidgetHintsType actionwidgethintstype = ActionWidgetHintsType.getEnumById(word0);
            if (actionwidgethintstype == null)
                Log.w(TAG, (new StringBuilder()).append("Received unrecognized ActionWidgetHint: '").append(word0).append("', ignoring...").toString());
            else
                hints.add(actionwidgethintstype);
        }

    }

    protected void createChildWidgets()
        throws ControlPanelException
    {
        int i = children.size();
        if (i == 0)
        {
            Log.d(TAG, (new StringBuilder()).append("ActionWidget objPath: '").append(objectPath).append("', doesn't have any child nodes").toString());
            return;
        }
        if (i > 1)
            throw new ControlPanelException((new StringBuilder()).append("ActionWidget objPath: '").append(objectPath).append("' has more than one child nodes: '").append(i).append("'").toString());
        IntrospectionNode introspectionnode = (IntrospectionNode)children.get(0);
        String s = introspectionnode.getPath();
        for (Iterator iterator = introspectionnode.getInterfaces().iterator(); iterator.hasNext();)
        {
            String s1 = (String)iterator.next();
            if (!s1.startsWith("org.alljoyn.ControlPanel."))
            {
                Log.v(TAG, (new StringBuilder()).append("Found not a ControlPanel interface: '").append(s1).append("'").toString());
            } else
            {
                WidgetFactory widgetfactory = WidgetFactory.getWidgetFactory(s1);
                if (widgetfactory == null)
                {
                    String s2 = (new StringBuilder()).append("Received an unknown ControlPanel interface: '").append(s1).append("'").toString();
                    Log.e(TAG, s2);
                    throw new ControlPanelException(s2);
                }
                if (widgetfactory.getElementType() == UIElementType.ALERT_DIALOG)
                {
                    Log.i(TAG, (new StringBuilder()).append("ActionWidget objPath: '").append(objectPath).append("', has AlertDialog objPath: '").append(s).append("', creating...").toString());
                    alertDialog = new AlertDialogWidget(s1, s, controlPanel, introspectionnode.getChidren());
                    return;
                }
            }
        }

        throw new ControlPanelException((new StringBuilder()).append("ActionWidget objPath: '").append(objectPath).append("', not found the AlertDialog interface").toString());
    }

    public void exec()
        throws ControlPanelException
    {
        if (alertDialog != null)
            throw new ControlPanelException((new StringBuilder()).append("ActionWidget objPath: '").append(objectPath).append("', alertDialog is defined, can't call exec").toString());
        Log.d(TAG, (new StringBuilder()).append("Exec called, device: '").append(device.getDeviceId()).append("' objPath: '").append(objectPath).append("'").toString());
        try
        {
            remoteControl.Exec();
            return;
        }
        catch (BusException busexception)
        {
            String s = (new StringBuilder()).append("Failed to call Exec,  objPath: '").append(objectPath).append("', Error: '").append(busexception.getMessage()).append("'").toString();
            Log.e(TAG, s);
            throw new ControlPanelException(s);
        }
    }

    public AlertDialogWidget getAlertDialog()
    {
        return alertDialog;
    }

    public Integer getBgColor()
    {
        return bgColor;
    }

    public List getHints()
    {
        return hints;
    }

    public String getLabel()
    {
        return label;
    }

    public boolean isEnabled()
    {
        return enabled;
    }

    protected void registerSignalHandler()
    {
        java.lang.reflect.Method method = CommunicationUtil.getActionMetadataChanged("MetadataChanged");
        if (method == null)
        {
            Log.e(TAG, "ActionWidget, MetadataChanged method is not defined");
            return;
        }
        try
        {
            registerSignalHander(new ActionWidgetSignalHandler(this), method);
            return;
        }
        catch (ControlPanelException controlpanelexception)
        {
            String s = (new StringBuilder()).append("Device: '").append(device.getDeviceId()).append("', ActionWidget, failed to register signal handler, Error: '").append(controlpanelexception.getMessage()).append("'").toString();
            Log.e(TAG, s);
            controlPanel.getEventsListener().errorOccurred(controlPanel, s);
            return;
        }
    }

    protected void setProperty(String s, Variant variant)
        throws ControlPanelException
    {
        if ("States".equals(s))
        {
            boolean flag;
            if ((1 & ((Integer)variant.getObject(Integer.TYPE)).intValue()) == 1)
                flag = true;
            else
                flag = false;
            try
            {
                enabled = flag;
                return;
            }
            catch (BusException busexception)
            {
                throw new ControlPanelException((new StringBuilder()).append("Failed to unmarshal the property: '").append(s).append("', Error: '").append(busexception.getMessage()).append("'").toString());
            }
        }
        if ("OptParams".equals(s))
        {
            fillOptionalParams((Map)variant.getObject(new VariantTypeReference() {

                final ActionWidget this$0;

            
            {
                this$0 = ActionWidget.this;
                super();
            }
            }
));
            return;
        }
    }

    protected void setRemoteController()
        throws ControlPanelException
    {
        WidgetFactory widgetfactory = WidgetFactory.getWidgetFactory(ifName);
        if (widgetfactory == null)
        {
            String s1 = (new StringBuilder()).append("Received an unrecognized interface name: '").append(ifName).append("'").toString();
            Log.e(TAG, s1);
            throw new ControlPanelException(s1);
        }
        Class class1 = widgetfactory.getIfaceClass();
        ProxyBusObject proxybusobject = ConnectionManager.getInstance().getProxyObject(device.getSender(), objectPath, sessionId.intValue(), new Class[] {
            class1, org/alljoyn/bus/ifaces/Properties
        });
        Log.d(TAG, (new StringBuilder()).append("Setting remote control ActionWidget, objPath: '").append(objectPath).append("'").toString());
        properties = (Properties)proxybusobject.getInterface(org/alljoyn/bus/ifaces/Properties);
        remoteControl = (ActionControlSuper)proxybusobject.getInterface(class1);
        try
        {
            version = remoteControl.getVersion();
            return;
        }
        catch (BusException busexception)
        {
            String s = (new StringBuilder()).append("Failed to call getVersion for element: '").append(elementType).append("'").toString();
            Log.e(TAG, s);
            throw new ControlPanelException(s);
        }
    }

}

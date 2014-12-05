// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.ui;

import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.*;
import org.alljoyn.bus.*;
import org.alljoyn.bus.ifaces.Properties;
import org.alljoyn.ioe.controlpanelservice.ControlPanelException;
import org.alljoyn.ioe.controlpanelservice.ControllableDevice;
import org.alljoyn.ioe.controlpanelservice.communication.CommunicationUtil;
import org.alljoyn.ioe.controlpanelservice.communication.ConnectionManager;
import org.alljoyn.ioe.controlpanelservice.communication.interfaces.AlertDialogSuper;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice.ui:
//            UIElement, UIElementType, AlertDialogHintsType, AlertDialogWidgetEnum, 
//            AlertDialogWidgetSignalHandler, DeviceControlPanel, ControlPanelEventsListener, WidgetFactory

public class AlertDialogWidget extends UIElement
{
    public static class DialogButton
    {

        private AlertDialogWidget alertDialog;
        private Method bindMethod;
        private String label;

        public void exec()
            throws ControlPanelException
        {
            try
            {
                bindMethod.invoke(alertDialog, new Object[0]);
                return;
            }
            catch (InvocationTargetException invocationtargetexception)
            {
                String s = invocationtargetexception.getTargetException().getMessage();
                throw new ControlPanelException((new StringBuilder()).append("DialogButton label: '").append(label).append("', failed to invoke the method: '").append(bindMethod.getName()).append("', Error: '").append(s).append("'").toString());
            }
            catch (Exception exception)
            {
                throw new ControlPanelException((new StringBuilder()).append("DialogButton label: '").append(label).append("', failed to invoke the method: '").append(bindMethod.getName()).append("'").toString());
            }
        }

        public String getLabel()
        {
            return label;
        }

        private DialogButton(String s, Method method, AlertDialogWidget alertdialogwidget)
        {
            label = s;
            bindMethod = method;
            alertDialog = alertdialogwidget;
        }

    }


    private static final int ENABLED_MASK = 1;
    private static final String TAG = (new StringBuilder()).append("cpan").append(org/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget.getSimpleName()).toString();
    private Integer bgColor;
    private boolean enabled;
    private List execButtons;
    private List hints;
    private String label;
    private String message;
    private short numActions;
    private AlertDialogSuper remoteControl;

    public AlertDialogWidget(String s, String s1, DeviceControlPanel devicecontrolpanel, List list)
        throws ControlPanelException
    {
        super(UIElementType.ALERT_DIALOG, s, s1, devicecontrolpanel, list);
    }

    private void fillAlertDialogHints(short aword0[])
    {
        hints = new ArrayList(aword0.length);
        Log.v(TAG, "Searching for AlertDialog hints");
        int i = aword0.length;
        for (int j = 0; j < i; j++)
        {
            short word0 = aword0[j];
            AlertDialogHintsType alertdialoghintstype = AlertDialogHintsType.getEnumById(word0);
            if (alertdialoghintstype != null)
            {
                Log.v(TAG, (new StringBuilder()).append("Found AlertDialog hint: '").append(alertdialoghintstype).append("', adding").toString());
                hints.add(alertdialoghintstype);
            } else
            {
                Log.w(TAG, (new StringBuilder()).append("AlertDialog hint id: '").append(word0).append("' is unknown").toString());
            }
        }

    }

    private void fillOptionalParams(Map map)
        throws ControlPanelException
    {
        AlertDialogWidgetEnum aalertdialogwidgetenum[];
        int i;
        int j;
        execButtons = new ArrayList();
        Log.d(TAG, "AlertDialogWidget - scanning optional parameters");
        aalertdialogwidgetenum = AlertDialogWidgetEnum.values();
        i = aalertdialogwidgetenum.length;
        j = 0;
_L5:
        if (j >= i) goto _L2; else goto _L1
_L1:
        AlertDialogWidgetEnum alertdialogwidgetenum;
        Variant variant;
        alertdialogwidgetenum = aalertdialogwidgetenum[j];
        variant = (Variant)map.get(Short.valueOf(alertdialogwidgetenum.ID));
        if (variant != null) goto _L4; else goto _L3
_L3:
        Log.v(TAG, (new StringBuilder()).append("OptionalParameter: '").append(alertdialogwidgetenum).append("', is not found").toString());
_L14:
        j++;
          goto _L5
_L4:
        Log.v(TAG, (new StringBuilder()).append("Found OptionalParameter: '").append(alertdialogwidgetenum).append("'").toString());
        static class _cls2
        {

            static final int $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$AlertDialogWidgetEnum[];

            static 
            {
                $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$AlertDialogWidgetEnum = new int[AlertDialogWidgetEnum.values().length];
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$AlertDialogWidgetEnum[AlertDialogWidgetEnum.LABEL.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$AlertDialogWidgetEnum[AlertDialogWidgetEnum.BG_COLOR.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$AlertDialogWidgetEnum[AlertDialogWidgetEnum.HINTS.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$AlertDialogWidgetEnum[AlertDialogWidgetEnum.LABEL_ACTION1.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$AlertDialogWidgetEnum[AlertDialogWidgetEnum.LABEL_ACTION2.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$AlertDialogWidgetEnum[AlertDialogWidgetEnum.LABEL_ACTION3.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror5)
                {
                    return;
                }
            }
        }

        _cls2..SwitchMap.org.alljoyn.ioe.controlpanelservice.ui.AlertDialogWidgetEnum[alertdialogwidgetenum.ordinal()];
        JVM INSTR tableswitch 1 6: default 401
    //                   1 184
    //                   2 239
    //                   3 257
    //                   4 274
    //                   5 316
    //                   6 358;
           goto _L6 _L7 _L8 _L9 _L10 _L11 _L12
_L6:
        if (true) goto _L14; else goto _L13
_L13:
_L7:
        BusException busexception;
        label = (String)variant.getObject(java/lang/String);
          goto _L14
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
          goto _L14
_L9:
        fillAlertDialogHints((short[])variant.getObject([S));
          goto _L14
_L10:
        String s2 = (String)variant.getObject(java/lang/String);
        execButtons.add(new DialogButton(s2, getActionMethodReflection("execAction1"), this));
          goto _L14
_L11:
        String s1 = (String)variant.getObject(java/lang/String);
        execButtons.add(new DialogButton(s1, getActionMethodReflection("execAction2"), this));
          goto _L14
_L12:
        String s = (String)variant.getObject(java/lang/String);
        execButtons.add(new DialogButton(s, getActionMethodReflection("execAction3"), this));
          goto _L14
_L2:
    }

    private Method getActionMethodReflection(String s)
        throws ControlPanelException
    {
        Method method;
        try
        {
            method = org/alljoyn/ioe/controlpanelservice/ui/AlertDialogWidget.getDeclaredMethod(s, (Class[])null);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            throw new ControlPanelException((new StringBuilder()).append("Failed to get reflection of the '").append(s).append("', Error: '").append(nosuchmethodexception.getMessage()).append("'").toString());
        }
        return method;
    }

    protected void createChildWidgets()
        throws ControlPanelException
    {
        int i = children.size();
        Log.d(TAG, (new StringBuilder()).append("Test AlertDialogWidget validity - AlertDialogWidget can't has child nodes. #ChildNodes: '").append(i).append("'").toString());
        if (i > 0)
            throw new ControlPanelException((new StringBuilder()).append("The AlertDialogWidget objPath: '").append(objectPath).append("' is not valid, found '").append(i).append("' child nodes").toString());
        else
            return;
    }

    void execAction1()
        throws ControlPanelException
    {
        Log.d(TAG, (new StringBuilder()).append("ExecAction1 called, device: '").append(device.getDeviceId()).append("' objPath: '").append(objectPath).append("'").toString());
        try
        {
            remoteControl.Action1();
            return;
        }
        catch (BusException busexception)
        {
            String s = (new StringBuilder()).append("Failed to call ExecAction1,  objPath: '").append(objectPath).append("', Error: '").append(busexception.getMessage()).append("'").toString();
            Log.e(TAG, s);
            throw new ControlPanelException(s);
        }
    }

    void execAction2()
        throws ControlPanelException
    {
        Log.d(TAG, (new StringBuilder()).append("ExecAction2 called, device: '").append(device.getDeviceId()).append("' objPath: '").append(objectPath).append("'").toString());
        try
        {
            remoteControl.Action2();
            return;
        }
        catch (BusException busexception)
        {
            String s = (new StringBuilder()).append("Failed to call ExecAction2,  objPath: '").append(objectPath).append("', Error: '").append(busexception.getMessage()).append("'").toString();
            Log.e(TAG, s);
            throw new ControlPanelException(s);
        }
    }

    void execAction3()
        throws ControlPanelException
    {
        Log.d(TAG, (new StringBuilder()).append("ExecAction3 called, device: '").append(device.getDeviceId()).append("' objPath: '").append(objectPath).append("'").toString());
        try
        {
            remoteControl.Action3();
            return;
        }
        catch (BusException busexception)
        {
            String s = (new StringBuilder()).append("Failed to call ExecAction3,  objPath: '").append(objectPath).append("', Error: '").append(busexception.getMessage()).append("'").toString();
            Log.e(TAG, s);
            throw new ControlPanelException(s);
        }
    }

    public Integer getBgColor()
    {
        return bgColor;
    }

    public List getExecButtons()
    {
        return execButtons;
    }

    public List getHints()
    {
        return hints;
    }

    public String getLabel()
    {
        return label;
    }

    public String getMessage()
    {
        return message;
    }

    public short getNumActions()
    {
        return numActions;
    }

    public boolean isEnabled()
    {
        return enabled;
    }

    protected void registerSignalHandler()
        throws ControlPanelException
    {
        Method method = CommunicationUtil.getAlertDialogMetadataChanged("MetadataChanged");
        if (method == null)
        {
            Log.e(TAG, "AlertDialogWidget, MetadataChanged method isn't defined");
            throw new ControlPanelException("AlertDialogWidget, MetadataChanged method isn't defined");
        }
        try
        {
            registerSignalHander(new AlertDialogWidgetSignalHandler(this), method);
            return;
        }
        catch (ControlPanelException controlpanelexception)
        {
            String s = (new StringBuilder()).append("Device: '").append(device.getDeviceId()).append("', AlertDialogWidget, failed to register signal handler, Error: '").append(controlpanelexception.getMessage()).append("'").toString();
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

                final AlertDialogWidget this$0;

            
            {
                this$0 = AlertDialogWidget.this;
                super();
            }
            }
));
            return;
        }
        if ("Message".equals(s))
        {
            message = (String)variant.getObject(java/lang/String);
            return;
        }
        if ("NumActions".equals(s))
            numActions = ((Short)variant.getObject(Short.TYPE)).shortValue();
        return;
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
        Log.d(TAG, (new StringBuilder()).append("Setting remote control AlertDialog, objPath: '").append(objectPath).append("'").toString());
        properties = (Properties)proxybusobject.getInterface(org/alljoyn/bus/ifaces/Properties);
        remoteControl = (AlertDialogSuper)proxybusobject.getInterface(class1);
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

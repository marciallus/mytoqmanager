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
import org.alljoyn.ioe.controlpanelservice.communication.CommunicationUtil;
import org.alljoyn.ioe.controlpanelservice.communication.ConnectionManager;
import org.alljoyn.ioe.controlpanelservice.communication.interfaces.Label;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice.ui:
//            UIElement, UIElementType, LabelWidgetHintsType, LabelWidgetEnum, 
//            LabelWidgetSignalHandler, DeviceControlPanel, ControlPanelEventsListener, WidgetFactory

public class LabelWidget extends UIElement
{

    private static final int ENABLED_MASK = 1;
    private static final String TAG = org/alljoyn/ioe/controlpanelservice/ui/LabelWidget.getSimpleName();
    private Integer bgColor;
    private boolean enabled;
    private List hints;
    private String label;
    private Label remoteControl;

    public LabelWidget(String s, String s1, DeviceControlPanel devicecontrolpanel, List list)
        throws ControlPanelException
    {
        super(UIElementType.LABEL_WIDGET, s, s1, devicecontrolpanel, list);
    }

    private void fillLabelHints(short aword0[])
    {
        hints = new ArrayList(aword0.length);
        Log.v(TAG, "Searching for LabelWidget hints");
        int i = aword0.length;
        for (int j = 0; j < i; j++)
        {
            short word0 = aword0[j];
            LabelWidgetHintsType labelwidgethintstype = LabelWidgetHintsType.getEnumById(word0);
            if (labelwidgethintstype != null)
            {
                Log.v(TAG, (new StringBuilder()).append("Found LabelWidget hint: '").append(labelwidgethintstype).append("', adding").toString());
                hints.add(labelwidgethintstype);
            } else
            {
                Log.w(TAG, (new StringBuilder()).append("LabelWidget hint id: '").append(word0).append("' is unknown").toString());
            }
        }

    }

    private void fillOptionalParams(Map map)
        throws ControlPanelException
    {
        LabelWidgetEnum alabelwidgetenum[];
        int i;
        int j;
        Log.d(TAG, "LabelWidget - scanning optional parameters");
        alabelwidgetenum = LabelWidgetEnum.values();
        i = alabelwidgetenum.length;
        j = 0;
_L5:
        if (j >= i) goto _L2; else goto _L1
_L1:
        LabelWidgetEnum labelwidgetenum;
        Variant variant;
        labelwidgetenum = alabelwidgetenum[j];
        variant = (Variant)map.get(Short.valueOf(labelwidgetenum.ID));
        if (variant != null) goto _L4; else goto _L3
_L3:
        Log.v(TAG, (new StringBuilder()).append("OptionalParameter: '").append(labelwidgetenum).append("', is not found").toString());
_L10:
        j++;
          goto _L5
_L4:
        Log.v(TAG, (new StringBuilder()).append("Found OptionalParameter: '").append(labelwidgetenum).append("'").toString());
        static class _cls2
        {

            static final int $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$LabelWidgetEnum[];

            static 
            {
                $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$LabelWidgetEnum = new int[LabelWidgetEnum.values().length];
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$LabelWidgetEnum[LabelWidgetEnum.BG_COLOR.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$LabelWidgetEnum[LabelWidgetEnum.HINTS.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1)
                {
                    return;
                }
            }
        }

        _cls2..SwitchMap.org.alljoyn.ioe.controlpanelservice.ui.LabelWidgetEnum[labelwidgetenum.ordinal()];
        JVM INSTR tableswitch 1 2: default 234
    //                   1 160
    //                   2 216;
           goto _L6 _L7 _L8
_L6:
        if (true) goto _L10; else goto _L9
_L9:
_L7:
        BusException busexception;
        bgColor = (Integer)variant.getObject(Integer.TYPE);
          goto _L10
_L8:
        try
        {
            fillLabelHints((short[])variant.getObject([S));
        }
        // Misplaced declaration of an exception variable
        catch (BusException busexception)
        {
            throw new ControlPanelException((new StringBuilder()).append("Failed to unmarshal optional parameters, Error: '").append(busexception.getMessage()).append("'").toString());
        }
          goto _L10
_L2:
    }

    protected void createChildWidgets()
        throws ControlPanelException
    {
        int i = children.size();
        Log.d(TAG, (new StringBuilder()).append("Test LabelWidget validity - LabelWidget can't has child nodes. #ChildNodes: '").append(i).append("'").toString());
        if (i > 0)
            throw new ControlPanelException((new StringBuilder()).append("The LabelWidget objPath: '").append(objectPath).append("' is not valid, found '").append(i).append("' child nodes").toString());
        else
            return;
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
        throws ControlPanelException
    {
        java.lang.reflect.Method method = CommunicationUtil.getLabelWidgetMetadataChanged("MetadataChanged");
        if (method == null)
        {
            Log.e(TAG, "LabelWidget, MetadataChanged method isn't defined");
            throw new ControlPanelException("LabelWidget, MetadataChanged method isn't defined");
        }
        try
        {
            registerSignalHander(new LabelWidgetSignalHandler(this), method);
            return;
        }
        catch (ControlPanelException controlpanelexception)
        {
            String s = (new StringBuilder()).append("Device: '").append(device.getDeviceId()).append("', LabelWidget, failed to register signal handler, Error: '").append(controlpanelexception.getMessage()).append("'").toString();
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
        if ("Label".equals(s))
        {
            label = (String)variant.getObject(java/lang/String);
            return;
        }
        if ("OptParams".equals(s))
            fillOptionalParams((Map)variant.getObject(new VariantTypeReference() {

                final LabelWidget this$0;

            
            {
                this$0 = LabelWidget.this;
                super();
            }
            }
));
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
        Log.d(TAG, (new StringBuilder()).append("Setting remote control LabelWidget, objPath: '").append(objectPath).append("'").toString());
        properties = (Properties)proxybusobject.getInterface(org/alljoyn/bus/ifaces/Properties);
        remoteControl = (Label)proxybusobject.getInterface(class1);
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

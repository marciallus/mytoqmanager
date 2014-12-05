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
import org.alljoyn.ioe.controlpanelservice.communication.interfaces.ContainerSuper;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice.ui:
//            UIElement, UIElementType, LayoutHintsType, ContainerWidgetEnum, 
//            DeviceControlPanel, ControlPanelEventsListener, ErrorWidget, WidgetFactory, 
//            ContainerWidgetSignalHandler

public class ContainerWidget extends UIElement
{

    private static final int ENABLED_MASK = 1;
    private static final String TAG = (new StringBuilder()).append("cpan").append(org/alljoyn/ioe/controlpanelservice/ui/ContainerWidget.getSimpleName()).toString();
    private Integer bgColor;
    private List elements;
    private boolean enabled;
    private String label;
    private List layoutHints;
    private ContainerSuper remoteControl;

    public ContainerWidget(String s, String s1, DeviceControlPanel devicecontrolpanel, List list)
        throws ControlPanelException
    {
        super(UIElementType.CONTAINER, s, s1, devicecontrolpanel, list);
    }

    private void fillLayoutHints(short aword0[])
    {
        layoutHints = new ArrayList(aword0.length);
        Log.v(TAG, "Searching for layoutHints");
        int i = aword0.length;
        for (int j = 0; j < i; j++)
        {
            short word0 = aword0[j];
            LayoutHintsType layouthintstype = LayoutHintsType.getEnumById(word0);
            if (layouthintstype != null)
            {
                Log.v(TAG, (new StringBuilder()).append("Found layout hint: '").append(layouthintstype).append("', adding").toString());
                layoutHints.add(layouthintstype);
            } else
            {
                Log.w(TAG, (new StringBuilder()).append("Layout hint id: '").append(word0).append("' is unknown").toString());
            }
        }

    }

    private void fillOptionalParams(Map map)
        throws ControlPanelException
    {
        ContainerWidgetEnum acontainerwidgetenum[];
        int i;
        int j;
        Log.d(TAG, "Container - scanning optional parameters");
        acontainerwidgetenum = ContainerWidgetEnum.values();
        i = acontainerwidgetenum.length;
        j = 0;
_L5:
        if (j >= i) goto _L2; else goto _L1
_L1:
        ContainerWidgetEnum containerwidgetenum;
        Variant variant;
        containerwidgetenum = acontainerwidgetenum[j];
        variant = (Variant)map.get(Short.valueOf(containerwidgetenum.ID));
        if (variant != null) goto _L4; else goto _L3
_L3:
        Log.v(TAG, (new StringBuilder()).append("OptionalParameter: '").append(containerwidgetenum).append("', is not found").toString());
_L11:
        j++;
          goto _L5
_L4:
        Log.v(TAG, (new StringBuilder()).append("Found OptionalParameter: '").append(containerwidgetenum).append("'").toString());
        static class _cls2
        {

            static final int $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$ContainerWidgetEnum[];

            static 
            {
                $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$ContainerWidgetEnum = new int[ContainerWidgetEnum.values().length];
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$ContainerWidgetEnum[ContainerWidgetEnum.LABEL.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$ContainerWidgetEnum[ContainerWidgetEnum.BG_COLOR.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$ContainerWidgetEnum[ContainerWidgetEnum.LAYOUT_HINTS.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        _cls2..SwitchMap.org.alljoyn.ioe.controlpanelservice.ui.ContainerWidgetEnum[containerwidgetenum.ordinal()];
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
        fillLayoutHints((short[])variant.getObject([S));
          goto _L11
_L2:
    }

    protected void createChildWidgets()
    {
        Iterator iterator;
        Log.d(TAG, (new StringBuilder()).append("Device: '").append(device.getDeviceId()).append("', iterate over the child elements").toString());
        elements = new LinkedList();
        iterator = children.iterator();
_L4:
        IntrospectionNode introspectionnode;
        String s;
        Iterator iterator1;
        if (!iterator.hasNext())
            break MISSING_BLOCK_LABEL_447;
        introspectionnode = (IntrospectionNode)iterator.next();
        s = introspectionnode.getPath();
        List list = introspectionnode.getInterfaces();
        Log.d(TAG, (new StringBuilder()).append("Device: '").append(device.getDeviceId()).append("' found child node objPath: '").append(s).append("', interfaces: '").append(list).append("'").toString());
        iterator1 = list.iterator();
_L2:
        String s1;
        if (!iterator1.hasNext())
            break; /* Loop/switch isn't completed */
        s1 = (String)iterator1.next();
        try
        {
            if (!s1.startsWith("org.alljoyn.ControlPanel."))
            {
                Log.v(TAG, (new StringBuilder()).append("Found not a ControlPanel interface: '").append(s1).append("'").toString());
                continue; /* Loop/switch isn't completed */
            }
        }
        catch (Exception exception)
        {
            Log.w(TAG, (new StringBuilder()).append("An error occurred during creation the Object: '").append(s).append("', device: '").append(device.getDeviceId()).append("'").toString());
            controlPanel.getEventsListener().errorOccurred(controlPanel, exception.getMessage());
            try
            {
                ErrorWidget errorwidget = new ErrorWidget(UIElementType.ERROR_WIDGET, s1, s, controlPanel, introspectionnode.getChidren());
                errorwidget.setError(exception.getMessage());
                elements.add(errorwidget);
            }
            catch (Exception exception1)
            {
                Log.w(TAG, "A failure has occurred in creation the ErrorWidget");
            }
            continue; /* Loop/switch isn't completed */
        }
        WidgetFactory widgetfactory = WidgetFactory.getWidgetFactory(s1);
        if (widgetfactory != null)
            break MISSING_BLOCK_LABEL_415;
        String s2 = (new StringBuilder()).append("Received an unknown ControlPanel interface: '").append(s1).append("'").toString();
        Log.e(TAG, s2);
        throw new ControlPanelException(s2);
        UIElement uielement = widgetfactory.create(s, controlPanel, introspectionnode.getChidren());
        elements.add(uielement);
        if (true) goto _L2; else goto _L1
_L1:
        if (true) goto _L4; else goto _L3
_L3:
    }

    public Integer getBgColor()
    {
        return bgColor;
    }

    public List getElements()
    {
        return elements;
    }

    public String getLabel()
    {
        return label;
    }

    public List getLayoutHints()
    {
        return layoutHints;
    }

    public boolean isEnabled()
    {
        return enabled;
    }

    protected void registerSignalHandler()
        throws ControlPanelException
    {
        java.lang.reflect.Method method = CommunicationUtil.getContainerMetadataChanged("MetadataChanged");
        if (method == null)
        {
            Log.e(TAG, "ContainerWidget, MetadataChanged method isn't defined");
            throw new ControlPanelException("ContainerWidget, MetadataChanged method isn't defined");
        }
        try
        {
            registerSignalHander(new ContainerWidgetSignalHandler(this), method);
            return;
        }
        catch (ControlPanelException controlpanelexception)
        {
            String s = (new StringBuilder()).append("Device: '").append(device.getDeviceId()).append("', ContainerWidget, failed to register signal handler, Error: '").append(controlpanelexception.getMessage()).append("'").toString();
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

                final ContainerWidget this$0;

            
            {
                this$0 = ContainerWidget.this;
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
        Log.d(TAG, (new StringBuilder()).append("Setting remote control ContainerWidget, objPath: '").append(objectPath).append("'").toString());
        properties = (Properties)proxybusobject.getInterface(org/alljoyn/bus/ifaces/Properties);
        remoteControl = (ContainerSuper)proxybusobject.getInterface(class1);
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

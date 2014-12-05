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
import org.alljoyn.ioe.controlpanelservice.communication.interfaces.ListPropertyControlSuper;
import org.alljoyn.ioe.controlpanelservice.ui.ajstruct.ListPropertyWidgetRecordAJ;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice.ui:
//            UIElement, UIElementType, ContainerWidget, ListPropertyWidgetEnum, 
//            ListPropertyWidgetHintsType, WidgetFactory, ListPropertyWidgetSignalHandler, DeviceControlPanel, 
//            ControlPanelEventsListener

public class ListPropertyWidget extends UIElement
{
    public static class Record
    {

        private String label;
        private short recordId;

        public String getLabel()
        {
            return label;
        }

        public short getRecordId()
        {
            return recordId;
        }

        public String toString()
        {
            return (new StringBuilder()).append(recordId).append(":'").append(label).append("'").toString();
        }

        private Record(short word0, String s)
        {
            recordId = word0;
            label = s;
        }

    }


    private static final int ENABLED_MASK = 1;
    private static final String TAG = (new StringBuilder()).append("cpan").append(org/alljoyn/ioe/controlpanelservice/ui/ListPropertyWidget.getSimpleName()).toString();
    private Integer bgColor;
    private String containerIfname;
    private IntrospectionNode containerIntroNode;
    private boolean enabled;
    private List hints;
    private ContainerWidget inputFormContainer;
    private String label;
    private ListPropertyControlSuper remoteControl;

    public ListPropertyWidget(String s, String s1, DeviceControlPanel devicecontrolpanel, List list)
        throws ControlPanelException
    {
        super(UIElementType.LIST_PROPERTY_WIDGET, s, s1, devicecontrolpanel, list);
    }

    private void createContainerWidget()
        throws ControlPanelException
    {
        if (containerIntroNode != null && containerIfname != null)
        {
            String s = containerIntroNode.getPath();
            Log.i(TAG, (new StringBuilder()).append("ListProperty objPath: '").append(objectPath).append("', has a Container element, objPath: '").append(s).append("', creating...").toString());
            inputFormContainer = new ContainerWidget(containerIfname, s, controlPanel, containerIntroNode.getChidren());
            return;
        } else
        {
            throw new ControlPanelException((new StringBuilder()).append("ListProperty objPath: '").append(objectPath).append("' can't create the input form ContainerWidget, IntrospectionNode is undefined").toString());
        }
    }

    private List createListOfRecords(ListPropertyWidgetRecordAJ alistpropertywidgetrecordaj[])
    {
        LinkedList linkedlist = new LinkedList();
        if (alistpropertywidgetrecordaj != null)
        {
            int i = alistpropertywidgetrecordaj.length;
            for (int j = 0; j < i; j++)
            {
                ListPropertyWidgetRecordAJ listpropertywidgetrecordaj = alistpropertywidgetrecordaj[j];
                linkedlist.add(new Record(listpropertywidgetrecordaj.recordId, listpropertywidgetrecordaj.label));
            }

        }
        return linkedlist;
    }

    private void fillOptionalParams(Map map)
        throws ControlPanelException
    {
        ListPropertyWidgetEnum alistpropertywidgetenum[];
        int i;
        int j;
        Log.d(TAG, "ListOfProperties - scanning optional parameters");
        alistpropertywidgetenum = ListPropertyWidgetEnum.values();
        i = alistpropertywidgetenum.length;
        j = 0;
_L5:
        if (j >= i) goto _L2; else goto _L1
_L1:
        ListPropertyWidgetEnum listpropertywidgetenum;
        Variant variant;
        listpropertywidgetenum = alistpropertywidgetenum[j];
        variant = (Variant)map.get(Short.valueOf(listpropertywidgetenum.ID));
        if (variant != null) goto _L4; else goto _L3
_L3:
        Log.v(TAG, (new StringBuilder()).append("OptionalParameter: '").append(listpropertywidgetenum).append("', is not found").toString());
_L11:
        j++;
          goto _L5
_L4:
        Log.v(TAG, (new StringBuilder()).append("Found OptionalParameter: '").append(listpropertywidgetenum).append("'").toString());
        static class _cls2
        {

            static final int $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$ListPropertyWidgetEnum[];

            static 
            {
                $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$ListPropertyWidgetEnum = new int[ListPropertyWidgetEnum.values().length];
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$ListPropertyWidgetEnum[ListPropertyWidgetEnum.LABEL.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$ListPropertyWidgetEnum[ListPropertyWidgetEnum.BG_COLOR.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$ListPropertyWidgetEnum[ListPropertyWidgetEnum.HINTS.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        _cls2..SwitchMap.org.alljoyn.ioe.controlpanelservice.ui.ListPropertyWidgetEnum[listpropertywidgetenum.ordinal()];
        JVM INSTR tableswitch 1 3: default 254
    //                   1 164
    //                   2 218
    //                   3 236;
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
            throw new ControlPanelException((new StringBuilder()).append("Failed to unmarshal optional parameters for ListOfProperties objPath: '").append(objectPath).append("'").toString());
        }
          goto _L11
_L9:
        setListOfPropertyWidgetHints((short[])variant.getObject([S));
          goto _L11
_L2:
    }

    private void setListOfPropertyWidgetHints(short aword0[])
    {
        Log.v(TAG, (new StringBuilder()).append("ListOfProperty objPath: '").append(objectPath).append("', filling ListOfProperties hints").toString());
        hints = new ArrayList(aword0.length);
        int i = aword0.length;
        for (int j = 0; j < i; j++)
        {
            short word0 = aword0[j];
            ListPropertyWidgetHintsType listpropertywidgethintstype = ListPropertyWidgetHintsType.getEnumById(word0);
            if (listpropertywidgethintstype == null)
                Log.w(TAG, (new StringBuilder()).append("Received unrecognized hintId: '").append(word0).append("', ignoring").toString());
            else
                hints.add(listpropertywidgethintstype);
        }

    }

    public ContainerWidget add()
        throws ControlPanelException
    {
        Log.d(TAG, (new StringBuilder()).append("Add() called, device: '").append(device.getDeviceId()).append("' objPath: '").append(objectPath).append("'").toString());
        try
        {
            remoteControl.Add();
        }
        catch (BusException busexception)
        {
            String s = (new StringBuilder()).append("Failed to call Add(),  objPath: '").append(objectPath).append("', Error: '").append(busexception.getMessage()).append("'").toString();
            Log.e(TAG, s);
            throw new ControlPanelException(s);
        }
        if (inputFormContainer == null)
            createContainerWidget();
        return inputFormContainer;
    }

    public void cancel()
        throws ControlPanelException
    {
        Log.d(TAG, (new StringBuilder()).append("Cancel() called, device: '").append(device.getDeviceId()).append("' objPath: '").append(objectPath).append("'").toString());
        try
        {
            remoteControl.Cancel();
            return;
        }
        catch (BusException busexception)
        {
            String s = (new StringBuilder()).append("Failed to call  Cancel(),  objPath: '").append(objectPath).append("', Error: '").append(busexception.getMessage()).append("'").toString();
            Log.e(TAG, s);
            throw new ControlPanelException(s);
        }
    }

    public void confirm()
        throws ControlPanelException
    {
        Log.d(TAG, (new StringBuilder()).append("Confirm() called, device: '").append(device.getDeviceId()).append("' objPath: '").append(objectPath).append("'").toString());
        try
        {
            remoteControl.Confirm();
            return;
        }
        catch (BusException busexception)
        {
            String s = (new StringBuilder()).append("Failed to call  Confirm(),  objPath: '").append(objectPath).append("', Error: '").append(busexception.getMessage()).append("'").toString();
            Log.e(TAG, s);
            throw new ControlPanelException(s);
        }
    }

    protected void createChildWidgets()
        throws ControlPanelException
    {
        int i = children.size();
        if (i != 0 && i <= 1)
        {
            IntrospectionNode introspectionnode = (IntrospectionNode)children.get(0);
            for (Iterator iterator = introspectionnode.getInterfaces().iterator(); iterator.hasNext();)
            {
                String s = (String)iterator.next();
                if (!s.startsWith("org.alljoyn.ControlPanel."))
                {
                    Log.v(TAG, (new StringBuilder()).append("Found not a ControlPanel interface: '").append(s).append("'").toString());
                } else
                {
                    WidgetFactory widgetfactory = WidgetFactory.getWidgetFactory(s);
                    if (widgetfactory == null)
                    {
                        String s1 = (new StringBuilder()).append("Received an unknown ControlPanel interface: '").append(s).append("'").toString();
                        Log.e(TAG, s1);
                        throw new ControlPanelException(s1);
                    }
                    if (widgetfactory.getElementType() == UIElementType.CONTAINER)
                    {
                        containerIntroNode = introspectionnode;
                        containerIfname = s;
                        return;
                    }
                }
            }

            throw new ControlPanelException((new StringBuilder()).append("ListPropertyWidget objPath: '").append(objectPath).append("', does not have a ContainerWidget interface").toString());
        } else
        {
            throw new ControlPanelException((new StringBuilder()).append("ListPropertyWidget has a wrong number of child elements, the child num is: '").append(i).append("'").toString());
        }
    }

    public void delete(short word0)
        throws ControlPanelException
    {
        Log.d(TAG, (new StringBuilder()).append("Delete() called, device: '").append(device.getDeviceId()).append("' objPath: '").append(objectPath).append("'").toString());
        try
        {
            remoteControl.Delete(word0);
            return;
        }
        catch (BusException busexception)
        {
            String s = (new StringBuilder()).append("Failed to call Delete(),  objPath: '").append(objectPath).append("', Error: '").append(busexception.getMessage()).append("'").toString();
            Log.e(TAG, s);
            throw new ControlPanelException(s);
        }
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

    public List getValue()
        throws ControlPanelException
    {
        Log.d(TAG, (new StringBuilder()).append("getValue() called, device: '").append(device.getDeviceId()).append("' objPath: '").append(objectPath).append("'").toString());
        List list;
        try
        {
            list = createListOfRecords(remoteControl.getValue());
        }
        catch (BusException busexception)
        {
            String s = (new StringBuilder()).append("Failed to call getValue(),  objPath: '").append(objectPath).append("', Error: '").append(busexception.getMessage()).append("'").toString();
            Log.e(TAG, s);
            throw new ControlPanelException(s);
        }
        return list;
    }

    public boolean isEnabled()
    {
        return enabled;
    }

    protected void registerSignalHandler()
        throws ControlPanelException
    {
        java.lang.reflect.Method method = CommunicationUtil.getListPropertyWidgetSignal("MetadataChanged");
        if (method == null)
        {
            Log.e(TAG, "ListPropertyWidget, MetadataChanged method isn't defined");
            throw new ControlPanelException("ListPropertyWidget, MetadataChanged method isn't defined");
        }
        java.lang.reflect.Method method1 = CommunicationUtil.getListPropertyWidgetSignal("ValueChanged");
        if (method1 == null)
        {
            Log.e(TAG, "ListPropertyWidget, ValueChanged method isn't defined");
            throw new ControlPanelException("ListPropertyWidget, ValueChanged method isn't defined");
        }
        try
        {
            Log.d(TAG, (new StringBuilder()).append("ListPropertyWidget objPath: '").append(objectPath).append("', registering signal handler 'MetadataChanged'").toString());
            registerSignalHander(new ListPropertyWidgetSignalHandler(this), method);
            Log.d(TAG, (new StringBuilder()).append("ListPropertyWidget objPath: '").append(objectPath).append("', registering signal handler 'ValueChanged'").toString());
            registerSignalHander(new ListPropertyWidgetSignalHandler(this), method1);
            return;
        }
        catch (ControlPanelException controlpanelexception)
        {
            String s = (new StringBuilder()).append("Device: '").append(device.getDeviceId()).append("', ListPropertyWidget, failed to register signal handler, Error: '").append(controlpanelexception.getMessage()).append("'").toString();
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

                final ListPropertyWidget this$0;

            
            {
                this$0 = ListPropertyWidget.this;
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
        Log.d(TAG, (new StringBuilder()).append("Setting remote control ListOfProperties widget, objPath: '").append(objectPath).append("'").toString());
        properties = (Properties)proxybusobject.getInterface(org/alljoyn/bus/ifaces/Properties);
        remoteControl = (ListPropertyControlSuper)proxybusobject.getInterface(class1);
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

    public ContainerWidget update(short word0)
        throws ControlPanelException
    {
        Log.d(TAG, (new StringBuilder()).append("Update() called, device: '").append(device.getDeviceId()).append("' objPath: '").append(objectPath).append("'").toString());
        try
        {
            remoteControl.Update(word0);
        }
        catch (BusException busexception)
        {
            String s = (new StringBuilder()).append("Failed to call  Update(),  objPath: '").append(objectPath).append("', Error: '").append(busexception.getMessage()).append("'").toString();
            Log.e(TAG, s);
            throw new ControlPanelException(s);
        }
        if (inputFormContainer == null)
            createContainerWidget();
        return inputFormContainer;
    }

    public ContainerWidget view(short word0)
        throws ControlPanelException
    {
        Log.d(TAG, (new StringBuilder()).append("View() called, device: '").append(device.getDeviceId()).append("' objPath: '").append(objectPath).append("'").toString());
        try
        {
            remoteControl.View(word0);
        }
        catch (BusException busexception)
        {
            String s = (new StringBuilder()).append("Failed to call  View(),  objPath: '").append(objectPath).append("', Error: '").append(busexception.getMessage()).append("'").toString();
            Log.e(TAG, s);
            throw new ControlPanelException(s);
        }
        if (inputFormContainer == null)
            createContainerWidget();
        return inputFormContainer;
    }

}

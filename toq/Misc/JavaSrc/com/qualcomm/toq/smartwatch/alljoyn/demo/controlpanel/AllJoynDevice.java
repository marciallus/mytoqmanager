// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.alljoyn.demo.controlpanel;

import com.qualcomm.toq.base.utils.Log;
import java.util.*;
import org.alljoyn.about.AboutService;
import org.alljoyn.about.AboutServiceImpl;
import org.alljoyn.about.client.AboutClient;
import org.alljoyn.about.icon.AboutIconClient;
import org.alljoyn.bus.BusException;
import org.alljoyn.bus.Status;
import org.alljoyn.ioe.controlpanelservice.*;
import org.alljoyn.ioe.controlpanelservice.ui.*;
import org.alljoyn.services.common.*;

// Referenced classes of package com.qualcomm.toq.smartwatch.alljoyn.demo.controlpanel:
//            AllJoynDeviceResponse, AllJoynDeviceManager

public class AllJoynDevice
    implements ServiceAvailabilityListener
{
    public static final class DeviceAction extends Enum
    {

        private static final DeviceAction $VALUES[];
        public static final DeviceAction FACTORY_RESET;
        public static final DeviceAction GET_ABOUT;
        public static final DeviceAction GET_CONFIG;
        public static final DeviceAction GET_ICON_MIME_TYPE;
        public static final DeviceAction GET_ICON_SIZE;
        public static final DeviceAction GET_ICON_URL;
        public static final DeviceAction GET_VISIBLE_NETWORKS;
        public static final DeviceAction ONBOARD_DEVICE;
        public static final DeviceAction REQUEST_CONTROL_PANELS;
        public static final DeviceAction REQUEST_CONTROL_POPUP;
        public static final DeviceAction RESET_PASSWORD;
        public static final DeviceAction RESTART_DEVICE;
        public static final DeviceAction SET_CONFIG;
        public static final DeviceAction SET_PASSWORD;

        public static DeviceAction valueOf(String s)
        {
            return (DeviceAction)Enum.valueOf(com/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction, s);
        }

        public static DeviceAction[] values()
        {
            return (DeviceAction[])$VALUES.clone();
        }

        static 
        {
            GET_ABOUT = new DeviceAction("GET_ABOUT", 0);
            GET_ICON_MIME_TYPE = new DeviceAction("GET_ICON_MIME_TYPE", 1);
            GET_ICON_URL = new DeviceAction("GET_ICON_URL", 2);
            GET_ICON_SIZE = new DeviceAction("GET_ICON_SIZE", 3);
            GET_CONFIG = new DeviceAction("GET_CONFIG", 4);
            SET_CONFIG = new DeviceAction("SET_CONFIG", 5);
            SET_PASSWORD = new DeviceAction("SET_PASSWORD", 6);
            RESET_PASSWORD = new DeviceAction("RESET_PASSWORD", 7);
            RESTART_DEVICE = new DeviceAction("RESTART_DEVICE", 8);
            FACTORY_RESET = new DeviceAction("FACTORY_RESET", 9);
            ONBOARD_DEVICE = new DeviceAction("ONBOARD_DEVICE", 10);
            GET_VISIBLE_NETWORKS = new DeviceAction("GET_VISIBLE_NETWORKS", 11);
            REQUEST_CONTROL_PANELS = new DeviceAction("REQUEST_CONTROL_PANELS", 12);
            REQUEST_CONTROL_POPUP = new DeviceAction("REQUEST_CONTROL_POPUP", 13);
            DeviceAction adeviceaction[] = new DeviceAction[14];
            adeviceaction[0] = GET_ABOUT;
            adeviceaction[1] = GET_ICON_MIME_TYPE;
            adeviceaction[2] = GET_ICON_URL;
            adeviceaction[3] = GET_ICON_SIZE;
            adeviceaction[4] = GET_CONFIG;
            adeviceaction[5] = SET_CONFIG;
            adeviceaction[6] = SET_PASSWORD;
            adeviceaction[7] = RESET_PASSWORD;
            adeviceaction[8] = RESTART_DEVICE;
            adeviceaction[9] = FACTORY_RESET;
            adeviceaction[10] = ONBOARD_DEVICE;
            adeviceaction[11] = GET_VISIBLE_NETWORKS;
            adeviceaction[12] = REQUEST_CONTROL_PANELS;
            adeviceaction[13] = REQUEST_CONTROL_POPUP;
            $VALUES = adeviceaction;
        }

        private DeviceAction(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class DeviceStatus extends Enum
    {

        private static final DeviceStatus $VALUES[];
        public static final DeviceStatus AVAILABLE;
        public static final DeviceStatus CONFIGURING;
        public static final DeviceStatus GONE;
        public static final DeviceStatus UNAVAILABLE;
        public static final DeviceStatus UNCONFIGURED;

        public static DeviceStatus valueOf(String s)
        {
            return (DeviceStatus)Enum.valueOf(com/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus, s);
        }

        public static DeviceStatus[] values()
        {
            return (DeviceStatus[])$VALUES.clone();
        }

        static 
        {
            CONFIGURING = new DeviceStatus("CONFIGURING", 0);
            AVAILABLE = new DeviceStatus("AVAILABLE", 1);
            UNAVAILABLE = new DeviceStatus("UNAVAILABLE", 2);
            UNCONFIGURED = new DeviceStatus("UNCONFIGURED", 3);
            GONE = new DeviceStatus("GONE", 4);
            DeviceStatus adevicestatus[] = new DeviceStatus[5];
            adevicestatus[0] = CONFIGURING;
            adevicestatus[1] = AVAILABLE;
            adevicestatus[2] = UNAVAILABLE;
            adevicestatus[3] = UNCONFIGURED;
            adevicestatus[4] = GONE;
            $VALUES = adevicestatus;
        }

        private DeviceStatus(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class IconDataRequestType extends Enum
    {

        private static final IconDataRequestType $VALUES[];
        public static final IconDataRequestType DEVICE_CONTENT;
        public static final IconDataRequestType EMPTY;
        public static final IconDataRequestType RESOURCE;
        public static final IconDataRequestType SDCARD;
        private String brandname;

        public static IconDataRequestType valueOf(String s)
        {
            return (IconDataRequestType)Enum.valueOf(com/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType, s);
        }

        public static IconDataRequestType[] values()
        {
            return (IconDataRequestType[])$VALUES.clone();
        }

        public String toString()
        {
            return brandname;
        }

        static 
        {
            EMPTY = new IconDataRequestType("EMPTY", 0, "EMPTY");
            SDCARD = new IconDataRequestType("SDCARD", 1, "SDCARD");
            RESOURCE = new IconDataRequestType("RESOURCE", 2, "RESOURCE");
            DEVICE_CONTENT = new IconDataRequestType("DEVICE_CONTENT", 3, "DEVICE_CONTENT");
            IconDataRequestType aicondatarequesttype[] = new IconDataRequestType[4];
            aicondatarequesttype[0] = EMPTY;
            aicondatarequesttype[1] = SDCARD;
            aicondatarequesttype[2] = RESOURCE;
            aicondatarequesttype[3] = DEVICE_CONTENT;
            $VALUES = aicondatarequesttype;
        }

        private IconDataRequestType(String s, int i, String s1)
        {
            super(s, i);
            brandname = s1;
        }
    }

    public static final class ServiceType extends Enum
    {

        private static final ServiceType $VALUES[];
        public static final ServiceType ABOUT;
        public static final ServiceType ABOUT_ICON;
        public static final ServiceType CONTROL_PANEL;
        public static final ServiceType NOTIFICATION;
        private String m_interface;

        public static ServiceType valueOf(String s)
        {
            return (ServiceType)Enum.valueOf(com/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType, s);
        }

        public static ServiceType[] values()
        {
            return (ServiceType[])$VALUES.clone();
        }

        public String getInterface()
        {
            return m_interface;
        }

        static 
        {
            ABOUT = new ServiceType("ABOUT", 0, "org.alljoyn.About");
            ABOUT_ICON = new ServiceType("ABOUT_ICON", 1, "org.alljoyn.Icon");
            NOTIFICATION = new ServiceType("NOTIFICATION", 2, "org.alljoyn.Notification");
            CONTROL_PANEL = new ServiceType("CONTROL_PANEL", 3, "org.alljoyn.ControlPanel");
            ServiceType aservicetype[] = new ServiceType[4];
            aservicetype[0] = ABOUT;
            aservicetype[1] = ABOUT_ICON;
            aservicetype[2] = NOTIFICATION;
            aservicetype[3] = CONTROL_PANEL;
            $VALUES = aservicetype;
        }

        private ServiceType(String s, int i, String s1)
        {
            super(s, i);
            m_interface = "";
            m_interface = s1;
        }
    }

    private static final class WifiRequestState extends Enum
    {

        private static final WifiRequestState $VALUES[];
        public static final WifiRequestState CONNECT_AP_NETWROK;
        public static final WifiRequestState CONNECT_TO_HOME_NETWORK;

        public static WifiRequestState valueOf(String s)
        {
            return (WifiRequestState)Enum.valueOf(com/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$WifiRequestState, s);
        }

        public static WifiRequestState[] values()
        {
            return (WifiRequestState[])$VALUES.clone();
        }

        static 
        {
            CONNECT_TO_HOME_NETWORK = new WifiRequestState("CONNECT_TO_HOME_NETWORK", 0);
            CONNECT_AP_NETWROK = new WifiRequestState("CONNECT_AP_NETWROK", 1);
            WifiRequestState awifirequeststate[] = new WifiRequestState[2];
            awifirequeststate[0] = CONNECT_TO_HOME_NETWORK;
            awifirequeststate[1] = CONNECT_AP_NETWROK;
            $VALUES = awifirequeststate;
        }

        private WifiRequestState(String s, int i)
        {
            super(s, i);
        }
    }


    public static final char DEFAULT_PINCODE[] = {
        '0', '0', '0', '0', '0', '0'
    };
    public static String DEVICE_TAG_LAST_ACTION = "device_tag_last_action";
    private static final int PING_TIMEOUT = 5000;
    private static final short PROCESS_ALL = -1;
    private static final short PROCESS_BUTTON = 1;
    private static final short PROCESS_LABEL = 0;
    private static final short PROCESS_PICKLIST = 2;
    private static final short PROCESS_SLIDER = 4;
    private static final int m_iconMaxRequest = 3;
    private final String TAG = "AllJoynDevice";
    private Map buttonWidgets;
    private String cachedLua;
    String m_SSID;
    Map m_about;
    private AboutClient m_aboutClient;
    private boolean m_aboutDirty;
    private ArrayList m_controlPanelObjectDescriptions;
    private ControllableDevice m_controllableClient;
    private final String m_defaultIconPath = "fms:/app.zip?alljoyn_58_ND.img";
    private String m_defaultLanguage;
    protected UIElement m_elementType;
    boolean m_favorite;
    String m_friendlyName;
    private String m_helpUrl;
    private AboutIconClient m_iconClient;
    private int m_iconRequestNum;
    BusObjectDescription m_interfaces[];
    private boolean m_isUsingDefaultIcon;
    private Collection m_panels;
    private short m_port;
    String m_serviceName;
    DeviceStatus m_status;
    private String m_storeAboutIconUrl;
    Map m_tag;
    protected UIElement m_uielementChanged;
    UUID m_uniqueId;
    private Map propertyWidgets;

    public AllJoynDevice(String s, UUID uuid)
    {
        m_friendlyName = "";
        m_interfaces = null;
        m_defaultLanguage = "en";
        m_helpUrl = "";
        m_iconRequestNum = 0;
        m_storeAboutIconUrl = null;
        m_isUsingDefaultIcon = true;
        buttonWidgets = new HashMap();
        propertyWidgets = new HashMap();
        cachedLua = null;
        Log.i("AllJoynDevice", (new StringBuilder()).append("New Device ").append(s).append(",").append(uuid).toString());
        m_serviceName = s;
        m_favorite = false;
        m_aboutDirty = true;
        m_status = DeviceStatus.AVAILABLE;
        m_uniqueId = uuid;
    }

    private String buildActionWidget(int i, UIElement uielement, short word0)
    {
        String s = "";
        if ((word0 & 1) != 0)
        {
            ActionWidget actionwidget = (ActionWidget)uielement;
            buttonWidgets.put((new StringBuilder()).append("button").append(i).toString(), actionwidget);
            String s1 = (new StringBuilder()).append(s).append("{ type = \"layout\",\nlayout = {indent = {12, 12}} \n},\n").toString();
            String s2 = (new StringBuilder()).append(s1).append("{ id = \"button").append(i).append("\",\n").toString();
            String s3 = (new StringBuilder()).append(s2).append("type = \"button\",\n").toString();
            String s4 = (new StringBuilder()).append(s3).append("button = {events = {\"OnClick\"}, width = 240, height = 60,\n").toString();
            String s5 = (new StringBuilder()).append(s4).append("contents = {\n").toString();
            String s6 = (new StringBuilder()).append(s5).append("{ type = \"layout\",\nlayout = {direction = ui.LayoutDirection.HORIZONTAL, \n").toString();
            String s7 = (new StringBuilder()).append(s6).append("halign = ui.LayoutHAlign.CENTER\n, valign = ui.LayoutVAlign.CENTER\n, setconstrainedwidth = 240\n, fillcolor = \"m_22\"\n}\n},\n{ type = \"text\",\ntext = {content = \"").append(actionwidget.getLabel()).append("\", color = \"m_63\", \n").append("font = { size = 30, weight = \"bold\"}}\n").append("},\n").append("} }\n").append("}\n").toString();
            String s8 = (new StringBuilder()).append(s7).append(",\n").toString();
            s = (new StringBuilder()).append(s8).append("{ type = \"layout\",\nlayout = {indent = {-12, 0}, addverticalspace = 8} \n},\n").toString();
        }
        return s;
    }

    private String buildContentsForPanel(ContainerWidget containerwidget)
    {
        String s = (new StringBuilder()).append("contents = {\n").append("{ type = \"layout\",\nlayout = {direction = ui.LayoutDirection.HORIZONTAL,\nhalign = ui.LayoutHAlign.LEFT,\nindent = {8, 6},\naddverticalspace = 5,\n}\n},\n").toString();
        String s1 = (new StringBuilder()).append(s).append("{ type = \"icon\", icon = {\npath = \"").toString();
        String s2;
        if (getIsUsingDefaultIcon())
        {
            s2 = (new StringBuilder()).append(s1).append("fms:/app.zip?alljoyn_58_ND.img").toString();
            Log.d("AllJoynDevice", "buildContentsForPanel - Using default icon");
        } else
        {
            s2 = (new StringBuilder()).append(s1).append("fms:/").append(getIconFileName()).toString();
            Log.d("AllJoynDevice", (new StringBuilder()).append("buildContentsForPanel - Using ").append(getIconFileName()).toString());
        }
        String s3 = (new StringBuilder()).append(s2).append("\",\naltpath=\"fms:/app.zip?alljoyn_58_ND.img\"}\n},\n").toString();
        String s4 = (new StringBuilder()).append(s3).append("{ type = \"layout\",\nlayout = {setconstrainedwidth = 220, indent = {3, 0},addverticalspace = 16,\ndirection = ui.LayoutDirection.VERTICAL }\n},\n{ type = \"text\", \ntext = {content = \"").append(m_friendlyName).append("\", lines = 1, color = \"m_0\", \n").append("valign = ui.LayoutVAlign.CENTER,\n").append("font = { size = 32, weight = \"bold\"}} \n").append("},\n").append("{ type = \"layout\",\n").append("layout = {direction = ui.LayoutDirection.VERTICAL, \n").append("indent = {-58, 5}, addverticalspace = 8,\n").append("halign = ui.LayoutHAlign.LEFT,\n").append("clearconstrainedwidth = 1, clearconstrainedheight = 1} \n").append("},\n").toString();
        buttonWidgets.clear();
        propertyWidgets.clear();
        String s5 = (new StringBuilder()).append(s4).append(buildControlString(containerwidget, (short)-1)).toString();
        return (new StringBuilder()).append(s5).append("}\n").toString();
    }

    private String buildControlString(ContainerWidget containerwidget, short word0)
    {
        String s = "";
        List list = containerwidget.getElements();
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(list.size());
        Log.d("AllJoynDevice", String.format("Laying out %d elements", aobj));
        int i = 0;
        Iterator iterator = list.iterator();
        do
            if (iterator.hasNext())
            {
                UIElement uielement = (UIElement)iterator.next();
                i++;
                UIElementType uielementtype = uielement.getElementType();
                Log.d("AllJoynDevice", (new StringBuilder()).append("Creating an Android View for element of type: '").append(uielementtype).append("'").toString());
                static class _cls6
                {

                    static final int $SwitchMap$org$alljoyn$bus$Status[];
                    static final int $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType[];
                    static final int $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidgetHintsType[];
                    static final int $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$UIElementType[];

                    static 
                    {
                        $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType = new int[org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ValueType.values().length];
                        try
                        {
                            $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType[org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ValueType.BYTE.ordinal()] = 1;
                        }
                        catch (NoSuchFieldError nosuchfielderror) { }
                        try
                        {
                            $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType[org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ValueType.INT.ordinal()] = 2;
                        }
                        catch (NoSuchFieldError nosuchfielderror1) { }
                        try
                        {
                            $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType[org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ValueType.SHORT.ordinal()] = 3;
                        }
                        catch (NoSuchFieldError nosuchfielderror2) { }
                        try
                        {
                            $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType[org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ValueType.LONG.ordinal()] = 4;
                        }
                        catch (NoSuchFieldError nosuchfielderror3) { }
                        try
                        {
                            $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType[org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ValueType.DOUBLE.ordinal()] = 5;
                        }
                        catch (NoSuchFieldError nosuchfielderror4) { }
                        $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidgetHintsType = new int[PropertyWidgetHintsType.values().length];
                        try
                        {
                            $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidgetHintsType[PropertyWidgetHintsType.SLIDER.ordinal()] = 1;
                        }
                        catch (NoSuchFieldError nosuchfielderror5) { }
                        try
                        {
                            $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidgetHintsType[PropertyWidgetHintsType.SPINNER.ordinal()] = 2;
                        }
                        catch (NoSuchFieldError nosuchfielderror6) { }
                        $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$UIElementType = new int[UIElementType.values().length];
                        try
                        {
                            $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$UIElementType[UIElementType.ACTION_WIDGET.ordinal()] = 1;
                        }
                        catch (NoSuchFieldError nosuchfielderror7) { }
                        try
                        {
                            $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$UIElementType[UIElementType.CONTAINER.ordinal()] = 2;
                        }
                        catch (NoSuchFieldError nosuchfielderror8) { }
                        try
                        {
                            $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$UIElementType[UIElementType.PROPERTY_WIDGET.ordinal()] = 3;
                        }
                        catch (NoSuchFieldError nosuchfielderror9) { }
                        try
                        {
                            $SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$UIElementType[UIElementType.LABEL_WIDGET.ordinal()] = 4;
                        }
                        catch (NoSuchFieldError nosuchfielderror10) { }
                        $SwitchMap$org$alljoyn$bus$Status = new int[Status.values().length];
                        try
                        {
                            $SwitchMap$org$alljoyn$bus$Status[Status.OK.ordinal()] = 1;
                        }
                        catch (NoSuchFieldError nosuchfielderror11) { }
                        try
                        {
                            $SwitchMap$org$alljoyn$bus$Status[Status.ALLJOYN_JOINSESSION_REPLY_ALREADY_JOINED.ordinal()] = 2;
                        }
                        catch (NoSuchFieldError nosuchfielderror12) { }
                        try
                        {
                            $SwitchMap$org$alljoyn$bus$Status[Status.ALLJOYN_JOINSESSION_REPLY_FAILED.ordinal()] = 3;
                        }
                        catch (NoSuchFieldError nosuchfielderror13) { }
                        try
                        {
                            $SwitchMap$org$alljoyn$bus$Status[Status.ALLJOYN_JOINSESSION_REPLY_UNREACHABLE.ordinal()] = 4;
                        }
                        catch (NoSuchFieldError nosuchfielderror14) { }
                        try
                        {
                            $SwitchMap$org$alljoyn$bus$Status[Status.ALLJOYN_JOINSESSION_REPLY_REJECTED.ordinal()] = 5;
                        }
                        catch (NoSuchFieldError nosuchfielderror15)
                        {
                            return;
                        }
                    }
                }

                switch (_cls6..SwitchMap.org.alljoyn.ioe.controlpanelservice.ui.UIElementType[uielementtype.ordinal()])
                {
                case 4: // '\004'
                    s = (new StringBuilder()).append(s).append(buildLabelWidget(i, uielement, word0)).toString();
                    break;

                case 3: // '\003'
                    s = (new StringBuilder()).append(s).append(buildPropertyWidget(i, uielement, word0)).toString();
                    break;

                case 2: // '\002'
                    s = (new StringBuilder()).append(s).append(buildControlString((ContainerWidget)uielement, word0)).toString();
                    break;

                case 1: // '\001'
                    s = (new StringBuilder()).append(s).append(buildActionWidget(i, uielement, word0)).toString();
                    break;
                }
            } else
            {
                return s;
            }
        while (true);
    }

    private String buildLabelWidget(int i, UIElement uielement, short word0)
    {
        String s = "";
        if ((word0 & 0) != 0)
        {
            String s1 = (new StringBuilder()).append(s).append("{ type = \"text\",\n").toString();
            String s2 = (new StringBuilder()).append(s1).append("text = {content = \"").append(((LabelWidget)uielement).getLabel()).append("\",\n").toString();
            String s3 = (new StringBuilder()).append(s2).append("color = \"m_1\", lines = 1, font = { size = 24}}\n}").toString();
            s = (new StringBuilder()).append(s3).append(",\n").toString();
        }
        return s;
    }

    private String buildPropertyWidget(int i, UIElement uielement, short word0)
    {
        PropertyWidget propertywidget = (PropertyWidget)uielement;
        List list = propertywidget.getHints();
        PropertyWidgetHintsType propertywidgethintstype;
        if (list != null && list.size() != 0)
            propertywidgethintstype = (PropertyWidgetHintsType)list.get(0);
        else
            propertywidgethintstype = null;
        switch (_cls6..SwitchMap.org.alljoyn.ioe.controlpanelservice.ui.PropertyWidgetHintsType[propertywidgethintstype.ordinal()])
        {
        case 2: // '\002'
            return (new StringBuilder()).append("").append(buildSpinnerWidget(i, propertywidget, word0)).toString();

        case 1: // '\001'
            return (new StringBuilder()).append("").append(buildSliderWidget(i, propertywidget, word0)).toString();
        }
        return "";
    }

    private String buildSliderWidget(int i, PropertyWidget propertywidget, short word0)
    {
        String s = "";
        if ((word0 & 4) != 0)
        {
            Log.d("AllJoynDevice", (new StringBuilder()).append("Creating a slider for propertyWidget ").append(propertywidget.getLabel()).toString());
            propertyWidgets.put((new StringBuilder()).append("slider").append(i).toString(), propertywidget);
            String s1 = (new StringBuilder()).append(s).append("{ type = \"layout\",\nlayout = {addverticalspace = 5, indent = {0, 0}} \n},\n").toString();
            String s2 = (new StringBuilder()).append(s1).append("{ type = \"text\",\n").toString();
            String s3 = (new StringBuilder()).append(s2).append("text = {content = \"").append(propertywidget.getLabel()).append("\",\n").toString();
            String s4 = (new StringBuilder()).append(s3).append("color = \"m_1\", lines = 1, font = { size = 24}}\n},\n").toString();
            String s5 = (new StringBuilder()).append(s4).append("{ id = \"slider").append(i).append("\", type = \"slider\", \n").append("slider = {events = {\"OnUp\", \"OnDown\"} } \n").append("},\n").toString();
            String s6 = (new StringBuilder()).append(s5).append("{ type = \"layout\",\nlayout = {addverticalspace = 5} \n}\n").toString();
            s = (new StringBuilder()).append(s6).append(",\n").toString();
        }
        return s;
    }

    private String buildSpinnerWidget(int i, PropertyWidget propertywidget, short word0)
    {
        String s;
        String s3;
        s = "";
        if ((word0 & 2) == 0)
            break MISSING_BLOCK_LABEL_542;
        Log.d("AllJoynDevice", (new StringBuilder()).append("Creating a spinner for propertyWidget ").append(propertywidget.getLabel()).toString());
        propertyWidgets.put((new StringBuilder()).append("picklist").append(i).toString(), propertywidget);
        String s1 = (new StringBuilder()).append(s).append("{ type = \"text\",\n").toString();
        String s2 = (new StringBuilder()).append(s1).append("text = {content = \"").append(propertywidget.getLabel()).append("\",\n").toString();
        s3 = (new StringBuilder()).append(s2).append("color = \"m_1\", lines = 2, font = { size = 24}}\n},").toString();
        Object obj1 = propertywidget.getCurrentValue();
        Object obj = obj1;
_L2:
        String s4;
        int j;
        Log.d("AllJoynDevice", (new StringBuilder()).append("Property current value: ").append(obj).toString());
        s4 = "";
        j = 1;
        if (propertywidget.getListOfConstraint() != null)
        {
            int k = 0;
            for (Iterator iterator = propertywidget.getListOfConstraint().iterator(); iterator.hasNext();)
            {
                org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ConstrainToValues constraintovalues = (org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ConstrainToValues)iterator.next();
                boolean flag = constraintovalues.getValue().equals(obj);
                Log.d("AllJoynDevice", (new StringBuilder()).append("Adding spinner item, Label: ").append(constraintovalues.getLabel()).append(" Value: ").append(constraintovalues.getValue()).append("").toString());
                if (k != 0)
                    s4 = (new StringBuilder()).append(s4).append(", ").toString();
                s4 = (new StringBuilder()).append(s4).append("\"").append(constraintovalues.getLabel()).append("\"").toString();
                if (flag)
                    j = k + 1;
                k++;
            }

        }
        break; /* Loop/switch isn't completed */
        ControlPanelException controlpanelexception;
        controlpanelexception;
        Log.e("AllJoynDevice", "propertyWidget.getCurrentValue() failed, initializing property without current value", controlpanelexception);
        obj = null;
        if (true) goto _L2; else goto _L1
_L1:
        String s5 = (new StringBuilder()).append(s3).append("{ id = \"picklist").append(i).append("\", type = \"picklist\",\n").append("picklist = {events = {\"OnChange\"}, current = ").append(j).append(", \n").toString();
        String s6 = (new StringBuilder()).append(s5).append("options = {\n").toString();
        String s7 = (new StringBuilder()).append(s6).append(s4).append("\n").toString();
        String s8 = (new StringBuilder()).append(s7).append("}\n},\n}\n").toString();
        s = (new StringBuilder()).append(s8).append(",\n").toString();
        return s;
    }

    private AllJoynDeviceResponse connectToDevice(ClientBase clientbase)
    {
        Log.d("AllJoynDevice", (new StringBuilder()).append("connectToDevice ").append(toLogString()).toString());
        if (clientbase == null)
            return new AllJoynDeviceResponse(AllJoynDeviceResponse.ResponseCode.Status_ERROR, "fail connect to device, client == null");
        if (clientbase.isConnected())
            return new AllJoynDeviceResponse(AllJoynDeviceResponse.ResponseCode.Status_OK);
        Status status = clientbase.connect();
        Log.i("AllJoynDevice", (new StringBuilder()).append("connectToDevice: device ").append(m_friendlyName).append("-ServiceName = ").append(m_serviceName).append("-uniqueId = ").append(m_uniqueId).append("-AJReturnStatus=").append(status.name()).toString());
        switch (_cls6..SwitchMap.org.alljoyn.bus.Status[status.ordinal()])
        {
        case 3: // '\003'
        case 4: // '\004'
            Log.e("AllJoynDevice", "connectToDevice: Join Session returned ALLJOYN_JOINSESSION_REPLY_FAILED. Device is unavailable. Pseudo ping");
            return new AllJoynDeviceResponse(AllJoynDeviceResponse.ResponseCode.Status_ERROR_CANT_ESTABLISH_SESSION, "device unreachable");

        case 2: // '\002'
            Log.d("AllJoynDevice", "connectToDevice: Join Session returned ALLJOYN_JOINSESSION_REPLY_ALREADY_JOINED. Ignoring");
            return new AllJoynDeviceResponse(AllJoynDeviceResponse.ResponseCode.Status_OK);

        case 1: // '\001'
            Log.d("AllJoynDevice", "connectToDevice. Join Session OK");
            return new AllJoynDeviceResponse(AllJoynDeviceResponse.ResponseCode.Status_OK);
        }
        Log.e("AllJoynDevice", (new StringBuilder()).append("connectToDevice: Join session returned error: ").append(status.name()).toString());
        return new AllJoynDeviceResponse(AllJoynDeviceResponse.ResponseCode.Status_ERROR, "Failed connecting to device");
    }

    private void disconnectFromDevice(ClientBase clientbase)
    {
label0:
        {
            Log.d("AllJoynDevice", (new StringBuilder()).append("disconnectFromDevice ").append(toLogString()).toString());
            if (clientbase != null)
            {
                Log.d("AllJoynDevice", "DeviceImpl.disconnectFromDevice client is not null");
                if (!clientbase.isConnected())
                    break label0;
                Log.d("AllJoynDevice", "DeviceImpl.disconnectFromDevice client is connected. Disconnecting");
                clientbase.disconnect();
            }
            return;
        }
        Log.d("AllJoynDevice", (new StringBuilder()).append("DeviceImpl.disconnectFromDevice client is NOT connected. name = ").append(m_friendlyName).toString());
    }

    private void removeDevice()
    {
        cachedLua = "";
        requestControlPanels(false);
    }

    private void setValue(PropertyWidget propertywidget, int i)
    {
        _cls6..SwitchMap.org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.ValueType[propertywidget.getValueType().ordinal()];
        JVM INSTR tableswitch 1 5: default 102
    //                   1 44
    //                   2 64
    //                   3 73
    //                   4 83
    //                   5 93;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L2:
        Exception exception;
        propertywidget.setCurrentValue(Byte.valueOf((byte)i));
        return;
_L3:
        try
        {
            propertywidget.setCurrentValue(Integer.valueOf(i));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            exception.printStackTrace();
            removeDevice();
            return;
        }
_L4:
        propertywidget.setCurrentValue(Short.valueOf((short)i));
        return;
_L5:
        propertywidget.setCurrentValue(Long.valueOf(i));
        return;
_L6:
        propertywidget.setCurrentValue(Double.valueOf(i));
_L1:
    }

    private String toLogString()
    {
        Object aobj[] = new Object[3];
        aobj[0] = m_serviceName;
        aobj[1] = m_uniqueId;
        aobj[2] = m_friendlyName;
        return String.format("[busName=%s, appId=%s, name=%s]", aobj);
    }

    public void connectionLost()
    {
        Log.i("AllJoynDevice", (new StringBuilder()).append("connectionLost with device ").append(m_friendlyName).append("SSID = ").append(m_SSID).toString());
        cachedLua = "";
        m_panels = null;
    }

    public void doAsynchNetworkTask(WifiRequestState wifirequeststate)
    {
    }

    public Map getAbout(String s, boolean flag)
    {
        Log.d("AllJoynDevice", (new StringBuilder()).append("getAbout ").append(toLogString()).toString());
        if (!flag && !m_aboutDirty) goto _L2; else goto _L1
_L1:
        if (m_aboutClient != null)
            break MISSING_BLOCK_LABEL_76;
        if (m_serviceName == null)
            return null;
        try
        {
            m_aboutClient = AboutServiceImpl.getInstance().createAboutClient(m_serviceName, this, m_port);
        }
        catch (Exception exception)
        {
            Log.e("AllJoynDevice", (new StringBuilder()).append("getAbout: device ").append(m_friendlyName).append("-ServiceName = ").append(m_serviceName).append("-ssid = ").append(m_SSID).toString(), exception);
            return m_about;
        }
        if (connectToDevice(m_aboutClient).getStatus() != AllJoynDeviceResponse.ResponseCode.Status_OK)
        {
            Log.e("AllJoynDevice", (new StringBuilder()).append("getAbout: device ").append(m_friendlyName).append("-ServiceName = ").append(m_serviceName).append("-ssid = ").append(m_SSID).toString());
            return m_about;
        }
        AboutClient aboutclient = m_aboutClient;
        if (s != null)
            break MISSING_BLOCK_LABEL_230;
        s = m_defaultLanguage;
        m_about = aboutclient.getAbout(s);
_L4:
        m_aboutDirty = false;
_L2:
        disconnectFromDevice(m_aboutClient);
        return m_about;
        BusException busexception;
        busexception;
        Log.e("AllJoynDevice", (new StringBuilder()).append("getAbout: device ").append(m_friendlyName).append("-ServiceName = ").append(m_serviceName).append("-ssid = ").append(m_SSID).toString());
        busexception.printStackTrace();
        if (true) goto _L4; else goto _L3
_L3:
    }

    public String getControlString()
        throws Exception
    {
        String s;
        Iterator iterator;
        s = "";
        Collection collection = getPanels();
        if (collection == null)
            break MISSING_BLOCK_LABEL_373;
        iterator = collection.iterator();
_L2:
        String s1;
        Iterator iterator1;
        if (!iterator.hasNext())
            break MISSING_BLOCK_LABEL_373;
        ControlPanelCollection controlpanelcollection = (ControlPanelCollection)iterator.next();
        if (controlpanelcollection.getLanguages().contains("en"))
        {
            Log.i("AllJoynDevice", (new StringBuilder()).append("Found default language: ").append("en").toString());
            s1 = "en";
        } else
        if (!"en".equals("en") && controlpanelcollection.getLanguages().contains("en"))
        {
            Log.i("AllJoynDevice", (new StringBuilder()).append("Didn't find default language: ").append("en").append(" displaying english").toString());
            s1 = "en";
        } else
        if (!controlpanelcollection.getLanguages().isEmpty())
        {
            s1 = (String)controlpanelcollection.getLanguages().iterator().next();
            Log.i("AllJoynDevice", (new StringBuilder()).append("Didn't find default language: ").append("en").append(" and no english, displaying ").append(s1).toString());
        } else
        {
            Log.i("AllJoynDevice", (new StringBuilder()).append("Control Panel Collection has no language. displaying default language: ").append("en").toString());
            s1 = "en";
        }
        iterator1 = controlpanelcollection.getControlPanels().iterator();
_L4:
        if (!iterator1.hasNext()) goto _L2; else goto _L1
_L1:
        DeviceControlPanel devicecontrolpanel = (DeviceControlPanel)iterator1.next();
        if (!devicecontrolpanel.getLanguage().equals(s1)) goto _L4; else goto _L3
_L3:
        UIElement uielement;
        UIElementType uielementtype;
        uielement = devicecontrolpanel.getRootElement(new ControlPanelEventsListener() {

            final AllJoynDevice this$0;

            public void errorOccurred(DeviceControlPanel devicecontrolpanel1, String s2)
            {
                Log.d("AllJoynDevice", (new StringBuilder()).append("Error getting panel widgets: ").append(s2).toString());
            }

            public void metadataChanged(DeviceControlPanel devicecontrolpanel1, UIElement uielement1)
            {
            }

            public void notificationActionDismiss(DeviceControlPanel devicecontrolpanel1)
            {
            }

            public void valueChanged(DeviceControlPanel devicecontrolpanel1, UIElement uielement1, Object obj)
            {
                cachedLua = null;
                (new Thread(new Runnable() {

                    final _cls2 this$1;

                    public void run()
                    {
                        AllJoynDeviceManager.getInstance().generateDatFile();
                    }

            
            {
                this$1 = _cls2.this;
                super();
            }
                }
)).start();
            }

            
            {
                this$0 = AllJoynDevice.this;
                super();
            }
        }
);
        uielementtype = uielement.getElementType();
        Log.d("AllJoynDevice", (new StringBuilder()).append("Found root container of type: '").append(uielementtype).append("'").toString());
        if (uielementtype != UIElementType.CONTAINER) goto _L4; else goto _L5
_L5:
        s = buildContentsForPanel((ContainerWidget)uielement);
        return s;
    }

    public String getDefaultLanguage()
    {
        return m_defaultLanguage;
    }

    public String getFriendlyName()
    {
        return m_friendlyName;
    }

    public String getHelpURL()
    {
        return m_helpUrl;
    }

    public byte[] getIconContent()
    {
        Log.i("AllJoynDevice", (new StringBuilder()).append("getDeviceIconContent ").append(toLogString()).toString());
        if (isServiceSupported(ServiceType.ABOUT_ICON))
        {
            Log.i("AllJoynDevice", "getDeviceIconContent");
            if (isIconClientConnected())
            {
                byte abyte0[];
                try
                {
                    abyte0 = m_iconClient.GetContent();
                    Log.d("AllJoynDevice", (new StringBuilder()).append("getDeviceIconContent ").append(toLogString()).append(" has icon content").toString());
                }
                catch (BusException busexception)
                {
                    Log.logException("AllJoynDevice", busexception, (new StringBuilder()).append("getDeviceIconContent deviceId = ").append(m_uniqueId).toString());
                    return null;
                }
                catch (Exception exception)
                {
                    Log.logException("AllJoynDevice", exception, (new StringBuilder()).append("getDeviceIconContent deviceId = ").append(m_uniqueId).toString());
                    return null;
                }
                return abyte0;
            }
        }
        return null;
    }

    public String getIconFileName()
    {
        return (new StringBuilder()).append(m_uniqueId.toString().substring(0, 5)).append("Icon.img").toString();
    }

    public String getIconMimeType()
    {
        if (isIconClientConnected())
        {
            String s;
            try
            {
                s = m_iconClient.getMimeType();
            }
            catch (BusException busexception)
            {
                Log.e("AllJoynDevice", (new StringBuilder()).append("getIconMimeType: device ").append(m_friendlyName).append("-ServiceName = ").append(m_serviceName).append("-ssid = ").append(m_SSID).toString());
                busexception.printStackTrace();
                return "";
            }
            return s;
        } else
        {
            return "";
        }
    }

    public int getIconSize()
    {
        int i = -1;
        if (isIconClientConnected())
        {
            int j;
            try
            {
                j = m_iconClient.getSize();
            }
            catch (BusException busexception)
            {
                Log.e("AllJoynDevice", (new StringBuilder()).append("getIconSize: device ").append(m_friendlyName).append("-ServiceName = ").append(m_serviceName).append("-ssid = ").append(m_SSID).toString());
                busexception.printStackTrace();
                return i;
            }
            i = j;
        }
        return i;
    }

    public AllJoynDeviceResponse getIconUrl()
    {
        Log.i("AllJoynDevice", (new StringBuilder()).append("getIconUrl ").append(toLogString()).toString());
        if (isServiceSupported(ServiceType.ABOUT_ICON) && isIconClientConnected())
        {
            AllJoynDeviceResponse alljoyndeviceresponse;
            try
            {
                String s = m_iconClient.GetUrl();
                Log.e("AllJoynDevice", (new StringBuilder()).append("getIconUrl ").append(toLogString()).append(" returned url: ").append(s).toString());
                alljoyndeviceresponse = new AllJoynDeviceResponse(AllJoynDeviceResponse.ResponseCode.Status_OK, s);
            }
            catch (BusException busexception)
            {
                Log.logException("AllJoynDevice", busexception, (new StringBuilder()).append("getIconUrl deviceId = ").append(m_uniqueId).toString());
                return new AllJoynDeviceResponse(AllJoynDeviceResponse.ResponseCode.Status_ERROR);
            }
            catch (Exception exception)
            {
                Log.logException("AllJoynDevice", exception, (new StringBuilder()).append("getIconUrl deviceId = ").append(m_uniqueId).toString());
                return new AllJoynDeviceResponse(AllJoynDeviceResponse.ResponseCode.Status_ERROR);
            }
            return alljoyndeviceresponse;
        } else
        {
            return new AllJoynDeviceResponse(AllJoynDeviceResponse.ResponseCode.Status_ERROR);
        }
    }

    public UUID getId()
    {
        return m_uniqueId;
    }

    protected BusObjectDescription[] getInterfaces()
    {
        return m_interfaces;
    }

    public boolean getIsUsingDefaultIcon()
    {
        return m_isUsingDefaultIcon;
    }

    public String getLuaString()
    {
        String s = (new StringBuilder()).append(" Device { id=\"").append(m_uniqueId).append("\", name=\"").append(m_friendlyName).append("\", icon=\"").toString();
        String s1;
        String s2;
        String s3;
        String s4;
        if (getIsUsingDefaultIcon())
        {
            s1 = (new StringBuilder()).append(s).append("fms:/app.zip?alljoyn_58_ND.img").toString();
            Log.d("AllJoynDevice", "getLuaString - Using default icon");
        } else
        {
            s1 = (new StringBuilder()).append(s).append("fms:/").append(getIconFileName()).toString();
            Log.d("AllJoynDevice", (new StringBuilder()).append("getLuaString - Using ").append(getIconFileName()).toString());
        }
        s2 = (new StringBuilder()).append(s1).append("\"").toString();
        if (m_panels == null || m_panels.size() <= 0)
            break MISSING_BLOCK_LABEL_164;
        s2 = (new StringBuilder()).append(s2).append(",\n").toString();
        s4 = (new StringBuilder()).append(s2).append(getControlString()).toString();
        s2 = s4;
_L2:
        s3 = (new StringBuilder()).append(s2).append("}\n").toString();
        if (m_panels != null)
            cachedLua = s3;
        return s3;
        Exception exception;
        exception;
        exception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public String getOnboardedNetworkSSID()
    {
        return null;
    }

    public Collection getPanels()
    {
        return m_panels;
    }

    public short getPort()
    {
        return m_port;
    }

    public String getSSID()
    {
        return m_SSID;
    }

    public String getServiceName()
    {
        return m_serviceName;
    }

    public DeviceStatus getStatus()
    {
        return m_status;
    }

    public String getStoredIconUrl()
    {
        return m_storeAboutIconUrl;
    }

    public void handleButtonAction(final String id)
    {
        (new Thread(new Runnable() {

            final AllJoynDevice this$0;
            final String val$id;

            public void run()
            {
                try
                {
                    if (buttonWidgets.containsKey(id))
                        ((ActionWidget)buttonWidgets.get(id)).exec();
                    return;
                }
                catch (ControlPanelException controlpanelexception)
                {
                    controlpanelexception.printStackTrace();
                }
            }

            
            {
                this$0 = AllJoynDevice.this;
                id = s;
                super();
            }
        }
)).start();
    }

    public void handlePicklistAction(final String id, final int itemId)
    {
        (new Thread(new Runnable() {

            final AllJoynDevice this$0;
            final String val$id;
            final int val$itemId;

            public void run()
            {
                if (propertyWidgets.containsKey(id))
                {
                    PropertyWidget propertywidget = (PropertyWidget)propertyWidgets.get(id);
                    List list = propertywidget.getHints();
                    PropertyWidgetHintsType propertywidgethintstype;
                    if (list != null && list.size() != 0)
                        propertywidgethintstype = (PropertyWidgetHintsType)list.get(0);
                    else
                        propertywidgethintstype = null;
                    switch (_cls6..SwitchMap.org.alljoyn.ioe.controlpanelservice.ui.PropertyWidgetHintsType[propertywidgethintstype.ordinal()])
                    {
                    case 2: // '\002'
                        setValue(propertywidget, itemId);
                        return;
                    }
                }
            }

            
            {
                this$0 = AllJoynDevice.this;
                id = s;
                itemId = i;
                super();
            }
        }
)).start();
    }

    public void handleSliderAction(final String id, final boolean isUp)
    {
        (new Thread(new Runnable() {

            final AllJoynDevice this$0;
            final String val$id;
            final boolean val$isUp;

            public void run()
            {
                if (!propertyWidgets.containsKey(id)) goto _L2; else goto _L1
_L1:
                PropertyWidget propertywidget;
                propertywidget = (PropertyWidget)propertyWidgets.get(id);
                List list = propertywidget.getHints();
                PropertyWidgetHintsType propertywidgethintstype;
                if (list == null || list.size() == 0)
                    propertywidgethintstype = null;
                else
                    propertywidgethintstype = (PropertyWidgetHintsType)list.get(0);
                _cls6..SwitchMap.org.alljoyn.ioe.controlpanelservice.ui.PropertyWidgetHintsType[propertywidgethintstype.ordinal()];
                JVM INSTR tableswitch 1 1: default 84
            //                           1 99;
                   goto _L2 _L3
_L2:
                return;
_L3:
                org.alljoyn.ioe.controlpanelservice.ui.PropertyWidget.RangeConstraint rangeconstraint = propertywidget.getPropertyRangeConstraint();
                int j1 = Integer.parseInt(propertywidget.getCurrentValue().toString());
                int i = j1;
_L5:
                int j = Integer.parseInt(rangeconstraint.getIncrement().toString());
                int k = Integer.parseInt(rangeconstraint.getMax().toString());
                int l = Integer.parseInt(rangeconstraint.getMin().toString());
                int i1;
                if (k > 20 && k <= 100)
                    j = k / 10;
                else
                if (k % 100 == 0)
                    j = 100;
                else
                if (k >= 1000)
                    j = k / 1000;
                if (isUp)
                    i1 = i + j;
                else
                    i1 = i - j;
                if (i1 > k)
                    i1 = k;
                else
                if (i1 < l)
                    i1 = l;
                if (i != i1)
                {
                    setValue(propertywidget, i1);
                    return;
                }
                if (true) goto _L2; else goto _L4
_L4:
                Exception exception;
                exception;
                i = 0;
                  goto _L5
            }

            
            {
                this$0 = AllJoynDevice.this;
                id = s;
                isUp = flag;
                super();
            }
        }
)).start();
    }

    public boolean isControlPanelReachanble()
    {
        if (m_controllableClient == null)
            return false;
        else
            return m_controllableClient.isReachable();
    }

    public boolean isIconClientConnected()
    {
        if (m_iconClient != null)
            break MISSING_BLOCK_LABEL_146;
        if (m_serviceName != null)
            break MISSING_BLOCK_LABEL_50;
        Log.e("AllJoynDevice", (new StringBuilder()).append("isIconClientConnected deviceId=").append(m_uniqueId).append(" service name is null").toString());
        return false;
        try
        {
            m_iconClient = AboutServiceImpl.getInstance().createAboutIconClient(m_serviceName, this, m_port);
            if (m_iconClient != null)
                break MISSING_BLOCK_LABEL_146;
            Log.d("AllJoynDevice", (new StringBuilder()).append("isIconClientConnected deviceId=").append(m_uniqueId).append(" failed to create IconClient").toString());
        }
        catch (BusException busexception)
        {
            Log.logException("AllJoynDevice", busexception, (new StringBuilder()).append("isIconClientConnected deviceId = ").append(m_uniqueId).toString());
            return false;
        }
        return false;
        if (connectToDevice(m_iconClient).getStatus() != AllJoynDeviceResponse.ResponseCode.Status_OK)
        {
            Log.e("AllJoynDevice", (new StringBuilder()).append("isIconClientConnected deviceId=").append(m_uniqueId).append(" failed to establish session").toString());
            return false;
        } else
        {
            return true;
        }
    }

    public boolean isServiceSupported(ServiceType servicetype)
    {
        if (m_interfaces != null)
        {
            int i = 0;
            do
            {
                if (i >= m_interfaces.length)
                    break;
                String as[] = m_interfaces[i].getInterfaces();
                if (as.length == 0)
                    break;
                for (int j = 0; j < as.length; j++)
                    if (as[j].startsWith(servicetype.getInterface()))
                        return true;

                i++;
            } while (true);
        }
        return false;
    }

    public void requestControlPanels()
    {
        requestControlPanels(true);
    }

    public void requestControlPanels(final boolean disconnectAfterFetch)
    {
        Log.d("AllJoynDevice", (new StringBuilder()).append("requestControlPanels ").append(toLogString()).toString());
        if (m_controllableClient != null)
            break MISSING_BLOCK_LABEL_248;
        Log.d("AllJoynDevice", "requestControlPanels m_controllableClient is null. creating one.");
        if (m_serviceName == null)
            break MISSING_BLOCK_LABEL_398;
        if (m_serviceName.trim().length() == 0)
            return;
        m_controllableClient = ControlPanelService.getInstance().getControllableDevice(m_uniqueId.toString(), m_serviceName);
_L1:
        Collection collection;
        if (m_controllableClient.getSessionId() == null)
            break MISSING_BLOCK_LABEL_259;
        Log.d("AllJoynDevice", (new StringBuilder()).append("requestControlPanels already have a session. fetching the existing panel from controllable device: ").append(m_uniqueId).toString());
        collection = m_controllableClient.getUnitCollection();
        if (collection != null)
            try
            {
                if (!collection.isEmpty())
                {
                    Log.d("AllJoynDevice", "requestControlPanels already have a session. controllable device has a unit. returning unit's collection");
                    if (m_panels == null)
                    {
                        m_panels = ((Unit)collection.iterator().next()).getControlPanelCollection();
                        AllJoynDeviceManager.getInstance().generateDatFile();
                        return;
                    }
                }
            }
            catch (ControlPanelException controlpanelexception)
            {
                Log.e("AllJoynDevice", (new StringBuilder()).append("requestControlPanels: device ").append(m_friendlyName).append("-ServiceName = ").append(m_serviceName).append("-ssid = ").append(m_SSID).toString(), controlpanelexception);
                return;
            }
        break MISSING_BLOCK_LABEL_398;
        Log.d("AllJoynDevice", "requestControlPanels m_controllableClient is not null. using it.");
          goto _L1
        DeviceEventsListener deviceeventslistener;
        Log.d("AllJoynDevice", (new StringBuilder()).append("requestControlPanels has no session with controllable device. starting a session with controllable device: ").append(m_uniqueId).toString());
        deviceeventslistener = new DeviceEventsListener() {

            final AllJoynDevice this$0;
            final boolean val$disconnectAfterFetch;

            public void errorOccurred(ControllableDevice controllabledevice, String s)
            {
                Log.d("AllJoynDevice", (new StringBuilder()).append("Control panel error occurred for device: ").append(controllabledevice.getDeviceId()).append(", reason: ").append(s).toString());
                try
                {
                    Status status = Status.valueOf(s);
                    switch (_cls6..SwitchMap.org.alljoyn.bus.Status[status.ordinal()])
                    {
                    default:
                        Log.e("AllJoynDevice", (new StringBuilder()).append("requestControlPanels: Join Session failed. Device: '").append(m_uniqueId).append("'is unavailable at busName: '").append(m_serviceName).append("'").toString());
                        cachedLua = "";
                        m_panels = null;
                        return;

                    case 2: // '\002'
                        break;
                    }
                }
                catch (IllegalArgumentException illegalargumentexception)
                {
                    return;
                }
                Log.i("AllJoynDevice", (new StringBuilder()).append("not an error - Device: '").append(m_uniqueId).append("'is already joined at busName: '").append(m_serviceName).append("'").toString());
                return;
            }

            public void sessionEstablished(ControllableDevice controllabledevice, Collection collection1)
            {
                Log.d("AllJoynDevice", (new StringBuilder()).append("Control panel session established for device: ").append(controllabledevice.getDeviceId()).toString());
                m_panels = collection1;
                AllJoynDeviceManager.getInstance().generateDatFile();
                if (!disconnectAfterFetch);
            }

            public void sessionLost(ControllableDevice controllabledevice)
            {
                Log.d("AllJoynDevice", (new StringBuilder()).append("Control panel lost session for device: ").append(controllabledevice.getDeviceId()).toString());
                cachedLua = "";
                m_panels = null;
                AllJoynDeviceManager.getInstance().onDeviceLost(m_serviceName);
            }

            
            {
                this$0 = AllJoynDevice.this;
                disconnectAfterFetch = flag;
                super();
            }
        }
;
        if (m_controlPanelObjectDescriptions == null)
            break MISSING_BLOCK_LABEL_398;
        int i = 0;
_L3:
        if (i >= m_controlPanelObjectDescriptions.size())
            break; /* Loop/switch isn't completed */
        BusObjectDescription busobjectdescription = (BusObjectDescription)m_controlPanelObjectDescriptions.get(i);
        m_controllableClient.addControlPanel(busobjectdescription.getPath(), busobjectdescription.getInterfaces());
        i++;
        if (true) goto _L3; else goto _L2
_L2:
        Log.d("AllJoynDevice", (new StringBuilder()).append("Start a session of control panel service with the device: ").append(m_serviceName).toString());
        cachedLua = null;
        m_controllableClient.startSession(deviceeventslistener);
    }

    public void resetServices()
    {
        Log.i("TAG", (new StringBuilder()).append("resetServices ending all sessions of device: ").append(toLogString()).toString());
        if (m_aboutClient != null && m_aboutClient.isConnected())
            m_aboutClient.disconnect();
        m_aboutClient = null;
        if (m_iconClient != null && m_iconClient.isConnected())
            m_iconClient.disconnect();
        m_iconClient = null;
        if (m_controllableClient != null && m_controllableClient.getSessionId() != null)
            m_controllableClient.endSession();
        m_controllableClient = null;
    }

    protected void setAbout(Map map)
    {
        m_about = map;
    }

    public void setDefaultLanguage(String s)
    {
        m_defaultLanguage = s;
    }

    public void setDirty()
    {
        m_aboutDirty = true;
    }

    public void setFriendlyName(String s)
    {
        m_friendlyName = s;
    }

    public void setHelpUrl(String s)
    {
        m_helpUrl = s;
    }

    protected void setId(UUID uuid)
    {
        m_uniqueId = uuid;
    }

    protected void setInterfaces(BusObjectDescription abusobjectdescription[])
    {
        m_interfaces = abusobjectdescription;
        if (m_interfaces != null)
        {
            m_controlPanelObjectDescriptions = new ArrayList();
            for (int i = 0; i < m_interfaces.length; i++)
            {
                BusObjectDescription busobjectdescription = m_interfaces[i];
                if (busobjectdescription.getPath().startsWith("/ControlPanel"))
                    m_controlPanelObjectDescriptions.add(busobjectdescription);
            }

        }
    }

    public void setIsUsingDefaultIcon(boolean flag)
    {
        m_isUsingDefaultIcon = flag;
    }

    protected void setPort(short word0)
    {
        m_port = word0;
    }

    public void setSSID(String s)
    {
        m_SSID = s;
    }

    protected void setServiceName(String s)
    {
        boolean flag;
        if (m_serviceName != null && !m_serviceName.equalsIgnoreCase(s))
            flag = true;
        else
            flag = false;
        Log.i("AllJoynDevice", (new StringBuilder()).append("setServiceName. old: ").append(m_serviceName).append(", new: ").append(s).append(", needs reset services? ").append(flag).toString());
        m_serviceName = s;
        if (flag)
            resetServices();
    }

    public void setStatus(DeviceStatus devicestatus)
    {
        if (!devicestatus.equals(m_status))
        {
            Log.i("AllJoynDevice", (new StringBuilder()).append("setStatus: set device status for ").append(toLogString()).append(", old status = ").append(m_status).append(", new status = ").append(devicestatus).toString());
            m_status = devicestatus;
            if (DeviceStatus.GONE.equals(devicestatus))
            {
                resetServices();
                m_panels = null;
                m_uielementChanged = null;
                m_elementType = null;
                return;
            }
        }
    }

    public void setStoredIconUrl(String s)
    {
        m_storeAboutIconUrl = s;
    }

    public void stopControlPanelSession()
    {
        Log.d("AllJoynDevice", (new StringBuilder()).append("Previously would end session, keep it open for now: ").append(toLogString()).toString());
    }



/*
    static String access$002(AllJoynDevice alljoyndevice, String s)
    {
        alljoyndevice.cachedLua = s;
        return s;
    }

*/


/*
    static Collection access$102(AllJoynDevice alljoyndevice, Collection collection)
    {
        alljoyndevice.m_panels = collection;
        return collection;
    }

*/



}

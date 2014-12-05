.class public Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
.super Ljava/lang/Object;
.source "AllJoynDevice.java"

# interfaces
.implements Lorg/alljoyn/services/common/ServiceAvailabilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$6;,
        Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$WifiRequestState;,
        Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;,
        Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceAction;,
        Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;,
        Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$IconDataRequestType;
    }
.end annotation


# static fields
.field public static final DEFAULT_PINCODE:[C

.field public static DEVICE_TAG_LAST_ACTION:Ljava/lang/String; = null

.field private static final PING_TIMEOUT:I = 0x1388

.field private static final PROCESS_ALL:S = -0x1s

.field private static final PROCESS_BUTTON:S = 0x1s

.field private static final PROCESS_LABEL:S = 0x0s

.field private static final PROCESS_PICKLIST:S = 0x2s

.field private static final PROCESS_SLIDER:S = 0x4s

.field private static final m_iconMaxRequest:I = 0x3


# instance fields
.field private final TAG:Ljava/lang/String;

.field private buttonWidgets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;",
            ">;"
        }
    .end annotation
.end field

.field private cachedLua:Ljava/lang/String;

.field m_SSID:Ljava/lang/String;

.field m_about:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m_aboutClient:Lorg/alljoyn/about/client/AboutClient;

.field private m_aboutDirty:Z

.field private m_controlPanelObjectDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/alljoyn/services/common/BusObjectDescription;",
            ">;"
        }
    .end annotation
.end field

.field private m_controllableClient:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

.field private final m_defaultIconPath:Ljava/lang/String;

.field private m_defaultLanguage:Ljava/lang/String;

.field protected m_elementType:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;

.field m_favorite:Z

.field m_friendlyName:Ljava/lang/String;

.field private m_helpUrl:Ljava/lang/String;

.field private m_iconClient:Lorg/alljoyn/about/icon/AboutIconClient;

.field private m_iconRequestNum:I

.field m_interfaces:[Lorg/alljoyn/services/common/BusObjectDescription;

.field private m_isUsingDefaultIcon:Z

.field private m_panels:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;",
            ">;"
        }
    .end annotation
.end field

.field private m_port:S

.field m_serviceName:Ljava/lang/String;

.field m_status:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

.field private m_storeAboutIconUrl:Ljava/lang/String;

.field m_tag:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected m_uielementChanged:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;

.field m_uniqueId:Ljava/util/UUID;

.field private propertyWidgets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->DEFAULT_PINCODE:[C

    .line 83
    const-string v0, "device_tag_last_action"

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->DEVICE_TAG_LAST_ACTION:Ljava/lang/String;

    return-void

    .line 54
    nop

    :array_0
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/UUID;)V
    .locals 5
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "uniqueId"    # Ljava/util/UUID;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "AllJoynDevice"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->TAG:Ljava/lang/String;

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_friendlyName:Ljava/lang/String;

    .line 138
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_interfaces:[Lorg/alljoyn/services/common/BusObjectDescription;

    .line 142
    const-string v0, "en"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_defaultLanguage:Ljava/lang/String;

    .line 145
    const-string v0, ""

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_helpUrl:Ljava/lang/String;

    .line 150
    iput v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_iconRequestNum:I

    .line 152
    const-string v0, "fms:/app.zip?alljoyn_58_ND.img"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_defaultIconPath:Ljava/lang/String;

    .line 161
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_storeAboutIconUrl:Ljava/lang/String;

    .line 162
    iput-boolean v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_isUsingDefaultIcon:Z

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->buttonWidgets:Ljava/util/Map;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->propertyWidgets:Ljava/util/Map;

    .line 166
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->cachedLua:Ljava/lang/String;

    .line 176
    const-string v0, "AllJoynDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New Device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_serviceName:Ljava/lang/String;

    .line 178
    iput-boolean v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_favorite:Z

    .line 179
    iput-boolean v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_aboutDirty:Z

    .line 180
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;->AVAILABLE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_status:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    .line 181
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_uniqueId:Ljava/util/UUID;

    .line 182
    return-void
.end method

.method static synthetic access$002(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->cachedLua:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_panels:Ljava/util/Collection;

    return-object p1
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->buttonWidgets:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->propertyWidgets:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    .param p1, "x1"    # Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->setValue(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;I)V

    return-void
.end method

.method private buildActionWidget(ILorg/alljoyn/ioe/controlpanelservice/ui/UIElement;S)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I
    .param p2, "element"    # Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;
    .param p3, "mask"    # S

    .prologue
    .line 1073
    const-string v1, ""

    .line 1074
    .local v1, "ret":Ljava/lang/String;
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_0

    move-object v0, p2

    .line 1075
    check-cast v0, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;

    .line 1076
    .local v0, "aw":Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->buttonWidgets:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "button"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "{ type = \"layout\",\nlayout = {indent = {12, 12}} \n},\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1080
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "{ id = \"button"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1081
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "type = \"button\",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1082
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "button = {events = {\"OnClick\"}, width = 240, height = 60,\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1083
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "contents = {\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1084
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "{ type = \"layout\",\nlayout = {direction = ui.LayoutDirection.HORIZONTAL, \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1087
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "halign = ui.LayoutHAlign.CENTER\n, valign = ui.LayoutVAlign.CENTER\n, setconstrainedwidth = 240\n, fillcolor = \"m_22\"\n}\n},\n{ type = \"text\",\ntext = {content = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", color = \"m_63\", \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "font = { size = 30, weight = \"bold\"}}\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "},\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "} }\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1099
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "{ type = \"layout\",\nlayout = {indent = {-12, 0}, addverticalspace = 8} \n},\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1104
    .end local v0    # "aw":Lorg/alljoyn/ioe/controlpanelservice/ui/ActionWidget;
    :cond_0
    return-object v1
.end method

.method private buildContentsForPanel(Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;)Ljava/lang/String;
    .locals 4
    .param p1, "container"    # Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;

    .prologue
    .line 967
    const-string v0, ""

    .line 968
    .local v0, "ret":Ljava/lang/String;
    const-string v0, "contents = {\n"

    .line 970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{ type = \"layout\",\nlayout = {direction = ui.LayoutDirection.HORIZONTAL,\nhalign = ui.LayoutHAlign.LEFT,\nindent = {8, 6},\naddverticalspace = 5,\n}\n},\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 976
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{ type = \"icon\", icon = {\npath = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 979
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getIsUsingDefaultIcon()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 980
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fms:/app.zip?alljoyn_58_ND.img"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 981
    const-string v1, "AllJoynDevice"

    const-string v2, "buildContentsForPanel - Using default icon"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\naltpath=\"fms:/app.zip?alljoyn_58_ND.img\"}\n},\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 990
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{ type = \"layout\",\nlayout = {setconstrainedwidth = 220, indent = {3, 0},addverticalspace = 16,\ndirection = ui.LayoutDirection.VERTICAL }\n},\n{ type = \"text\", \ntext = {content = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_friendlyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", lines = 1, color = \"m_0\", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "valign = ui.LayoutVAlign.CENTER,\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "font = { size = 32, weight = \"bold\"}} \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "},\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{ type = \"layout\",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "layout = {direction = ui.LayoutDirection.VERTICAL, \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "indent = {-58, 5}, addverticalspace = 8,\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "halign = ui.LayoutHAlign.LEFT,\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "clearconstrainedwidth = 1, clearconstrainedheight = 1} \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "},\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1008
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->buttonWidgets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1009
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->propertyWidgets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {p0, p1, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->buildControlString(Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;S)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1020
    return-object v0

    .line 984
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fms:/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getIconFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 985
    const-string v1, "AllJoynDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildContentsForPanel - Using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getIconFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private buildControlString(Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;S)Ljava/lang/String;
    .locals 11
    .param p1, "container"    # Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;
    .param p2, "mask"    # S

    .prologue
    .line 1024
    const-string v5, ""

    .line 1025
    .local v5, "ret":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;->getElements()Ljava/util/List;

    move-result-object v2

    .line 1026
    .local v2, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;>;"
    const-string v6, "AllJoynDevice"

    const-string v7, "Laying out %d elements"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    const/4 v3, 0x0

    .line 1028
    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;

    .line 1029
    .local v0, "element":Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;
    add-int/lit8 v3, v3, 0x1

    .line 1030
    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->getElementType()Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    move-result-object v1

    .line 1031
    .local v1, "elementType":Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;
    const-string v6, "AllJoynDevice"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Creating an Android View for element of type: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    sget-object v6, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$6;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$UIElementType:[I

    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 1034
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v3, v0, p2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->buildActionWidget(ILorg/alljoyn/ioe/controlpanelservice/ui/UIElement;S)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1035
    goto :goto_0

    .line 1038
    :pswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    check-cast v0, Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;

    .end local v0    # "element":Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;
    invoke-direct {p0, v0, p2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->buildControlString(Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;S)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1039
    goto :goto_0

    .line 1042
    .restart local v0    # "element":Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;
    :pswitch_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v3, v0, p2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->buildPropertyWidget(ILorg/alljoyn/ioe/controlpanelservice/ui/UIElement;S)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1043
    goto :goto_0

    .line 1046
    :pswitch_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v3, v0, p2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->buildLabelWidget(ILorg/alljoyn/ioe/controlpanelservice/ui/UIElement;S)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1047
    goto/16 :goto_0

    .line 1058
    .end local v0    # "element":Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;
    .end local v1    # "elementType":Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;
    :cond_0
    return-object v5

    .line 1032
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private buildLabelWidget(ILorg/alljoyn/ioe/controlpanelservice/ui/UIElement;S)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I
    .param p2, "element"    # Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;
    .param p3, "mask"    # S

    .prologue
    .line 1062
    const-string v0, ""

    .line 1063
    .local v0, "ret":Ljava/lang/String;
    and-int/lit8 v1, p3, 0x0

    if-eqz v1, :cond_0

    .line 1064
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{ type = \"text\",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1065
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "text = {content = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p2, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;

    .end local p2    # "element":Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;
    invoke-virtual {p2}, Lorg/alljoyn/ioe/controlpanelservice/ui/LabelWidget;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "color = \"m_1\", lines = 1, font = { size = 24}}\n}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1069
    :cond_0
    return-object v0
.end method

.method private buildPropertyWidget(ILorg/alljoyn/ioe/controlpanelservice/ui/UIElement;S)Ljava/lang/String;
    .locals 6
    .param p1, "index"    # I
    .param p2, "element"    # Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;
    .param p3, "mask"    # S

    .prologue
    .line 1108
    const-string v3, ""

    .local v3, "ret":Ljava/lang/String;
    move-object v2, p2

    .line 1109
    check-cast v2, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;

    .line 1110
    .local v2, "pw":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;
    invoke-virtual {v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->getHints()Ljava/util/List;

    move-result-object v1

    .line 1111
    .local v1, "hints":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1112
    .local v0, "hint":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;
    :goto_0
    sget-object v4, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$6;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidgetHintsType:[I

    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1124
    :goto_1
    return-object v3

    .line 1111
    .end local v0    # "hint":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;
    :cond_1
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;

    move-object v0, v4

    goto :goto_0

    .line 1114
    .restart local v0    # "hint":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidgetHintsType;
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1, v2, p3}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->buildSliderWidget(ILorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1115
    goto :goto_1

    .line 1117
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1, v2, p3}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->buildSpinnerWidget(ILorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;S)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1119
    goto :goto_1

    .line 1112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private buildSliderWidget(ILorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;S)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I
    .param p2, "pw"    # Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;
    .param p3, "mask"    # S

    .prologue
    .line 1128
    const-string v0, ""

    .line 1129
    .local v0, "ret":Ljava/lang/String;
    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_0

    .line 1130
    const-string v1, "AllJoynDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating a slider for propertyWidget "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->propertyWidgets:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{ type = \"layout\",\nlayout = {addverticalspace = 5, indent = {0, 0}} \n},\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{ type = \"text\",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "text = {content = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "color = \"m_1\", lines = 1, font = { size = 24}}\n},\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{ id = \"slider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", type = \"slider\", \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "slider = {events = {\"OnUp\", \"OnDown\"} } \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "},\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{ type = \"layout\",\nlayout = {addverticalspace = 5} \n}\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1147
    :cond_0
    return-object v0
.end method

.method private buildSpinnerWidget(ILorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;S)Ljava/lang/String;
    .locals 12
    .param p1, "index"    # I
    .param p2, "pw"    # Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;
    .param p3, "mask"    # S

    .prologue
    .line 1151
    const-string v7, ""

    .line 1152
    .local v7, "ret":Ljava/lang/String;
    and-int/lit8 v9, p3, 0x2

    if-eqz v9, :cond_3

    .line 1153
    const-string v9, "AllJoynDevice"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Creating a spinner for propertyWidget "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->getLabel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->propertyWidgets:Ljava/util/Map;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "picklist"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "{ type = \"text\",\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1156
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "text = {content = \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->getLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\",\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1157
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "color = \"m_1\", lines = 2, font = { size = 24}}\n},"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1159
    const/4 v1, 0x0

    .line 1161
    .local v1, "currentValue":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p2}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->getCurrentValue()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1165
    .end local v1    # "currentValue":Ljava/lang/Object;
    :goto_0
    const-string v9, "AllJoynDevice"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Property current value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    const-string v5, ""

    .line 1167
    .local v5, "options":Ljava/lang/String;
    const/4 v0, 0x1

    .line 1168
    .local v0, "current":I
    invoke-virtual {p2}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->getListOfConstraint()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 1170
    const/4 v6, 0x0

    .line 1171
    .local v6, "pos":I
    invoke-virtual {p2}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->getListOfConstraint()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;

    .line 1172
    .local v8, "valueCons":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;, "Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues<*>;"
    invoke-virtual {v8}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1173
    .local v4, "isDefault":Z
    const-string v9, "AllJoynDevice"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Adding spinner item, Label: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;->getLabel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    if-eqz v6, :cond_0

    .line 1175
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1176
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;->getLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1177
    if-eqz v4, :cond_1

    .line 1178
    add-int/lit8 v0, v6, 0x1

    .line 1179
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 1180
    goto :goto_1

    .line 1162
    .end local v0    # "current":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "isDefault":Z
    .end local v5    # "options":Ljava/lang/String;
    .end local v6    # "pos":I
    .end local v8    # "valueCons":Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues;, "Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ConstrainToValues<*>;"
    .restart local v1    # "currentValue":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 1163
    .local v2, "e":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    const-string v9, "AllJoynDevice"

    const-string v10, "propertyWidget.getCurrentValue() failed, initializing property without current value"

    invoke-static {v9, v10, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1183
    .end local v1    # "currentValue":Ljava/lang/Object;
    .end local v2    # "e":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    .restart local v0    # "current":I
    .restart local v5    # "options":Ljava/lang/String;
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "{ id = \"picklist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\", type = \"picklist\",\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "picklist = {events = {\"OnChange\"}, current = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1185
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "options = {\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1186
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1187
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "}\n},\n}\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1188
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1190
    .end local v0    # "current":I
    .end local v5    # "options":Ljava/lang/String;
    :cond_3
    return-object v7
.end method

.method private connectToDevice(Lorg/alljoyn/services/common/ClientBase;)Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;
    .locals 4
    .param p1, "client"    # Lorg/alljoyn/services/common/ClientBase;

    .prologue
    .line 522
    const-string v1, "AllJoynDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectToDevice "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->toLogString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    if-nez p1, :cond_0

    .line 526
    new-instance v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;

    sget-object v2, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;->Status_ERROR:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;

    const-string v3, "fail connect to device, client == null"

    invoke-direct {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;Ljava/lang/String;)V

    .line 552
    :goto_0
    return-object v1

    .line 528
    :cond_0
    invoke-interface {p1}, Lorg/alljoyn/services/common/ClientBase;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 530
    new-instance v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;

    sget-object v2, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;->Status_OK:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;

    invoke-direct {v1, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;)V

    goto :goto_0

    .line 533
    :cond_1
    invoke-interface {p1}, Lorg/alljoyn/services/common/ClientBase;->connect()Lorg/alljoyn/bus/Status;

    move-result-object v0

    .line 534
    .local v0, "status":Lorg/alljoyn/bus/Status;
    const-string v1, "AllJoynDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectToDevice: device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_friendlyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-ServiceName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_serviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-uniqueId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_uniqueId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-AJReturnStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/alljoyn/bus/Status;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    sget-object v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$6;->$SwitchMap$org$alljoyn$bus$Status:[I

    invoke-virtual {v0}, Lorg/alljoyn/bus/Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 551
    const-string v1, "AllJoynDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectToDevice: Join session returned error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/alljoyn/bus/Status;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    new-instance v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;

    sget-object v2, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;->Status_ERROR:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;

    const-string v3, "Failed connecting to device"

    invoke-direct {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 538
    :pswitch_0
    const-string v1, "AllJoynDevice"

    const-string v2, "connectToDevice. Join Session OK"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    new-instance v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;

    sget-object v2, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;->Status_OK:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;

    invoke-direct {v1, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;)V

    goto/16 :goto_0

    .line 542
    :pswitch_1
    const-string v1, "AllJoynDevice"

    const-string v2, "connectToDevice: Join Session returned ALLJOYN_JOINSESSION_REPLY_ALREADY_JOINED. Ignoring"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    new-instance v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;

    sget-object v2, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;->Status_OK:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;

    invoke-direct {v1, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;)V

    goto/16 :goto_0

    .line 547
    :pswitch_2
    const-string v1, "AllJoynDevice"

    const-string v2, "connectToDevice: Join Session returned ALLJOYN_JOINSESSION_REPLY_FAILED. Device is unavailable. Pseudo ping"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    new-instance v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;

    sget-object v2, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;->Status_ERROR_CANT_ESTABLISH_SESSION:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;

    const-string v3, "device unreachable"

    invoke-direct {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 536
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private disconnectFromDevice(Lorg/alljoyn/services/common/ClientBase;)V
    .locals 3
    .param p1, "client"    # Lorg/alljoyn/services/common/ClientBase;

    .prologue
    .line 560
    const-string v0, "AllJoynDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectFromDevice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->toLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    if-eqz p1, :cond_0

    .line 564
    const-string v0, "AllJoynDevice"

    const-string v1, "DeviceImpl.disconnectFromDevice client is not null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-interface {p1}, Lorg/alljoyn/services/common/ClientBase;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    const-string v0, "AllJoynDevice"

    const-string v1, "DeviceImpl.disconnectFromDevice client is connected. Disconnecting"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-interface {p1}, Lorg/alljoyn/services/common/ClientBase;->disconnect()V

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    const-string v0, "AllJoynDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceImpl.disconnectFromDevice client is NOT connected. name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_friendlyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeDevice()V
    .locals 1

    .prologue
    .line 1302
    const-string v0, ""

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->cachedLua:Ljava/lang/String;

    .line 1303
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->requestControlPanels(Z)V

    .line 1304
    return-void
.end method

.method private setValue(Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;I)V
    .locals 3
    .param p1, "pw"    # Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;
    .param p2, "itemId"    # I

    .prologue
    .line 1276
    :try_start_0
    sget-object v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$6;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$ui$PropertyWidget$ValueType:[I

    invoke-virtual {p1}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->getValueType()Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget$ValueType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1299
    :goto_0
    return-void

    .line 1278
    :pswitch_0
    int-to-byte v1, p2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->setCurrentValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1295
    :catch_0
    move-exception v0

    .line 1296
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1297
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->removeDevice()V

    goto :goto_0

    .line 1281
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->setCurrentValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 1284
    :pswitch_2
    int-to-short v1, p2

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->setCurrentValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 1287
    :pswitch_3
    int-to-long v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->setCurrentValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 1290
    :pswitch_4
    int-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/PropertyWidget;->setCurrentValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1276
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private toLogString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 855
    const-string v0, "[busName=%s, appId=%s, name=%s]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_serviceName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_uniqueId:Ljava/util/UUID;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_friendlyName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public connectionLost()V
    .locals 3

    .prologue
    .line 591
    const-string v0, "AllJoynDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectionLost with device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_friendlyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SSID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v0, ""

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->cachedLua:Ljava/lang/String;

    .line 593
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_panels:Ljava/util/Collection;

    .line 594
    return-void
.end method

.method public doAsynchNetworkTask(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$WifiRequestState;)V
    .locals 0
    .param p1, "state"    # Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$WifiRequestState;

    .prologue
    .line 212
    return-void
.end method

.method public getAbout(Ljava/lang/String;Z)Ljava/util/Map;
    .locals 5
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    const-string v2, "AllJoynDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAbout "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->toLogString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    if-nez p2, :cond_0

    iget-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_aboutDirty:Z

    if-eqz v2, :cond_5

    .line 303
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_aboutClient:Lorg/alljoyn/about/client/AboutClient;

    if-nez v2, :cond_2

    .line 307
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_serviceName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 308
    const/4 v2, 0x0

    .line 337
    .end local p1    # "language":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 309
    .restart local p1    # "language":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lorg/alljoyn/about/AboutServiceImpl;->getInstance()Lorg/alljoyn/about/AboutService;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_serviceName:Ljava/lang/String;

    iget-short v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_port:S

    invoke-interface {v2, v3, p0, v4}, Lorg/alljoyn/about/AboutService;->createAboutClient(Ljava/lang/String;Lorg/alljoyn/services/common/ServiceAvailabilityListener;S)Lorg/alljoyn/about/client/AboutClient;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_aboutClient:Lorg/alljoyn/about/client/AboutClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_2
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_aboutClient:Lorg/alljoyn/about/client/AboutClient;

    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->connectToDevice(Lorg/alljoyn/services/common/ClientBase;)Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;

    move-result-object v1

    .line 319
    .local v1, "status":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;->getStatus()Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;->Status_OK:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;

    if-eq v2, v3, :cond_3

    .line 322
    const-string v2, "AllJoynDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAbout: device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_friendlyName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-ServiceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_serviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-ssid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_about:Ljava/util/Map;

    goto :goto_0

    .line 311
    .end local v1    # "status":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AllJoynDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAbout: device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_friendlyName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-ServiceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_serviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-ssid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 314
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_about:Ljava/util/Map;

    goto/16 :goto_0

    .line 327
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "status":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_aboutClient:Lorg/alljoyn/about/client/AboutClient;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_defaultLanguage:Ljava/lang/String;

    .end local p1    # "language":Ljava/lang/String;
    :cond_4
    invoke-interface {v2, p1}, Lorg/alljoyn/about/client/AboutClient;->getAbout(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_about:Ljava/util/Map;
    :try_end_1
    .catch Lorg/alljoyn/bus/BusException; {:try_start_1 .. :try_end_1} :catch_1

    .line 334
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_aboutDirty:Z

    .line 336
    .end local v1    # "status":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;
    :cond_5
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_aboutClient:Lorg/alljoyn/about/client/AboutClient;

    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->disconnectFromDevice(Lorg/alljoyn/services/common/ClientBase;)V

    .line 337
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_about:Ljava/util/Map;

    goto/16 :goto_0

    .line 329
    .restart local v1    # "status":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;
    :catch_1
    move-exception v0

    .line 331
    .local v0, "e":Lorg/alljoyn/bus/BusException;
    const-string v2, "AllJoynDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAbout: device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_friendlyName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-ServiceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_serviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-ssid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0}, Lorg/alljoyn/bus/BusException;->printStackTrace()V

    goto :goto_1
.end method

.method public getControlString()Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 894
    const-string v8, ""

    .line 895
    .local v8, "ret":Ljava/lang/String;
    const-string v2, "en"

    .line 898
    .local v2, "defaultLanguage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getPanels()Ljava/util/Collection;

    move-result-object v6

    .line 899
    .local v6, "panels":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;>;"
    if-eqz v6, :cond_2

    .line 900
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 901
    .local v7, "panelsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;>;"
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 904
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;

    .line 908
    .local v0, "cpCollection":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;
    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->getLanguages()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 909
    const-string v10, "AllJoynDevice"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found default language: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    move-object v5, v2

    .line 922
    .local v5, "localLanguage":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->getControlPanels()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 923
    .local v3, "deviceControlPanelIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 924
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    .line 925
    .local v1, "currentDeviceControlPanel":Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;
    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 926
    new-instance v10, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$2;

    invoke-direct {v10, p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$2;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;)V

    invoke-virtual {v1, v10}, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->getRootElement(Lorg/alljoyn/ioe/controlpanelservice/ui/ControlPanelEventsListener;)Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;

    move-result-object v9

    .line 952
    .local v9, "rootContainerElement":Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;
    invoke-virtual {v9}, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;->getElementType()Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    move-result-object v4

    .line 953
    .local v4, "elementType":Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;
    const-string v10, "AllJoynDevice"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found root container of type: \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    sget-object v10, Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;->CONTAINER:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;

    if-ne v4, v10, :cond_1

    .line 957
    check-cast v9, Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;

    .end local v9    # "rootContainerElement":Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;
    invoke-direct {p0, v9}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->buildContentsForPanel(Lorg/alljoyn/ioe/controlpanelservice/ui/ContainerWidget;)Ljava/lang/String;

    move-result-object v8

    .line 963
    .end local v0    # "cpCollection":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;
    .end local v1    # "currentDeviceControlPanel":Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;
    .end local v3    # "deviceControlPanelIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;>;"
    .end local v4    # "elementType":Lorg/alljoyn/ioe/controlpanelservice/ui/UIElementType;
    .end local v5    # "localLanguage":Ljava/lang/String;
    .end local v7    # "panelsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;>;"
    .end local v8    # "ret":Ljava/lang/String;
    :cond_2
    return-object v8

    .line 911
    .restart local v0    # "cpCollection":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;
    .restart local v7    # "panelsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;>;"
    .restart local v8    # "ret":Ljava/lang/String;
    :cond_3
    const-string v10, "en"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->getLanguages()Ljava/util/Set;

    move-result-object v10

    const-string v11, "en"

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 912
    const-string v10, "AllJoynDevice"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Didn\'t find default language: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " displaying english"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-string v5, "en"

    .restart local v5    # "localLanguage":Ljava/lang/String;
    goto/16 :goto_0

    .line 914
    .end local v5    # "localLanguage":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->getLanguages()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 915
    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->getLanguages()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 916
    .restart local v5    # "localLanguage":Ljava/lang/String;
    const-string v10, "AllJoynDevice"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Didn\'t find default language: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " and no english, displaying "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 918
    .end local v5    # "localLanguage":Ljava/lang/String;
    :cond_5
    const-string v10, "AllJoynDevice"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Control Panel Collection has no language. displaying default language: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    move-object v5, v2

    .restart local v5    # "localLanguage":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public getDefaultLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_defaultLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_friendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getHelpURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_helpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIconContent()[B
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 653
    const-string v3, "AllJoynDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeviceIconContent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->toLogString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    sget-object v3, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;->ABOUT_ICON:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->isServiceSupported(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 658
    const-string v3, "AllJoynDevice"

    const-string v4, "getDeviceIconContent"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->isIconClientConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 662
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_iconClient:Lorg/alljoyn/about/icon/AboutIconClient;

    invoke-interface {v3}, Lorg/alljoyn/about/icon/AboutIconClient;->GetContent()[B

    move-result-object v0

    .line 663
    .local v0, "content":[B
    const-string v3, "AllJoynDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeviceIconContent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->toLogString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has icon content"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 676
    .end local v0    # "content":[B
    :goto_0
    return-object v0

    .line 666
    :catch_0
    move-exception v1

    .line 667
    .local v1, "e":Lorg/alljoyn/bus/BusException;
    const-string v3, "AllJoynDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeviceIconContent deviceId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_uniqueId:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move-object v0, v2

    .line 668
    goto :goto_0

    .line 670
    .end local v1    # "e":Lorg/alljoyn/bus/BusException;
    :catch_1
    move-exception v1

    .line 671
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "AllJoynDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeviceIconContent deviceId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_uniqueId:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    move-object v0, v2

    .line 672
    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v0, v2

    .line 676
    goto :goto_0
.end method

.method public getIconFileName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_uniqueId:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Icon.img"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconMimeType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->isIconClientConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 642
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_iconClient:Lorg/alljoyn/about/icon/AboutIconClient;

    invoke-interface {v1}, Lorg/alljoyn/about/icon/AboutIconClient;->getMimeType()Ljava/lang/String;
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 649
    :goto_0
    return-object v1

    .line 643
    :catch_0
    move-exception v0

    .line 644
    .local v0, "e":Lorg/alljoyn/bus/BusException;
    const-string v1, "AllJoynDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIconMimeType: device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_friendlyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-ServiceName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_serviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-ssid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-virtual {v0}, Lorg/alljoyn/bus/BusException;->printStackTrace()V

    .line 646
    const-string v1, ""

    goto :goto_0

    .line 649
    .end local v0    # "e":Lorg/alljoyn/bus/BusException;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getIconSize()I
    .locals 5

    .prologue
    .line 599
    const/4 v1, -0x1

    .line 601
    .local v1, "size":I
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->isIconClientConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 603
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_iconClient:Lorg/alljoyn/about/icon/AboutIconClient;

    invoke-interface {v2}, Lorg/alljoyn/about/icon/AboutIconClient;->getSize()I
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 610
    :cond_0
    :goto_0
    return v1

    .line 605
    :catch_0
    move-exception v0

    .line 606
    .local v0, "e":Lorg/alljoyn/bus/BusException;
    const-string v2, "AllJoynDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIconSize: device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_friendlyName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-ServiceName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_serviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-ssid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-virtual {v0}, Lorg/alljoyn/bus/BusException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIconUrl()Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;
    .locals 5

    .prologue
    .line 614
    const-string v2, "AllJoynDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIconUrl "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->toLogString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    sget-object v2, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;->ABOUT_ICON:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->isServiceSupported(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 618
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->isIconClientConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 620
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_iconClient:Lorg/alljoyn/about/icon/AboutIconClient;

    invoke-interface {v2}, Lorg/alljoyn/about/icon/AboutIconClient;->GetUrl()Ljava/lang/String;

    move-result-object v1

    .line 621
    .local v1, "url":Ljava/lang/String;
    const-string v2, "AllJoynDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIconUrl "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->toLogString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " returned url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    new-instance v2, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;

    sget-object v3, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;->Status_OK:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;

    invoke-direct {v2, v3, v1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 634
    .end local v1    # "url":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, "e":Lorg/alljoyn/bus/BusException;
    const-string v2, "AllJoynDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIconUrl deviceId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_uniqueId:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 626
    new-instance v2, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;

    sget-object v3, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;->Status_ERROR:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;

    invoke-direct {v2, v3}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;)V

    goto :goto_0

    .line 628
    .end local v0    # "e":Lorg/alljoyn/bus/BusException;
    :catch_1
    move-exception v0

    .line 629
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AllJoynDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIconUrl deviceId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_uniqueId:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 630
    new-instance v2, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;

    sget-object v3, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;->Status_ERROR:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;

    invoke-direct {v2, v3}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;)V

    goto :goto_0

    .line 634
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v2, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;

    sget-object v3, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;->Status_ERROR:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;

    invoke-direct {v2, v3}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;)V

    goto :goto_0
.end method

.method public getId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_uniqueId:Ljava/util/UUID;

    return-object v0
.end method

.method protected getInterfaces()[Lorg/alljoyn/services/common/BusObjectDescription;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_interfaces:[Lorg/alljoyn/services/common/BusObjectDescription;

    return-object v0
.end method

.method public getIsUsingDefaultIcon()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_isUsingDefaultIcon:Z

    return v0
.end method

.method public getLuaString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 863
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Device { id=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_uniqueId:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_friendlyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\", icon=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 869
    .local v1, "ret":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getIsUsingDefaultIcon()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 870
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fms:/app.zip?alljoyn_58_ND.img"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 871
    const-string v2, "AllJoynDevice"

    const-string v3, "getLuaString - Using default icon"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 879
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_panels:Ljava/util/Collection;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_panels:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 880
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 882
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getControlString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 887
    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 888
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_panels:Ljava/util/Collection;

    if-eqz v2, :cond_1

    .line 889
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->cachedLua:Ljava/lang/String;

    .line 890
    :cond_1
    return-object v1

    .line 874
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "fms:/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getIconFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 875
    const-string v2, "AllJoynDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLuaString - Using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getIconFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 883
    :catch_0
    move-exception v0

    .line 884
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getOnboardedNetworkSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 859
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPanels()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 833
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_panels:Ljava/util/Collection;

    return-object v0
.end method

.method public getPort()S
    .locals 1

    .prologue
    .line 237
    iget-short v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_port:S

    return v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_SSID:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_serviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_status:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    return-object v0
.end method

.method public getStoredIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_storeAboutIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public handleButtonAction(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1194
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$3;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$3;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1207
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1208
    return-void
.end method

.method public handlePicklistAction(Ljava/lang/String;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "itemId"    # I

    .prologue
    .line 1254
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$5;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1271
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1272
    return-void
.end method

.method public handleSliderAction(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "isUp"    # Z

    .prologue
    .line 1211
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$4;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1250
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1251
    return-void
.end method

.method public isControlPanelReachanble()Z
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_controllableClient:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    if-nez v0, :cond_0

    .line 731
    const/4 v0, 0x0

    .line 732
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_controllableClient:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->isReachable()Z

    move-result v0

    goto :goto_0
.end method

.method public isIconClientConnected()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 680
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_iconClient:Lorg/alljoyn/about/icon/AboutIconClient;

    if-nez v2, :cond_1

    .line 682
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_serviceName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 683
    const-string v2, "AllJoynDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isIconClientConnected deviceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_uniqueId:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " service name is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :goto_0
    return v1

    .line 687
    :cond_0
    invoke-static {}, Lorg/alljoyn/about/AboutServiceImpl;->getInstance()Lorg/alljoyn/about/AboutService;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_serviceName:Ljava/lang/String;

    iget-short v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_port:S

    invoke-interface {v2, v3, p0, v4}, Lorg/alljoyn/about/AboutService;->createAboutIconClient(Ljava/lang/String;Lorg/alljoyn/services/common/ServiceAvailabilityListener;S)Lorg/alljoyn/about/icon/AboutIconClient;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_iconClient:Lorg/alljoyn/about/icon/AboutIconClient;

    .line 688
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_iconClient:Lorg/alljoyn/about/icon/AboutIconClient;

    if-nez v2, :cond_1

    .line 689
    const-string v2, "AllJoynDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isIconClientConnected deviceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_uniqueId:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed to create IconClient"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, "e":Lorg/alljoyn/bus/BusException;
    const-string v2, "AllJoynDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isIconClientConnected deviceId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_uniqueId:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 699
    .end local v0    # "e":Lorg/alljoyn/bus/BusException;
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_iconClient:Lorg/alljoyn/about/icon/AboutIconClient;

    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->connectToDevice(Lorg/alljoyn/services/common/ClientBase;)Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;->getStatus()Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;->Status_OK:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;

    if-eq v2, v3, :cond_2

    .line 700
    const-string v2, "AllJoynDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isIconClientConnected deviceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_uniqueId:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed to establish session"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 704
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isServiceSupported(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;)Z
    .locals 6
    .param p1, "service"    # Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;

    .prologue
    const/4 v4, 0x0

    .line 440
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_interfaces:[Lorg/alljoyn/services/common/BusObjectDescription;

    if-eqz v5, :cond_0

    .line 441
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_interfaces:[Lorg/alljoyn/services/common/BusObjectDescription;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 442
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_interfaces:[Lorg/alljoyn/services/common/BusObjectDescription;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lorg/alljoyn/services/common/BusObjectDescription;->getInterfaces()[Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "interfaces":[Ljava/lang/String;
    array-length v5, v2

    if-nez v5, :cond_1

    .line 455
    .end local v1    # "i":I
    .end local v2    # "interfaces":[Ljava/lang/String;
    :cond_0
    :goto_1
    return v4

    .line 446
    .restart local v1    # "i":I
    .restart local v2    # "interfaces":[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    array-length v5, v2

    if-ge v3, v5, :cond_3

    .line 447
    aget-object v0, v2, v3

    .line 448
    .local v0, "currentInterface":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$ServiceType;->getInterface()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 449
    const/4 v4, 0x1

    goto :goto_1

    .line 446
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 441
    .end local v0    # "currentInterface":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public requestControlPanels()V
    .locals 1

    .prologue
    .line 736
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->requestControlPanels(Z)V

    .line 737
    return-void
.end method

.method public requestControlPanels(Z)V
    .locals 8
    .param p1, "disconnectAfterFetch"    # Z

    .prologue
    .line 740
    const-string v5, "AllJoynDevice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestControlPanels "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->toLogString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    :try_start_0
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_controllableClient:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    if-nez v5, :cond_2

    .line 745
    const-string v5, "AllJoynDevice"

    const-string v6, "requestControlPanels m_controllableClient is null. creating one."

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_serviceName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_serviceName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->getInstance()Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_uniqueId:Ljava/util/UUID;

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_serviceName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->getControllableDevice(Ljava/lang/String;Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_controllableClient:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    .line 752
    :goto_1
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_controllableClient:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v5}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getSessionId()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 753
    const-string v5, "AllJoynDevice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestControlPanels already have a session. fetching the existing panel from controllable device: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_uniqueId:Ljava/util/UUID;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_controllableClient:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v5}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getUnitCollection()Ljava/util/Collection;

    move-result-object v4

    .line 756
    .local v4, "unitCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/alljoyn/ioe/controlpanelservice/Unit;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 757
    const-string v5, "AllJoynDevice"

    const-string v6, "requestControlPanels already have a session. controllable device has a unit. returning unit\'s collection"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_panels:Ljava/util/Collection;

    if-nez v5, :cond_0

    .line 759
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/alljoyn/ioe/controlpanelservice/Unit;

    invoke-virtual {v5}, Lorg/alljoyn/ioe/controlpanelservice/Unit;->getControlPanelCollection()Ljava/util/Collection;

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_panels:Ljava/util/Collection;

    .line 760
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getInstance()Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->generateDatFile()V
    :try_end_0
    .catch Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 826
    .end local v4    # "unitCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/alljoyn/ioe/controlpanelservice/Unit;>;"
    :catch_0
    move-exception v2

    .line 827
    .local v2, "e":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    const-string v5, "AllJoynDevice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestControlPanels: device "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_friendlyName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-ServiceName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_serviceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-ssid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_SSID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 750
    .end local v2    # "e":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    :cond_2
    :try_start_1
    const-string v5, "AllJoynDevice"

    const-string v6, "requestControlPanels m_controllableClient is not null. using it."

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 766
    :cond_3
    const-string v5, "AllJoynDevice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestControlPanels has no session with controllable device. starting a session with controllable device: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_uniqueId:Ljava/util/UUID;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    new-instance v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$1;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$1;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;Z)V

    .line 816
    .local v1, "deviceController":Lorg/alljoyn/ioe/controlpanelservice/DeviceEventsListener;
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_controlPanelObjectDescriptions:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 817
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_controlPanelObjectDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 818
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_controlPanelObjectDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/services/common/BusObjectDescription;

    .line 819
    .local v0, "bos":Lorg/alljoyn/services/common/BusObjectDescription;
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_controllableClient:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v0}, Lorg/alljoyn/services/common/BusObjectDescription;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lorg/alljoyn/services/common/BusObjectDescription;->getInterfaces()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->addControlPanel(Ljava/lang/String;[Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/Unit;

    .line 817
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 821
    .end local v0    # "bos":Lorg/alljoyn/services/common/BusObjectDescription;
    :cond_4
    const-string v5, "AllJoynDevice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start a session of control panel service with the device: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_serviceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->cachedLua:Ljava/lang/String;

    .line 823
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_controllableClient:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v5, v1}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->startSession(Lorg/alljoyn/ioe/controlpanelservice/DeviceEventsListener;)V
    :try_end_1
    .catch Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public resetServices()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 837
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetServices ending all sessions of device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->toLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_aboutClient:Lorg/alljoyn/about/client/AboutClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_aboutClient:Lorg/alljoyn/about/client/AboutClient;

    invoke-interface {v0}, Lorg/alljoyn/about/client/AboutClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_aboutClient:Lorg/alljoyn/about/client/AboutClient;

    invoke-interface {v0}, Lorg/alljoyn/about/client/AboutClient;->disconnect()V

    .line 841
    :cond_0
    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_aboutClient:Lorg/alljoyn/about/client/AboutClient;

    .line 843
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_iconClient:Lorg/alljoyn/about/icon/AboutIconClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_iconClient:Lorg/alljoyn/about/icon/AboutIconClient;

    invoke-interface {v0}, Lorg/alljoyn/about/icon/AboutIconClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 844
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_iconClient:Lorg/alljoyn/about/icon/AboutIconClient;

    invoke-interface {v0}, Lorg/alljoyn/about/icon/AboutIconClient;->disconnect()V

    .line 846
    :cond_1
    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_iconClient:Lorg/alljoyn/about/icon/AboutIconClient;

    .line 848
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_controllableClient:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_controllableClient:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getSessionId()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 849
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_controllableClient:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->endSession()Lorg/alljoyn/bus/Status;

    .line 851
    :cond_2
    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_controllableClient:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    .line 852
    return-void
.end method

.method protected setAbout(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 584
    .local p1, "serviceMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_about:Ljava/util/Map;

    .line 585
    return-void
.end method

.method public setDefaultLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "l"    # Ljava/lang/String;

    .prologue
    .line 712
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_defaultLanguage:Ljava/lang/String;

    .line 713
    return-void
.end method

.method public setDirty()V
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_aboutDirty:Z

    .line 518
    return-void
.end method

.method public setFriendlyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_friendlyName:Ljava/lang/String;

    .line 580
    return-void
.end method

.method public setHelpUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "l"    # Ljava/lang/String;

    .prologue
    .line 708
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_helpUrl:Ljava/lang/String;

    .line 709
    return-void
.end method

.method protected setId(Ljava/util/UUID;)V
    .locals 0
    .param p1, "uniqueId"    # Ljava/util/UUID;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_uniqueId:Ljava/util/UUID;

    .line 233
    return-void
.end method

.method protected setInterfaces([Lorg/alljoyn/services/common/BusObjectDescription;)V
    .locals 4
    .param p1, "objectDescriptions"    # [Lorg/alljoyn/services/common/BusObjectDescription;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_interfaces:[Lorg/alljoyn/services/common/BusObjectDescription;

    .line 423
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_interfaces:[Lorg/alljoyn/services/common/BusObjectDescription;

    if-nez v3, :cond_1

    .line 436
    :cond_0
    return-void

    .line 427
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_controlPanelObjectDescriptions:Ljava/util/ArrayList;

    .line 429
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_interfaces:[Lorg/alljoyn/services/common/BusObjectDescription;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 430
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_interfaces:[Lorg/alljoyn/services/common/BusObjectDescription;

    aget-object v0, v3, v1

    .line 431
    .local v0, "bos":Lorg/alljoyn/services/common/BusObjectDescription;
    invoke-virtual {v0}, Lorg/alljoyn/services/common/BusObjectDescription;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 432
    .local v2, "path":Ljava/lang/String;
    const-string v3, "/ControlPanel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 433
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_controlPanelObjectDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setIsUsingDefaultIcon(Z)V
    .locals 0
    .param p1, "isUsingDefaultIcon"    # Z

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_isUsingDefaultIcon:Z

    .line 203
    return-void
.end method

.method protected setPort(S)V
    .locals 0
    .param p1, "port"    # S

    .prologue
    .line 242
    iput-short p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_port:S

    .line 243
    return-void
.end method

.method public setSSID(Ljava/lang/String;)V
    .locals 0
    .param p1, "SSID"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_SSID:Ljava/lang/String;

    .line 217
    return-void
.end method

.method protected setServiceName(Ljava/lang/String;)V
    .locals 4
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 466
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_serviceName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_serviceName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 467
    .local v0, "needsReset":Z
    :goto_0
    const-string v1, "AllJoynDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setServiceName. old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_serviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", needs reset services? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_serviceName:Ljava/lang/String;

    .line 471
    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->resetServices()V

    .line 474
    :cond_0
    return-void

    .line 466
    .end local v0    # "needsReset":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStatus(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;)V
    .locals 4
    .param p1, "status"    # Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    .prologue
    const/4 v3, 0x0

    .line 489
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_status:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    invoke-virtual {p1, v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    const-string v0, "AllJoynDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatus: set device status for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->toLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", old status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_status:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_status:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    .line 495
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;->GONE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    invoke-virtual {v0, p1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->resetServices()V

    .line 499
    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_panels:Ljava/util/Collection;

    .line 500
    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_uielementChanged:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;

    .line 501
    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_elementType:Lorg/alljoyn/ioe/controlpanelservice/ui/UIElement;

    goto :goto_0
.end method

.method public setStoredIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->m_storeAboutIconUrl:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public stopControlPanelSession()V
    .locals 3

    .prologue
    .line 725
    const-string v0, "AllJoynDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Previously would end session, keep it open for now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->toLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    return-void
.end method

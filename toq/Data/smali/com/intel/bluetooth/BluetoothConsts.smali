.class public abstract Lcom/intel/bluetooth/BluetoothConsts;
.super Ljava/lang/Object;
.source "BluetoothConsts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/bluetooth/BluetoothConsts$DeviceClassConsts;
    }
.end annotation


# static fields
.field public static final AttributeIDServiceName:I = 0x100

.field public static final BluetoothProfileDescriptorList:I = 0x9

.field public static final BrowseGroupList:I = 0x5

.field public static final ClientExecutableURL:I = 0xb

.field public static final DocumentationURL:I = 0xa

.field public static final IconURL:I = 0xc

.field public static final L2CAP_PROTOCOL_UUID:Ljavax/bluetooth/UUID;

.field public static final L2CAP_PSM_MAX:I = 0xffff

.field public static final L2CAP_PSM_MIN:I = 0x5

.field public static final L2CAP_PSM_MIN_JSR_82:I = 0x1001

.field public static final LanguageBasedAttributeIDList:I = 0x6

.field public static final OBEXFileTransferServiceClass_UUID:Ljavax/bluetooth/UUID;

.field public static final OBEX_PROTOCOL_UUID:Ljavax/bluetooth/UUID;

.field public static final PROPERTY_BLUETOOTH_API_VERSION:Ljava/lang/String; = "bluetooth.api.version"

.field public static final PROPERTY_BLUETOOTH_CONNECTED_DEVICES_MAX:Ljava/lang/String; = "bluetooth.connected.devices.max"

.field public static final PROPERTY_BLUETOOTH_CONNECTED_INQUIRY:Ljava/lang/String; = "bluetooth.connected.inquiry"

.field public static final PROPERTY_BLUETOOTH_CONNECTED_INQUIRY_SCAN:Ljava/lang/String; = "bluetooth.connected.inquiry.scan"

.field public static final PROPERTY_BLUETOOTH_CONNECTED_PAGE:Ljava/lang/String; = "bluetooth.connected.page"

.field public static final PROPERTY_BLUETOOTH_CONNECTED_PAGE_SCAN:Ljava/lang/String; = "bluetooth.connected.page.scan"

.field public static final PROPERTY_BLUETOOTH_L2CAP_RECEIVEMTU_MAX:Ljava/lang/String; = "bluetooth.l2cap.receiveMTU.max"

.field public static final PROPERTY_BLUETOOTH_MASTER_SWITCH:Ljava/lang/String; = "bluetooth.master.switch"

.field public static final PROPERTY_BLUETOOTH_SD_ATTR_RETRIEVABLE_MAX:Ljava/lang/String; = "bluetooth.sd.attr.retrievable.max"

.field public static final PROPERTY_BLUETOOTH_SD_TRANS_MAX:Ljava/lang/String; = "bluetooth.sd.trans.max"

.field public static final PROPERTY_OBEX_API_VERSION:Ljava/lang/String; = "obex.api.version"

.field public static final PROTOCOL_SCHEME_BT_OBEX:Ljava/lang/String; = "btgoep"

.field public static final PROTOCOL_SCHEME_L2CAP:Ljava/lang/String; = "btl2cap"

.field public static final PROTOCOL_SCHEME_RFCOMM:Ljava/lang/String; = "btspp"

.field public static final PROTOCOL_SCHEME_TCP_OBEX:Ljava/lang/String; = "tcpobex"

.field public static final ProtocolDescriptorList:I = 0x4

.field public static final ProviderName:I = 0x2

.field public static final RFCOMM_CHANNEL_MAX:I = 0x1e

.field public static final RFCOMM_CHANNEL_MIN:I = 0x1

.field public static final RFCOMM_PROTOCOL_UUID:Ljavax/bluetooth/UUID;

.field public static final SERIAL_PORT_UUID:Ljavax/bluetooth/UUID;

.field public static final SHORT_UUID_BASE:Ljava/lang/String; = "00001000800000805F9B34FB"

.field public static final ServiceAvailability:I = 0x8

.field public static final ServiceClassIDList:I = 0x1

.field public static final ServiceDatabaseState:I = 0x201

.field public static final ServiceDescription:I = 0x1

.field public static final ServiceID:I = 0x3

.field public static final ServiceInfoTimeToLive:I = 0x7

.field public static final ServiceName:I = 0x0

.field public static final ServiceRecordHandle:I = 0x0

.field public static final ServiceRecordState:I = 0x2

.field public static final TCP_OBEX_DEFAULT_PORT:I = 0x28a

.field public static final VersionNumberList:I = 0x200

.field static obexUUIDs:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    new-instance v0, Ljavax/bluetooth/UUID;

    const-wide/16 v1, 0x100

    invoke-direct {v0, v1, v2}, Ljavax/bluetooth/UUID;-><init>(J)V

    sput-object v0, Lcom/intel/bluetooth/BluetoothConsts;->L2CAP_PROTOCOL_UUID:Ljavax/bluetooth/UUID;

    .line 50
    new-instance v0, Ljavax/bluetooth/UUID;

    const-wide/16 v1, 0x3

    invoke-direct {v0, v1, v2}, Ljavax/bluetooth/UUID;-><init>(J)V

    sput-object v0, Lcom/intel/bluetooth/BluetoothConsts;->RFCOMM_PROTOCOL_UUID:Ljavax/bluetooth/UUID;

    .line 52
    new-instance v0, Ljavax/bluetooth/UUID;

    const-wide/16 v1, 0x8

    invoke-direct {v0, v1, v2}, Ljavax/bluetooth/UUID;-><init>(J)V

    sput-object v0, Lcom/intel/bluetooth/BluetoothConsts;->OBEX_PROTOCOL_UUID:Ljavax/bluetooth/UUID;

    .line 54
    new-instance v0, Ljavax/bluetooth/UUID;

    .line 55
    const-wide/16 v1, 0x1106

    .line 54
    invoke-direct {v0, v1, v2}, Ljavax/bluetooth/UUID;-><init>(J)V

    sput-object v0, Lcom/intel/bluetooth/BluetoothConsts;->OBEXFileTransferServiceClass_UUID:Ljavax/bluetooth/UUID;

    .line 91
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/intel/bluetooth/BluetoothConsts;->obexUUIDs:Ljava/util/Hashtable;

    .line 103
    const/16 v0, 0x1104

    invoke-static {v0}, Lcom/intel/bluetooth/BluetoothConsts;->addObex(I)V

    .line 104
    const/16 v0, 0x1105

    invoke-static {v0}, Lcom/intel/bluetooth/BluetoothConsts;->addObex(I)V

    .line 105
    const/16 v0, 0x1106

    invoke-static {v0}, Lcom/intel/bluetooth/BluetoothConsts;->addObex(I)V

    .line 106
    const/16 v0, 0x1107

    invoke-static {v0}, Lcom/intel/bluetooth/BluetoothConsts;->addObex(I)V

    .line 107
    const/16 v0, 0x111b

    invoke-static {v0}, Lcom/intel/bluetooth/BluetoothConsts;->addObex(I)V

    .line 110
    new-instance v0, Ljavax/bluetooth/UUID;

    const-wide/16 v1, 0x1101

    invoke-direct {v0, v1, v2}, Ljavax/bluetooth/UUID;-><init>(J)V

    sput-object v0, Lcom/intel/bluetooth/BluetoothConsts;->SERIAL_PORT_UUID:Ljavax/bluetooth/UUID;

    .line 36
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method private static addObex(I)V
    .locals 3
    .param p0, "uuid"    # I

    .prologue
    .line 98
    new-instance v0, Ljavax/bluetooth/UUID;

    int-to-long v1, p0

    invoke-direct {v0, v1, v2}, Ljavax/bluetooth/UUID;-><init>(J)V

    .line 99
    .local v0, "u":Ljavax/bluetooth/UUID;
    sget-object v1, Lcom/intel/bluetooth/BluetoothConsts;->obexUUIDs:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public static toString(Ljavax/bluetooth/DeviceClass;)Ljava/lang/String;
    .locals 1
    .param p0, "dc"    # Ljavax/bluetooth/DeviceClass;

    .prologue
    .line 151
    invoke-static {p0}, Lcom/intel/bluetooth/BluetoothConsts$DeviceClassConsts;->toString(Ljavax/bluetooth/DeviceClass;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

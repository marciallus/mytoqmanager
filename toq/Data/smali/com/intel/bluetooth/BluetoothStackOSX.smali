.class Lcom/intel/bluetooth/BluetoothStackOSX;
.super Ljava/lang/Object;
.source "BluetoothStackOSX.java"

# interfaces
.implements Lcom/intel/bluetooth/BluetoothStack;
.implements Lcom/intel/bluetooth/BluetoothStackExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/bluetooth/BluetoothStackOSX$MaintainDeviceServiceClassesThread;
    }
.end annotation


# static fields
.field private static final ATTR_RETRIEVABLE_MAX:I = 0x100

.field private static final BLUETOOTH_SOFTWARE_VERSION_2_0_0:I = 0x4e20

.field public static final debug:Z

.field private static singleInstance:Lcom/intel/bluetooth/BluetoothStackOSX;


# instance fields
.field private final deviceDiscoveryListenerReportedDevices:Ljava/util/Hashtable;

.field private final deviceDiscoveryListeners:Ljava/util/Vector;

.field private lastDeviceDiscoveryTime:J

.field private localDeviceServiceClassMaintainer:Ljava/lang/Thread;

.field private localDeviceServiceClasses:I

.field private localDeviceSupportedSoftwareVersion:I

.field private receive_mtu_max:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/intel/bluetooth/BluetoothStackOSX;->singleInstance:Lcom/intel/bluetooth/BluetoothStackOSX;

    .line 44
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/intel/bluetooth/BluetoothStackOSX;->deviceDiscoveryListeners:Ljava/util/Vector;

    .line 58
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/intel/bluetooth/BluetoothStackOSX;->deviceDiscoveryListenerReportedDevices:Ljava/util/Hashtable;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/intel/bluetooth/BluetoothStackOSX;->receive_mtu_max:I

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/intel/bluetooth/BluetoothStackOSX;->lastDeviceDiscoveryTime:J

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/intel/bluetooth/BluetoothStackOSX;->localDeviceServiceClasses:I

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intel/bluetooth/BluetoothStackOSX;->localDeviceServiceClassMaintainer:Ljava/lang/Thread;

    .line 74
    return-void
.end method

.method static synthetic access$0(Lcom/intel/bluetooth/BluetoothStackOSX;)I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/intel/bluetooth/BluetoothStackOSX;->localDeviceServiceClasses:I

    return v0
.end method

.method static synthetic access$1(Lcom/intel/bluetooth/BluetoothStackOSX;I)Z
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/intel/bluetooth/BluetoothStackOSX;->setLocalDeviceServiceClassesImpl(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/intel/bluetooth/BluetoothStackOSX;J)V
    .locals 0

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/intel/bluetooth/BluetoothStackOSX;->lastDeviceDiscoveryTime:J

    return-void
.end method

.method static synthetic access$3(Lcom/intel/bluetooth/BluetoothStackOSX;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackOSX;->deviceDiscoveryListeners:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$4(Lcom/intel/bluetooth/BluetoothStackOSX;)Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackOSX;->deviceDiscoveryListenerReportedDevices:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$5(Lcom/intel/bluetooth/BluetoothStackOSX;Lcom/intel/bluetooth/DeviceInquiryRunnable;Lcom/intel/bluetooth/DeviceInquiryThread;IILjavax/bluetooth/DiscoveryListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 420
    invoke-direct/range {p0 .. p5}, Lcom/intel/bluetooth/BluetoothStackOSX;->runDeviceInquiryImpl(Lcom/intel/bluetooth/DeviceInquiryRunnable;Lcom/intel/bluetooth/DeviceInquiryThread;IILjavax/bluetooth/DiscoveryListener;)I

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/intel/bluetooth/BluetoothStackOSX;JI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;,
            Lcom/intel/bluetooth/SearchServicesException;
        }
    .end annotation

    .prologue
    .line 498
    invoke-direct {p0, p1, p2, p3}, Lcom/intel/bluetooth/BluetoothStackOSX;->runSearchServicesImpl(JI)I

    move-result v0

    return v0
.end method

.method private native authenticateRemoteDeviceImpl(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native cancelServiceSearchImpl(I)V
.end method

.method private native connectionRfOpenClientConnectionImpl(JIZZI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native deviceInquiryCancelImpl()Z
.end method

.method private native getDeviceClassImpl()I
.end method

.method private native getLocalDeviceDiscoverableImpl()Z
.end method

.method private native getLocalDeviceL2CAPMTUMaximum()I
.end method

.method private native getLocalDeviceManufacturer()I
.end method

.method private native getLocalDeviceSoftwareVersionInfo()Ljava/lang/String;
.end method

.method private native getLocalDeviceSupportedSoftwareVersion()I
.end method

.method private native getLocalDeviceVersion()Ljava/lang/String;
.end method

.method private native getServiceAttributeImpl(JJI)[B
.end method

.method private native initializeImpl()Z
.end method

.method private native isLocalDeviceFeatureParkMode()Z
.end method

.method private native isLocalDeviceFeatureRSSI()Z
.end method

.method private native isLocalDeviceFeatureSwitchRoles()Z
.end method

.method private native isRemoteDeviceAuthenticatedImpl(J)Z
.end method

.method private native isRemoteDeviceTrustedImpl(J)Z
.end method

.method private native l2OpenClientConnectionImpl(JIZZIII)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native l2ServerCloseImpl(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native l2ServerOpenImpl([BZZLjava/lang/String;III)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native readRemoteDeviceRSSIImpl(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private receiveMTUMAX()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/intel/bluetooth/BluetoothStackOSX;->receive_mtu_max:I

    if-gez v0, :cond_0

    .line 302
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackOSX;->getLocalDeviceL2CAPMTUMaximum()I

    move-result v0

    iput v0, p0, Lcom/intel/bluetooth/BluetoothStackOSX;->receive_mtu_max:I

    .line 304
    :cond_0
    iget v0, p0, Lcom/intel/bluetooth/BluetoothStackOSX;->receive_mtu_max:I

    return v0
.end method

.method private native retrieveDevicesImpl(ILcom/intel/bluetooth/RetrieveDevicesCallback;)Z
.end method

.method private native rfServerCloseImpl(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native rfServerCreateImpl([BZLjava/lang/String;ZZ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native rfServerGetChannelID(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native runDeviceInquiryImpl(Lcom/intel/bluetooth/DeviceInquiryRunnable;Lcom/intel/bluetooth/DeviceInquiryThread;IILjavax/bluetooth/DiscoveryListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation
.end method

.method private native runSearchServicesImpl(JI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;,
            Lcom/intel/bluetooth/SearchServicesException;
        }
    .end annotation
.end method

.method private native sdpServiceAddAttribute(JCIIJ[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/ServiceRegistrationException;
        }
    .end annotation
.end method

.method private sdpServiceAddAttribute(JCILjavax/bluetooth/DataElement;)V
    .locals 19
    .param p1, "handle"    # J
    .param p3, "handleType"    # C
    .param p4, "attrID"    # I
    .param p5, "element"    # Ljavax/bluetooth/DataElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/ServiceRegistrationException;
        }
    .end annotation

    .prologue
    .line 760
    invoke-virtual/range {p5 .. p5}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v5

    .line 761
    .local v5, "type":I
    sparse-switch v5, :sswitch_data_0

    .line 808
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 763
    :sswitch_0
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/intel/bluetooth/BluetoothStackOSX;->sdpServiceAddAttribute(JCIIJ[B)V

    .line 810
    :goto_0
    return-void

    .line 767
    :sswitch_1
    invoke-virtual/range {p5 .. p5}, Ljavax/bluetooth/DataElement;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    int-to-long v6, v0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    .line 766
    invoke-direct/range {v0 .. v8}, Lcom/intel/bluetooth/BluetoothStackOSX;->sdpServiceAddAttribute(JCIIJ[B)V

    goto :goto_0

    .line 767
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 777
    :sswitch_2
    invoke-virtual/range {p5 .. p5}, Ljavax/bluetooth/DataElement;->getLong()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    .line 776
    invoke-direct/range {v0 .. v8}, Lcom/intel/bluetooth/BluetoothStackOSX;->sdpServiceAddAttribute(JCIIJ[B)V

    goto :goto_0

    .line 782
    :sswitch_3
    const-wide/16 v6, 0x0

    .line 783
    invoke-virtual/range {p5 .. p5}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    .line 782
    invoke-direct/range {v0 .. v8}, Lcom/intel/bluetooth/BluetoothStackOSX;->sdpServiceAddAttribute(JCIIJ[B)V

    goto :goto_0

    .line 786
    :sswitch_4
    const-wide/16 v6, 0x0

    .line 787
    invoke-virtual/range {p5 .. p5}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/bluetooth/UUID;

    invoke-static {v0}, Lcom/intel/bluetooth/Utils;->UUIDToByteArray(Ljavax/bluetooth/UUID;)[B

    move-result-object v8

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    .line 786
    invoke-direct/range {v0 .. v8}, Lcom/intel/bluetooth/BluetoothStackOSX;->sdpServiceAddAttribute(JCIIJ[B)V

    goto :goto_0

    .line 790
    :sswitch_5
    invoke-virtual/range {p5 .. p5}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/intel/bluetooth/Utils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 791
    .local v8, "bs":[B
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/intel/bluetooth/BluetoothStackOSX;->sdpServiceAddAttribute(JCIIJ[B)V

    goto :goto_0

    .line 794
    .end local v8    # "bs":[B
    :sswitch_6
    invoke-virtual/range {p5 .. p5}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/intel/bluetooth/Utils;->getASCIIBytes(Ljava/lang/String;)[B

    move-result-object v17

    .line 795
    .local v17, "bu":[B
    const-wide/16 v15, 0x0

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move/from16 v12, p3

    move/from16 v13, p4

    move v14, v5

    invoke-direct/range {v9 .. v17}, Lcom/intel/bluetooth/BluetoothStackOSX;->sdpServiceAddAttribute(JCIIJ[B)V

    goto/16 :goto_0

    .end local v17    # "bu":[B
    :sswitch_7
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    .line 799
    invoke-direct/range {v0 .. v5}, Lcom/intel/bluetooth/BluetoothStackOSX;->sdpServiceSequenceAttributeStart(JCII)V

    .line 800
    invoke-virtual/range {p5 .. p5}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Enumeration;

    .line 801
    .local v18, "e":Ljava/util/Enumeration;
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    .line 800
    if-nez v0, :cond_1

    .line 805
    invoke-direct/range {p0 .. p4}, Lcom/intel/bluetooth/BluetoothStackOSX;->sdpServiceSequenceAttributeEnd(JCI)V

    goto/16 :goto_0

    .line 802
    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavax/bluetooth/DataElement;

    .line 803
    .local v14, "child":Ljavax/bluetooth/DataElement;
    const/4 v13, -0x1

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move/from16 v12, p3

    invoke-direct/range {v9 .. v14}, Lcom/intel/bluetooth/BluetoothStackOSX;->sdpServiceAddAttribute(JCILjavax/bluetooth/DataElement;)V

    goto :goto_2

    .line 761
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_2
        0x9 -> :sswitch_2
        0xa -> :sswitch_2
        0xb -> :sswitch_3
        0xc -> :sswitch_3
        0x10 -> :sswitch_2
        0x11 -> :sswitch_2
        0x12 -> :sswitch_2
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x18 -> :sswitch_4
        0x20 -> :sswitch_5
        0x28 -> :sswitch_1
        0x30 -> :sswitch_7
        0x38 -> :sswitch_7
        0x40 -> :sswitch_6
    .end sparse-switch
.end method

.method private native sdpServiceSequenceAttributeEnd(JCI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/ServiceRegistrationException;
        }
    .end annotation
.end method

.method private native sdpServiceSequenceAttributeStart(JCII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/ServiceRegistrationException;
        }
    .end annotation
.end method

.method private sdpServiceUpdateServiceRecord(JCLcom/intel/bluetooth/ServiceRecordImpl;)V
    .locals 8
    .param p1, "handle"    # J
    .param p3, "handleType"    # C
    .param p4, "serviceRecord"    # Lcom/intel/bluetooth/ServiceRecordImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/ServiceRegistrationException;
        }
    .end annotation

    .prologue
    .line 815
    invoke-virtual {p4}, Lcom/intel/bluetooth/ServiceRecordImpl;->getAttributeIDs()[I

    move-result-object v7

    .line 816
    .local v7, "ids":[I
    if-eqz v7, :cond_0

    array-length v0, v7

    if-nez v0, :cond_1

    .line 832
    :cond_0
    :goto_0
    return-void

    .line 819
    :cond_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v0, v7

    if-lt v6, v0, :cond_2

    .line 831
    invoke-direct {p0, p1, p2, p3}, Lcom/intel/bluetooth/BluetoothStackOSX;->sdpServiceUpdateServiceRecordPublish(JC)V

    goto :goto_0

    .line 820
    :cond_2
    aget v4, v7, v6

    .line 821
    .local v4, "attrID":I
    sparse-switch v4, :sswitch_data_0

    .line 829
    invoke-virtual {p4, v4}, Lcom/intel/bluetooth/ServiceRecordImpl;->getAttributeValue(I)Ljavax/bluetooth/DataElement;

    move-result-object v5

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    .line 828
    invoke-direct/range {v0 .. v5}, Lcom/intel/bluetooth/BluetoothStackOSX;->sdpServiceAddAttribute(JCILjavax/bluetooth/DataElement;)V

    .line 819
    :sswitch_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 821
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_0
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method private native sdpServiceUpdateServiceRecordPublish(JC)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/ServiceRegistrationException;
        }
    .end annotation
.end method

.method private native setLocalDeviceServiceClassesImpl(I)Z
.end method

.method private validateMTU(II)V
    .locals 3
    .param p1, "receiveMTU"    # I
    .param p2, "transmitMTU"    # I

    .prologue
    .line 862
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackOSX;->receiveMTUMAX()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 863
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid ReceiveMTU value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 864
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 863
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 866
    :cond_0
    return-void
.end method

.method private verifyDeviceReady()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackOSX;->isLocalDevicePowerOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    new-instance v0, Ljavax/bluetooth/BluetoothStateException;

    const-string v1, "Bluetooth Device is not ready"

    invoke-direct {v0, v1}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_0
    return-void
.end method


# virtual methods
.method public authenticateRemoteDevice(J)Z
    .locals 1
    .param p1, "address"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothStackOSX;->authenticateRemoteDeviceImpl(J)Z

    move-result v0

    return v0
.end method

.method public authenticateRemoteDevice(JLjava/lang/String;)Z
    .locals 1
    .param p1, "address"    # J
    .param p3, "passkey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    const/4 v0, 0x0

    return v0
.end method

.method public cancelInquiry(Ljavax/bluetooth/DiscoveryListener;)Z
    .locals 1
    .param p1, "listener"    # Ljavax/bluetooth/DiscoveryListener;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackOSX;->deviceDiscoveryListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    const/4 v0, 0x0

    .line 493
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackOSX;->deviceInquiryCancelImpl()Z

    move-result v0

    goto :goto_0
.end method

.method public cancelServiceSearch(I)Z
    .locals 2
    .param p1, "transID"    # I

    .prologue
    .line 597
    invoke-static {p1}, Lcom/intel/bluetooth/SearchServicesThread;->getServiceSearchThread(I)Lcom/intel/bluetooth/SearchServicesThread;

    move-result-object v0

    .line 598
    .local v0, "sst":Lcom/intel/bluetooth/SearchServicesThread;
    if-eqz v0, :cond_1

    .line 599
    monitor-enter p0

    .line 600
    :try_start_0
    invoke-virtual {v0}, Lcom/intel/bluetooth/SearchServicesThread;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 601
    invoke-virtual {v0}, Lcom/intel/bluetooth/SearchServicesThread;->setTerminated()Z

    .line 602
    invoke-direct {p0, p1}, Lcom/intel/bluetooth/BluetoothStackOSX;->cancelServiceSearchImpl(I)V

    .line 603
    monitor-exit p0

    const/4 v1, 0x1

    .line 607
    :goto_0
    return v1

    .line 599
    :cond_0
    monitor-exit p0

    .line 607
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 599
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public native connectionRfCloseClientConnection(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public connectionRfCloseServerConnection(J)V
    .locals 0
    .param p1, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 740
    invoke-virtual {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothStackOSX;->connectionRfCloseClientConnection(J)V

    .line 741
    return-void
.end method

.method public connectionRfFlush(J)V
    .locals 0
    .param p1, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 838
    return-void
.end method

.method public connectionRfOpenClientConnection(Lcom/intel/bluetooth/BluetoothConnectionParams;)J
    .locals 8
    .param p1, "params"    # Lcom/intel/bluetooth/BluetoothConnectionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 659
    iget-boolean v0, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->encrypt:Z

    if-eqz v0, :cond_0

    .line 660
    new-instance v0, Ljavax/bluetooth/BluetoothConnectionException;

    .line 661
    const/4 v1, 0x2

    .line 662
    const-string v2, "encrypt mode not supported"

    .line 660
    invoke-direct {v0, v1, v2}, Ljavax/bluetooth/BluetoothConnectionException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 665
    :cond_0
    iget-wide v0, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->address:J

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 664
    invoke-static {p0, v0, v1, v2, v3}, Lcom/intel/bluetooth/RemoteDeviceHelper;->createRemoteDevice(Lcom/intel/bluetooth/BluetoothStack;JLjava/lang/String;Z)Ljavax/bluetooth/RemoteDevice;

    move-result-object v7

    .line 666
    .local v7, "lock":Ljavax/bluetooth/RemoteDevice;
    monitor-enter v7

    .line 667
    :try_start_0
    iget-wide v1, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->address:J

    .line 668
    iget v3, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->channel:I

    iget-boolean v4, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->authenticate:Z

    iget-boolean v5, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->encrypt:Z

    .line 669
    iget v6, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->timeout:I

    move-object v0, p0

    .line 667
    invoke-direct/range {v0 .. v6}, Lcom/intel/bluetooth/BluetoothStackOSX;->connectionRfOpenClientConnectionImpl(JIZZI)J

    move-result-wide v0

    monitor-exit v7

    return-wide v0

    .line 666
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public native connectionRfRead(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native connectionRfRead(J[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native connectionRfReadAvailable(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public connectionRfWrite(JI)V
    .locals 6
    .param p1, "handle"    # J
    .param p3, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 848
    new-array v3, v5, [B

    .line 849
    .local v3, "buf":[B
    and-int/lit16 v0, p3, 0xff

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    move-object v0, p0

    move-wide v1, p1

    .line 850
    invoke-virtual/range {v0 .. v5}, Lcom/intel/bluetooth/BluetoothStackOSX;->connectionRfWrite(J[BII)V

    .line 851
    return-void
.end method

.method public native connectionRfWrite(J[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 149
    iget v0, p0, Lcom/intel/bluetooth/BluetoothStackOSX;->localDeviceSupportedSoftwareVersion:I

    const/16 v1, 0x4e20

    if-lt v0, v1, :cond_0

    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/intel/bluetooth/BluetoothStackOSX;->setLocalDeviceServiceClassesImpl(I)Z

    .line 152
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/intel/bluetooth/BluetoothStackOSX;->singleInstance:Lcom/intel/bluetooth/BluetoothStackOSX;

    .line 153
    return-void
.end method

.method public native detectBluetoothStack()I
.end method

.method public native enableNativeDebug(Ljava/lang/Class;Z)V
.end method

.method public native getConnectionRfRemoteAddress(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getFeatureSet()I
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lcom/intel/bluetooth/BluetoothStackOSX;->localDeviceSupportedSoftwareVersion:I

    const/16 v1, 0x4e20

    if-lt v0, v1, :cond_1

    .line 111
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackOSX;->isLocalDeviceFeatureRSSI()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 109
    :goto_0
    or-int/lit8 v0, v0, 0x7

    .line 113
    :goto_1
    return v0

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    :cond_1
    const/4 v0, 0x3

    goto :goto_1
.end method

.method public native getLibraryVersion()I
.end method

.method public native getLocalDeviceBluetoothAddress()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation
.end method

.method public getLocalDeviceClass()Ljavax/bluetooth/DeviceClass;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Ljavax/bluetooth/DeviceClass;

    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackOSX;->getDeviceClassImpl()I

    move-result v1

    invoke-direct {v0, v1}, Ljavax/bluetooth/DeviceClass;-><init>(I)V

    return-object v0
.end method

.method public getLocalDeviceDiscoverable()I
    .locals 1

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackOSX;->getLocalDeviceDiscoverableImpl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    const v0, 0x9e8b33

    .line 313
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native getLocalDeviceName()Ljava/lang/String;
.end method

.method public getLocalDeviceProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 248
    const-string v0, "bluetooth.connected.devices.max"

    .line 249
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackOSX;->isLocalDeviceFeatureParkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "255"

    .line 297
    :goto_0
    return-object v0

    .line 250
    :cond_0
    const-string v0, "7"

    goto :goto_0

    .line 252
    :cond_1
    const-string v0, "bluetooth.sd.trans.max"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    const-string v0, "7"

    goto :goto_0

    .line 255
    :cond_2
    const-string v0, "bluetooth.connected.inquiry.scan"

    .line 256
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 257
    const-string v0, "true"

    goto :goto_0

    .line 259
    :cond_3
    const-string v0, "bluetooth.connected.page.scan"

    .line 260
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 261
    const-string v0, "true"

    goto :goto_0

    .line 263
    :cond_4
    const-string v0, "bluetooth.connected.inquiry"

    .line 264
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 265
    const-string v0, "true"

    goto :goto_0

    .line 267
    :cond_5
    const-string v0, "bluetooth.connected.page"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 268
    const-string v0, "true"

    goto :goto_0

    .line 271
    :cond_6
    const-string v0, "bluetooth.sd.attr.retrievable.max"

    .line 272
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 273
    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 275
    :cond_7
    const-string v0, "bluetooth.master.switch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 277
    const-string v0, "false"

    goto :goto_0

    .line 279
    :cond_8
    const-string v0, "bluetooth.l2cap.receiveMTU.max"

    .line 280
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 281
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackOSX;->receiveMTUMAX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 284
    :cond_9
    const-string v0, "bluecove.radio.version"

    .line 285
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 286
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackOSX;->getLocalDeviceVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 288
    :cond_a
    const-string v0, "bluecove.radio.manufacturer"

    .line 289
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 290
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackOSX;->getLocalDeviceManufacturer()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 292
    :cond_b
    const-string v0, "bluecove.stack.version"

    .line 293
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 294
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackOSX;->getLocalDeviceSoftwareVersionInfo()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 297
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public native getRemoteDeviceFriendlyName(J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getStackID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string v0, "mac"

    return-object v0
.end method

.method public initialize()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 124
    sget-object v4, Lcom/intel/bluetooth/BluetoothStackOSX;->singleInstance:Lcom/intel/bluetooth/BluetoothStackOSX;

    if-eqz v4, :cond_0

    .line 125
    new-instance v4, Ljavax/bluetooth/BluetoothStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Only one instance of "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackOSX;->getStackID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " stack supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 125
    invoke-direct {v4, v5}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 129
    :cond_0
    const-string v4, "os.version"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "sysVersion":Ljava/lang/String;
    const-string v4, "sun.arch.data.model"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "jreDataModel":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 132
    const-string v4, "10.5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 133
    .local v2, "osIsLeopard":Z
    :goto_0
    const-string v4, "64"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 134
    .local v1, "jreIs64Bit":Z
    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 135
    new-instance v4, Ljavax/bluetooth/BluetoothStateException;

    .line 136
    const-string v5, "Mac OS X 10.5 not supported with a 64 bit JRE"

    .line 135
    invoke-direct {v4, v5}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 132
    .end local v1    # "jreIs64Bit":Z
    .end local v2    # "osIsLeopard":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 139
    .restart local v1    # "jreIs64Bit":Z
    .restart local v2    # "osIsLeopard":Z
    :cond_2
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackOSX;->getLocalDeviceSupportedSoftwareVersion()I

    move-result v4

    iput v4, p0, Lcom/intel/bluetooth/BluetoothStackOSX;->localDeviceSupportedSoftwareVersion:I

    .line 140
    const-string v4, "localDeviceSupportedSoftwareVersion"

    .line 141
    iget v5, p0, Lcom/intel/bluetooth/BluetoothStackOSX;->localDeviceSupportedSoftwareVersion:I

    int-to-long v5, v5

    .line 140
    invoke-static {v4, v5, v6}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    .line 142
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackOSX;->initializeImpl()Z

    move-result v4

    if-nez v4, :cond_3

    .line 143
    new-instance v4, Ljavax/bluetooth/BluetoothStateException;

    const-string v5, "OS X BluetoothStack not found"

    invoke-direct {v4, v5}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 145
    :cond_3
    sput-object p0, Lcom/intel/bluetooth/BluetoothStackOSX;->singleInstance:Lcom/intel/bluetooth/BluetoothStackOSX;

    .line 146
    return-void
.end method

.method public isCurrentThreadInterruptedCallback()Z
    .locals 1

    .prologue
    .line 164
    invoke-static {}, Lcom/intel/bluetooth/UtilsJavaSE;->isCurrentThreadInterrupted()Z

    move-result v0

    return v0
.end method

.method public native isLocalDevicePowerOn()Z
.end method

.method public native isNativeCodeLoaded()Z
.end method

.method public isRemoteDeviceAuthenticated(J)Ljava/lang/Boolean;
    .locals 2
    .param p1, "address"    # J

    .prologue
    .line 367
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothStackOSX;->isRemoteDeviceAuthenticatedImpl(J)Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0
.end method

.method public isRemoteDeviceTrusted(J)Ljava/lang/Boolean;
    .locals 2
    .param p1, "address"    # J

    .prologue
    .line 361
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothStackOSX;->isRemoteDeviceTrustedImpl(J)Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v0
.end method

.method public native l2CloseClientConnection(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public l2CloseServerConnection(J)V
    .locals 0
    .param p1, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 969
    invoke-virtual {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothStackOSX;->l2CloseClientConnection(J)V

    .line 970
    return-void
.end method

.method public l2Encrypt(JJZ)Z
    .locals 1
    .param p1, "address"    # J
    .param p3, "handle"    # J
    .param p5, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1043
    const/4 v0, 0x0

    return v0
.end method

.method public native l2GetReceiveMTU(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native l2GetSecurityOpt(JI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native l2GetTransmitMTU(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public l2OpenClientConnection(Lcom/intel/bluetooth/BluetoothConnectionParams;II)J
    .locals 10
    .param p1, "params"    # Lcom/intel/bluetooth/BluetoothConnectionParams;
    .param p2, "receiveMTU"    # I
    .param p3, "transmitMTU"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 881
    invoke-direct {p0, p2, p3}, Lcom/intel/bluetooth/BluetoothStackOSX;->validateMTU(II)V

    .line 882
    iget-boolean v0, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->encrypt:Z

    if-eqz v0, :cond_0

    .line 883
    new-instance v0, Ljavax/bluetooth/BluetoothConnectionException;

    .line 884
    const/4 v1, 0x2

    .line 885
    const-string v2, "encrypt mode not supported"

    .line 883
    invoke-direct {v0, v1, v2}, Ljavax/bluetooth/BluetoothConnectionException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 888
    :cond_0
    iget-wide v0, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->address:J

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 887
    invoke-static {p0, v0, v1, v2, v3}, Lcom/intel/bluetooth/RemoteDeviceHelper;->createRemoteDevice(Lcom/intel/bluetooth/BluetoothStack;JLjava/lang/String;Z)Ljavax/bluetooth/RemoteDevice;

    move-result-object v9

    .line 889
    .local v9, "lock":Ljavax/bluetooth/RemoteDevice;
    monitor-enter v9

    .line 890
    :try_start_0
    iget-wide v1, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->address:J

    iget v3, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->channel:I

    .line 891
    iget-boolean v4, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->authenticate:Z

    iget-boolean v5, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->encrypt:Z

    .line 892
    iget v8, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->timeout:I

    move-object v0, p0

    move v6, p2

    move v7, p3

    .line 890
    invoke-direct/range {v0 .. v8}, Lcom/intel/bluetooth/BluetoothStackOSX;->l2OpenClientConnectionImpl(JIZZIII)J

    move-result-wide v0

    monitor-exit v9

    return-wide v0

    .line 889
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public native l2Ready(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native l2Receive(J[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native l2RemoteAddress(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native l2Send(J[BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native l2ServerAcceptAndOpenServerConnection(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public l2ServerClose(JLcom/intel/bluetooth/ServiceRecordImpl;)V
    .locals 0
    .param p1, "handle"    # J
    .param p3, "serviceRecord"    # Lcom/intel/bluetooth/ServiceRecordImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 982
    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothStackOSX;->l2ServerCloseImpl(J)V

    .line 983
    return-void
.end method

.method public l2ServerOpen(Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;IILcom/intel/bluetooth/ServiceRecordImpl;)J
    .locals 13
    .param p1, "params"    # Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;
    .param p2, "receiveMTU"    # I
    .param p3, "transmitMTU"    # I
    .param p4, "serviceRecord"    # Lcom/intel/bluetooth/ServiceRecordImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 919
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackOSX;->verifyDeviceReady()V

    .line 920
    move/from16 v0, p3

    invoke-direct {p0, p2, v0}, Lcom/intel/bluetooth/BluetoothStackOSX;->validateMTU(II)V

    .line 921
    iget-boolean v1, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->encrypt:Z

    if-eqz v1, :cond_0

    .line 922
    new-instance v1, Ljavax/bluetooth/BluetoothConnectionException;

    .line 923
    const/4 v3, 0x2

    .line 924
    const-string v4, "encrypt mode not supported"

    .line 922
    invoke-direct {v1, v3, v4}, Ljavax/bluetooth/BluetoothConnectionException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 926
    :cond_0
    iget-object v1, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->uuid:Ljavax/bluetooth/UUID;

    invoke-static {v1}, Lcom/intel/bluetooth/Utils;->UUIDToByteArray(Ljavax/bluetooth/UUID;)[B

    move-result-object v2

    .line 927
    .local v2, "uuidValue":[B
    iget-boolean v3, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->authenticate:Z

    .line 928
    iget-boolean v4, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->encrypt:Z

    iget-object v5, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->name:Ljava/lang/String;

    .line 929
    iget v8, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->bluecove_ext_psm:I

    move-object v1, p0

    move v6, p2

    move/from16 v7, p3

    .line 927
    invoke-direct/range {v1 .. v8}, Lcom/intel/bluetooth/BluetoothStackOSX;->l2ServerOpenImpl([BZZLjava/lang/String;III)J

    move-result-wide v10

    .line 931
    .local v10, "handle":J
    invoke-virtual {p0, v10, v11}, Lcom/intel/bluetooth/BluetoothStackOSX;->l2ServerPSM(J)I

    move-result v9

    .line 933
    .local v9, "channel":I
    long-to-int v12, v10

    .line 936
    .local v12, "serviceRecordHandle":I
    iget-object v1, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->uuid:Ljavax/bluetooth/UUID;

    iget-object v3, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->name:Ljava/lang/String;

    .line 935
    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v9, v1, v3}, Lcom/intel/bluetooth/ServiceRecordImpl;->populateL2CAPAttributes(IILjavax/bluetooth/UUID;Ljava/lang/String;)V

    .line 938
    return-wide v10
.end method

.method public native l2ServerPSM(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public l2ServerUpdateServiceRecord(JLcom/intel/bluetooth/ServiceRecordImpl;Z)V
    .locals 1
    .param p1, "handle"    # J
    .param p3, "serviceRecord"    # Lcom/intel/bluetooth/ServiceRecordImpl;
    .param p4, "acceptAndOpen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/ServiceRegistrationException;
        }
    .end annotation

    .prologue
    .line 950
    const/16 v0, 0x4c

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/intel/bluetooth/BluetoothStackOSX;->sdpServiceUpdateServiceRecord(JCLcom/intel/bluetooth/ServiceRecordImpl;)V

    .line 951
    return-void
.end method

.method public populateServicesRecordAttributeValues(Lcom/intel/bluetooth/ServiceRecordImpl;[I)Z
    .locals 10
    .param p1, "serviceRecord"    # Lcom/intel/bluetooth/ServiceRecordImpl;
    .param p2, "attrIDs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 615
    array-length v0, p2

    const/16 v3, 0x100

    if-le v0, v3, :cond_0

    .line 616
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 618
    :cond_0
    const/4 v6, 0x0

    .line 620
    .local v6, "anyRetrived":Z
    invoke-virtual {p1}, Lcom/intel/bluetooth/ServiceRecordImpl;->getHostDevice()Ljavax/bluetooth/RemoteDevice;

    move-result-object v0

    .line 619
    invoke-static {v0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getAddress(Ljavax/bluetooth/RemoteDevice;)J

    move-result-wide v1

    .line 621
    .local v1, "address":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, p2

    if-lt v9, v0, :cond_1

    .line 648
    return v6

    .line 622
    :cond_1
    aget v5, p2, v9

    .line 625
    .local v5, "id":I
    :try_start_0
    invoke-virtual {p1}, Lcom/intel/bluetooth/ServiceRecordImpl;->getHandle()J

    move-result-wide v3

    move-object v0, p0

    .line 624
    invoke-direct/range {v0 .. v5}, Lcom/intel/bluetooth/BluetoothStackOSX;->getServiceAttributeImpl(JJI)[B

    move-result-object v7

    .line 626
    .local v7, "blob":[B
    if-eqz v7, :cond_2

    .line 627
    new-instance v0, Lcom/intel/bluetooth/SDPInputStream;

    .line 628
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 627
    invoke-direct {v0, v3}, Lcom/intel/bluetooth/SDPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 628
    invoke-virtual {v0}, Lcom/intel/bluetooth/SDPInputStream;->readElement()Ljavax/bluetooth/DataElement;

    move-result-object v8

    .line 629
    .local v8, "element":Ljavax/bluetooth/DataElement;
    invoke-virtual {p1, v5, v8}, Lcom/intel/bluetooth/ServiceRecordImpl;->populateAttributeValue(ILjavax/bluetooth/DataElement;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    const/4 v6, 0x1

    .line 621
    .end local v7    # "blob":[B
    .end local v8    # "element":Ljavax/bluetooth/DataElement;
    :cond_2
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 641
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public readRemoteDeviceRSSI(J)I
    .locals 1
    .param p1, "address"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothStackOSX;->readRemoteDeviceRSSIImpl(J)I

    move-result v0

    return v0
.end method

.method public removeAuthenticationWithRemoteDevice(J)V
    .locals 2
    .param p1, "address"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackOSX;->getStackID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intel/bluetooth/NotSupportedIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requireNativeLibraries()[Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;
    .locals 1

    .prologue
    .line 91
    const-string v0, "bluecove"

    invoke-static {v0}, Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;->library(Ljava/lang/String;)[Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;

    move-result-object v0

    return-object v0
.end method

.method public retrieveDevices(I)[Ljavax/bluetooth/RemoteDevice;
    .locals 3
    .param p1, "option"    # I

    .prologue
    .line 338
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 339
    .local v0, "devices":Ljava/util/Vector;
    new-instance v1, Lcom/intel/bluetooth/BluetoothStackOSX$1;

    invoke-direct {v1, p0, v0}, Lcom/intel/bluetooth/BluetoothStackOSX$1;-><init>(Lcom/intel/bluetooth/BluetoothStackOSX;Ljava/util/Vector;)V

    .line 351
    .local v1, "retrieveDevicesCallback":Lcom/intel/bluetooth/RetrieveDevicesCallback;
    invoke-direct {p0, p1, v1}, Lcom/intel/bluetooth/BluetoothStackOSX;->retrieveDevicesImpl(ILcom/intel/bluetooth/RetrieveDevicesCallback;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    invoke-static {v0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->remoteDeviceListToArray(Ljava/util/Vector;)[Ljavax/bluetooth/RemoteDevice;

    move-result-object v2

    .line 354
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public rfEncrypt(JJZ)Z
    .locals 1
    .param p1, "address"    # J
    .param p3, "handle"    # J
    .param p5, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 686
    const/4 v0, 0x0

    return v0
.end method

.method public native rfGetSecurityOpt(JI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native rfServerAcceptAndOpenRfServerConnection(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public rfServerClose(JLcom/intel/bluetooth/ServiceRecordImpl;)V
    .locals 0
    .param p1, "handle"    # J
    .param p3, "serviceRecord"    # Lcom/intel/bluetooth/ServiceRecordImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 726
    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothStackOSX;->rfServerCloseImpl(J)V

    .line 727
    return-void
.end method

.method public rfServerOpen(Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;Lcom/intel/bluetooth/ServiceRecordImpl;)J
    .locals 10
    .param p1, "params"    # Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;
    .param p2, "serviceRecord"    # Lcom/intel/bluetooth/ServiceRecordImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 701
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackOSX;->verifyDeviceReady()V

    .line 702
    iget-boolean v0, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->encrypt:Z

    if-eqz v0, :cond_0

    .line 703
    new-instance v0, Ljavax/bluetooth/BluetoothConnectionException;

    .line 704
    const/4 v2, 0x2

    .line 705
    const-string v6, "encrypt mode not supported"

    .line 703
    invoke-direct {v0, v2, v6}, Ljavax/bluetooth/BluetoothConnectionException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 707
    :cond_0
    iget-object v0, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->uuid:Ljavax/bluetooth/UUID;

    invoke-static {v0}, Lcom/intel/bluetooth/Utils;->UUIDToByteArray(Ljavax/bluetooth/UUID;)[B

    move-result-object v1

    .line 708
    .local v1, "uuidValue":[B
    iget-boolean v2, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->obex:Z

    iget-object v3, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->name:Ljava/lang/String;

    .line 709
    iget-boolean v4, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->authenticate:Z

    iget-boolean v5, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->encrypt:Z

    move-object v0, p0

    .line 708
    invoke-direct/range {v0 .. v5}, Lcom/intel/bluetooth/BluetoothStackOSX;->rfServerCreateImpl([BZLjava/lang/String;ZZ)J

    move-result-wide v3

    .line 710
    .local v3, "handle":J
    const/4 v9, 0x0

    .line 712
    .local v9, "success":Z
    :try_start_0
    invoke-direct {p0, v3, v4}, Lcom/intel/bluetooth/BluetoothStackOSX;->rfServerGetChannelID(J)I

    move-result v5

    .line 714
    .local v5, "channel":I
    iget-object v6, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->uuid:Ljavax/bluetooth/UUID;

    iget-object v7, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->name:Ljava/lang/String;

    iget-boolean v8, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->obex:Z

    move-object v2, p2

    .line 713
    invoke-virtual/range {v2 .. v8}, Lcom/intel/bluetooth/ServiceRecordImpl;->populateRFCOMMAttributes(JILjavax/bluetooth/UUID;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    const/4 v9, 0x1

    .line 717
    if-nez v9, :cond_1

    .line 718
    invoke-direct {p0, v3, v4}, Lcom/intel/bluetooth/BluetoothStackOSX;->rfServerCloseImpl(J)V

    .line 721
    :cond_1
    return-wide v3

    .line 716
    .end local v5    # "channel":I
    :catchall_0
    move-exception v0

    .line 717
    if-nez v9, :cond_2

    .line 718
    invoke-direct {p0, v3, v4}, Lcom/intel/bluetooth/BluetoothStackOSX;->rfServerCloseImpl(J)V

    .line 720
    :cond_2
    throw v0
.end method

.method public rfServerUpdateServiceRecord(JLcom/intel/bluetooth/ServiceRecordImpl;Z)V
    .locals 1
    .param p1, "handle"    # J
    .param p3, "serviceRecord"    # Lcom/intel/bluetooth/ServiceRecordImpl;
    .param p4, "acceptAndOpen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/ServiceRegistrationException;
        }
    .end annotation

    .prologue
    .line 732
    const/16 v0, 0x52

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/intel/bluetooth/BluetoothStackOSX;->sdpServiceUpdateServiceRecord(JCLcom/intel/bluetooth/ServiceRecordImpl;)V

    .line 733
    return-void
.end method

.method public searchServices([I[Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DiscoveryListener;)I
    .locals 6
    .param p1, "attrSet"    # [I
    .param p2, "uuidSet"    # [Ljavax/bluetooth/UUID;
    .param p3, "device"    # Ljavax/bluetooth/RemoteDevice;
    .param p4, "listener"    # Ljavax/bluetooth/DiscoveryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 505
    new-instance v1, Lcom/intel/bluetooth/BluetoothStackOSX$3;

    invoke-direct {v1, p0}, Lcom/intel/bluetooth/BluetoothStackOSX$3;-><init>(Lcom/intel/bluetooth/BluetoothStackOSX;)V

    .local v1, "searchRunnable":Lcom/intel/bluetooth/SearchServicesRunnable;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 589
    invoke-static/range {v0 .. v5}, Lcom/intel/bluetooth/SearchServicesThread;->startSearchServices(Lcom/intel/bluetooth/BluetoothStack;Lcom/intel/bluetooth/SearchServicesRunnable;[I[Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DiscoveryListener;)I

    move-result v0

    return v0
.end method

.method public setLocalDeviceDiscoverable(I)Z
    .locals 1
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackOSX;->getLocalDeviceDiscoverable()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 323
    const/4 v0, 0x1

    .line 325
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setLocalDeviceServiceClasses(I)V
    .locals 2
    .param p1, "classOfDevice"    # I

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/intel/bluetooth/BluetoothStackOSX;->localDeviceSupportedSoftwareVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x4e20

    if-ge v0, v1, :cond_1

    .line 227
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 218
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/intel/bluetooth/BluetoothStackOSX;->localDeviceServiceClasses:I

    if-eq p1, v0, :cond_2

    .line 219
    invoke-direct {p0, p1}, Lcom/intel/bluetooth/BluetoothStackOSX;->setLocalDeviceServiceClassesImpl(I)Z

    .line 221
    :cond_2
    iput p1, p0, Lcom/intel/bluetooth/BluetoothStackOSX;->localDeviceServiceClasses:I

    .line 222
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackOSX;->localDeviceServiceClassMaintainer:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lcom/intel/bluetooth/BluetoothStackOSX$MaintainDeviceServiceClassesThread;

    invoke-direct {v0, p0}, Lcom/intel/bluetooth/BluetoothStackOSX$MaintainDeviceServiceClassesThread;-><init>(Lcom/intel/bluetooth/BluetoothStackOSX;)V

    iput-object v0, p0, Lcom/intel/bluetooth/BluetoothStackOSX;->localDeviceServiceClassMaintainer:Ljava/lang/Thread;

    .line 224
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackOSX;->localDeviceServiceClassMaintainer:Ljava/lang/Thread;

    invoke-static {v0}, Lcom/intel/bluetooth/UtilsJavaSE;->threadSetDaemon(Ljava/lang/Thread;)V

    .line 225
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackOSX;->localDeviceServiceClassMaintainer:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startInquiry(ILjavax/bluetooth/DiscoveryListener;)Z
    .locals 10
    .param p1, "accessCode"    # I
    .param p2, "listener"    # Ljavax/bluetooth/DiscoveryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 430
    iget-wide v8, p0, Lcom/intel/bluetooth/BluetoothStackOSX;->lastDeviceDiscoveryTime:J

    .line 429
    sub-long v4, v6, v8

    .line 431
    .local v4, "sinceDiscoveryLast":J
    const-wide/16 v0, 0x1b58

    .line 432
    .local v0, "acceptableInterval":J
    cmp-long v6, v4, v0

    if-gez v6, :cond_0

    .line 434
    sub-long v6, v0, v4

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    :cond_0
    iget-object v6, p0, Lcom/intel/bluetooth/BluetoothStackOSX;->deviceDiscoveryListeners:Ljava/util/Vector;

    invoke-virtual {v6, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 441
    iget-object v6, p0, Lcom/intel/bluetooth/BluetoothStackOSX;->deviceDiscoveryListenerReportedDevices:Ljava/util/Hashtable;

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v6, p2, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    new-instance v3, Lcom/intel/bluetooth/BluetoothStackOSX$2;

    invoke-direct {v3, p0}, Lcom/intel/bluetooth/BluetoothStackOSX$2;-><init>(Lcom/intel/bluetooth/BluetoothStackOSX;)V

    .line 482
    .local v3, "inquiryRunnable":Lcom/intel/bluetooth/DeviceInquiryRunnable;
    invoke-static {p0, v3, p1, p2}, Lcom/intel/bluetooth/DeviceInquiryThread;->startInquiry(Lcom/intel/bluetooth/BluetoothStack;Lcom/intel/bluetooth/DeviceInquiryRunnable;ILjavax/bluetooth/DiscoveryListener;)Z

    move-result v6

    return v6

    .line 435
    .end local v3    # "inquiryRunnable":Lcom/intel/bluetooth/DeviceInquiryRunnable;
    :catch_0
    move-exception v2

    .line 436
    .local v2, "e":Ljava/lang/InterruptedException;
    new-instance v6, Ljavax/bluetooth/BluetoothStateException;

    invoke-direct {v6}, Ljavax/bluetooth/BluetoothStateException;-><init>()V

    throw v6
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackOSX;->getStackID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

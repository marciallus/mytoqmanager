.class Lcom/intel/bluetooth/BluetoothStackWIDCOMM;
.super Ljava/lang/Object;
.source "BluetoothStackWIDCOMM.java"

# interfaces
.implements Lcom/intel/bluetooth/BluetoothStack;
.implements Lcom/intel/bluetooth/BluetoothStackExtension;


# static fields
.field private static final ATTR_RETRIEVABLE_MAX:I = 0x100

.field static final BOOLEAN_DESC_TYPE:S = 0x5s

.field static final DATA_ELE_ALT_DESC_TYPE:S = 0x7s

.field static final DATA_ELE_SEQ_DESC_TYPE:S = 0x6s

.field static final NULL_DESC_TYPE:S = 0x0s

.field private static final RECEIVE_MTU_MAX:I = 0x400

.field static final TEXT_STR_DESC_TYPE:S = 0x4s

.field static final TWO_COMP_INT_DESC_TYPE:S = 0x2s

.field static final UINT_DESC_TYPE:S = 0x1s

.field static final URL_DESC_TYPE:S = 0x8s

.field static final UUID_DESC_TYPE:S = 0x3s

.field private static singleInstance:Lcom/intel/bluetooth/BluetoothStackWIDCOMM;


# instance fields
.field private deviceDiscoveryListenerFoundDevices:Ljava/util/Hashtable;

.field private deviceDiscoveryListenerReportedDevices:Ljava/util/Hashtable;

.field private deviceDiscoveryListeners:Ljava/util/Vector;

.field private initialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->singleInstance:Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    .line 43
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->initialized:Z

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->deviceDiscoveryListeners:Ljava/util/Vector;

    .line 51
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->deviceDiscoveryListenerFoundDevices:Ljava/util/Hashtable;

    .line 53
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->deviceDiscoveryListenerReportedDevices:Ljava/util/Hashtable;

    .line 80
    return-void
.end method

.method static synthetic access$0(Lcom/intel/bluetooth/BluetoothStackWIDCOMM;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->deviceDiscoveryListeners:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1(Lcom/intel/bluetooth/BluetoothStackWIDCOMM;)Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->deviceDiscoveryListenerFoundDevices:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$2(Lcom/intel/bluetooth/BluetoothStackWIDCOMM;)Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->deviceDiscoveryListenerReportedDevices:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$3(Lcom/intel/bluetooth/BluetoothStackWIDCOMM;Lcom/intel/bluetooth/DeviceInquiryRunnable;Lcom/intel/bluetooth/DeviceInquiryThread;ILjavax/bluetooth/DiscoveryListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 390
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->runDeviceInquiryImpl(Lcom/intel/bluetooth/DeviceInquiryRunnable;Lcom/intel/bluetooth/DeviceInquiryThread;ILjavax/bluetooth/DiscoveryListener;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/intel/bluetooth/BluetoothStackWIDCOMM;Lcom/intel/bluetooth/SearchServicesThread;[BJ)[J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;,
            Lcom/intel/bluetooth/SearchServicesTerminatedException;
        }
    .end annotation

    .prologue
    .line 536
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->runSearchServicesImpl(Lcom/intel/bluetooth/SearchServicesThread;[BJ)[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/intel/bluetooth/BluetoothStackWIDCOMM;JJ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 674
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->isServiceRecordDiscoverable(JJ)Z

    move-result v0

    return v0
.end method

.method private native authenticateRemoteDeviceImpl(JLjava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native cancelServiceSearchImpl()V
.end method

.method private native cancelSniffMode(J)Z
.end method

.method private native closeRfCommPortImpl(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native connectionRfOpenClientConnectionImpl(JIZZI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native connectionRfWriteImpl(J[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native deviceInquiryCancelImpl()Z
.end method

.method private native getBTWVersionInfo()Ljava/lang/String;
.end method

.method private native getDeviceClassImpl()I
.end method

.method private native getDeviceManufacturer()I
.end method

.method private native getDeviceVersion()I
.end method

.method private native getRemoteDeviceLinkMode(J)Ljava/lang/String;
.end method

.method private native getRemoteDeviceRSSI(J)I
.end method

.method private native getRemoteDeviceVersionInfo(J)Ljava/lang/String;
.end method

.method private native getServiceAttribute(IJ)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native isRemoteDeviceConnected(J)Z
.end method

.method private native isServiceRecordDiscoverable(JJ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native isStackServerUp()Z
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

.method private synchronized native declared-synchronized l2ServerOpenImpl([BZZLjava/lang/String;III)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private long2byte(JI)[B
    .locals 6
    .param p1, "value"    # J
    .param p3, "len"    # I

    .prologue
    .line 837
    new-array v0, p3, [B

    .line 838
    .local v0, "cvalue":[B
    move-wide v2, p1

    .line 839
    .local v2, "l":J
    add-int/lit8 v1, p3, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 843
    return-object v0

    .line 840
    :cond_0
    const-wide/16 v4, 0xff

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 841
    const/16 v4, 0x8

    shr-long/2addr v2, v4

    .line 839
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private native nativeBuildFeatures()I
.end method

.method private native removeAuthenticationWithRemoteDeviceImpl(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native rfServerCloseImpl(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private synchronized native declared-synchronized rfServerOpenImpl([B[BZLjava/lang/String;ZZ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native rfServerSCN(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native runDeviceInquiryImpl(Lcom/intel/bluetooth/DeviceInquiryRunnable;Lcom/intel/bluetooth/DeviceInquiryThread;ILjavax/bluetooth/DiscoveryListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation
.end method

.method private native runSearchServicesImpl(Lcom/intel/bluetooth/SearchServicesThread;[BJ)[J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;,
            Lcom/intel/bluetooth/SearchServicesTerminatedException;
        }
    .end annotation
.end method

.method private native sdpServiceAddAttribute(JCIS[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/ServiceRegistrationException;
        }
    .end annotation
.end method

.method private native sdpServiceAddServiceClassIdList(JC[[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/ServiceRegistrationException;
        }
    .end annotation
.end method

.method private sdpServiceSequenceAttribute(Ljava/util/Enumeration;)[B
    .locals 5
    .param p1, "en"    # Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/ServiceRegistrationException;
        }
    .end annotation

    .prologue
    .line 854
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 855
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Lcom/intel/bluetooth/SDPOutputStream;

    invoke-direct {v2, v1}, Lcom/intel/bluetooth/SDPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 857
    .local v2, "sdpOut":Lcom/intel/bluetooth/SDPOutputStream;
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 863
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 858
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/bluetooth/DataElement;

    invoke-virtual {v2, v3}, Lcom/intel/bluetooth/SDPOutputStream;->writeElement(Ljavax/bluetooth/DataElement;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 860
    :catch_0
    move-exception v0

    .line 861
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljavax/bluetooth/ServiceRegistrationException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/bluetooth/ServiceRegistrationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private sdpServiceUpdateServiceRecord(JCLcom/intel/bluetooth/ServiceRecordImpl;)V
    .locals 20
    .param p1, "handle"    # J
    .param p3, "handleType"    # C
    .param p4, "serviceRecord"    # Lcom/intel/bluetooth/ServiceRecordImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/ServiceRegistrationException;
        }
    .end annotation

    .prologue
    .line 873
    invoke-virtual/range {p4 .. p4}, Lcom/intel/bluetooth/ServiceRecordImpl;->getAttributeIDs()[I

    move-result-object v15

    .line 874
    .local v15, "ids":[I
    if-eqz v15, :cond_0

    array-length v5, v15

    if-nez v5, :cond_1

    .line 990
    :cond_0
    return-void

    .line 879
    :cond_1
    const/4 v5, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/intel/bluetooth/ServiceRecordImpl;->getAttributeValue(I)Ljavax/bluetooth/DataElement;

    move-result-object v16

    .line 880
    .local v16, "serviceClassIDList":Ljavax/bluetooth/DataElement;
    invoke-virtual/range {v16 .. v16}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v5

    const/16 v6, 0x30

    if-eq v5, v6, :cond_2

    .line 881
    new-instance v5, Ljavax/bluetooth/ServiceRegistrationException;

    const-string v6, "Invalid serviceClassIDList"

    invoke-direct {v5, v6}, Ljavax/bluetooth/ServiceRegistrationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 883
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Enumeration;

    .line 884
    .local v13, "en":Ljava/util/Enumeration;
    new-instance v19, Ljava/util/Vector;

    invoke-direct/range {v19 .. v19}, Ljava/util/Vector;-><init>()V

    .line 885
    .local v19, "uuids":Ljava/util/Vector;
    :goto_0
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_4

    .line 893
    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 894
    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v0, v5, [[B

    move-object/from16 v18, v0

    .line 895
    .local v18, "uuidValues":[[B
    const/16 v17, 0x0

    .local v17, "u":I
    :goto_1
    move-object/from16 v0, v18

    array-length v5, v0

    move/from16 v0, v17

    if-lt v0, v5, :cond_6

    .line 899
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->sdpServiceAddServiceClassIdList(JC[[B)V

    .line 903
    .end local v17    # "u":I
    .end local v18    # "uuidValues":[[B
    :cond_3
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    array-length v5, v15

    if-ge v14, v5, :cond_0

    .line 904
    aget v9, v15, v14

    .line 905
    .local v9, "id":I
    sparse-switch v9, :sswitch_data_0

    .line 913
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Lcom/intel/bluetooth/ServiceRecordImpl;->getAttributeValue(I)Ljavax/bluetooth/DataElement;

    move-result-object v12

    .line 914
    .local v12, "d":Ljavax/bluetooth/DataElement;
    invoke-virtual {v12}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v5

    sparse-switch v5, :sswitch_data_1

    .line 986
    new-instance v5, Ljavax/bluetooth/ServiceRegistrationException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 987
    invoke-virtual {v12}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 986
    invoke-direct {v5, v6}, Ljavax/bluetooth/ServiceRegistrationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 886
    .end local v9    # "id":I
    .end local v12    # "d":Ljavax/bluetooth/DataElement;
    .end local v14    # "i":I
    :cond_4
    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljavax/bluetooth/DataElement;

    .line 887
    .local v17, "u":Ljavax/bluetooth/DataElement;
    invoke-virtual/range {v17 .. v17}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v5

    const/16 v6, 0x18

    if-eq v5, v6, :cond_5

    .line 888
    new-instance v5, Ljavax/bluetooth/ServiceRegistrationException;

    .line 889
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid serviceClassIDList element "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 888
    invoke-direct {v5, v6}, Ljavax/bluetooth/ServiceRegistrationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 891
    :cond_5
    invoke-virtual/range {v17 .. v17}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 897
    .local v17, "u":I
    .restart local v18    # "uuidValues":[[B
    :cond_6
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/bluetooth/UUID;

    invoke-static {v5}, Lcom/intel/bluetooth/Utils;->UUIDToByteArray(Ljavax/bluetooth/UUID;)[B

    move-result-object v5

    .line 896
    aput-object v5, v18, v17

    .line 895
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 916
    .end local v17    # "u":I
    .end local v18    # "uuidValues":[[B
    .restart local v9    # "id":I
    .restart local v12    # "d":Ljavax/bluetooth/DataElement;
    .restart local v14    # "i":I
    :sswitch_0
    const/4 v10, 0x1

    .line 917
    invoke-virtual {v12}, Ljavax/bluetooth/DataElement;->getLong()J

    move-result-wide v5

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->long2byte(JI)[B

    move-result-object v11

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    .line 916
    invoke-direct/range {v5 .. v11}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->sdpServiceAddAttribute(JCIS[B)V

    .line 903
    .end local v12    # "d":Ljavax/bluetooth/DataElement;
    :goto_3
    :sswitch_1
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 920
    .restart local v12    # "d":Ljavax/bluetooth/DataElement;
    :sswitch_2
    const/4 v10, 0x1

    .line 921
    invoke-virtual {v12}, Ljavax/bluetooth/DataElement;->getLong()J

    move-result-wide v5

    const/4 v7, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->long2byte(JI)[B

    move-result-object v11

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    .line 920
    invoke-direct/range {v5 .. v11}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->sdpServiceAddAttribute(JCIS[B)V

    goto :goto_3

    .line 924
    :sswitch_3
    const/4 v10, 0x1

    .line 925
    invoke-virtual {v12}, Ljavax/bluetooth/DataElement;->getLong()J

    move-result-wide v5

    const/4 v7, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->long2byte(JI)[B

    move-result-object v11

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    .line 924
    invoke-direct/range {v5 .. v11}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->sdpServiceAddAttribute(JCIS[B)V

    goto :goto_3

    .line 929
    :sswitch_4
    const/4 v10, 0x1

    .line 930
    invoke-virtual {v12}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    .line 929
    invoke-direct/range {v5 .. v11}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->sdpServiceAddAttribute(JCIS[B)V

    goto :goto_3

    .line 934
    :sswitch_5
    const/4 v10, 0x2

    invoke-virtual {v12}, Ljavax/bluetooth/DataElement;->getLong()J

    move-result-wide v5

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->long2byte(JI)[B

    move-result-object v11

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    .line 933
    invoke-direct/range {v5 .. v11}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->sdpServiceAddAttribute(JCIS[B)V

    goto :goto_3

    .line 938
    :sswitch_6
    const/4 v10, 0x2

    invoke-virtual {v12}, Ljavax/bluetooth/DataElement;->getLong()J

    move-result-wide v5

    const/4 v7, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->long2byte(JI)[B

    move-result-object v11

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    .line 937
    invoke-direct/range {v5 .. v11}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->sdpServiceAddAttribute(JCIS[B)V

    goto :goto_3

    .line 942
    :sswitch_7
    const/4 v10, 0x2

    invoke-virtual {v12}, Ljavax/bluetooth/DataElement;->getLong()J

    move-result-wide v5

    const/4 v7, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->long2byte(JI)[B

    move-result-object v11

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    .line 941
    invoke-direct/range {v5 .. v11}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->sdpServiceAddAttribute(JCIS[B)V

    goto/16 :goto_3

    .line 946
    :sswitch_8
    const/4 v10, 0x2

    invoke-virtual {v12}, Ljavax/bluetooth/DataElement;->getLong()J

    move-result-wide v5

    const/16 v7, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->long2byte(JI)[B

    move-result-object v11

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    .line 945
    invoke-direct/range {v5 .. v11}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->sdpServiceAddAttribute(JCIS[B)V

    goto/16 :goto_3

    .line 950
    :sswitch_9
    const/4 v10, 0x2

    invoke-virtual {v12}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    .line 949
    invoke-direct/range {v5 .. v11}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->sdpServiceAddAttribute(JCIS[B)V

    goto/16 :goto_3

    .line 953
    :sswitch_a
    const/16 v10, 0x8

    .line 954
    invoke-virtual {v12}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/intel/bluetooth/Utils;->getASCIIBytes(Ljava/lang/String;)[B

    move-result-object v11

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    .line 953
    invoke-direct/range {v5 .. v11}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->sdpServiceAddAttribute(JCIS[B)V

    goto/16 :goto_3

    .line 958
    :sswitch_b
    const/4 v10, 0x4

    .line 959
    invoke-virtual {v12}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/intel/bluetooth/Utils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v11

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    .line 957
    invoke-direct/range {v5 .. v11}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->sdpServiceAddAttribute(JCIS[B)V

    goto/16 :goto_3

    .line 962
    :sswitch_c
    const/4 v10, 0x0

    .line 963
    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    .line 962
    invoke-direct/range {v5 .. v11}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->sdpServiceAddAttribute(JCIS[B)V

    goto/16 :goto_3

    .line 967
    :sswitch_d
    const/4 v10, 0x5

    .line 968
    const/4 v5, 0x1

    new-array v11, v5, [B

    const/4 v6, 0x0

    invoke-virtual {v12}, Ljavax/bluetooth/DataElement;->getBoolean()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    :goto_4
    int-to-byte v5, v5

    aput-byte v5, v11, v6

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    .line 966
    invoke-direct/range {v5 .. v11}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->sdpServiceAddAttribute(JCIS[B)V

    goto/16 :goto_3

    .line 968
    :cond_7
    const/4 v5, 0x0

    goto :goto_4

    .line 971
    :sswitch_e
    const/4 v10, 0x3

    .line 973
    invoke-virtual {v12}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/bluetooth/UUID;

    invoke-static {v5}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->getUUIDHexBytes(Ljavax/bluetooth/UUID;)[B

    move-result-object v11

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    .line 971
    invoke-direct/range {v5 .. v11}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->sdpServiceAddAttribute(JCIS[B)V

    goto/16 :goto_3

    .line 977
    :sswitch_f
    const/4 v10, 0x6

    .line 978
    invoke-virtual {v12}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Enumeration;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->sdpServiceSequenceAttribute(Ljava/util/Enumeration;)[B

    move-result-object v11

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    .line 976
    invoke-direct/range {v5 .. v11}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->sdpServiceAddAttribute(JCIS[B)V

    goto/16 :goto_3

    .line 982
    :sswitch_10
    const/4 v10, 0x7

    .line 983
    invoke-virtual {v12}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Enumeration;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->sdpServiceSequenceAttribute(Ljava/util/Enumeration;)[B

    move-result-object v11

    move-object/from16 v5, p0

    move-wide/from16 v6, p1

    move/from16 v8, p3

    .line 981
    invoke-direct/range {v5 .. v11}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->sdpServiceAddAttribute(JCIS[B)V

    goto/16 :goto_3

    .line 905
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_1
        0x4 -> :sswitch_1
        0x100 -> :sswitch_1
    .end sparse-switch

    .line 914
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_c
        0x8 -> :sswitch_0
        0x9 -> :sswitch_2
        0xa -> :sswitch_3
        0xb -> :sswitch_4
        0xc -> :sswitch_4
        0x10 -> :sswitch_5
        0x11 -> :sswitch_6
        0x12 -> :sswitch_7
        0x13 -> :sswitch_8
        0x14 -> :sswitch_9
        0x18 -> :sswitch_e
        0x20 -> :sswitch_b
        0x28 -> :sswitch_d
        0x30 -> :sswitch_f
        0x38 -> :sswitch_10
        0x40 -> :sswitch_a
    .end sparse-switch
.end method

.method private native setSniffMode(J)Z
.end method

.method private native uninitialize()V
.end method

.method private validateMTU(II)V
    .locals 3
    .param p1, "receiveMTU"    # I
    .param p2, "transmitMTU"    # I

    .prologue
    .line 1008
    const/16 v0, 0x400

    if-le p1, v0, :cond_0

    .line 1009
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid ReceiveMTU value "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1009
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1026
    :cond_0
    return-void
.end method

.method private declared-synchronized verifyDeviceReady()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->isLocalDevicePowerOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Ljavax/bluetooth/BluetoothStateException;

    const-string v1, "Bluetooth Device is not ready"

    invoke-direct {v0, v1}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 208
    :cond_0
    monitor-exit p0

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
    .line 342
    const/4 v0, 0x0

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
    .line 356
    invoke-direct {p0, p1, p2, p3}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->authenticateRemoteDeviceImpl(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public cancelInquiry(Ljavax/bluetooth/DiscoveryListener;)Z
    .locals 1
    .param p1, "listener"    # Ljavax/bluetooth/DiscoveryListener;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->deviceDiscoveryListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    const/4 v0, 0x0

    .line 503
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->deviceInquiryCancelImpl()Z

    move-result v0

    goto :goto_0
.end method

.method public cancelServiceSearch(I)Z
    .locals 2
    .param p1, "transID"    # I

    .prologue
    .line 658
    invoke-static {p1}, Lcom/intel/bluetooth/SearchServicesThread;->getServiceSearchThread(I)Lcom/intel/bluetooth/SearchServicesThread;

    move-result-object v0

    .line 659
    .local v0, "sst":Lcom/intel/bluetooth/SearchServicesThread;
    if-eqz v0, :cond_1

    .line 660
    monitor-enter p0

    .line 661
    :try_start_0
    invoke-virtual {v0}, Lcom/intel/bluetooth/SearchServicesThread;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_0

    .line 662
    invoke-virtual {v0}, Lcom/intel/bluetooth/SearchServicesThread;->setTerminated()Z

    .line 663
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->cancelServiceSearchImpl()V

    .line 664
    monitor-exit p0

    const/4 v1, 0x1

    .line 668
    :goto_0
    return v1

    .line 660
    :cond_0
    monitor-exit p0

    .line 668
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 660
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public connectionRfCloseClientConnection(J)V
    .locals 0
    .param p1, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 749
    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->closeRfCommPortImpl(J)V

    .line 750
    return-void
.end method

.method public native connectionRfCloseServerConnection(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
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
    .line 792
    return-void
.end method

.method public connectionRfOpenClientConnection(Lcom/intel/bluetooth/BluetoothConnectionParams;)J
    .locals 7
    .param p1, "params"    # Lcom/intel/bluetooth/BluetoothConnectionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 739
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->verifyDeviceReady()V

    .line 740
    iget-wide v1, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->address:J

    .line 741
    iget v3, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->channel:I

    iget-boolean v4, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->authenticate:Z

    iget-boolean v5, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->encrypt:Z

    .line 742
    iget v6, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->timeout:I

    move-object v0, p0

    .line 740
    invoke-direct/range {v0 .. v6}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->connectionRfOpenClientConnectionImpl(JIZZI)J

    move-result-wide v0

    return-wide v0
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

    .line 766
    new-array v3, v5, [B

    .line 767
    .local v3, "buf":[B
    and-int/lit16 v0, p3, 0xff

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    move-object v0, p0

    move-wide v1, p1

    .line 768
    invoke-direct/range {v0 .. v5}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->connectionRfWriteImpl(J[BII)V

    .line 769
    return-void
.end method

.method public connectionRfWrite(J[BII)V
    .locals 9
    .param p1, "handle"    # J
    .param p3, "b"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v8, 0xffff

    .line 774
    const v7, 0xffff

    .line 775
    .local v7, "maxNativeBuffer":I
    if-ge p5, v8, :cond_1

    .line 776
    invoke-direct/range {p0 .. p5}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->connectionRfWriteImpl(J[BII)V

    .line 788
    :cond_0
    return-void

    .line 778
    :cond_1
    const/4 v6, 0x0

    .line 779
    .local v6, "done":I
    :goto_0
    if-ge v6, p5, :cond_0

    .line 780
    sub-int v5, p5, v6

    .line 781
    .local v5, "l":I
    if-le v5, v8, :cond_2

    .line 782
    const v5, 0xffff

    .line 784
    :cond_2
    add-int v4, p4, v6

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->connectionRfWriteImpl(J[BII)V

    .line 785
    add-int/2addr v6, v8

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 145
    sget-object v0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->singleInstance:Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    if-eq v0, p0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Destroy invalid instance"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    iget-boolean v0, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->initialized:Z

    if-eqz v0, :cond_1

    .line 149
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->uninitialize()V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->initialized:Z

    .line 151
    const-string v0, "WIDCOMM destroyed"

    invoke-static {v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 153
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->singleInstance:Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    .line 154
    return-void
.end method

.method public native detectBluetoothStack()I
.end method

.method public native enableNativeDebug(Ljava/lang/Class;Z)V
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->destroy()V

    .line 158
    return-void
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
    .line 98
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->nativeBuildFeatures()I

    move-result v0

    .line 101
    .local v0, "nativeBuildFeaturs":I
    if-lez v0, :cond_0

    const/16 v1, 0x8

    .line 99
    :goto_0
    or-int/lit8 v1, v1, 0x13

    return v1

    .line 101
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
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
    .line 171
    new-instance v0, Ljavax/bluetooth/DeviceClass;

    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->getDeviceClassImpl()I

    move-result v1

    invoke-direct {v0, v1}, Ljavax/bluetooth/DeviceClass;-><init>(I)V

    return-object v0
.end method

.method public getLocalDeviceDiscoverable()I
    .locals 1

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->isStackServerUp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->isLocalDeviceDiscoverable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const v0, 0x9e8b33

    .line 216
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native getLocalDeviceName()Ljava/lang/String;
.end method

.method public getLocalDeviceProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x3a

    .line 229
    const-string v5, "bluetooth.connected.devices.max"

    .line 230
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 231
    const-string v5, "7"

    .line 304
    :goto_0
    return-object v5

    .line 233
    :cond_0
    const-string v5, "bluetooth.sd.trans.max"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 234
    const-string v5, "1"

    goto :goto_0

    .line 236
    :cond_1
    const-string v5, "bluetooth.connected.inquiry.scan"

    .line 237
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 238
    const-string v5, "true"

    goto :goto_0

    .line 240
    :cond_2
    const-string v5, "bluetooth.connected.page.scan"

    .line 241
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 242
    const-string v5, "true"

    goto :goto_0

    .line 244
    :cond_3
    const-string v5, "bluetooth.connected.inquiry"

    .line 245
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 246
    const-string v5, "true"

    goto :goto_0

    .line 248
    :cond_4
    const-string v5, "bluetooth.connected.page"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 249
    const-string v5, "true"

    goto :goto_0

    .line 252
    :cond_5
    const-string v5, "bluetooth.sd.attr.retrievable.max"

    .line 253
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 254
    const/16 v5, 0x100

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 256
    :cond_6
    const-string v5, "bluetooth.master.switch"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 257
    const-string v5, "false"

    goto :goto_0

    .line 259
    :cond_7
    const-string v5, "bluetooth.l2cap.receiveMTU.max"

    .line 260
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 261
    const/16 v5, 0x400

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 264
    :cond_8
    const-string v5, "bluecove.radio.version"

    .line 265
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 266
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->getDeviceVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 268
    :cond_9
    const-string v5, "bluecove.radio.manufacturer"

    .line 269
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 270
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->getDeviceManufacturer()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 272
    :cond_a
    const-string v5, "bluecove.stack.version"

    .line 273
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 274
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->getBTWVersionInfo()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 277
    :cond_b
    const-string v5, "bluecove.nativeFunction:"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 279
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 278
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, "functionDescr":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 281
    .local v4, "paramIdx":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_c

    .line 282
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid native function "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; arguments expected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 282
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 285
    :cond_c
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "function":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 286
    invoke-static {v5}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getAddress(Ljava/lang/String;)J

    move-result-wide v0

    .line 288
    .local v0, "address":J
    const-string v5, "getRemoteDeviceVersionInfo"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 289
    invoke-direct {p0, v0, v1}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->getRemoteDeviceVersionInfo(J)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 290
    :cond_d
    const-string v5, "cancelSniffMode"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 291
    invoke-direct {p0, v0, v1}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->cancelSniffMode(J)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 292
    :cond_e
    const-string v5, "setSniffMode"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 293
    invoke-direct {p0, v0, v1}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->setSniffMode(J)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 294
    :cond_f
    const-string v5, "getRemoteDeviceRSSI"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 295
    invoke-direct {p0, v0, v1}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->getRemoteDeviceRSSI(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 296
    :cond_10
    const-string v5, "getRemoteDeviceLinkMode"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 297
    invoke-direct {p0, v0, v1}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->isRemoteDeviceConnected(J)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 298
    invoke-direct {p0, v0, v1}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->getRemoteDeviceLinkMode(J)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 300
    :cond_11
    const-string v5, "disconnected"

    goto/16 :goto_0

    .line 304
    .end local v0    # "address":J
    .end local v2    # "function":Ljava/lang/String;
    .end local v3    # "functionDescr":Ljava/lang/String;
    .end local v4    # "paramIdx":I
    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public getRemoteDeviceFriendlyName(J)Ljava/lang/String;
    .locals 3
    .param p1, "address"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    iget-object v2, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->deviceDiscoveryListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 521
    invoke-virtual {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->peekRemoteDeviceFriendlyName(J)Ljava/lang/String;

    move-result-object v1

    .line 531
    :goto_0
    return-object v1

    .line 524
    :cond_0
    new-instance v0, Lcom/intel/bluetooth/DiscoveryListenerAdapter;

    invoke-direct {v0}, Lcom/intel/bluetooth/DiscoveryListenerAdapter;-><init>()V

    .line 525
    .local v0, "listener":Ljavax/bluetooth/DiscoveryListener;
    const v2, 0x9e8b33

    invoke-virtual {p0, v2, v0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->startInquiry(ILjavax/bluetooth/DiscoveryListener;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 526
    invoke-virtual {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->peekRemoteDeviceFriendlyName(J)Ljava/lang/String;

    move-result-object v1

    .line 527
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->cancelInquiry(Ljavax/bluetooth/DiscoveryListener;)Z

    goto :goto_0

    .line 531
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method native getRemoteDeviceFriendlyName(JII)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getStackID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "widcomm"

    return-object v0
.end method

.method public initialize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 129
    sget-object v0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->singleInstance:Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljavax/bluetooth/BluetoothStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Only one instance of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->getStackID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stack supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-direct {v0, v1}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->initializeImpl()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "WIDCOMM BluetoothStack not found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->initialized:Z

    .line 137
    sput-object p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->singleInstance:Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    .line 138
    return-void
.end method

.method public native initializeImpl()Z
.end method

.method public isCurrentThreadInterruptedCallback()Z
    .locals 1

    .prologue
    .line 314
    invoke-static {}, Lcom/intel/bluetooth/UtilsJavaSE;->isCurrentThreadInterrupted()Z

    move-result v0

    return v0
.end method

.method public native isLocalDeviceDiscoverable()Z
.end method

.method public native isLocalDevicePowerOn()Z
.end method

.method public native isNativeCodeLoaded()Z
.end method

.method public isRemoteDeviceAuthenticated(J)Ljava/lang/Boolean;
    .locals 1
    .param p1, "address"    # J

    .prologue
    .line 326
    const/4 v0, 0x0

    return-object v0
.end method

.method public isRemoteDeviceTrusted(J)Ljava/lang/Boolean;
    .locals 1
    .param p1, "address"    # J

    .prologue
    .line 322
    const/4 v0, 0x0

    return-object v0
.end method

.method public native l2CloseClientConnection(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native l2CloseServerConnection(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
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
    .line 1189
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

.method public l2GetSecurityOpt(JI)I
    .locals 0
    .param p1, "handle"    # J
    .param p3, "expected"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1136
    return p3
.end method

.method public native l2GetTransmitMTU(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public l2OpenClientConnection(Lcom/intel/bluetooth/BluetoothConnectionParams;II)J
    .locals 9
    .param p1, "params"    # Lcom/intel/bluetooth/BluetoothConnectionParams;
    .param p2, "receiveMTU"    # I
    .param p3, "transmitMTU"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1041
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->verifyDeviceReady()V

    .line 1042
    invoke-direct {p0, p2, p3}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->validateMTU(II)V

    .line 1043
    iget-wide v1, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->address:J

    iget v3, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->channel:I

    .line 1044
    iget-boolean v4, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->authenticate:Z

    iget-boolean v5, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->encrypt:Z

    .line 1045
    iget v8, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->timeout:I

    move-object v0, p0

    move v6, p2

    move v7, p3

    .line 1043
    invoke-direct/range {v0 .. v8}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->l2OpenClientConnectionImpl(JIZZIII)J

    move-result-wide v0

    return-wide v0
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
    .line 1127
    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->l2ServerCloseImpl(J)V

    .line 1128
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
    .line 1071
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->verifyDeviceReady()V

    .line 1072
    move/from16 v0, p3

    invoke-direct {p0, p2, v0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->validateMTU(II)V

    .line 1073
    iget-object v1, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->uuid:Ljavax/bluetooth/UUID;

    invoke-static {v1}, Lcom/intel/bluetooth/Utils;->UUIDToByteArray(Ljavax/bluetooth/UUID;)[B

    move-result-object v2

    .line 1074
    .local v2, "uuidValue":[B
    iget-boolean v3, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->authenticate:Z

    .line 1075
    iget-boolean v4, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->encrypt:Z

    iget-object v5, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->name:Ljava/lang/String;

    .line 1076
    iget v8, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->bluecove_ext_psm:I

    move-object v1, p0

    move v6, p2

    move/from16 v7, p3

    .line 1074
    invoke-direct/range {v1 .. v8}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->l2ServerOpenImpl([BZZLjava/lang/String;III)J

    move-result-wide v10

    .line 1078
    .local v10, "handle":J
    invoke-virtual {p0, v10, v11}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->l2ServerPSM(J)I

    move-result v9

    .line 1080
    .local v9, "channel":I
    long-to-int v12, v10

    .line 1083
    .local v12, "serviceRecordHandle":I
    iget-object v1, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->uuid:Ljavax/bluetooth/UUID;

    iget-object v3, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->name:Ljava/lang/String;

    .line 1082
    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v9, v1, v3}, Lcom/intel/bluetooth/ServiceRecordImpl;->populateL2CAPAttributes(IILjavax/bluetooth/UUID;Ljava/lang/String;)V

    .line 1085
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
    .line 1097
    const/16 v0, 0x6c

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->sdpServiceUpdateServiceRecord(JCLcom/intel/bluetooth/ServiceRecordImpl;)V

    .line 1098
    return-void
.end method

.method native peekRemoteDeviceFriendlyName(J)Ljava/lang/String;
.end method

.method public populateServicesRecordAttributeValues(Lcom/intel/bluetooth/ServiceRecordImpl;[I)Z
    .locals 11
    .param p1, "serviceRecord"    # Lcom/intel/bluetooth/ServiceRecordImpl;
    .param p2, "attrIDs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x30

    .line 679
    array-length v8, p2

    const/16 v9, 0x100

    if-le v8, v9, :cond_0

    .line 680
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 682
    :cond_0
    const/4 v0, 0x0

    .line 683
    .local v0, "anyRetrived":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, p2

    if-lt v2, v8, :cond_1

    .line 728
    return v0

    .line 684
    :cond_1
    aget v3, p2, v2

    .line 687
    .local v3, "id":I
    :try_start_0
    invoke-virtual {p1}, Lcom/intel/bluetooth/ServiceRecordImpl;->getHandle()J

    move-result-wide v8

    .line 686
    invoke-direct {p0, v3, v8, v9}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->getServiceAttribute(IJ)[B

    move-result-object v7

    .line 688
    .local v7, "sdpStruct":[B
    if-eqz v7, :cond_3

    .line 693
    new-instance v8, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;

    .line 694
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 693
    invoke-direct {v8, v9}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 694
    invoke-virtual {v8}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->readElement()Ljavax/bluetooth/DataElement;

    move-result-object v1

    .line 698
    .local v1, "element":Ljavax/bluetooth/DataElement;
    const/4 v8, 0x4

    if-ne v3, v8, :cond_2

    .line 700
    invoke-virtual {v1}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 699
    check-cast v6, Ljava/util/Enumeration;

    .line 701
    .local v6, "protocolsSeqEnum":Ljava/util/Enumeration;
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 703
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/bluetooth/DataElement;

    .line 704
    .local v5, "protocolElement":Ljavax/bluetooth/DataElement;
    invoke-virtual {v5}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v8

    if-eq v8, v10, :cond_2

    .line 705
    new-instance v4, Ljavax/bluetooth/DataElement;

    .line 706
    const/16 v8, 0x30

    .line 705
    invoke-direct {v4, v8}, Ljavax/bluetooth/DataElement;-><init>(I)V

    .line 707
    .local v4, "newMainSeq":Ljavax/bluetooth/DataElement;
    invoke-virtual {v4, v1}, Ljavax/bluetooth/DataElement;->addElement(Ljavax/bluetooth/DataElement;)V

    .line 708
    move-object v1, v4

    .line 713
    .end local v4    # "newMainSeq":Ljavax/bluetooth/DataElement;
    .end local v5    # "protocolElement":Ljavax/bluetooth/DataElement;
    .end local v6    # "protocolsSeqEnum":Ljava/util/Enumeration;
    :cond_2
    invoke-virtual {p1, v3, v1}, Lcom/intel/bluetooth/ServiceRecordImpl;->populateAttributeValue(ILjavax/bluetooth/DataElement;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    const/4 v0, 0x1

    .line 683
    .end local v1    # "element":Ljavax/bluetooth/DataElement;
    .end local v7    # "sdpStruct":[B
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 721
    :catch_0
    move-exception v8

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
    .line 336
    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->getRemoteDeviceRSSI(J)I

    move-result v0

    return v0
.end method

.method public removeAuthenticationWithRemoteDevice(J)V
    .locals 0
    .param p1, "address"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->removeAuthenticationWithRemoteDeviceImpl(J)V

    .line 372
    return-void
.end method

.method public requireNativeLibraries()[Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;
    .locals 1

    .prologue
    .line 119
    const-string v0, "bluecove"

    invoke-static {v0}, Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;->library(Ljava/lang/String;)[Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;

    move-result-object v0

    return-object v0
.end method

.method public retrieveDevices(I)[Ljavax/bluetooth/RemoteDevice;
    .locals 1
    .param p1, "option"    # I

    .prologue
    .line 318
    const/4 v0, 0x0

    return-object v0
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
    .line 805
    const/4 v0, 0x0

    return v0
.end method

.method public rfGetSecurityOpt(JI)I
    .locals 0
    .param p1, "handle"    # J
    .param p3, "expected"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 795
    return p3
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
    .line 1002
    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->rfServerCloseImpl(J)V

    .line 1003
    return-void
.end method

.method public rfServerOpen(Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;Lcom/intel/bluetooth/ServiceRecordImpl;)J
    .locals 12
    .param p1, "params"    # Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;
    .param p2, "serviceRecord"    # Lcom/intel/bluetooth/ServiceRecordImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 816
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->verifyDeviceReady()V

    .line 817
    iget-object v0, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->uuid:Ljavax/bluetooth/UUID;

    invoke-static {v0}, Lcom/intel/bluetooth/Utils;->UUIDToByteArray(Ljavax/bluetooth/UUID;)[B

    move-result-object v1

    .line 818
    .local v1, "uuidValue":[B
    iget-boolean v0, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->obex:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 820
    .local v2, "uuidValue2":[B
    :goto_0
    iget-boolean v3, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->obex:Z

    .line 821
    iget-object v4, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->name:Ljava/lang/String;

    iget-boolean v5, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->authenticate:Z

    iget-boolean v6, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->encrypt:Z

    move-object v0, p0

    .line 820
    invoke-direct/range {v0 .. v6}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->rfServerOpenImpl([B[BZLjava/lang/String;ZZ)J

    move-result-wide v10

    .line 822
    .local v10, "handle":J
    invoke-direct {p0, v10, v11}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->rfServerSCN(J)I

    move-result v6

    .line 823
    .local v6, "channel":I
    const-string v0, "serverSCN"

    int-to-long v7, v6

    invoke-static {v0, v7, v8}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    .line 824
    move-wide v4, v10

    .line 827
    .local v4, "serviceRecordHandle":J
    iget-object v7, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->uuid:Ljavax/bluetooth/UUID;

    iget-object v8, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->name:Ljava/lang/String;

    iget-boolean v9, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->obex:Z

    move-object v3, p2

    .line 826
    invoke-virtual/range {v3 .. v9}, Lcom/intel/bluetooth/ServiceRecordImpl;->populateRFCOMMAttributes(JILjavax/bluetooth/UUID;Ljava/lang/String;Z)V

    .line 829
    return-wide v10

    .line 819
    .end local v2    # "uuidValue2":[B
    .end local v4    # "serviceRecordHandle":J
    .end local v6    # "channel":I
    .end local v10    # "handle":J
    :cond_0
    sget-object v0, Lcom/intel/bluetooth/BluetoothConsts;->SERIAL_PORT_UUID:Ljavax/bluetooth/UUID;

    invoke-static {v0}, Lcom/intel/bluetooth/Utils;->UUIDToByteArray(Ljavax/bluetooth/UUID;)[B

    move-result-object v2

    goto :goto_0
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
    .line 849
    const/16 v0, 0x72

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->sdpServiceUpdateServiceRecord(JCLcom/intel/bluetooth/ServiceRecordImpl;)V

    .line 850
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
    .line 544
    new-instance v1, Lcom/intel/bluetooth/BluetoothStackWIDCOMM$2;

    invoke-direct {v1, p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM$2;-><init>(Lcom/intel/bluetooth/BluetoothStackWIDCOMM;)V

    .local v1, "searchRunnable":Lcom/intel/bluetooth/SearchServicesRunnable;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 647
    invoke-static/range {v0 .. v5}, Lcom/intel/bluetooth/SearchServicesThread;->startSearchServices(Lcom/intel/bluetooth/BluetoothStack;Lcom/intel/bluetooth/SearchServicesRunnable;[I[Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DiscoveryListener;)I

    move-result v0

    return v0
.end method

.method public setLocalDeviceDiscoverable(I)Z
    .locals 2
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->getLocalDeviceDiscoverable()I

    move-result v0

    .line 194
    .local v0, "curentMode":I
    if-ne v0, p1, :cond_0

    .line 195
    const/4 v1, 0x1

    .line 197
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLocalDeviceServiceClasses(I)V
    .locals 2
    .param p1, "classOfDevice"    # I

    .prologue
    .line 180
    new-instance v0, Lcom/intel/bluetooth/NotSupportedRuntimeException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->getStackID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intel/bluetooth/NotSupportedRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startInquiry(ILjavax/bluetooth/DiscoveryListener;)Z
    .locals 3
    .param p1, "accessCode"    # I
    .param p2, "listener"    # Ljavax/bluetooth/DiscoveryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 397
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->deviceDiscoveryListeners:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 399
    const-string v1, "bluecove.inquiry.report_asap"

    const/4 v2, 0x0

    .line 398
    invoke-static {v1, v2}, Lcom/intel/bluetooth/BlueCoveImpl;->getConfigProperty(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->deviceDiscoveryListenerFoundDevices:Ljava/util/Hashtable;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {v1, p2, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    :cond_0
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->deviceDiscoveryListenerReportedDevices:Ljava/util/Hashtable;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, p2, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    new-instance v0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM$1;

    invoke-direct {v0, p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM$1;-><init>(Lcom/intel/bluetooth/BluetoothStackWIDCOMM;)V

    .line 492
    .local v0, "inquiryRunnable":Lcom/intel/bluetooth/DeviceInquiryRunnable;
    invoke-static {p0, v0, p1, p2}, Lcom/intel/bluetooth/DeviceInquiryThread;->startInquiry(Lcom/intel/bluetooth/BluetoothStack;Lcom/intel/bluetooth/DeviceInquiryRunnable;ILjavax/bluetooth/DiscoveryListener;)Z

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->getStackID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

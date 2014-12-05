.class public Lcom/intel/bluetooth/BluetoothStackAndroid;
.super Ljava/lang/Object;
.source "BluetoothStackAndroid.java"

# interfaces
.implements Lcom/intel/bluetooth/BluetoothStack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/bluetooth/BluetoothStackAndroid$DiscoveryBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ATTR_RETRIEVABLE_MAX:I = 0x100

.field private static final REQUEST_CODE_CHANGE_DISCOVERABLE:I

.field private static final UUID_OBEX:Ljavax/bluetooth/UUID;

.field private static final UUID_OBEX_FILE_TRANSFER:Ljavax/bluetooth/UUID;

.field private static final UUID_OBEX_OBJECT_PUSH:Ljavax/bluetooth/UUID;


# instance fields
.field private context:Landroid/content/Context;

.field private justEnabled:Z

.field private listenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/bluetooth/DiscoveryListener;",
            "Lcom/intel/bluetooth/BluetoothStackAndroid$DiscoveryBroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private localBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private obexUUIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/bluetooth/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private propertiesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    new-instance v0, Ljavax/bluetooth/UUID;

    const-wide/16 v1, 0x8

    invoke-direct {v0, v1, v2}, Ljavax/bluetooth/UUID;-><init>(J)V

    sput-object v0, Lcom/intel/bluetooth/BluetoothStackAndroid;->UUID_OBEX:Ljavax/bluetooth/UUID;

    .line 76
    new-instance v0, Ljavax/bluetooth/UUID;

    const-wide/16 v1, 0x1105

    invoke-direct {v0, v1, v2}, Ljavax/bluetooth/UUID;-><init>(J)V

    sput-object v0, Lcom/intel/bluetooth/BluetoothStackAndroid;->UUID_OBEX_OBJECT_PUSH:Ljavax/bluetooth/UUID;

    .line 77
    new-instance v0, Ljavax/bluetooth/UUID;

    const-wide/16 v1, 0x1106

    invoke-direct {v0, v1, v2}, Ljavax/bluetooth/UUID;-><init>(J)V

    sput-object v0, Lcom/intel/bluetooth/BluetoothStackAndroid;->UUID_OBEX_FILE_TRANSFER:Ljavax/bluetooth/UUID;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/intel/bluetooth/BluetoothStackAndroid;Landroid/bluetooth/BluetoothDevice;)Ljavax/bluetooth/RemoteDevice;
    .locals 1

    .prologue
    .line 717
    invoke-direct {p0, p1}, Lcom/intel/bluetooth/BluetoothStackAndroid;->createRemoteDevice(Landroid/bluetooth/BluetoothDevice;)Ljavax/bluetooth/RemoteDevice;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/intel/bluetooth/BluetoothStackAndroid;Landroid/bluetooth/BluetoothClass;)Ljavax/bluetooth/DeviceClass;
    .locals 1

    .prologue
    .line 725
    invoke-direct {p0, p1}, Lcom/intel/bluetooth/BluetoothStackAndroid;->createDeviceClass(Landroid/bluetooth/BluetoothClass;)Ljavax/bluetooth/DeviceClass;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/intel/bluetooth/BluetoothStackAndroid;Ljavax/bluetooth/UUID;)Ljava/util/UUID;
    .locals 1

    .prologue
    .line 736
    invoke-direct {p0, p1}, Lcom/intel/bluetooth/BluetoothStackAndroid;->createJavaUUID(Ljavax/bluetooth/UUID;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/intel/bluetooth/BluetoothStackAndroid;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/intel/bluetooth/BluetoothStackAndroid;->formatAddressInAndroid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/intel/bluetooth/BluetoothStackAndroid;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->localBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/intel/bluetooth/BluetoothStackAndroid;)Ljava/util/List;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->obexUUIDs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Lcom/intel/bluetooth/BluetoothStackAndroid;Ljavax/bluetooth/RemoteDevice;Landroid/bluetooth/BluetoothSocket;Ljavax/bluetooth/UUID;Z)Ljavax/bluetooth/ServiceRecord;
    .locals 1

    .prologue
    .line 756
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/intel/bluetooth/BluetoothStackAndroid;->createServiceRecord(Ljavax/bluetooth/RemoteDevice;Landroid/bluetooth/BluetoothSocket;Ljavax/bluetooth/UUID;Z)Ljavax/bluetooth/ServiceRecord;

    move-result-object v0

    return-object v0
.end method

.method private createDeviceClass(Landroid/bluetooth/BluetoothClass;)Ljavax/bluetooth/DeviceClass;
    .locals 4
    .param p1, "bluetoothClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    .line 726
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v1

    .line 727
    .local v1, "record":I
    const/16 v2, 0x4000

    .local v2, "service":I
    :goto_0
    const/high16 v3, 0x800000

    if-lt v2, v3, :cond_0

    .line 732
    new-instance v0, Ljavax/bluetooth/DeviceClass;

    invoke-direct {v0, v1}, Ljavax/bluetooth/DeviceClass;-><init>(I)V

    .line 733
    .local v0, "deviceClass":Ljavax/bluetooth/DeviceClass;
    return-object v0

    .line 728
    .end local v0    # "deviceClass":Ljavax/bluetooth/DeviceClass;
    :cond_0
    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 729
    or-int/2addr v1, v2

    .line 727
    :cond_1
    shl-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private createJavaUUID(Ljavax/bluetooth/UUID;)Ljava/util/UUID;
    .locals 21
    .param p1, "jsr82UUID"    # Ljavax/bluetooth/UUID;

    .prologue
    .line 737
    invoke-virtual/range {p1 .. p1}, Ljavax/bluetooth/UUID;->toString()Ljava/lang/String;

    move-result-object v18

    .line 738
    .local v18, "uuidString":Ljava/lang/String;
    const/16 v19, 0x0

    const/16 v20, 0x8

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 739
    .local v6, "part1":Ljava/lang/String;
    const/16 v19, 0x8

    const/16 v20, 0x10

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 740
    .local v9, "part2":Ljava/lang/String;
    const/16 v19, 0x10

    const/16 v20, 0x18

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 741
    .local v12, "part3":Ljava/lang/String;
    const/16 v19, 0x18

    const/16 v20, 0x20

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 743
    .local v15, "part4":Ljava/lang/String;
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-static {v6, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    .line 744
    .local v7, "part1Long":J
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-static {v9, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v10

    .line 745
    .local v10, "part2Long":J
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-static {v12, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v13

    .line 746
    .local v13, "part3Long":J
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-static {v15, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v16

    .line 748
    .local v16, "part4Long":J
    const/16 v19, 0x20

    shl-long v19, v7, v19

    or-long v4, v19, v10

    .line 749
    .local v4, "mostSigBits":J
    const/16 v19, 0x20

    shl-long v19, v13, v19

    or-long v2, v19, v16

    .line 751
    .local v2, "leastSigBits":J
    new-instance v1, Ljava/util/UUID;

    invoke-direct {v1, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    .line 753
    .local v1, "javaUUID":Ljava/util/UUID;
    return-object v1
.end method

.method private createRemoteDevice(Landroid/bluetooth/BluetoothDevice;)Ljavax/bluetooth/RemoteDevice;
    .locals 6
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 718
    .line 719
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/intel/bluetooth/BluetoothStackAndroid;->getAddressAsLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 720
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    .line 721
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v5, 0xc

    if-ne v1, v5, :cond_0

    const/4 v1, 0x1

    .line 718
    :goto_0
    invoke-static {p0, v2, v3, v4, v1}, Lcom/intel/bluetooth/RemoteDeviceHelper;->createRemoteDevice(Lcom/intel/bluetooth/BluetoothStack;JLjava/lang/String;Z)Ljavax/bluetooth/RemoteDevice;

    move-result-object v0

    .line 722
    .local v0, "remoteDevice":Ljavax/bluetooth/RemoteDevice;
    return-object v0

    .line 721
    .end local v0    # "remoteDevice":Ljavax/bluetooth/RemoteDevice;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createServiceRecord(Ljavax/bluetooth/RemoteDevice;Landroid/bluetooth/BluetoothSocket;Ljavax/bluetooth/UUID;Z)Ljavax/bluetooth/ServiceRecord;
    .locals 6
    .param p1, "remoteDevice"    # Ljavax/bluetooth/RemoteDevice;
    .param p2, "socket"    # Landroid/bluetooth/BluetoothSocket;
    .param p3, "uuid"    # Ljavax/bluetooth/UUID;
    .param p4, "obex"    # Z

    .prologue
    .line 758
    new-instance v0, Lcom/intel/bluetooth/AndroidServiceRecord;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/intel/bluetooth/AndroidServiceRecord;-><init>(Lcom/intel/bluetooth/BluetoothStack;Ljavax/bluetooth/RemoteDevice;Landroid/bluetooth/BluetoothSocket;Ljavax/bluetooth/UUID;Z)V

    .line 761
    .local v0, "record":Ljavax/bluetooth/ServiceRecord;
    return-object v0
.end method

.method private formatAddressInAndroid(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "bluetoothAddress"    # Ljava/lang/String;

    .prologue
    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "000000000000"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 326
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 325
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 328
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x2

    .local v1, "index":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 331
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 329
    :cond_0
    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 328
    add-int/lit8 v1, v1, 0x3

    goto :goto_0
.end method

.method private getAddressAsLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 335
    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getAddressAsString(J)Ljava/lang/String;
    .locals 2
    .param p1, "address"    # J

    .prologue
    .line 320
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "addressHex":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/intel/bluetooth/BluetoothStackAndroid;->formatAddressInAndroid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
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
    .line 277
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
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public cancelInquiry(Ljavax/bluetooth/DiscoveryListener;)Z
    .locals 2
    .param p1, "listener"    # Ljavax/bluetooth/DiscoveryListener;

    .prologue
    .line 308
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->listenerMap:Ljava/util/Map;

    .line 309
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/bluetooth/BluetoothStackAndroid$DiscoveryBroadcastReceiver;

    .line 310
    .local v0, "discoveryBroadcastReceiver":Lcom/intel/bluetooth/BluetoothStackAndroid$DiscoveryBroadcastReceiver;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/intel/bluetooth/BluetoothStackAndroid$DiscoveryBroadcastReceiver;->access$0(Lcom/intel/bluetooth/BluetoothStackAndroid$DiscoveryBroadcastReceiver;Z)V

    .line 311
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->localBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    move-result v1

    return v1
.end method

.method public cancelServiceSearch(I)Z
    .locals 2
    .param p1, "transID"    # I

    .prologue
    .line 407
    invoke-static {p1}, Lcom/intel/bluetooth/SearchServicesThread;->getServiceSearchThread(I)Lcom/intel/bluetooth/SearchServicesThread;

    move-result-object v0

    .line 408
    .local v0, "sst":Lcom/intel/bluetooth/SearchServicesThread;
    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {v0}, Lcom/intel/bluetooth/SearchServicesThread;->setTerminated()Z

    move-result v1

    .line 411
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public connectionRfCloseClientConnection(J)V
    .locals 1
    .param p1, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    invoke-static {p1, p2}, Lcom/intel/bluetooth/AndroidBluetoothConnection;->getBluetoothConnection(J)Lcom/intel/bluetooth/AndroidBluetoothConnection;

    move-result-object v0

    .line 472
    .local v0, "bluetoothConnection":Lcom/intel/bluetooth/AndroidBluetoothConnection;
    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {v0}, Lcom/intel/bluetooth/AndroidBluetoothConnection;->close()V

    .line 475
    :cond_0
    return-void
.end method

.method public connectionRfCloseServerConnection(J)V
    .locals 1
    .param p1, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    invoke-static {p1, p2}, Lcom/intel/bluetooth/AndroidBluetoothConnection;->getBluetoothConnection(J)Lcom/intel/bluetooth/AndroidBluetoothConnection;

    move-result-object v0

    .line 481
    .local v0, "bluetoothConnection":Lcom/intel/bluetooth/AndroidBluetoothConnection;
    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0}, Lcom/intel/bluetooth/AndroidBluetoothConnection;->close()V

    .line 484
    :cond_0
    return-void
.end method

.method public connectionRfFlush(J)V
    .locals 2
    .param p1, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 612
    invoke-static {p1, p2}, Lcom/intel/bluetooth/AndroidBluetoothConnection;->getBluetoothConnection(J)Lcom/intel/bluetooth/AndroidBluetoothConnection;

    move-result-object v0

    .line 613
    .local v0, "bluetoothConnection":Lcom/intel/bluetooth/AndroidBluetoothConnection;
    invoke-virtual {v0}, Lcom/intel/bluetooth/AndroidBluetoothConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 614
    .local v1, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 615
    return-void
.end method

.method public connectionRfOpenClientConnection(Lcom/intel/bluetooth/BluetoothConnectionParams;)J
    .locals 16
    .param p1, "params"    # Lcom/intel/bluetooth/BluetoothConnectionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    move-object/from16 v1, p1

    check-cast v1, Lcom/intel/bluetooth/AndroidBluetoothConnectionParams;

    .line 424
    .local v1, "androidParams":Lcom/intel/bluetooth/AndroidBluetoothConnectionParams;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/intel/bluetooth/BluetoothStackAndroid;->localBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 425
    iget-wide v12, v1, Lcom/intel/bluetooth/AndroidBluetoothConnectionParams;->address:J

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/intel/bluetooth/BluetoothStackAndroid;->getAddressAsString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 426
    .local v3, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    new-instance v8, Ljavax/bluetooth/UUID;

    iget-object v11, v1, Lcom/intel/bluetooth/AndroidBluetoothConnectionParams;->serviceUUID:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct {v8, v11, v12}, Ljavax/bluetooth/UUID;-><init>(Ljava/lang/String;Z)V

    .line 428
    .local v8, "jsr82UUID":Ljavax/bluetooth/UUID;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/intel/bluetooth/BluetoothStackAndroid;->createJavaUUID(Ljavax/bluetooth/UUID;)Ljava/util/UUID;

    move-result-object v7

    .line 429
    .local v7, "javaUUID":Ljava/util/UUID;
    const/4 v9, 0x1

    .line 430
    .local v9, "secure":Z
    const/4 v5, 0x0

    .line 431
    .local v5, "createInsecureRfcommSocketToServiceRecordMethod":Ljava/lang/reflect/Method;
    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/intel/bluetooth/BluetoothConnectionParams;->encrypt:Z

    if-nez v11, :cond_0

    .line 433
    :try_start_0
    const-class v11, Landroid/bluetooth/BluetoothDevice;

    .line 434
    const-string v12, "createInsecureRfcommSocketToServiceRecord"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    .line 435
    const-class v15, Ljava/util/UUID;

    aput-object v15, v13, v14

    .line 434
    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 436
    const/4 v9, 0x0

    .line 441
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    .line 443
    invoke-virtual {v3, v7}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v10

    .line 459
    .local v10, "socket":Landroid/bluetooth/BluetoothSocket;
    :goto_1
    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/intel/bluetooth/AndroidBluetoothConnection;->createConnection(Landroid/bluetooth/BluetoothSocket;Z)Lcom/intel/bluetooth/AndroidBluetoothConnection;

    move-result-object v2

    .line 460
    .local v2, "bluetoothConnection":Lcom/intel/bluetooth/AndroidBluetoothConnection;
    invoke-virtual {v2}, Lcom/intel/bluetooth/AndroidBluetoothConnection;->getHandle()J

    move-result-wide v11

    return-wide v11

    .line 447
    .end local v2    # "bluetoothConnection":Lcom/intel/bluetooth/AndroidBluetoothConnection;
    .end local v10    # "socket":Landroid/bluetooth/BluetoothSocket;
    :cond_1
    const/4 v11, 0x1

    :try_start_1
    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    invoke-virtual {v5, v3, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 446
    check-cast v10, Landroid/bluetooth/BluetoothSocket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v10    # "socket":Landroid/bluetooth/BluetoothSocket;
    goto :goto_1

    .line 448
    .end local v10    # "socket":Landroid/bluetooth/BluetoothSocket;
    :catch_0
    move-exception v6

    .line 449
    .local v6, "ex":Ljava/lang/Exception;
    instance-of v11, v6, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v11, :cond_2

    .line 450
    invoke-virtual {v6}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    .line 451
    .local v4, "cause":Ljava/lang/Throwable;
    instance-of v11, v4, Ljava/io/IOException;

    if-eqz v11, :cond_2

    .line 452
    check-cast v4, Ljava/io/IOException;

    .end local v4    # "cause":Ljava/lang/Throwable;
    throw v4

    .line 455
    :cond_2
    new-instance v11, Ljava/io/IOException;

    invoke-direct {v11}, Ljava/io/IOException;-><init>()V

    throw v11

    .line 437
    .end local v6    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v11

    goto :goto_0
.end method

.method public connectionRfRead(J)I
    .locals 3
    .param p1, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-static {p1, p2}, Lcom/intel/bluetooth/AndroidBluetoothConnection;->getBluetoothConnection(J)Lcom/intel/bluetooth/AndroidBluetoothConnection;

    move-result-object v0

    .line 571
    .local v0, "bluetoothConnection":Lcom/intel/bluetooth/AndroidBluetoothConnection;
    invoke-virtual {v0}, Lcom/intel/bluetooth/AndroidBluetoothConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 572
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    return v2
.end method

.method public connectionRfRead(J[BII)I
    .locals 5
    .param p1, "handle"    # J
    .param p3, "b"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I

    .prologue
    .line 579
    :try_start_0
    invoke-static {p1, p2}, Lcom/intel/bluetooth/AndroidBluetoothConnection;->getBluetoothConnection(J)Lcom/intel/bluetooth/AndroidBluetoothConnection;

    move-result-object v0

    .line 580
    .local v0, "bluetoothConnection":Lcom/intel/bluetooth/AndroidBluetoothConnection;
    invoke-virtual {v0}, Lcom/intel/bluetooth/AndroidBluetoothConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 581
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v2, p3, p4, p5}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 585
    .end local v0    # "bluetoothConnection":Lcom/intel/bluetooth/AndroidBluetoothConnection;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :goto_0
    return v3

    .line 582
    :catch_0
    move-exception v1

    .line 583
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "error in com.intel.BluetoothStackAndroid.connectionRfread"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 585
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public connectionRfReadAvailable(J)I
    .locals 3
    .param p1, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 590
    invoke-static {p1, p2}, Lcom/intel/bluetooth/AndroidBluetoothConnection;->getBluetoothConnection(J)Lcom/intel/bluetooth/AndroidBluetoothConnection;

    move-result-object v0

    .line 591
    .local v0, "bluetoothConnection":Lcom/intel/bluetooth/AndroidBluetoothConnection;
    invoke-virtual {v0}, Lcom/intel/bluetooth/AndroidBluetoothConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 592
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    return v2
.end method

.method public connectionRfWrite(JI)V
    .locals 2
    .param p1, "handle"    # J
    .param p3, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 597
    invoke-static {p1, p2}, Lcom/intel/bluetooth/AndroidBluetoothConnection;->getBluetoothConnection(J)Lcom/intel/bluetooth/AndroidBluetoothConnection;

    move-result-object v0

    .line 598
    .local v0, "bluetoothConnection":Lcom/intel/bluetooth/AndroidBluetoothConnection;
    invoke-virtual {v0}, Lcom/intel/bluetooth/AndroidBluetoothConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 599
    .local v1, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v1, p3}, Ljava/io/OutputStream;->write(I)V

    .line 600
    return-void
.end method

.method public connectionRfWrite(J[BII)V
    .locals 2
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
    .line 605
    invoke-static {p1, p2}, Lcom/intel/bluetooth/AndroidBluetoothConnection;->getBluetoothConnection(J)Lcom/intel/bluetooth/AndroidBluetoothConnection;

    move-result-object v0

    .line 606
    .local v0, "bluetoothConnection":Lcom/intel/bluetooth/AndroidBluetoothConnection;
    invoke-virtual {v0}, Lcom/intel/bluetooth/AndroidBluetoothConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 607
    .local v1, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v1, p3, p4, p5}, Ljava/io/OutputStream;->write([BII)V

    .line 608
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->justEnabled:Z

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->localBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 184
    :cond_0
    return-void
.end method

.method public detectBluetoothStack()I
    .locals 1

    .prologue
    .line 93
    const/16 v0, 0x200

    return v0
.end method

.method public enableNativeDebug(Ljava/lang/Class;Z)V
    .locals 0
    .param p1, "nativeDebugCallback"    # Ljava/lang/Class;
    .param p2, "on"    # Z

    .prologue
    .line 98
    return-void
.end method

.method public getConnectionRfRemoteAddress(J)J
    .locals 4
    .param p1, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 556
    invoke-static {p1, p2}, Lcom/intel/bluetooth/AndroidBluetoothConnection;->getBluetoothConnection(J)Lcom/intel/bluetooth/AndroidBluetoothConnection;

    move-result-object v1

    .line 557
    .local v1, "bluetoothConnection":Lcom/intel/bluetooth/AndroidBluetoothConnection;
    invoke-virtual {v1}, Lcom/intel/bluetooth/AndroidBluetoothConnection;->getSocket()Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 558
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, "address":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/intel/bluetooth/BluetoothStackAndroid;->getAddressAsLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method public getFeatureSet()I
    .locals 1

    .prologue
    .line 196
    const/16 v0, 0xa

    return v0
.end method

.method public getLibraryVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 89
    const v0, 0x1eabf4

    return v0
.end method

.method public getLocalDeviceBluetoothAddress()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->localBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalDeviceClass()Ljavax/bluetooth/DeviceClass;
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalDeviceDiscoverable()I
    .locals 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->localBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 263
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected scan mode returned: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    iget-object v2, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->localBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :pswitch_1
    const/4 v0, 0x0

    .line 261
    :goto_0
    return v0

    .line 259
    :pswitch_2
    const v0, 0x9e8b00

    goto :goto_0

    .line 261
    :pswitch_3
    const v0, 0x9e8b33

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getLocalDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->localBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalDeviceProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->propertiesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteDeviceFriendlyName(J)Ljava/lang/String;
    .locals 2
    .param p1, "address"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothStackAndroid;->getAddressAsString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "addressString":Ljava/lang/String;
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->localBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getStackID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const-string v0, "android_2.x"

    return-object v0
.end method

.method public initialize()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 101
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v10

    iput-object v10, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->localBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 102
    iget-object v10, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->localBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v10, :cond_0

    .line 103
    new-instance v9, Ljavax/bluetooth/BluetoothStateException;

    .line 104
    const-string v10, "Bluetooth isn\'t supported on this device"

    .line 103
    invoke-direct {v9, v10}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 108
    :cond_0
    const-string v10, "bluecove.android.context"

    invoke-static {v10}, Lcom/intel/bluetooth/BlueCoveImpl;->getConfigObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 109
    .local v3, "contextObject":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 110
    new-instance v9, Ljavax/bluetooth/BluetoothStateException;

    .line 111
    const-string v10, "Property bluecove.android.context MUST be correctly set before initializing the stack. Call BlueCoveImpl.setConfigObject(BluecoveConfigProperties.PROPERTY_ANDROID_CONTEXT, <a reference to a context>) before calling LocalDevice.getLocalDevice()"

    .line 110
    invoke-direct {v9, v10}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 117
    :cond_1
    check-cast v3, Landroid/content/Context;

    .end local v3    # "contextObject":Ljava/lang/Object;
    iput-object v3, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->context:Landroid/content/Context;

    .line 119
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->listenerMap:Ljava/util/Map;

    .line 121
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->obexUUIDs:Ljava/util/List;

    .line 122
    iget-object v10, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->obexUUIDs:Ljava/util/List;

    sget-object v11, Lcom/intel/bluetooth/BluetoothStackAndroid;->UUID_OBEX:Ljavax/bluetooth/UUID;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v10, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->obexUUIDs:Ljava/util/List;

    sget-object v11, Lcom/intel/bluetooth/BluetoothStackAndroid;->UUID_OBEX_OBJECT_PUSH:Ljavax/bluetooth/UUID;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v10, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->obexUUIDs:Ljava/util/List;

    sget-object v11, Lcom/intel/bluetooth/BluetoothStackAndroid;->UUID_OBEX_FILE_TRANSFER:Ljavax/bluetooth/UUID;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    const-string v10, "bluecove.android.obex_uuids"

    invoke-static {v10}, Lcom/intel/bluetooth/BlueCoveImpl;->getConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, "obexUUIDsProperty":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 128
    const-string v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 129
    .local v8, "uuids":[Ljava/lang/String;
    array-length v10, v8

    :goto_0
    if-lt v9, v10, :cond_4

    .line 140
    .end local v8    # "uuids":[Ljava/lang/String;
    :cond_2
    :try_start_0
    iget-object v9, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->localBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_3

    .line 141
    iget-object v9, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->localBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 142
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->justEnabled:Z

    .line 146
    :cond_3
    const-string v1, "true"

    .line 147
    .local v1, "TRUE":Ljava/lang/String;
    const-string v0, "false"

    .line 148
    .local v0, "FALSE":Ljava/lang/String;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->propertiesMap:Ljava/util/Map;

    .line 149
    iget-object v9, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->propertiesMap:Ljava/util/Map;

    .line 150
    const-string v10, "bluetooth.connected.devices.max"

    .line 151
    const-string v11, "7"

    .line 149
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v9, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->propertiesMap:Ljava/util/Map;

    const-string v10, "bluetooth.sd.trans.max"

    .line 153
    const-string v11, "7"

    .line 152
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v9, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->propertiesMap:Ljava/util/Map;

    .line 155
    const-string v10, "bluetooth.connected.inquiry.scan"

    .line 156
    const-string v11, "true"

    .line 154
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v9, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->propertiesMap:Ljava/util/Map;

    .line 158
    const-string v10, "bluetooth.connected.page.scan"

    .line 159
    const-string v11, "true"

    .line 157
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v9, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->propertiesMap:Ljava/util/Map;

    .line 161
    const-string v10, "bluetooth.connected.inquiry"

    const-string v11, "true"

    .line 160
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v9, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->propertiesMap:Ljava/util/Map;

    .line 163
    const-string v10, "bluetooth.connected.page"

    const-string v11, "true"

    .line 162
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v9, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->propertiesMap:Ljava/util/Map;

    .line 165
    const-string v10, "bluetooth.sd.attr.retrievable.max"

    .line 166
    const/16 v11, 0x100

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 164
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v9, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->propertiesMap:Ljava/util/Map;

    const-string v10, "bluetooth.master.switch"

    .line 168
    const-string v11, "false"

    .line 167
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v9, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->propertiesMap:Ljava/util/Map;

    .line 170
    const-string v10, "bluetooth.l2cap.receiveMTU.max"

    .line 171
    const-string v11, "0"

    .line 169
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    return-void

    .line 129
    .end local v0    # "FALSE":Ljava/lang/String;
    .end local v1    # "TRUE":Ljava/lang/String;
    .restart local v8    # "uuids":[Ljava/lang/String;
    :cond_4
    aget-object v7, v8, v9

    .line 131
    .local v7, "uuid":Ljava/lang/String;
    :try_start_1
    new-instance v5, Ljavax/bluetooth/UUID;

    const/4 v11, 0x0

    invoke-direct {v5, v7, v11}, Ljavax/bluetooth/UUID;-><init>(Ljava/lang/String;Z)V

    .line 132
    .local v5, "jsr82UUID":Ljavax/bluetooth/UUID;
    iget-object v11, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->obexUUIDs:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    .end local v5    # "jsr82UUID":Ljavax/bluetooth/UUID;
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 173
    .end local v7    # "uuid":Ljava/lang/String;
    .end local v8    # "uuids":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 174
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v2, Ljavax/bluetooth/BluetoothStateException;

    .line 175
    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    .line 174
    invoke-direct {v2, v9}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    .line 176
    .local v2, "bluetoothStateException":Ljavax/bluetooth/BluetoothStateException;
    throw v2

    .line 133
    .end local v2    # "bluetoothStateException":Ljavax/bluetooth/BluetoothStateException;
    .end local v4    # "ex":Ljava/lang/Exception;
    .restart local v7    # "uuid":Ljava/lang/String;
    .restart local v8    # "uuids":[Ljava/lang/String;
    :catch_1
    move-exception v11

    goto :goto_1
.end method

.method public isCurrentThreadInterruptedCallback()Z
    .locals 1

    .prologue
    .line 191
    invoke-static {}, Lcom/intel/bluetooth/UtilsJavaSE;->isCurrentThreadInterrupted()Z

    move-result v0

    return v0
.end method

.method public isLocalDevicePowerOn()Z
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->localBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isNativeCodeLoaded()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public isRemoteDeviceAuthenticated(J)Ljava/lang/Boolean;
    .locals 1
    .param p1, "address"    # J

    .prologue
    .line 358
    const/4 v0, 0x0

    return-object v0
.end method

.method public isRemoteDeviceTrusted(J)Ljava/lang/Boolean;
    .locals 1
    .param p1, "address"    # J

    .prologue
    .line 354
    const/4 v0, 0x0

    return-object v0
.end method

.method public l2CloseClientConnection(J)V
    .locals 2
    .param p1, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 623
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l2CloseServerConnection(J)V
    .locals 2
    .param p1, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l2Encrypt(JJZ)Z
    .locals 2
    .param p1, "address"    # J
    .param p3, "handle"    # J
    .param p5, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 683
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l2GetReceiveMTU(J)I
    .locals 2
    .param p1, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l2GetSecurityOpt(JI)I
    .locals 2
    .param p1, "handle"    # J
    .param p3, "expected"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 653
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l2GetTransmitMTU(J)I
    .locals 2
    .param p1, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 657
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l2OpenClientConnection(Lcom/intel/bluetooth/BluetoothConnectionParams;II)J
    .locals 2
    .param p1, "params"    # Lcom/intel/bluetooth/BluetoothConnectionParams;
    .param p2, "receiveMTU"    # I
    .param p3, "transmitMTU"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 619
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l2Ready(J)Z
    .locals 2
    .param p1, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 665
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l2Receive(J[B)I
    .locals 2
    .param p1, "handle"    # J
    .param p3, "inBuf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 669
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l2RemoteAddress(J)J
    .locals 2
    .param p1, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 678
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l2Send(J[BI)V
    .locals 2
    .param p1, "handle"    # J
    .param p3, "data"    # [B
    .param p4, "transmitMTU"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 674
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l2ServerAcceptAndOpenServerConnection(J)J
    .locals 2
    .param p1, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 640
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l2ServerClose(JLcom/intel/bluetooth/ServiceRecordImpl;)V
    .locals 2
    .param p1, "handle"    # J
    .param p3, "serviceRecord"    # Lcom/intel/bluetooth/ServiceRecordImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 649
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l2ServerOpen(Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;IILcom/intel/bluetooth/ServiceRecordImpl;)J
    .locals 2
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
    .line 629
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l2ServerUpdateServiceRecord(JLcom/intel/bluetooth/ServiceRecordImpl;Z)V
    .locals 2
    .param p1, "handle"    # J
    .param p3, "serviceRecord"    # Lcom/intel/bluetooth/ServiceRecordImpl;
    .param p4, "acceptAndOpen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/ServiceRegistrationException;
        }
    .end annotation

    .prologue
    .line 635
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public populateServicesRecordAttributeValues(Lcom/intel/bluetooth/ServiceRecordImpl;[I)Z
    .locals 1
    .param p1, "serviceRecord"    # Lcom/intel/bluetooth/ServiceRecordImpl;
    .param p2, "attrIDs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 418
    const/4 v0, 0x0

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
    .line 287
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackAndroid;->getStackID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intel/bluetooth/NotSupportedIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requireNativeLibraries()[Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public retrieveDevices(I)[Ljavax/bluetooth/RemoteDevice;
    .locals 11
    .param p1, "option"    # I

    .prologue
    .line 339
    iget-object v6, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->localBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 340
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 341
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v6

    new-array v2, v6, [Ljavax/bluetooth/RemoteDevice;

    .line 342
    .local v2, "devices":[Ljavax/bluetooth/RemoteDevice;
    const/4 v3, 0x0

    .line 343
    .local v3, "index":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 344
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 350
    return-object v2

    .line 345
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 346
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    add-int/lit8 v4, v3, 0x1

    .line 347
    .end local v3    # "index":I
    .local v4, "index":I
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/intel/bluetooth/BluetoothStackAndroid;->getAddressAsLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    .line 348
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v6

    const/16 v10, 0xc

    if-ne v6, v10, :cond_1

    const/4 v6, 0x1

    .line 346
    :goto_1
    invoke-static {p0, v7, v8, v9, v6}, Lcom/intel/bluetooth/RemoteDeviceHelper;->createRemoteDevice(Lcom/intel/bluetooth/BluetoothStack;JLjava/lang/String;Z)Ljavax/bluetooth/RemoteDevice;

    move-result-object v6

    aput-object v6, v2, v3

    move v3, v4

    .end local v4    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    .line 348
    .end local v3    # "index":I
    .restart local v4    # "index":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
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
    .line 565
    const/4 v0, 0x0

    return v0
.end method

.method public rfGetSecurityOpt(JI)I
    .locals 1
    .param p1, "handle"    # J
    .param p3, "expected"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method public rfServerAcceptAndOpenRfServerConnection(J)J
    .locals 6
    .param p1, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    invoke-static {p1, p2}, Lcom/intel/bluetooth/AndroidBluetoothConnection;->getBluetoothConnection(J)Lcom/intel/bluetooth/AndroidBluetoothConnection;

    move-result-object v0

    .line 536
    .local v0, "bluetoothConnection":Lcom/intel/bluetooth/AndroidBluetoothConnection;
    invoke-virtual {v0}, Lcom/intel/bluetooth/AndroidBluetoothConnection;->getServerSocket()Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v2

    .line 537
    .local v2, "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v3

    .line 538
    .local v3, "socket":Landroid/bluetooth/BluetoothSocket;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    .line 540
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/intel/bluetooth/AndroidBluetoothConnection;->createConnection(Landroid/bluetooth/BluetoothSocket;Z)Lcom/intel/bluetooth/AndroidBluetoothConnection;

    move-result-object v1

    .line 541
    .local v1, "connection":Lcom/intel/bluetooth/AndroidBluetoothConnection;
    invoke-virtual {v1}, Lcom/intel/bluetooth/AndroidBluetoothConnection;->getHandle()J

    move-result-wide v4

    return-wide v4
.end method

.method public rfServerClose(JLcom/intel/bluetooth/ServiceRecordImpl;)V
    .locals 2
    .param p1, "handle"    # J
    .param p3, "serviceRecord"    # Lcom/intel/bluetooth/ServiceRecordImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 547
    invoke-static {p1, p2}, Lcom/intel/bluetooth/AndroidBluetoothConnection;->getBluetoothConnection(J)Lcom/intel/bluetooth/AndroidBluetoothConnection;

    move-result-object v0

    .line 549
    .local v0, "bluetoothConnection":Lcom/intel/bluetooth/AndroidBluetoothConnection;
    invoke-virtual {v0}, Lcom/intel/bluetooth/AndroidBluetoothConnection;->getServerSocket()Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v1

    .line 550
    .local v1, "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    .line 552
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
    .line 488
    iget-object v7, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->uuid:Ljavax/bluetooth/UUID;

    invoke-direct {p0, v7}, Lcom/intel/bluetooth/BluetoothStackAndroid;->createJavaUUID(Ljavax/bluetooth/UUID;)Ljava/util/UUID;

    move-result-object v3

    .line 490
    .local v3, "javaUUID":Ljava/util/UUID;
    const/4 v5, 0x1

    .line 491
    .local v5, "secure":Z
    const/4 v4, 0x0

    .line 492
    .local v4, "listenUsingInsecureRfcommWithServiceRecordMethod":Ljava/lang/reflect/Method;
    iget-boolean v7, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->encrypt:Z

    if-nez v7, :cond_0

    .line 494
    :try_start_0
    const-class v7, Landroid/bluetooth/BluetoothAdapter;

    .line 496
    const-string v8, "listenUsingInsecureRfcommWithServiceRecord"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    .line 497
    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-class v11, Ljava/util/UUID;

    aput-object v11, v9, v10

    .line 495
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 498
    const/4 v5, 0x0

    .line 503
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 504
    iget-object v7, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->localBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 505
    iget-object v8, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v6

    .line 521
    .local v6, "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    :goto_1
    invoke-static {v6}, Lcom/intel/bluetooth/AndroidBluetoothConnection;->createServerConnection(Landroid/bluetooth/BluetoothServerSocket;)Lcom/intel/bluetooth/AndroidBluetoothConnection;

    move-result-object v1

    .line 522
    .local v1, "connection":Lcom/intel/bluetooth/AndroidBluetoothConnection;
    invoke-virtual {v1}, Lcom/intel/bluetooth/AndroidBluetoothConnection;->getHandle()J

    move-result-wide v7

    return-wide v7

    .line 509
    .end local v1    # "connection":Lcom/intel/bluetooth/AndroidBluetoothConnection;
    .end local v6    # "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->localBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->name:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-virtual {v4, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 508
    check-cast v6, Landroid/bluetooth/BluetoothServerSocket;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v6    # "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    goto :goto_1

    .line 510
    .end local v6    # "serverSocket":Landroid/bluetooth/BluetoothServerSocket;
    :catch_0
    move-exception v2

    .line 511
    .local v2, "ex":Ljava/lang/Exception;
    instance-of v7, v2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v7, :cond_2

    .line 512
    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 513
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v7, v0, Ljava/io/IOException;

    if-eqz v7, :cond_2

    .line 514
    check-cast v0, Ljava/io/IOException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 517
    :cond_2
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 499
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method public rfServerUpdateServiceRecord(JLcom/intel/bluetooth/ServiceRecordImpl;Z)V
    .locals 2
    .param p1, "handle"    # J
    .param p3, "serviceRecord"    # Lcom/intel/bluetooth/ServiceRecordImpl;
    .param p4, "acceptAndOpen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/ServiceRegistrationException;
        }
    .end annotation

    .prologue
    .line 528
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public searchServices([I[Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DiscoveryListener;)I
    .locals 6
    .param p1, "attrSet"    # [I
    .param p2, "uuidSet"    # [Ljavax/bluetooth/UUID;
    .param p3, "remoteDevice"    # Ljavax/bluetooth/RemoteDevice;
    .param p4, "listener"    # Ljavax/bluetooth/DiscoveryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 364
    array-length v0, p2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 365
    new-instance v0, Ljavax/bluetooth/BluetoothStateException;

    .line 366
    const-string v2, "Searching for services with more than one UUID isn\'t supported on Android"

    .line 365
    invoke-direct {v0, v2}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_0
    new-instance v1, Lcom/intel/bluetooth/BluetoothStackAndroid$1;

    invoke-direct {v1, p0}, Lcom/intel/bluetooth/BluetoothStackAndroid$1;-><init>(Lcom/intel/bluetooth/BluetoothStackAndroid;)V

    .local v1, "searchServicesRunnable":Lcom/intel/bluetooth/SearchServicesRunnable;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 400
    invoke-static/range {v0 .. v5}, Lcom/intel/bluetooth/SearchServicesThread;->startSearchServices(Lcom/intel/bluetooth/BluetoothStack;Lcom/intel/bluetooth/SearchServicesRunnable;[I[Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DiscoveryListener;)I

    move-result v0

    return v0
.end method

.method public setLocalDeviceDiscoverable(I)Z
    .locals 5
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .local v2, "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 221
    .local v0, "androidMode":I
    sparse-switch p1, :sswitch_data_0

    .line 234
    :goto_0
    const-string v3, "android.bluetooth.adapter.extra.SCAN_MODE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 237
    if-nez p1, :cond_0

    .line 238
    const/4 v1, 0x0

    .line 245
    .local v1, "duration":I
    :goto_1
    const-string v3, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    iget-object v3, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->context:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 251
    const/4 v3, 0x1

    return v3

    .line 223
    .end local v1    # "duration":I
    :sswitch_0
    const/16 v0, 0x17

    .line 224
    goto :goto_0

    .line 226
    :sswitch_1
    const/16 v0, 0x15

    .line 227
    goto :goto_0

    .line 229
    :sswitch_2
    const/16 v0, 0x14

    goto :goto_0

    .line 242
    :cond_0
    const-string v3, "bluecove.android.discoverable_duration"

    .line 243
    const/16 v4, 0x78

    .line 241
    invoke-static {v3, v4}, Lcom/intel/bluetooth/BlueCoveImpl;->getConfigProperty(Ljava/lang/String;I)I

    move-result v1

    .line 240
    .restart local v1    # "duration":I
    goto :goto_1

    .line 221
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x9e8b00 -> :sswitch_1
        0x9e8b33 -> :sswitch_0
    .end sparse-switch
.end method

.method public setLocalDeviceServiceClasses(I)V
    .locals 0
    .param p1, "classOfDevice"    # I

    .prologue
    .line 214
    return-void
.end method

.method public startInquiry(ILjavax/bluetooth/DiscoveryListener;)Z
    .locals 4
    .param p1, "accessCode"    # I
    .param p2, "listener"    # Ljavax/bluetooth/DiscoveryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 292
    new-instance v1, Lcom/intel/bluetooth/BluetoothStackAndroid$DiscoveryBroadcastReceiver;

    invoke-direct {v1, p0, p2}, Lcom/intel/bluetooth/BluetoothStackAndroid$DiscoveryBroadcastReceiver;-><init>(Lcom/intel/bluetooth/BluetoothStackAndroid;Ljavax/bluetooth/DiscoveryListener;)V

    .line 294
    .local v1, "discoveryBroadcastReceiver":Lcom/intel/bluetooth/BluetoothStackAndroid$DiscoveryBroadcastReceiver;
    iget-object v3, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->listenerMap:Ljava/util/Map;

    invoke-interface {v3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    new-instance v0, Landroid/content/IntentFilter;

    .line 297
    const-string v3, "android.bluetooth.device.action.FOUND"

    .line 296
    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, "deviceFound":Landroid/content/IntentFilter;
    new-instance v2, Landroid/content/IntentFilter;

    .line 299
    const-string v3, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 298
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 301
    .local v2, "discoveryFinished":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->context:Landroid/content/Context;

    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 302
    iget-object v3, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->context:Landroid/content/Context;

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 304
    iget-object v3, p0, Lcom/intel/bluetooth/BluetoothStackAndroid;->localBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v3

    return v3
.end method

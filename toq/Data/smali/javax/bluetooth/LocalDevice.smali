.class public Ljavax/bluetooth/LocalDevice;
.super Ljava/lang/Object;
.source "LocalDevice.java"


# static fields
.field private static localDevices:Ljava/util/Hashtable;


# instance fields
.field private addressStr:Ljava/lang/String;

.field private bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

.field private discoveryAgent:Ljavax/bluetooth/DiscoveryAgent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ljavax/bluetooth/LocalDevice;->localDevices:Ljava/util/Hashtable;

    .line 50
    return-void
.end method

.method private constructor <init>(Lcom/intel/bluetooth/BluetoothStack;)V
    .locals 2
    .param p1, "stack"    # Lcom/intel/bluetooth/BluetoothStack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Ljavax/bluetooth/LocalDevice;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    .line 70
    new-instance v0, Ljavax/bluetooth/DiscoveryAgent;

    iget-object v1, p0, Ljavax/bluetooth/LocalDevice;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    invoke-direct {v0, v1}, Ljavax/bluetooth/DiscoveryAgent;-><init>(Lcom/intel/bluetooth/BluetoothStack;)V

    iput-object v0, p0, Ljavax/bluetooth/LocalDevice;->discoveryAgent:Ljavax/bluetooth/DiscoveryAgent;

    .line 72
    iget-object v0, p0, Ljavax/bluetooth/LocalDevice;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    .line 73
    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothStack;->getLocalDeviceBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->formatBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    iput-object v0, p0, Ljavax/bluetooth/LocalDevice;->addressStr:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public static getLocalDevice()Ljavax/bluetooth/LocalDevice;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {}, Ljavax/bluetooth/LocalDevice;->getLocalDeviceInstance()Ljavax/bluetooth/LocalDevice;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getLocalDeviceInstance()Ljavax/bluetooth/LocalDevice;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 78
    const-class v3, Ljavax/bluetooth/LocalDevice;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/intel/bluetooth/BlueCoveImpl;->instance()Lcom/intel/bluetooth/BlueCoveImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/intel/bluetooth/BlueCoveImpl;->getBluetoothStack()Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v1

    .line 79
    .local v1, "stack":Lcom/intel/bluetooth/BluetoothStack;
    sget-object v2, Ljavax/bluetooth/LocalDevice;->localDevices:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/bluetooth/LocalDevice;

    .line 80
    .local v0, "localDevice":Ljavax/bluetooth/LocalDevice;
    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljavax/bluetooth/LocalDevice;

    .end local v0    # "localDevice":Ljavax/bluetooth/LocalDevice;
    invoke-direct {v0, v1}, Ljavax/bluetooth/LocalDevice;-><init>(Lcom/intel/bluetooth/BluetoothStack;)V

    .line 82
    .restart local v0    # "localDevice":Ljavax/bluetooth/LocalDevice;
    sget-object v2, Ljavax/bluetooth/LocalDevice;->localDevices:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_0
    monitor-exit v3

    return-object v0

    .line 78
    .end local v0    # "localDevice":Ljavax/bluetooth/LocalDevice;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "property"    # Ljava/lang/String;

    .prologue
    .line 287
    :try_start_0
    const-string v1, "bluetooth.api.version"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljavax/bluetooth/BluetoothStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    const-string v1, "1.1.1"

    .line 318
    :goto_0
    return-object v1

    .line 289
    :cond_0
    :try_start_1
    const-string v1, "obex.api.version"

    .line 290
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljavax/bluetooth/BluetoothStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    const-string v1, "1.1.1"

    goto :goto_0

    .line 292
    :cond_1
    :try_start_2
    const-string v1, "bluecove"

    .line 293
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 294
    sget-object v1, Lcom/intel/bluetooth/BlueCoveImpl;->version:Ljava/lang/String;

    goto :goto_0

    .line 295
    :cond_2
    const-string v1, "bluecove.stack"

    .line 296
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 297
    invoke-static {}, Lcom/intel/bluetooth/BlueCoveImpl;->instance()Lcom/intel/bluetooth/BlueCoveImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/intel/bluetooth/BlueCoveImpl;->getBluetoothStack()Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v1

    invoke-interface {v1}, Lcom/intel/bluetooth/BluetoothStack;->getStackID()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 298
    :cond_3
    const-string v1, "bluecove.feature.l2cap"

    .line 299
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 300
    invoke-static {}, Lcom/intel/bluetooth/BlueCoveImpl;->instance()Lcom/intel/bluetooth/BlueCoveImpl;

    move-result-object v1

    .line 301
    const/4 v2, 0x1

    .line 300
    invoke-virtual {v1, v2}, Lcom/intel/bluetooth/BlueCoveImpl;->getLocalDeviceFeature(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 302
    :cond_4
    const-string v1, "bluecove.feature.service_attributes"

    .line 303
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 304
    invoke-static {}, Lcom/intel/bluetooth/BlueCoveImpl;->instance()Lcom/intel/bluetooth/BlueCoveImpl;

    move-result-object v1

    .line 305
    const/4 v2, 0x2

    .line 304
    invoke-virtual {v1, v2}, Lcom/intel/bluetooth/BlueCoveImpl;->getLocalDeviceFeature(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 306
    :cond_5
    const-string v1, "bluecove.feature.set_device_service_classes"

    .line 307
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 308
    invoke-static {}, Lcom/intel/bluetooth/BlueCoveImpl;->instance()Lcom/intel/bluetooth/BlueCoveImpl;

    move-result-object v1

    .line 309
    const/4 v2, 0x4

    .line 308
    invoke-virtual {v1, v2}, Lcom/intel/bluetooth/BlueCoveImpl;->getLocalDeviceFeature(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 310
    :cond_6
    const-string v1, "bluecove.feature.rssi"

    .line 311
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 312
    invoke-static {}, Lcom/intel/bluetooth/BlueCoveImpl;->instance()Lcom/intel/bluetooth/BlueCoveImpl;

    move-result-object v1

    .line 313
    const/16 v2, 0x8

    .line 312
    invoke-virtual {v1, v2}, Lcom/intel/bluetooth/BlueCoveImpl;->getLocalDeviceFeature(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 314
    :cond_7
    const-string v1, "bluecove.connections"

    .line 315
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 316
    invoke-static {}, Lcom/intel/bluetooth/RemoteDeviceHelper;->openConnections()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 318
    :cond_8
    invoke-static {}, Lcom/intel/bluetooth/BlueCoveImpl;->instance()Lcom/intel/bluetooth/BlueCoveImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/intel/bluetooth/BlueCoveImpl;->getBluetoothStack()Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v1

    .line 319
    invoke-interface {v1, p0}, Lcom/intel/bluetooth/BluetoothStack;->getLocalDeviceProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljavax/bluetooth/BluetoothStateException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    goto/16 :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljavax/bluetooth/BluetoothStateException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljavax/bluetooth/BluetoothStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-static {v1, v0}, Lcom/intel/bluetooth/UtilsJavaSE;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
.end method

.method public static isPowerOn()Z
    .locals 2

    .prologue
    .line 110
    :try_start_0
    invoke-static {}, Lcom/intel/bluetooth/BlueCoveImpl;->instance()Lcom/intel/bluetooth/BlueCoveImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/intel/bluetooth/BlueCoveImpl;->getBluetoothStack()Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v1

    .line 111
    invoke-interface {v1}, Lcom/intel/bluetooth/BluetoothStack;->isLocalDevicePowerOn()Z
    :try_end_0
    .catch Ljavax/bluetooth/BluetoothStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 113
    .local v0, "e":Ljavax/bluetooth/BluetoothStateException;
    :goto_0
    return v1

    .line 112
    .end local v0    # "e":Ljavax/bluetooth/BluetoothStateException;
    :catch_0
    move-exception v0

    .line 113
    .restart local v0    # "e":Ljavax/bluetooth/BluetoothStateException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBluetoothAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Ljavax/bluetooth/LocalDevice;->addressStr:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceClass()Ljavax/bluetooth/DeviceClass;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Ljavax/bluetooth/LocalDevice;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothStack;->getLocalDeviceClass()Ljavax/bluetooth/DeviceClass;

    move-result-object v0

    return-object v0
.end method

.method public getDiscoverable()I
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Ljavax/bluetooth/LocalDevice;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothStack;->getLocalDeviceDiscoverable()I

    move-result v0

    return v0
.end method

.method public getDiscoveryAgent()Ljavax/bluetooth/DiscoveryAgent;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Ljavax/bluetooth/LocalDevice;->discoveryAgent:Ljavax/bluetooth/DiscoveryAgent;

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Ljavax/bluetooth/LocalDevice;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothStack;->getLocalDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecord(Ljavax/microedition/io/Connection;)Ljavax/bluetooth/ServiceRecord;
    .locals 2
    .param p1, "notifier"    # Ljavax/microedition/io/Connection;

    .prologue
    .line 406
    if-nez p1, :cond_0

    .line 407
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "notifier is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_0
    instance-of v0, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierServiceRecordAccess;

    if-nez v0, :cond_1

    .line 411
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 412
    const-string v1, "connection is not a Bluetooth notifier"

    .line 411
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_1
    check-cast p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierServiceRecordAccess;

    .line 416
    .end local p1    # "notifier":Ljavax/microedition/io/Connection;
    invoke-interface {p1}, Lcom/intel/bluetooth/BluetoothConnectionNotifierServiceRecordAccess;->getServiceRecord()Ljavax/bluetooth/ServiceRecord;

    move-result-object v0

    .line 415
    return-object v0
.end method

.method public setDiscoverable(I)Z
    .locals 2
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    const v1, 0x9e8b00

    .line 207
    const v0, 0x9e8b33

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_1

    .line 208
    if-eqz p1, :cond_1

    .line 209
    if-lt p1, v1, :cond_0

    const v0, 0x9e8b3f

    if-le p1, v0, :cond_1

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid discoverable mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_1
    iget-object v0, p0, Ljavax/bluetooth/LocalDevice;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    invoke-interface {v0, p1}, Lcom/intel/bluetooth/BluetoothStack;->setLocalDeviceDiscoverable(I)Z

    move-result v0

    return v0
.end method

.method public updateRecord(Ljavax/bluetooth/ServiceRecord;)V
    .locals 2
    .param p1, "srvRecord"    # Ljavax/bluetooth/ServiceRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/ServiceRegistrationException;
        }
    .end annotation

    .prologue
    .line 511
    if-nez p1, :cond_0

    .line 512
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Service Record is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_0
    invoke-static {p1}, Lcom/intel/bluetooth/ServiceRecordsRegistry;->updateServiceRecord(Ljavax/bluetooth/ServiceRecord;)V

    .line 515
    return-void
.end method

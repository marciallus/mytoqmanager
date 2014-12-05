.class Lcom/intel/bluetooth/BluetoothStackBlueSoleil;
.super Ljava/lang/Object;
.source "BluetoothStackBlueSoleil.java"

# interfaces
.implements Lcom/intel/bluetooth/BluetoothStack;
.implements Lcom/intel/bluetooth/DeviceInquiryRunnable;
.implements Lcom/intel/bluetooth/SearchServicesRunnable;


# static fields
.field private static singleInstance:Lcom/intel/bluetooth/BluetoothStackBlueSoleil;


# instance fields
.field private currentDeviceDiscoveryListener:Ljavax/bluetooth/DiscoveryListener;

.field private initialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->singleInstance:Lcom/intel/bluetooth/BluetoothStackBlueSoleil;

    .line 37
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->initialized:Z

    .line 47
    return-void
.end method

.method private native connectionRfOpenImpl(J[B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native isBluetoothReady(I)Z
.end method

.method private native rfServerOpenImpl([BLjava/lang/String;ZZ)J
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

.method private native runSearchServicesImpl(Lcom/intel/bluetooth/SearchServicesThread;Ljavax/bluetooth/DiscoveryListener;[BJLjavax/bluetooth/RemoteDevice;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation
.end method

.method private native uninitialize()V
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
    .line 242
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
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public cancelInquiry(Ljavax/bluetooth/DiscoveryListener;)Z
    .locals 1
    .param p1, "listener"    # Ljavax/bluetooth/DiscoveryListener;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->currentDeviceDiscoveryListener:Ljavax/bluetooth/DiscoveryListener;

    if-eq v0, p1, :cond_0

    .line 305
    const/4 v0, 0x0

    .line 309
    :goto_0
    return v0

    .line 308
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->currentDeviceDiscoveryListener:Ljavax/bluetooth/DiscoveryListener;

    .line 309
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->cancelInquirympl()Z

    move-result v0

    goto :goto_0
.end method

.method public native cancelInquirympl()Z
.end method

.method public cancelServiceSearch(I)Z
    .locals 1
    .param p1, "transID"    # I

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
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
    .line 445
    invoke-virtual {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->connectionRfCloseClientConnection(J)V

    .line 446
    return-void
.end method

.method public native connectionRfFlush(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public connectionRfOpenClientConnection(Lcom/intel/bluetooth/BluetoothConnectionParams;)J
    .locals 5
    .param p1, "params"    # Lcom/intel/bluetooth/BluetoothConnectionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    iget-boolean v2, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->authenticate:Z

    if-nez v2, :cond_0

    iget-boolean v2, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->encrypt:Z

    if-eqz v2, :cond_1

    .line 389
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "authenticate not supported on BlueSoleil"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 392
    :cond_1
    iget-wide v2, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->address:J

    .line 391
    invoke-static {p0, v2, v3}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getCashedDevice(Lcom/intel/bluetooth/BluetoothStack;J)Ljavax/bluetooth/RemoteDevice;

    move-result-object v0

    .line 393
    .local v0, "listedDevice":Ljavax/bluetooth/RemoteDevice;
    if-nez v0, :cond_2

    .line 394
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Device not discovered"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 397
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RFCOMM_channel"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->channel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 396
    invoke-static {p0, v0, v2}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getStackAttributes(Lcom/intel/bluetooth/BluetoothStack;Ljavax/bluetooth/RemoteDevice;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/bluetooth/UUID;

    .line 398
    .local v1, "uuid":Ljavax/bluetooth/UUID;
    if-nez v1, :cond_3

    .line 399
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Device service not discovered"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 401
    :cond_3
    const-string v2, "Connect to service UUID"

    invoke-static {v2, v1}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 402
    iget-wide v2, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->address:J

    invoke-static {v1}, Lcom/intel/bluetooth/Utils;->UUIDToByteArray(Ljavax/bluetooth/UUID;)[B

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->connectionRfOpenImpl(J[B)J

    move-result-wide v2

    return-wide v2
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

.method public native connectionRfWrite(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
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
    .line 100
    sget-object v0, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->singleInstance:Lcom/intel/bluetooth/BluetoothStackBlueSoleil;

    if-eq v0, p0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Destroy invalid instance"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iget-boolean v0, p0, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->initialized:Z

    if-eqz v0, :cond_1

    .line 104
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->uninitialize()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->initialized:Z

    .line 106
    const-string v0, "BlueSoleil destroyed"

    invoke-static {v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 108
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->singleInstance:Lcom/intel/bluetooth/BluetoothStackBlueSoleil;

    .line 109
    return-void
.end method

.method public native detectBluetoothStack()I
.end method

.method public deviceDiscoveredCallback(Ljavax/bluetooth/DiscoveryListener;JILjava/lang/String;Z)V
    .locals 2
    .param p1, "listener"    # Ljavax/bluetooth/DiscoveryListener;
    .param p2, "deviceAddr"    # J
    .param p4, "deviceClass"    # I
    .param p5, "deviceName"    # Ljava/lang/String;
    .param p6, "paired"    # Z

    .prologue
    .line 291
    const-string v1, "deviceDiscoveredCallback"

    invoke-static {v1, p5}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-static {p0, p2, p3, p5, p6}, Lcom/intel/bluetooth/RemoteDeviceHelper;->createRemoteDevice(Lcom/intel/bluetooth/BluetoothStack;JLjava/lang/String;Z)Ljavax/bluetooth/RemoteDevice;

    move-result-object v0

    .line 294
    .local v0, "remoteDevice":Ljavax/bluetooth/RemoteDevice;
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->currentDeviceDiscoveryListener:Ljavax/bluetooth/DiscoveryListener;

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->currentDeviceDiscoveryListener:Ljavax/bluetooth/DiscoveryListener;

    if-eq v1, p1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    new-instance v1, Ljavax/bluetooth/DeviceClass;

    invoke-direct {v1, p4}, Ljavax/bluetooth/DeviceClass;-><init>(I)V

    invoke-interface {p1, v0, v1}, Ljavax/bluetooth/DiscoveryListener;->deviceDiscovered(Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DeviceClass;)V

    goto :goto_0
.end method

.method public native enableNativeDebug(Ljava/lang/Class;Z)V
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->destroy()V

    .line 113
    return-void
.end method

.method public native getConnectionRfRemoteAddress(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native getDeviceClassImpl()I
.end method

.method native getDeviceManufacturer()I
.end method

.method native getDeviceVersion()I
.end method

.method public getFeatureSet()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public native getLibraryVersion()I
.end method

.method public native getLocalDeviceBluetoothAddress()Ljava/lang/String;
.end method

.method public getLocalDeviceClass()Ljavax/bluetooth/DeviceClass;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljavax/bluetooth/DeviceClass;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->getDeviceClassImpl()I

    move-result v1

    invoke-direct {v0, v1}, Ljavax/bluetooth/DeviceClass;-><init>(I)V

    return-object v0
.end method

.method public getLocalDeviceDiscoverable()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->isBluetoothReady(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const v0, 0x9e8b33

    .line 156
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
    .line 180
    const-string v0, "bluetooth.connected.devices.max"

    .line 181
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const-string v0, "7"

    .line 216
    :goto_0
    return-object v0

    .line 184
    :cond_0
    const-string v0, "bluetooth.sd.trans.max"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    const-string v0, "1"

    goto :goto_0

    .line 187
    :cond_1
    const-string v0, "bluetooth.connected.inquiry.scan"

    .line 188
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    const-string v0, "true"

    goto :goto_0

    .line 191
    :cond_2
    const-string v0, "bluetooth.connected.page.scan"

    .line 192
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    const-string v0, "true"

    goto :goto_0

    .line 195
    :cond_3
    const-string v0, "bluetooth.connected.inquiry"

    .line 196
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 197
    const-string v0, "true"

    goto :goto_0

    .line 201
    :cond_4
    const-string v0, "bluetooth.sd.attr.retrievable.max"

    .line 202
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 203
    const-string v0, "0"

    goto :goto_0

    .line 212
    :cond_5
    const-string v0, "bluecove.stack.version"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 213
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->getStackVersionInfo()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 216
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRemoteDeviceFriendlyName(J)Ljava/lang/String;
    .locals 1
    .param p1, "address"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStackID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "bluesoleil"

    return-object v0
.end method

.method native getStackVersionInfo()I
.end method

.method public initialize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 84
    sget-object v0, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->singleInstance:Lcom/intel/bluetooth/BluetoothStackBlueSoleil;

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Ljavax/bluetooth/BluetoothStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Only one instance of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->getStackID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stack supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-direct {v0, v1}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->initializeImpl()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    const-string v0, "Can\'t initialize BlueSoleil"

    invoke-static {v0}, Lcom/intel/bluetooth/DebugLog;->fatal(Ljava/lang/String;)V

    .line 90
    new-instance v0, Ljavax/bluetooth/BluetoothStateException;

    .line 91
    const-string v1, "BlueSoleil BluetoothStack not found"

    .line 90
    invoke-direct {v0, v1}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->initialized:Z

    .line 94
    sput-object p0, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->singleInstance:Lcom/intel/bluetooth/BluetoothStackBlueSoleil;

    .line 95
    return-void
.end method

.method public native initializeImpl()Z
.end method

.method native isBlueSoleilStarted(I)Z
.end method

.method public isCurrentThreadInterruptedCallback()Z
    .locals 1

    .prologue
    .line 226
    invoke-static {}, Lcom/intel/bluetooth/UtilsJavaSE;->isCurrentThreadInterrupted()Z

    move-result v0

    return v0
.end method

.method public isLocalDevicePowerOn()Z
    .locals 1

    .prologue
    .line 161
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->isBluetoothReady(I)Z

    move-result v0

    return v0
.end method

.method public native isNativeCodeLoaded()Z
.end method

.method public isRemoteDeviceAuthenticated(J)Ljava/lang/Boolean;
    .locals 1
    .param p1, "address"    # J

    .prologue
    .line 238
    const/4 v0, 0x0

    return-object v0
.end method

.method public isRemoteDeviceTrusted(J)Ljava/lang/Boolean;
    .locals 1
    .param p1, "address"    # J

    .prologue
    .line 234
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
    .line 502
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->getStackID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intel/bluetooth/NotSupportedIOException;-><init>(Ljava/lang/String;)V

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
    .line 549
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->getStackID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intel/bluetooth/NotSupportedIOException;-><init>(Ljava/lang/String;)V

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
    .line 634
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->getStackID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intel/bluetooth/NotSupportedIOException;-><init>(Ljava/lang/String;)V

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
    .line 606
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->getStackID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intel/bluetooth/NotSupportedIOException;-><init>(Ljava/lang/String;)V

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
    .line 569
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->getStackID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intel/bluetooth/NotSupportedIOException;-><init>(Ljava/lang/String;)V

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
    .line 615
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->getStackID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intel/bluetooth/NotSupportedIOException;-><init>(Ljava/lang/String;)V

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
    .line 493
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->getStackID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intel/bluetooth/NotSupportedIOException;-><init>(Ljava/lang/String;)V

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
    .line 578
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->getStackID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intel/bluetooth/NotSupportedIOException;-><init>(Ljava/lang/String;)V

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
    .line 587
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->getStackID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intel/bluetooth/NotSupportedIOException;-><init>(Ljava/lang/String;)V

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
    .line 624
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->getStackID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intel/bluetooth/NotSupportedIOException;-><init>(Ljava/lang/String;)V

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
    .line 597
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->getStackID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intel/bluetooth/NotSupportedIOException;-><init>(Ljava/lang/String;)V

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
    .line 540
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->getStackID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intel/bluetooth/NotSupportedIOException;-><init>(Ljava/lang/String;)V

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
    .line 560
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->getStackID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intel/bluetooth/NotSupportedIOException;-><init>(Ljava/lang/String;)V

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
    .line 515
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->getStackID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intel/bluetooth/NotSupportedIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l2ServerUpdateServiceRecord(JLcom/intel/bluetooth/ServiceRecordImpl;Z)V
    .locals 3
    .param p1, "handle"    # J
    .param p3, "serviceRecord"    # Lcom/intel/bluetooth/ServiceRecordImpl;
    .param p4, "acceptAndOpen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/ServiceRegistrationException;
        }
    .end annotation

    .prologue
    .line 527
    new-instance v0, Ljavax/bluetooth/ServiceRegistrationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not Supported on"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->getStackID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 527
    invoke-direct {v0, v1}, Ljavax/bluetooth/ServiceRegistrationException;-><init>(Ljava/lang/String;)V

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
    .line 378
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
    .line 259
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->getStackID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intel/bluetooth/NotSupportedIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requireNativeLibraries()[Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;
    .locals 1

    .prologue
    .line 72
    const-string v0, "intelbth"

    invoke-static {v0}, Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;->library(Ljava/lang/String;)[Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;

    move-result-object v0

    return-object v0
.end method

.method public retrieveDevices(I)[Ljavax/bluetooth/RemoteDevice;
    .locals 1
    .param p1, "option"    # I

    .prologue
    .line 230
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
    .line 479
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
    .line 469
    const/4 v0, 0x0

    return v0
.end method

.method public native rfServerAcceptAndOpenRfServerConnection(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public native rfServerClose(JLcom/intel/bluetooth/ServiceRecordImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public rfServerOpen(Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;Lcom/intel/bluetooth/ServiceRecordImpl;)J
    .locals 11
    .param p1, "params"    # Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;
    .param p2, "serviceRecord"    # Lcom/intel/bluetooth/ServiceRecordImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    iget-boolean v0, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->authenticate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->encrypt:Z

    if-eqz v0, :cond_1

    .line 416
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "authenticate not supported on BlueSoleil"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_1
    iget-object v0, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->uuid:Ljavax/bluetooth/UUID;

    invoke-static {v0}, Lcom/intel/bluetooth/Utils;->UUIDToByteArray(Ljavax/bluetooth/UUID;)[B

    move-result-object v10

    .line 419
    .local v10, "uuidValue":[B
    iget-object v0, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->name:Ljava/lang/String;

    .line 420
    iget-boolean v1, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->authenticate:Z

    iget-boolean v2, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->encrypt:Z

    .line 419
    invoke-direct {p0, v10, v0, v1, v2}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->rfServerOpenImpl([BLjava/lang/String;ZZ)J

    move-result-wide v7

    .line 421
    .local v7, "handle":J
    invoke-direct {p0, v7, v8}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->rfServerSCN(J)I

    move-result v3

    .line 422
    .local v3, "channel":I
    const-string v0, "serverSCN"

    int-to-long v1, v3

    invoke-static {v0, v1, v2}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    .line 423
    long-to-int v9, v7

    .line 425
    .local v9, "serviceRecordHandle":I
    int-to-long v1, v9

    .line 426
    iget-object v4, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->uuid:Ljavax/bluetooth/UUID;

    iget-object v5, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->name:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p2

    .line 425
    invoke-virtual/range {v0 .. v6}, Lcom/intel/bluetooth/ServiceRecordImpl;->populateRFCOMMAttributes(JILjavax/bluetooth/UUID;Ljava/lang/String;Z)V

    .line 428
    return-wide v7
.end method

.method public rfServerUpdateServiceRecord(JLcom/intel/bluetooth/ServiceRecordImpl;Z)V
    .locals 3
    .param p1, "handle"    # J
    .param p3, "serviceRecord"    # Lcom/intel/bluetooth/ServiceRecordImpl;
    .param p4, "acceptAndOpen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/ServiceRegistrationException;
        }
    .end annotation

    .prologue
    .line 434
    if-nez p4, :cond_0

    .line 435
    new-instance v0, Ljavax/bluetooth/ServiceRegistrationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not Supported on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->getStackID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 435
    invoke-direct {v0, v1}, Ljavax/bluetooth/ServiceRegistrationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_0
    return-void
.end method

.method public runDeviceInquiry(Lcom/intel/bluetooth/DeviceInquiryThread;ILjavax/bluetooth/DiscoveryListener;)I
    .locals 2
    .param p1, "startedNotify"    # Lcom/intel/bluetooth/DeviceInquiryThread;
    .param p2, "accessCode"    # I
    .param p3, "listener"    # Ljavax/bluetooth/DiscoveryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 278
    :try_start_0
    invoke-virtual {p1}, Lcom/intel/bluetooth/DeviceInquiryThread;->deviceInquiryStartedCallback()V

    .line 279
    invoke-virtual {p0, p1, p2, p3}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->runDeviceInquiryImpl(Lcom/intel/bluetooth/DeviceInquiryThread;ILjavax/bluetooth/DiscoveryListener;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 281
    iput-object v1, p0, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->currentDeviceDiscoveryListener:Ljavax/bluetooth/DiscoveryListener;

    .line 279
    return v0

    .line 280
    :catchall_0
    move-exception v0

    .line 281
    iput-object v1, p0, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->currentDeviceDiscoveryListener:Ljavax/bluetooth/DiscoveryListener;

    .line 282
    throw v0
.end method

.method public native runDeviceInquiryImpl(Lcom/intel/bluetooth/DeviceInquiryThread;ILjavax/bluetooth/DiscoveryListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation
.end method

.method public runSearchServices(Lcom/intel/bluetooth/SearchServicesThread;[I[Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DiscoveryListener;)I
    .locals 8
    .param p1, "startedNotify"    # Lcom/intel/bluetooth/SearchServicesThread;
    .param p2, "attrSet"    # [I
    .param p3, "uuidSet"    # [Ljavax/bluetooth/UUID;
    .param p4, "device"    # Ljavax/bluetooth/RemoteDevice;
    .param p5, "listener"    # Ljavax/bluetooth/DiscoveryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-virtual {p1}, Lcom/intel/bluetooth/SearchServicesThread;->searchServicesStartedCallback()V

    .line 339
    const/4 v7, 0x0

    .line 340
    .local v7, "uuid":Ljavax/bluetooth/UUID;
    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    .line 341
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    aget-object v7, p3, v0

    .line 344
    :cond_0
    invoke-static {v7}, Lcom/intel/bluetooth/Utils;->UUIDToByteArray(Ljavax/bluetooth/UUID;)[B

    move-result-object v3

    .line 345
    invoke-static {p4}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getAddress(Ljavax/bluetooth/RemoteDevice;)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v6, p4

    .line 343
    invoke-direct/range {v0 .. v6}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->runSearchServicesImpl(Lcom/intel/bluetooth/SearchServicesThread;Ljavax/bluetooth/DiscoveryListener;[BJLjavax/bluetooth/RemoteDevice;)I

    move-result v0

    return v0
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
    .line 322
    move-object v0, p0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/intel/bluetooth/SearchServicesThread;->startSearchServices(Lcom/intel/bluetooth/BluetoothStack;Lcom/intel/bluetooth/SearchServicesRunnable;[I[Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DiscoveryListener;)I

    move-result v0

    return v0
.end method

.method public servicesFoundCallback(Lcom/intel/bluetooth/SearchServicesThread;Ljavax/bluetooth/DiscoveryListener;Ljavax/bluetooth/RemoteDevice;Ljava/lang/String;[BIJ)V
    .locals 9
    .param p1, "startedNotify"    # Lcom/intel/bluetooth/SearchServicesThread;
    .param p2, "listener"    # Ljavax/bluetooth/DiscoveryListener;
    .param p3, "device"    # Ljavax/bluetooth/RemoteDevice;
    .param p4, "serviceName"    # Ljava/lang/String;
    .param p5, "uuidValue"    # [B
    .param p6, "channel"    # I
    .param p7, "recordHanlde"    # J

    .prologue
    .line 358
    new-instance v0, Lcom/intel/bluetooth/ServiceRecordImpl;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p0, p3, v1, v2}, Lcom/intel/bluetooth/ServiceRecordImpl;-><init>(Lcom/intel/bluetooth/BluetoothStack;Ljavax/bluetooth/RemoteDevice;J)V

    .line 360
    .local v0, "record":Lcom/intel/bluetooth/ServiceRecordImpl;
    new-instance v4, Ljavax/bluetooth/UUID;

    invoke-static {p5}, Lcom/intel/bluetooth/Utils;->UUIDByteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v4, v1, v2}, Ljavax/bluetooth/UUID;-><init>(Ljava/lang/String;Z)V

    .line 363
    .local v4, "uuid":Ljavax/bluetooth/UUID;
    sget-object v1, Lcom/intel/bluetooth/BluetoothConsts;->obexUUIDs:Ljava/util/Hashtable;

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v6

    move-wide/from16 v1, p7

    move v3, p6

    move-object v5, p4

    .line 362
    invoke-virtual/range {v0 .. v6}, Lcom/intel/bluetooth/ServiceRecordImpl;->populateRFCOMMAttributes(JILjavax/bluetooth/UUID;Ljava/lang/String;Z)V

    .line 364
    const-string v1, "servicesFoundCallback"

    invoke-static {v1, v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 366
    invoke-static {p0, p3}, Lcom/intel/bluetooth/RemoteDeviceHelper;->createRemoteDevice(Lcom/intel/bluetooth/BluetoothStack;Ljavax/bluetooth/RemoteDevice;)Ljavax/bluetooth/RemoteDevice;

    move-result-object v7

    .line 369
    .local v7, "listedDevice":Ljavax/bluetooth/RemoteDevice;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RFCOMM_channel"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-static {p0, v7, v1, v4}, Lcom/intel/bluetooth/RemoteDeviceHelper;->setStackAttributes(Lcom/intel/bluetooth/BluetoothStack;Ljavax/bluetooth/RemoteDevice;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 371
    const/4 v1, 0x1

    new-array v8, v1, [Lcom/intel/bluetooth/ServiceRecordImpl;

    .line 372
    .local v8, "records":[Ljavax/bluetooth/ServiceRecord;
    const/4 v1, 0x0

    aput-object v0, v8, v1

    .line 373
    invoke-virtual {p1}, Lcom/intel/bluetooth/SearchServicesThread;->getTransID()I

    move-result v1

    invoke-interface {p2, v1, v8}, Ljavax/bluetooth/DiscoveryListener;->servicesDiscovered(I[Ljavax/bluetooth/ServiceRecord;)V

    .line 374
    return-void
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
    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public setLocalDeviceServiceClasses(I)V
    .locals 2
    .param p1, "classOfDevice"    # I

    .prologue
    .line 134
    new-instance v0, Lcom/intel/bluetooth/NotSupportedRuntimeException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->getStackID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intel/bluetooth/NotSupportedRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startInquiry(ILjavax/bluetooth/DiscoveryListener;)Z
    .locals 2
    .param p1, "accessCode"    # I
    .param p2, "listener"    # Ljavax/bluetooth/DiscoveryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->currentDeviceDiscoveryListener:Ljavax/bluetooth/DiscoveryListener;

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Ljavax/bluetooth/BluetoothStateException;

    const-string v1, "Another inquiry already running"

    invoke-direct {v0, v1}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    iput-object p2, p0, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->currentDeviceDiscoveryListener:Ljavax/bluetooth/DiscoveryListener;

    .line 270
    invoke-static {p0, p0, p1, p2}, Lcom/intel/bluetooth/DeviceInquiryThread;->startInquiry(Lcom/intel/bluetooth/BluetoothStack;Lcom/intel/bluetooth/DeviceInquiryRunnable;ILjavax/bluetooth/DiscoveryListener;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackBlueSoleil;->getStackID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

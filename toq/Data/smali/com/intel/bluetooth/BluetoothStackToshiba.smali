.class Lcom/intel/bluetooth/BluetoothStackToshiba;
.super Ljava/lang/Object;
.source "BluetoothStackToshiba.java"

# interfaces
.implements Lcom/intel/bluetooth/BluetoothStack;
.implements Lcom/intel/bluetooth/DeviceInquiryRunnable;
.implements Lcom/intel/bluetooth/SearchServicesRunnable;


# static fields
.field private static final ATTR_RETRIEVABLE_MAX:I = 0xffff

.field private static final RECEIVE_MTU_MAX:I = 0x400


# instance fields
.field private deviceDiscoveryListenerFoundDevices:Ljava/util/Hashtable;

.field private deviceDiscoveryListenerReportedDevices:Ljava/util/Hashtable;

.field private deviceDiscoveryListeners:Ljava/util/Vector;

.field private initialized:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intel/bluetooth/BluetoothStackToshiba;->initialized:Z

    .line 48
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/intel/bluetooth/BluetoothStackToshiba;->deviceDiscoveryListeners:Ljava/util/Vector;

    .line 50
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/intel/bluetooth/BluetoothStackToshiba;->deviceDiscoveryListenerFoundDevices:Ljava/util/Hashtable;

    .line 52
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/intel/bluetooth/BluetoothStackToshiba;->deviceDiscoveryListenerReportedDevices:Ljava/util/Hashtable;

    .line 75
    return-void
.end method

.method private native connectSDPImpl(J)S
.end method

.method private native destroyImpl()V
.end method

.method private native deviceInquiryCancelImpl()Z
.end method

.method private native disconnectSDPImpl(S)V
.end method

.method private getBTWVersionInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, ""

    return-object v0
.end method

.method private getDeviceManufacturer()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method private getDeviceVersion()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method private native getRemoteDeviceFriendlyNameImpl(J)Ljava/lang/String;
.end method

.method private native initializeImpl()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation
.end method

.method private native populateWorkerImpl(SJ[I)[B
.end method

.method private native runDeviceInquiryImpl(Lcom/intel/bluetooth/DeviceInquiryThread;ILjavax/bluetooth/DiscoveryListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation
.end method

.method private native searchServicesImpl(Lcom/intel/bluetooth/SearchServicesThread;S[[B)[J
.end method

.method private setAttributes(Lcom/intel/bluetooth/ServiceRecordImpl;[I[B)Z
    .locals 12
    .param p1, "serviceRecord"    # Lcom/intel/bluetooth/ServiceRecordImpl;
    .param p2, "attrIDs"    # [I
    .param p3, "bytes"    # [B

    .prologue
    const/16 v11, 0x30

    .line 465
    const/4 v0, 0x0

    .line 467
    .local v0, "anyRetrived":Z
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 469
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v2, 0x0

    .line 471
    .local v2, "btis":Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;
    :try_start_0
    new-instance v3, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;

    invoke-direct {v3, v1}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2    # "btis":Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;
    .local v3, "btis":Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;
    move-object v2, v3

    .line 475
    .end local v3    # "btis":Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;
    .restart local v2    # "btis":Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;
    :goto_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v10, p2

    if-lt v5, v10, :cond_0

    .line 510
    return v0

    .line 476
    :cond_0
    aget v6, p2, v5

    .line 482
    .local v6, "id":I
    :try_start_1
    invoke-virtual {v2}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->readElement()Ljavax/bluetooth/DataElement;

    move-result-object v4

    .line 486
    .local v4, "element":Ljavax/bluetooth/DataElement;
    const/4 v10, 0x4

    if-ne v6, v10, :cond_1

    .line 488
    invoke-virtual {v4}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 487
    check-cast v9, Ljava/util/Enumeration;

    .line 489
    .local v9, "protocolsSeqEnum":Ljava/util/Enumeration;
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 491
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/bluetooth/DataElement;

    .line 492
    .local v8, "protocolElement":Ljavax/bluetooth/DataElement;
    invoke-virtual {v8}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v10

    if-eq v10, v11, :cond_1

    .line 493
    new-instance v7, Ljavax/bluetooth/DataElement;

    .line 494
    const/16 v10, 0x30

    .line 493
    invoke-direct {v7, v10}, Ljavax/bluetooth/DataElement;-><init>(I)V

    .line 495
    .local v7, "newMainSeq":Ljavax/bluetooth/DataElement;
    invoke-virtual {v7, v4}, Ljavax/bluetooth/DataElement;->addElement(Ljavax/bluetooth/DataElement;)V

    .line 496
    move-object v4, v7

    .line 501
    .end local v7    # "newMainSeq":Ljavax/bluetooth/DataElement;
    .end local v8    # "protocolElement":Ljavax/bluetooth/DataElement;
    .end local v9    # "protocolsSeqEnum":Ljava/util/Enumeration;
    :cond_1
    invoke-virtual {p1, v6, v4}, Lcom/intel/bluetooth/ServiceRecordImpl;->populateAttributeValue(ILjavax/bluetooth/DataElement;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 502
    const/4 v0, 0x1

    .line 475
    .end local v4    # "element":Ljavax/bluetooth/DataElement;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 503
    :catch_0
    move-exception v10

    goto :goto_2

    .line 472
    .end local v5    # "i":I
    .end local v6    # "id":I
    :catch_1
    move-exception v10

    goto :goto_0
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
    .line 291
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
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public cancelInquiry(Ljavax/bluetooth/DiscoveryListener;)Z
    .locals 1
    .param p1, "listener"    # Ljavax/bluetooth/DiscoveryListener;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackToshiba;->deviceDiscoveryListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    const/4 v0, 0x0

    .line 435
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackToshiba;->deviceInquiryCancelImpl()Z

    move-result v0

    goto :goto_0
.end method

.method public cancelServiceSearch(I)Z
    .locals 1
    .param p1, "transID"    # I

    .prologue
    .line 580
    const/4 v0, 0x0

    return v0
.end method

.method public cancelSniffMode(J)Z
    .locals 1
    .param p1, "address"    # J

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
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
    .line 631
    return-void
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
    .line 677
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
    .line 684
    return-void
.end method

.method public connectionRfOpenClientConnection(Lcom/intel/bluetooth/BluetoothConnectionParams;)J
    .locals 2
    .param p1, "params"    # Lcom/intel/bluetooth/BluetoothConnectionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 624
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public connectionRfRead(J)I
    .locals 1
    .param p1, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 688
    const/4 v0, 0x0

    return v0
.end method

.method public connectionRfRead(J[BII)I
    .locals 1
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
    .line 694
    const/4 v0, 0x0

    return v0
.end method

.method public connectionRfReadAvailable(J)I
    .locals 1
    .param p1, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 699
    const/4 v0, 0x0

    return v0
.end method

.method public connectionRfWrite(JI)V
    .locals 0
    .param p1, "handle"    # J
    .param p3, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 705
    return-void
.end method

.method public connectionRfWrite(J[BII)V
    .locals 0
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
    .line 711
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/intel/bluetooth/BluetoothStackToshiba;->initialized:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackToshiba;->destroyImpl()V

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intel/bluetooth/BluetoothStackToshiba;->initialized:Z

    .line 134
    const-string v0, "TOSHIBA destroyed"

    invoke-static {v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 136
    :cond_0
    return-void
.end method

.method public native detectBluetoothStack()I
.end method

.method public deviceDiscoveredCallback(Ljavax/bluetooth/DiscoveryListener;JILjava/lang/String;Z)V
    .locals 7
    .param p1, "listener"    # Ljavax/bluetooth/DiscoveryListener;
    .param p2, "deviceAddr"    # J
    .param p4, "deviceClass"    # I
    .param p5, "deviceName"    # Ljava/lang/String;
    .param p6, "paired"    # Z

    .prologue
    .line 395
    const-string v5, "deviceDiscoveredCallback deviceName"

    invoke-static {v5, p5}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v5, p0, Lcom/intel/bluetooth/BluetoothStackToshiba;->deviceDiscoveryListeners:Ljava/util/Vector;

    invoke-virtual {v5, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    invoke-static {p0, p2, p3, p5, p6}, Lcom/intel/bluetooth/RemoteDeviceHelper;->createRemoteDevice(Lcom/intel/bluetooth/BluetoothStack;JLjava/lang/String;Z)Ljavax/bluetooth/RemoteDevice;

    move-result-object v3

    .line 402
    .local v3, "remoteDevice":Ljavax/bluetooth/RemoteDevice;
    iget-object v5, p0, Lcom/intel/bluetooth/BluetoothStackToshiba;->deviceDiscoveryListenerReportedDevices:Ljava/util/Hashtable;

    .line 403
    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Vector;

    .line 404
    .local v4, "reported":Ljava/util/Vector;
    if-eqz v4, :cond_0

    invoke-virtual {v4, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 408
    iget-object v5, p0, Lcom/intel/bluetooth/BluetoothStackToshiba;->deviceDiscoveryListenerFoundDevices:Ljava/util/Hashtable;

    .line 409
    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    .line 410
    .local v2, "previouslyFound":Ljava/util/Hashtable;
    if-eqz v2, :cond_3

    .line 412
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 413
    .local v1, "deviceClassInt":Ljava/lang/Integer;
    if-nez v1, :cond_2

    .line 414
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 415
    :cond_2
    if-eqz p4, :cond_0

    .line 416
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 419
    .end local v1    # "deviceClassInt":Ljava/lang/Integer;
    :cond_3
    new-instance v0, Ljavax/bluetooth/DeviceClass;

    invoke-direct {v0, p4}, Ljavax/bluetooth/DeviceClass;-><init>(I)V

    .line 420
    .local v0, "cod":Ljavax/bluetooth/DeviceClass;
    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 421
    const-string v5, "deviceDiscoveredCallback address"

    .line 422
    invoke-virtual {v3}, Ljavax/bluetooth/RemoteDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v6

    .line 421
    invoke-static {v5, v6}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v5, "deviceDiscoveredCallback deviceClass"

    invoke-static {v5, v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 424
    invoke-interface {p1, v3, v0}, Ljavax/bluetooth/DiscoveryListener;->deviceDiscovered(Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DeviceClass;)V

    goto :goto_0
.end method

.method public native enableNativeDebug(Ljava/lang/Class;Z)V
.end method

.method public getConnectionRfRemoteAddress(J)J
    .locals 2
    .param p1, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 715
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFeatureSet()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
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
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalDeviceDiscoverable()I
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public getLocalDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalDeviceProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x3a

    .line 202
    const-string v5, "bluetooth.connected.devices.max"

    .line 203
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 204
    const-string v5, "7"

    .line 274
    :goto_0
    return-object v5

    .line 206
    :cond_0
    const-string v5, "bluetooth.sd.trans.max"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 207
    const-string v5, "1"

    goto :goto_0

    .line 209
    :cond_1
    const-string v5, "bluetooth.connected.inquiry.scan"

    .line 210
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 211
    const-string v5, "true"

    goto :goto_0

    .line 213
    :cond_2
    const-string v5, "bluetooth.connected.page.scan"

    .line 214
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 215
    const-string v5, "true"

    goto :goto_0

    .line 217
    :cond_3
    const-string v5, "bluetooth.connected.inquiry"

    .line 218
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 219
    const-string v5, "true"

    goto :goto_0

    .line 221
    :cond_4
    const-string v5, "bluetooth.connected.page"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 222
    const-string v5, "true"

    goto :goto_0

    .line 225
    :cond_5
    const-string v5, "bluetooth.sd.attr.retrievable.max"

    .line 226
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 227
    const v5, 0xffff

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 229
    :cond_6
    const-string v5, "bluetooth.master.switch"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 230
    const-string v5, "false"

    goto :goto_0

    .line 232
    :cond_7
    const-string v5, "bluetooth.l2cap.receiveMTU.max"

    .line 233
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 234
    const/16 v5, 0x400

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 237
    :cond_8
    const-string v5, "bluecove.radio.version"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 238
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackToshiba;->getDeviceVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 240
    :cond_9
    const-string v5, "bluecove.radio.manufacturer"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 241
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackToshiba;->getDeviceManufacturer()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 243
    :cond_a
    const-string v5, "bluecove.stack.version"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 244
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackToshiba;->getBTWVersionInfo()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 247
    :cond_b
    const-string v5, "bluecove.nativeFunction:"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 249
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 248
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, "functionDescr":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 251
    .local v4, "paramIdx":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_c

    .line 252
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid native function "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; arguments expected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 252
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 255
    :cond_c
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "function":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 256
    invoke-static {v5}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getAddress(Ljava/lang/String;)J

    move-result-wide v0

    .line 258
    .local v0, "address":J
    const-string v5, "getRemoteDeviceVersionInfo"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 259
    invoke-virtual {p0, v0, v1}, Lcom/intel/bluetooth/BluetoothStackToshiba;->getRemoteDeviceVersionInfo(J)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 260
    :cond_d
    const-string v5, "cancelSniffMode"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 261
    invoke-virtual {p0, v0, v1}, Lcom/intel/bluetooth/BluetoothStackToshiba;->cancelSniffMode(J)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 262
    :cond_e
    const-string v5, "setSniffMode"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 263
    invoke-virtual {p0, v0, v1}, Lcom/intel/bluetooth/BluetoothStackToshiba;->setSniffMode(J)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 264
    :cond_f
    const-string v5, "getRemoteDeviceRSSI"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 265
    invoke-virtual {p0, v0, v1}, Lcom/intel/bluetooth/BluetoothStackToshiba;->getRemoteDeviceRSSI(J)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 266
    :cond_10
    const-string v5, "getRemoteDeviceLinkMode"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 267
    invoke-virtual {p0, v0, v1}, Lcom/intel/bluetooth/BluetoothStackToshiba;->isRemoteDeviceConnected(J)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 268
    invoke-virtual {p0, v0, v1}, Lcom/intel/bluetooth/BluetoothStackToshiba;->getRemoteDeviceLinkMode(J)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 270
    :cond_11
    const-string v5, "disconnected"

    goto/16 :goto_0

    .line 274
    .end local v0    # "address":J
    .end local v2    # "function":Ljava/lang/String;
    .end local v3    # "functionDescr":Ljava/lang/String;
    .end local v4    # "paramIdx":I
    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_0
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
    .line 448
    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothStackToshiba;->getRemoteDeviceFriendlyNameImpl(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteDeviceLinkMode(J)Ljava/lang/String;
    .locals 1
    .param p1, "address"    # J

    .prologue
    .line 314
    const-string v0, ""

    return-object v0
.end method

.method public getRemoteDeviceRSSI(J)I
    .locals 1
    .param p1, "address"    # J

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public getRemoteDeviceVersionInfo(J)Ljava/lang/String;
    .locals 1
    .param p1, "address"    # J

    .prologue
    .line 318
    const-string v0, ""

    return-object v0
.end method

.method public getStackID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "toshiba"

    return-object v0
.end method

.method public initialize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackToshiba;->initializeImpl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljavax/bluetooth/BluetoothStateException;

    .line 125
    const-string v1, "TOSHIBA BluetoothStack not found"

    .line 124
    invoke-direct {v0, v1}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intel/bluetooth/BluetoothStackToshiba;->initialized:Z

    .line 128
    return-void
.end method

.method public isCurrentThreadInterruptedCallback()Z
    .locals 1

    .prologue
    .line 145
    invoke-static {}, Lcom/intel/bluetooth/UtilsJavaSE;->isCurrentThreadInterrupted()Z

    move-result v0

    return v0
.end method

.method public isLocalDevicePowerOn()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public native isNativeCodeLoaded()Z
.end method

.method public isRemoteDeviceAuthenticated(J)Ljava/lang/Boolean;
    .locals 1
    .param p1, "address"    # J

    .prologue
    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public isRemoteDeviceConnected(J)Z
    .locals 1
    .param p1, "address"    # J

    .prologue
    .line 310
    const/4 v0, 0x1

    return v0
.end method

.method public isRemoteDeviceTrusted(J)Ljava/lang/Boolean;
    .locals 1
    .param p1, "address"    # J

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public l2CloseClientConnection(J)V
    .locals 0
    .param p1, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 740
    return-void
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
    .line 789
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
    .line 875
    const/4 v0, 0x0

    return v0
.end method

.method public l2GetReceiveMTU(J)I
    .locals 1
    .param p1, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 844
    const/4 v0, 0x0

    return v0
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
    .line 804
    return p3
.end method

.method public l2GetTransmitMTU(J)I
    .locals 1
    .param p1, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 854
    const/4 v0, 0x0

    return v0
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
    .line 730
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public l2Ready(J)Z
    .locals 1
    .param p1, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 814
    const/4 v0, 0x0

    return v0
.end method

.method public l2Receive(J[B)I
    .locals 1
    .param p1, "handle"    # J
    .param p3, "inBuf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 824
    const/4 v0, 0x0

    return v0
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
    .line 864
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public l2Send(J[BI)V
    .locals 0
    .param p1, "handle"    # J
    .param p3, "data"    # [B
    .param p4, "transmitMTU"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 835
    return-void
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
    .line 778
    const-wide/16 v0, 0x0

    return-wide v0
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
    .line 801
    return-void
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
    .line 753
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public l2ServerUpdateServiceRecord(JLcom/intel/bluetooth/ServiceRecordImpl;Z)V
    .locals 0
    .param p1, "handle"    # J
    .param p3, "serviceRecord"    # Lcom/intel/bluetooth/ServiceRecordImpl;
    .param p4, "acceptAndOpen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/ServiceRegistrationException;
        }
    .end annotation

    .prologue
    .line 766
    return-void
.end method

.method public populateServicesRecordAttributeValues(Lcom/intel/bluetooth/ServiceRecordImpl;[I)Z
    .locals 6
    .param p1, "serviceRecord"    # Lcom/intel/bluetooth/ServiceRecordImpl;
    .param p2, "attrIDs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 585
    array-length v4, p2

    const v5, 0xffff

    if-le v4, v5, :cond_0

    .line 586
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 592
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/intel/bluetooth/ServiceRecordImpl;->getHostDevice()Ljavax/bluetooth/RemoteDevice;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/bluetooth/RemoteDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v4

    .line 591
    invoke-static {v4}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getAddress(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/intel/bluetooth/BluetoothStackToshiba;->connectSDPImpl(J)S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 600
    .local v1, "cid":S
    :try_start_1
    invoke-virtual {p1}, Lcom/intel/bluetooth/ServiceRecordImpl;->getHandle()J

    move-result-wide v4

    invoke-direct {p0, v1, v4, v5, p2}, Lcom/intel/bluetooth/BluetoothStackToshiba;->populateWorkerImpl(SJ[I)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 606
    .local v0, "bytes":[B
    if-nez v0, :cond_1

    .line 616
    .end local v0    # "bytes":[B
    .end local v1    # "cid":S
    :goto_0
    return v3

    .line 593
    :catch_0
    move-exception v2

    .line 594
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 601
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "cid":S
    :catch_1
    move-exception v2

    .line 602
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lcom/intel/bluetooth/BluetoothStackToshiba;->disconnectSDPImpl(S)V

    goto :goto_0

    .line 612
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "bytes":[B
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/intel/bluetooth/BluetoothStackToshiba;->setAttributes(Lcom/intel/bluetooth/ServiceRecordImpl;[I[B)Z

    move-result v3

    .line 614
    .local v3, "ret":Z
    invoke-direct {p0, v1}, Lcom/intel/bluetooth/BluetoothStackToshiba;->disconnectSDPImpl(S)V

    goto :goto_0
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
    .line 169
    return-void
.end method

.method public requireNativeLibraries()[Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;
    .locals 1

    .prologue
    .line 109
    const-string v0, "bluecove"

    invoke-static {v0}, Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;->library(Ljava/lang/String;)[Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;

    move-result-object v0

    return-object v0
.end method

.method public retrieveDevices(I)[Ljavax/bluetooth/RemoteDevice;
    .locals 1
    .param p1, "option"    # I

    .prologue
    .line 149
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
    .line 644
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
    .line 634
    return p3
.end method

.method public rfServerAcceptAndOpenRfServerConnection(J)J
    .locals 2
    .param p1, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 671
    const-wide/16 v0, 0x0

    return-wide v0
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
    .line 659
    return-void
.end method

.method public rfServerOpen(Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;Lcom/intel/bluetooth/ServiceRecordImpl;)J
    .locals 2
    .param p1, "params"    # Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;
    .param p2, "serviceRecord"    # Lcom/intel/bluetooth/ServiceRecordImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 652
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public rfServerUpdateServiceRecord(JLcom/intel/bluetooth/ServiceRecordImpl;Z)V
    .locals 0
    .param p1, "handle"    # J
    .param p3, "serviceRecord"    # Lcom/intel/bluetooth/ServiceRecordImpl;
    .param p4, "acceptAndOpen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/ServiceRegistrationException;
        }
    .end annotation

    .prologue
    .line 666
    return-void
.end method

.method public runDeviceInquiry(Lcom/intel/bluetooth/DeviceInquiryThread;ILjavax/bluetooth/DiscoveryListener;)I
    .locals 9
    .param p1, "startedNotify"    # Lcom/intel/bluetooth/DeviceInquiryThread;
    .param p2, "accessCode"    # I
    .param p3, "listener"    # Ljavax/bluetooth/DiscoveryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 355
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/intel/bluetooth/BluetoothStackToshiba;->runDeviceInquiryImpl(Lcom/intel/bluetooth/DeviceInquiryThread;ILjavax/bluetooth/DiscoveryListener;)I

    move-result v2

    .line 357
    .local v2, "discType":I
    if-nez v2, :cond_1

    .line 359
    iget-object v7, p0, Lcom/intel/bluetooth/BluetoothStackToshiba;->deviceDiscoveryListenerFoundDevices:Ljava/util/Hashtable;

    .line 360
    invoke-virtual {v7, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable;

    .line 361
    .local v4, "previouslyFound":Ljava/util/Hashtable;
    if-eqz v4, :cond_1

    .line 362
    iget-object v7, p0, Lcom/intel/bluetooth/BluetoothStackToshiba;->deviceDiscoveryListenerReportedDevices:Ljava/util/Hashtable;

    .line 363
    invoke-virtual {v7, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Vector;

    .line 364
    .local v6, "reported":Ljava/util/Vector;
    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 365
    .local v3, "en":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 364
    if-nez v7, :cond_2

    .line 386
    .end local v3    # "en":Ljava/util/Enumeration;
    .end local v4    # "previouslyFound":Ljava/util/Hashtable;
    .end local v6    # "reported":Ljava/util/Vector;
    :cond_1
    iget-object v7, p0, Lcom/intel/bluetooth/BluetoothStackToshiba;->deviceDiscoveryListeners:Ljava/util/Vector;

    invoke-virtual {v7, p3}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 387
    iget-object v7, p0, Lcom/intel/bluetooth/BluetoothStackToshiba;->deviceDiscoveryListenerFoundDevices:Ljava/util/Hashtable;

    invoke-virtual {v7, p3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v7, p0, Lcom/intel/bluetooth/BluetoothStackToshiba;->deviceDiscoveryListenerReportedDevices:Ljava/util/Hashtable;

    invoke-virtual {v7, p3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .end local v2    # "discType":I
    :goto_0
    return v2

    .line 367
    .restart local v2    # "discType":I
    .restart local v3    # "en":Ljava/util/Enumeration;
    .restart local v4    # "previouslyFound":Ljava/util/Hashtable;
    .restart local v6    # "reported":Ljava/util/Vector;
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/bluetooth/RemoteDevice;

    .line 368
    .local v5, "remoteDevice":Ljavax/bluetooth/RemoteDevice;
    invoke-virtual {v6, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 371
    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 373
    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 374
    .local v1, "deviceClassInt":Ljava/lang/Integer;
    new-instance v0, Ljavax/bluetooth/DeviceClass;

    .line 375
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 374
    invoke-direct {v0, v7}, Ljavax/bluetooth/DeviceClass;-><init>(I)V

    .line 376
    .local v0, "deviceClass":Ljavax/bluetooth/DeviceClass;
    invoke-interface {p3, v5, v0}, Ljavax/bluetooth/DiscoveryListener;->deviceDiscovered(Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DeviceClass;)V

    .line 378
    iget-object v7, p0, Lcom/intel/bluetooth/BluetoothStackToshiba;->deviceDiscoveryListeners:Ljava/util/Vector;

    invoke-virtual {v7, p3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 386
    iget-object v7, p0, Lcom/intel/bluetooth/BluetoothStackToshiba;->deviceDiscoveryListeners:Ljava/util/Vector;

    invoke-virtual {v7, p3}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 387
    iget-object v7, p0, Lcom/intel/bluetooth/BluetoothStackToshiba;->deviceDiscoveryListenerFoundDevices:Ljava/util/Hashtable;

    invoke-virtual {v7, p3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v7, p0, Lcom/intel/bluetooth/BluetoothStackToshiba;->deviceDiscoveryListenerReportedDevices:Ljava/util/Hashtable;

    invoke-virtual {v7, p3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const/4 v2, 0x5

    goto :goto_0

    .line 385
    .end local v0    # "deviceClass":Ljavax/bluetooth/DeviceClass;
    .end local v1    # "deviceClassInt":Ljava/lang/Integer;
    .end local v2    # "discType":I
    .end local v3    # "en":Ljava/util/Enumeration;
    .end local v4    # "previouslyFound":Ljava/util/Hashtable;
    .end local v5    # "remoteDevice":Ljavax/bluetooth/RemoteDevice;
    .end local v6    # "reported":Ljava/util/Vector;
    :catchall_0
    move-exception v7

    .line 386
    iget-object v8, p0, Lcom/intel/bluetooth/BluetoothStackToshiba;->deviceDiscoveryListeners:Ljava/util/Vector;

    invoke-virtual {v8, p3}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 387
    iget-object v8, p0, Lcom/intel/bluetooth/BluetoothStackToshiba;->deviceDiscoveryListenerFoundDevices:Ljava/util/Hashtable;

    invoke-virtual {v8, p3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    iget-object v8, p0, Lcom/intel/bluetooth/BluetoothStackToshiba;->deviceDiscoveryListenerReportedDevices:Ljava/util/Hashtable;

    invoke-virtual {v8, p3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    throw v7
.end method

.method public runSearchServices(Lcom/intel/bluetooth/SearchServicesThread;[I[Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DiscoveryListener;)I
    .locals 14
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
    .line 518
    .line 519
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Ljavax/bluetooth/RemoteDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v11

    .line 518
    invoke-static {v11}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getAddress(Ljava/lang/String;)J

    move-result-wide v11

    invoke-direct {p0, v11, v12}, Lcom/intel/bluetooth/BluetoothStackToshiba;->connectSDPImpl(J)S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 524
    .local v2, "cid":S
    move-object/from16 v0, p3

    array-length v11, v0

    const/16 v12, 0x10

    filled-new-array {v11, v12}, [I

    move-result-object v11

    sget-object v12, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[B

    .line 525
    .local v10, "uuidBytes":[[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v11, v0

    if-lt v6, v11, :cond_0

    .line 537
    :try_start_1
    invoke-direct {p0, p1, v2, v10}, Lcom/intel/bluetooth/BluetoothStackToshiba;->searchServicesImpl(Lcom/intel/bluetooth/SearchServicesThread;S[[B)[J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 543
    .local v5, "handles":[J
    array-length v11, v5

    if-gtz v11, :cond_2

    .line 544
    invoke-direct {p0, v2}, Lcom/intel/bluetooth/BluetoothStackToshiba;->disconnectSDPImpl(S)V

    .line 545
    const/4 v11, 0x4

    .line 568
    .end local v2    # "cid":S
    .end local v5    # "handles":[J
    .end local v6    # "i":I
    .end local v10    # "uuidBytes":[[B
    :goto_1
    return v11

    .line 520
    :catch_0
    move-exception v3

    .line 521
    .local v3, "e":Ljava/lang/Exception;
    const/4 v11, 0x6

    goto :goto_1

    .line 526
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "cid":S
    .restart local v6    # "i":I
    .restart local v10    # "uuidBytes":[[B
    :cond_0
    const/16 v11, 0x10

    new-array v11, v11, [B

    aput-object v11, v10, v6

    .line 527
    aget-object v11, p3, v6

    invoke-virtual {v11}, Ljavax/bluetooth/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 528
    .local v4, "full":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    const/16 v11, 0x10

    if-lt v7, v11, :cond_1

    .line 525
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 529
    :cond_1
    mul-int/lit8 v11, v7, 0x2

    mul-int/lit8 v12, v7, 0x2

    add-int/lit8 v12, v12, 0x2

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    .line 530
    .local v9, "sub":Ljava/lang/String;
    aget-object v11, v10, v6

    const/16 v12, 0x10

    invoke-static {v9, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v11, v7

    .line 528
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 538
    .end local v4    # "full":Ljava/lang/String;
    .end local v7    # "j":I
    .end local v9    # "sub":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 539
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-direct {p0, v2}, Lcom/intel/bluetooth/BluetoothStackToshiba;->disconnectSDPImpl(S)V

    .line 540
    const/4 v11, 0x3

    goto :goto_1

    .line 548
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "handles":[J
    :cond_2
    array-length v11, v5

    new-array v8, v11, [Lcom/intel/bluetooth/ServiceRecordImpl;

    .line 550
    .local v8, "records":[Lcom/intel/bluetooth/ServiceRecordImpl;
    const/4 v6, 0x0

    :goto_3
    array-length v11, v5

    if-lt v6, v11, :cond_3

    .line 564
    invoke-virtual {p1}, Lcom/intel/bluetooth/SearchServicesThread;->getTransID()I

    move-result v11

    move-object/from16 v0, p5

    invoke-interface {v0, v11, v8}, Ljavax/bluetooth/DiscoveryListener;->servicesDiscovered(I[Ljavax/bluetooth/ServiceRecord;)V

    .line 566
    invoke-direct {p0, v2}, Lcom/intel/bluetooth/BluetoothStackToshiba;->disconnectSDPImpl(S)V

    .line 568
    const/4 v11, 0x1

    goto :goto_1

    .line 551
    :cond_3
    new-instance v11, Lcom/intel/bluetooth/ServiceRecordImpl;

    aget-wide v12, v5, v6

    move-object/from16 v0, p4

    invoke-direct {v11, p0, v0, v12, v13}, Lcom/intel/bluetooth/ServiceRecordImpl;-><init>(Lcom/intel/bluetooth/BluetoothStack;Ljavax/bluetooth/RemoteDevice;J)V

    aput-object v11, v8, v6

    .line 554
    :try_start_2
    aget-wide v11, v5, v6

    move-object/from16 v0, p2

    invoke-direct {p0, v2, v11, v12, v0}, Lcom/intel/bluetooth/BluetoothStackToshiba;->populateWorkerImpl(SJ[I)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    .line 559
    .local v1, "bytes":[B
    if-eqz v1, :cond_4

    .line 560
    aget-object v11, v8, v6

    move-object/from16 v0, p2

    invoke-direct {p0, v11, v0, v1}, Lcom/intel/bluetooth/BluetoothStackToshiba;->setAttributes(Lcom/intel/bluetooth/ServiceRecordImpl;[I[B)Z

    .line 550
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 555
    .end local v1    # "bytes":[B
    :catch_2
    move-exception v3

    .line 556
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-direct {p0, v2}, Lcom/intel/bluetooth/BluetoothStackToshiba;->disconnectSDPImpl(S)V

    .line 557
    const/4 v11, 0x3

    goto :goto_1
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
    .line 574
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

.method public setLocalDeviceDiscoverable(I)Z
    .locals 1
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public setLocalDeviceServiceClasses(I)V
    .locals 0
    .param p1, "classOfDevice"    # I

    .prologue
    .line 188
    return-void
.end method

.method public setSniffMode(J)Z
    .locals 1
    .param p1, "address"    # J

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
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
    .line 341
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackToshiba;->deviceDiscoveryListeners:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 343
    const-string v0, "bluecove.inquiry.report_asap"

    const/4 v1, 0x0

    .line 342
    invoke-static {v0, v1}, Lcom/intel/bluetooth/BlueCoveImpl;->getConfigProperty(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackToshiba;->deviceDiscoveryListenerFoundDevices:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {v0, p2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackToshiba;->deviceDiscoveryListenerReportedDevices:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, p2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    invoke-static {p0, p0, p1, p2}, Lcom/intel/bluetooth/DeviceInquiryThread;->startInquiry(Lcom/intel/bluetooth/BluetoothStack;Lcom/intel/bluetooth/DeviceInquiryRunnable;ILjavax/bluetooth/DiscoveryListener;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackToshiba;->getStackID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public abstract Lcom/intel/bluetooth/RemoteDeviceHelper;
.super Ljava/lang/Object;
.source "RemoteDeviceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;
    }
.end annotation


# static fields
.field private static stackDevicesCashed:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 341
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/intel/bluetooth/RemoteDeviceHelper;->stackDevicesCashed:Ljava/util/Hashtable;

    .line 53
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    return-void
.end method

.method public static authenticate(Ljavax/bluetooth/RemoteDevice;)Z
    .locals 1
    .param p0, "device"    # Ljavax/bluetooth/RemoteDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 637
    invoke-static {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->remoteDeviceImpl(Ljavax/bluetooth/RemoteDevice;)Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->authenticate()Z

    move-result v0

    return v0
.end method

.method public static authenticate(Ljavax/bluetooth/RemoteDevice;Ljava/lang/String;)Z
    .locals 1
    .param p0, "device"    # Ljavax/bluetooth/RemoteDevice;
    .param p1, "passkey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    invoke-static {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->remoteDeviceImpl(Ljavax/bluetooth/RemoteDevice;)Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->authenticate(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static connected(Lcom/intel/bluetooth/BluetoothConnectionAccess;)V
    .locals 2
    .param p0, "connection"    # Lcom/intel/bluetooth/BluetoothConnectionAccess;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    move-object v1, p0

    check-cast v1, Ljavax/microedition/io/Connection;

    invoke-static {v1}, Lcom/intel/bluetooth/RemoteDeviceHelper;->implGetRemoteDevice(Ljavax/microedition/io/Connection;)Ljavax/bluetooth/RemoteDevice;

    move-result-object v0

    check-cast v0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    .line 579
    .local v0, "device":Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;
    invoke-interface {p0, v0}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->setRemoteDevice(Ljavax/bluetooth/RemoteDevice;)V

    .line 580
    # invokes: Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->addConnection(Ljava/lang/Object;)V
    invoke-static {v0, p0}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->access$4(Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;Ljava/lang/Object;)V

    .line 581
    return-void
.end method

.method public static connectedDevices()I
    .locals 4

    .prologue
    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, "c":I
    invoke-static {}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getBluetoothStack()Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v3

    invoke-static {v3}, Lcom/intel/bluetooth/RemoteDeviceHelper;->devicesCashed(Lcom/intel/bluetooth/BluetoothStack;)Ljava/util/Hashtable;

    move-result-object v1

    .line 487
    .local v1, "devicesCashed":Ljava/util/Hashtable;
    monitor-enter v1

    .line 488
    :try_start_0
    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 489
    .local v2, "en":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    .line 488
    if-nez v3, :cond_1

    .line 487
    monitor-exit v1

    .line 496
    return v0

    .line 490
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    .line 491
    invoke-virtual {v3}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->hasConnections()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 487
    .end local v2    # "en":Ljava/util/Enumeration;
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method static createRemoteDevice(Lcom/intel/bluetooth/BluetoothStack;JLjava/lang/String;Z)Ljavax/bluetooth/RemoteDevice;
    .locals 7
    .param p0, "bluetoothStack"    # Lcom/intel/bluetooth/BluetoothStack;
    .param p1, "address"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "paired"    # Z

    .prologue
    .line 383
    .line 382
    invoke-static {p0, p1, p2}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getCashedDeviceWithExtendedInfo(Lcom/intel/bluetooth/BluetoothStack;J)Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    move-result-object v0

    .line 384
    .local v0, "dev":Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;
    if-nez v0, :cond_4

    .line 385
    invoke-static {}, Lcom/intel/bluetooth/BlueCoveImpl;->getCurrentThreadBluetoothStackID()Ljava/lang/Object;

    move-result-object v6

    .line 387
    .local v6, "saveID":Ljava/lang/Object;
    :try_start_0
    invoke-static {p0}, Lcom/intel/bluetooth/BlueCoveImpl;->setThreadBluetoothStack(Lcom/intel/bluetooth/BluetoothStack;)V

    .line 388
    new-instance v0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    .end local v0    # "dev":Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;
    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;-><init>(Lcom/intel/bluetooth/BluetoothStack;JLjava/lang/String;Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    .restart local v0    # "dev":Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;
    if-eqz v6, :cond_0

    .line 392
    invoke-static {v6}, Lcom/intel/bluetooth/BlueCoveImpl;->setThreadBluetoothStackID(Ljava/lang/Object;)V

    .line 395
    :cond_0
    invoke-static {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->devicesCashed(Lcom/intel/bluetooth/BluetoothStack;)Ljava/util/Hashtable;

    move-result-object v1

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string v1, "new devicesCashed"

    invoke-static {v1, p1, p2}, Lcom/intel/bluetooth/DebugLog;->debug0x(Ljava/lang/String;J)V

    .line 404
    .end local v6    # "saveID":Ljava/lang/Object;
    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    .line 405
    invoke-static {v0, p4}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->access$1(Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;Z)V

    .line 407
    :cond_2
    return-object v0

    .line 390
    .end local v0    # "dev":Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;
    .restart local v6    # "saveID":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .line 391
    if-eqz v6, :cond_3

    .line 392
    invoke-static {v6}, Lcom/intel/bluetooth/BlueCoveImpl;->setThreadBluetoothStackID(Ljava/lang/Object;)V

    .line 394
    :cond_3
    throw v1

    .line 397
    .end local v6    # "saveID":Ljava/lang/Object;
    .restart local v0    # "dev":Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;
    :cond_4
    iget-object v1, v0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/intel/bluetooth/Utils;->isStringSet(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 399
    iput-object p3, v0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->name:Ljava/lang/String;

    goto :goto_0

    .line 400
    :cond_5
    invoke-static {p3}, Lcom/intel/bluetooth/Utils;->isStringSet(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    iput-object p3, v0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method static createRemoteDevice(Lcom/intel/bluetooth/BluetoothStack;Ljavax/bluetooth/RemoteDevice;)Ljavax/bluetooth/RemoteDevice;
    .locals 4
    .param p0, "bluetoothStack"    # Lcom/intel/bluetooth/BluetoothStack;
    .param p1, "device"    # Ljavax/bluetooth/RemoteDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 427
    instance-of v0, p1, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    if-eqz v0, :cond_0

    .line 433
    .end local p1    # "device":Ljavax/bluetooth/RemoteDevice;
    :goto_0
    return-object p1

    .line 430
    .restart local p1    # "device":Ljavax/bluetooth/RemoteDevice;
    :cond_0
    if-nez p0, :cond_1

    .line 431
    invoke-static {}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getBluetoothStack()Lcom/intel/bluetooth/BluetoothStack;

    move-result-object p0

    .line 433
    :cond_1
    invoke-static {p1}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getAddress(Ljavax/bluetooth/RemoteDevice;)J

    move-result-wide v0

    const/4 v2, 0x0

    .line 434
    const/4 v3, 0x0

    .line 433
    invoke-static {p0, v0, v1, v2, v3}, Lcom/intel/bluetooth/RemoteDeviceHelper;->createRemoteDevice(Lcom/intel/bluetooth/BluetoothStack;JLjava/lang/String;Z)Ljavax/bluetooth/RemoteDevice;

    move-result-object p1

    goto :goto_0
.end method

.method private static declared-synchronized devicesCashed(Lcom/intel/bluetooth/BluetoothStack;)Ljava/util/Hashtable;
    .locals 3
    .param p0, "bluetoothStack"    # Lcom/intel/bluetooth/BluetoothStack;

    .prologue
    .line 349
    const-class v2, Lcom/intel/bluetooth/RemoteDeviceHelper;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/intel/bluetooth/RemoteDeviceHelper;->stackDevicesCashed:Ljava/util/Hashtable;

    .line 350
    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 351
    .local v0, "devicesCashed":Ljava/util/Hashtable;
    if-nez v0, :cond_0

    .line 352
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "devicesCashed":Ljava/util/Hashtable;
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 353
    .restart local v0    # "devicesCashed":Ljava/util/Hashtable;
    sget-object v1, Lcom/intel/bluetooth/RemoteDeviceHelper;->stackDevicesCashed:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :cond_0
    monitor-exit v2

    return-object v0

    .line 349
    .end local v0    # "devicesCashed":Ljava/util/Hashtable;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static disconnected(Lcom/intel/bluetooth/BluetoothConnectionAccess;)V
    .locals 2
    .param p0, "connection"    # Lcom/intel/bluetooth/BluetoothConnectionAccess;

    .prologue
    .line 584
    invoke-interface {p0}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->getRemoteDevice()Ljavax/bluetooth/RemoteDevice;

    move-result-object v0

    .line 585
    .local v0, "d":Ljavax/bluetooth/RemoteDevice;
    if-eqz v0, :cond_0

    .line 586
    check-cast v0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    .end local v0    # "d":Ljavax/bluetooth/RemoteDevice;
    # invokes: Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->removeConnection(Ljava/lang/Object;)V
    invoke-static {v0, p0}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->access$5(Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;Ljava/lang/Object;)V

    .line 587
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->setRemoteDevice(Ljavax/bluetooth/RemoteDevice;)V

    .line 589
    :cond_0
    return-void
.end method

.method public static formatBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 511
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "000000000000"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAddress(Ljava/lang/String;)J
    .locals 4
    .param p0, "bluetoothAddress"    # Ljava/lang/String;

    .prologue
    .line 532
    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 533
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal bluetoothAddress {"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 533
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 537
    :cond_0
    const/16 v1, 0x10

    :try_start_0
    invoke-static {p0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    return-wide v1

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal bluetoothAddress {"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}; should be hex number"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 539
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getAddress(Ljavax/bluetooth/RemoteDevice;)J
    .locals 2
    .param p0, "device"    # Ljavax/bluetooth/RemoteDevice;

    .prologue
    .line 545
    instance-of v0, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    if-eqz v0, :cond_0

    .line 546
    check-cast p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    .end local p0    # "device":Ljavax/bluetooth/RemoteDevice;
    iget-wide v0, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->addressLong:J

    .line 548
    .restart local p0    # "device":Ljavax/bluetooth/RemoteDevice;
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljavax/bluetooth/RemoteDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getAddress(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getBluetoothAddress(J)Ljava/lang/String;
    .locals 1
    .param p0, "address"    # J

    .prologue
    .line 522
    invoke-static {p0, p1}, Lcom/intel/bluetooth/Utils;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->formatBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBluetoothStack()Lcom/intel/bluetooth/BluetoothStack;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 412
    :try_start_0
    invoke-static {}, Lcom/intel/bluetooth/BlueCoveImpl;->instance()Lcom/intel/bluetooth/BlueCoveImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/intel/bluetooth/BlueCoveImpl;->getBluetoothStack()Lcom/intel/bluetooth/BluetoothStack;
    :try_end_0
    .catch Ljavax/bluetooth/BluetoothStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 413
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljavax/bluetooth/BluetoothStateException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t initialize bluetooth support"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 414
    invoke-static {v1, v0}, Lcom/intel/bluetooth/UtilsJavaSE;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
.end method

.method static getCashedDevice(Lcom/intel/bluetooth/BluetoothStack;J)Ljavax/bluetooth/RemoteDevice;
    .locals 1
    .param p0, "bluetoothStack"    # Lcom/intel/bluetooth/BluetoothStack;
    .param p1, "address"    # J

    .prologue
    .line 367
    invoke-static {p0, p1, p2}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getCashedDeviceWithExtendedInfo(Lcom/intel/bluetooth/BluetoothStack;J)Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    move-result-object v0

    return-object v0
.end method

.method private static getCashedDeviceWithExtendedInfo(Lcom/intel/bluetooth/BluetoothStack;J)Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;
    .locals 2
    .param p0, "bluetoothStack"    # Lcom/intel/bluetooth/BluetoothStack;
    .param p1, "address"    # J

    .prologue
    .line 360
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    .line 361
    .local v0, "key":Ljava/lang/Long;
    invoke-static {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->devicesCashed(Lcom/intel/bluetooth/BluetoothStack;)Ljava/util/Hashtable;

    move-result-object v1

    .line 362
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    .line 361
    return-object v1
.end method

.method static getStackAttributes(Lcom/intel/bluetooth/BluetoothStack;Ljavax/bluetooth/RemoteDevice;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "bluetoothStack"    # Lcom/intel/bluetooth/BluetoothStack;
    .param p1, "device"    # Ljavax/bluetooth/RemoteDevice;
    .param p2, "key"    # Ljava/lang/Object;

    .prologue
    .line 561
    const/4 v0, 0x0

    .line 562
    .local v0, "devInfo":Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;
    instance-of v1, p1, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 563
    check-cast v0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    .line 569
    :goto_0
    if-eqz v0, :cond_1

    .line 570
    # invokes: Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->getStackAttributes(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, p2}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->access$3(Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 572
    :goto_1
    return-object v1

    .line 566
    :cond_0
    invoke-static {p1}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getAddress(Ljavax/bluetooth/RemoteDevice;)J

    move-result-wide v1

    .line 565
    invoke-static {p0, v1, v2}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getCashedDeviceWithExtendedInfo(Lcom/intel/bluetooth/BluetoothStack;J)Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    move-result-object v0

    goto :goto_0

    .line 572
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static getStackBoundDevice(Lcom/intel/bluetooth/BluetoothStack;Ljavax/bluetooth/RemoteDevice;)Ljavax/bluetooth/RemoteDevice;
    .locals 4
    .param p0, "bluetoothStack"    # Lcom/intel/bluetooth/BluetoothStack;
    .param p1, "device"    # Ljavax/bluetooth/RemoteDevice;

    .prologue
    .line 372
    instance-of v0, p1, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 373
    check-cast v0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    iget-object v0, v0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    if-ne v0, p0, :cond_0

    .line 376
    .end local p1    # "device":Ljavax/bluetooth/RemoteDevice;
    :goto_0
    return-object p1

    .restart local p1    # "device":Ljavax/bluetooth/RemoteDevice;
    :cond_0
    invoke-static {p1}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getAddress(Ljavax/bluetooth/RemoteDevice;)J

    move-result-wide v0

    const/4 v2, 0x0

    .line 377
    const/4 v3, 0x0

    .line 376
    invoke-static {p0, v0, v1, v2, v3}, Lcom/intel/bluetooth/RemoteDeviceHelper;->createRemoteDevice(Lcom/intel/bluetooth/BluetoothStack;JLjava/lang/String;Z)Ljavax/bluetooth/RemoteDevice;

    move-result-object p1

    goto :goto_0
.end method

.method public static implAuthorize(Ljavax/bluetooth/RemoteDevice;Ljavax/microedition/io/Connection;)Z
    .locals 1
    .param p0, "device"    # Ljavax/bluetooth/RemoteDevice;
    .param p1, "conn"    # Ljavax/microedition/io/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 806
    invoke-static {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->remoteDeviceImpl(Ljavax/bluetooth/RemoteDevice;)Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->authorize(Ljavax/microedition/io/Connection;)Z

    move-result v0

    return v0
.end method

.method public static implEncrypt(Ljavax/bluetooth/RemoteDevice;Ljavax/microedition/io/Connection;Z)Z
    .locals 1
    .param p0, "device"    # Ljavax/bluetooth/RemoteDevice;
    .param p1, "conn"    # Ljavax/microedition/io/Connection;
    .param p2, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 821
    invoke-static {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->remoteDeviceImpl(Ljavax/bluetooth/RemoteDevice;)Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->encrypt(Ljavax/microedition/io/Connection;Z)Z

    move-result v0

    return v0
.end method

.method public static implGetFriendlyName(Ljavax/bluetooth/RemoteDevice;JZ)Ljava/lang/String;
    .locals 2
    .param p0, "device"    # Ljavax/bluetooth/RemoteDevice;
    .param p1, "address"    # J
    .param p3, "alwaysAsk"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 695
    instance-of v1, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    if-nez v1, :cond_0

    .line 696
    const/4 v1, 0x0

    invoke-static {v1, p0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->createRemoteDevice(Lcom/intel/bluetooth/BluetoothStack;Ljavax/bluetooth/RemoteDevice;)Ljavax/bluetooth/RemoteDevice;

    move-result-object p0

    :cond_0
    move-object v1, p0

    .line 698
    check-cast v1, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    iget-object v0, v1, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->name:Ljava/lang/String;

    .line 699
    .local v0, "name":Ljava/lang/String;
    if-nez p3, :cond_1

    if-nez v0, :cond_2

    :cond_1
    move-object v1, p0

    .line 700
    check-cast v1, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    iget-object v1, v1, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    .line 701
    invoke-interface {v1, p1, p2}, Lcom/intel/bluetooth/BluetoothStack;->getRemoteDeviceFriendlyName(J)Ljava/lang/String;

    move-result-object v0

    .line 702
    if-eqz v0, :cond_2

    .line 703
    check-cast p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    .end local p0    # "device":Ljavax/bluetooth/RemoteDevice;
    iput-object v0, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->name:Ljava/lang/String;

    .line 706
    :cond_2
    return-object v0
.end method

.method public static implGetRemoteDevice(Ljavax/microedition/io/Connection;)Ljavax/bluetooth/RemoteDevice;
    .locals 5
    .param p0, "conn"    # Ljavax/microedition/io/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 721
    instance-of v0, p0, Lcom/intel/bluetooth/BluetoothConnectionAccess;

    if-nez v0, :cond_0

    .line 722
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a Bluetooth connection "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 722
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p0

    .line 726
    check-cast v0, Lcom/intel/bluetooth/BluetoothConnectionAccess;

    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->getBluetoothStack()Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v0

    .line 727
    check-cast p0, Lcom/intel/bluetooth/BluetoothConnectionAccess;

    .end local p0    # "conn":Ljavax/microedition/io/Connection;
    invoke-interface {p0}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->getRemoteAddress()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 728
    const/4 v4, 0x0

    .line 725
    invoke-static {v0, v1, v2, v3, v4}, Lcom/intel/bluetooth/RemoteDeviceHelper;->createRemoteDevice(Lcom/intel/bluetooth/BluetoothStack;JLjava/lang/String;Z)Ljavax/bluetooth/RemoteDevice;

    move-result-object v0

    return-object v0
.end method

.method public static implIsAuthenticated(Ljavax/bluetooth/RemoteDevice;)Z
    .locals 1
    .param p0, "device"    # Ljavax/bluetooth/RemoteDevice;

    .prologue
    .line 844
    invoke-static {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->remoteDeviceImpl(Ljavax/bluetooth/RemoteDevice;)Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->isAuthenticated()Z

    move-result v0

    return v0
.end method

.method public static implIsAuthorized(Ljavax/bluetooth/RemoteDevice;Ljavax/microedition/io/Connection;)Z
    .locals 1
    .param p0, "device"    # Ljavax/bluetooth/RemoteDevice;
    .param p1, "conn"    # Ljavax/microedition/io/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 857
    invoke-static {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->remoteDeviceImpl(Ljavax/bluetooth/RemoteDevice;)Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->isAuthorized(Ljavax/microedition/io/Connection;)Z

    move-result v0

    return v0
.end method

.method public static implIsEncrypted(Ljavax/bluetooth/RemoteDevice;)Z
    .locals 1
    .param p0, "device"    # Ljavax/bluetooth/RemoteDevice;

    .prologue
    .line 881
    invoke-static {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->remoteDeviceImpl(Ljavax/bluetooth/RemoteDevice;)Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->isEncrypted()Z

    move-result v0

    return v0
.end method

.method public static implIsTrustedDevice(Ljavax/bluetooth/RemoteDevice;)Z
    .locals 1
    .param p0, "device"    # Ljavax/bluetooth/RemoteDevice;

    .prologue
    .line 892
    invoke-static {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->remoteDeviceImpl(Ljavax/bluetooth/RemoteDevice;)Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->isTrustedDevice()Z

    move-result v0

    return v0
.end method

.method public static implRetrieveDevices(Lcom/intel/bluetooth/BluetoothStack;I)[Ljavax/bluetooth/RemoteDevice;
    .locals 10
    .param p0, "bluetoothStack"    # Lcom/intel/bluetooth/BluetoothStack;
    .param p1, "option"    # I

    .prologue
    const/4 v1, 0x0

    .line 742
    const/4 v8, 0x1

    if-eq p1, v8, :cond_0

    .line 743
    if-eqz p1, :cond_0

    .line 744
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "invalid option"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 746
    :cond_0
    invoke-interface {p0, p1}, Lcom/intel/bluetooth/BluetoothStack;->retrieveDevices(I)[Ljavax/bluetooth/RemoteDevice;

    move-result-object v5

    .line 747
    .local v5, "impl":[Ljavax/bluetooth/RemoteDevice;
    if-eqz v5, :cond_2

    .line 748
    array-length v8, v5

    if-nez v8, :cond_1

    move-object v5, v1

    .line 788
    .end local v5    # "impl":[Ljavax/bluetooth/RemoteDevice;
    :cond_1
    :goto_0
    return-object v5

    .line 756
    .restart local v5    # "impl":[Ljavax/bluetooth/RemoteDevice;
    :cond_2
    invoke-static {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->devicesCashed(Lcom/intel/bluetooth/BluetoothStack;)Ljava/util/Hashtable;

    move-result-object v2

    .line 757
    .local v2, "devicesCashed":Ljava/util/Hashtable;
    packed-switch p1, :pswitch_data_0

    .line 790
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "invalid option"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 759
    :pswitch_0
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v8

    if-nez v8, :cond_3

    move-object v5, v1

    .line 761
    goto :goto_0

    .line 763
    :cond_3
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 764
    .local v3, "devicesPaired":Ljava/util/Vector;
    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v4

    .line 765
    .local v4, "en":Ljava/util/Enumeration;
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    .line 764
    if-nez v8, :cond_5

    .line 772
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v8

    if-nez v8, :cond_6

    move-object v5, v1

    .line 774
    goto :goto_0

    .line 767
    :cond_5
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    .line 768
    .local v0, "d":Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;
    invoke-virtual {v0}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->isTrustedDevice()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 769
    invoke-virtual {v3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 776
    .end local v0    # "d":Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;
    :cond_6
    invoke-static {v3}, Lcom/intel/bluetooth/RemoteDeviceHelper;->remoteDeviceListToArray(Ljava/util/Vector;)[Ljavax/bluetooth/RemoteDevice;

    move-result-object v5

    goto :goto_0

    .line 778
    .end local v3    # "devicesPaired":Ljava/util/Vector;
    .end local v4    # "en":Ljava/util/Enumeration;
    :pswitch_1
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v8

    if-nez v8, :cond_7

    move-object v5, v1

    .line 780
    goto :goto_0

    .line 782
    :cond_7
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v8

    new-array v1, v8, [Ljavax/bluetooth/RemoteDevice;

    .line 783
    .local v1, "devices":[Ljavax/bluetooth/RemoteDevice;
    const/4 v6, 0x0

    .line 784
    .local v6, "k":I
    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v4

    .line 785
    .restart local v4    # "en":Ljava/util/Enumeration;
    :goto_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    .line 784
    if-nez v8, :cond_8

    move-object v5, v1

    .line 788
    goto :goto_0

    .line 786
    :cond_8
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "k":I
    .local v7, "k":I
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/bluetooth/RemoteDevice;

    aput-object v8, v1, v6

    move v6, v7

    .end local v7    # "k":I
    .restart local v6    # "k":I
    goto :goto_2

    .line 757
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static openConnections()I
    .locals 4

    .prologue
    .line 453
    const/4 v0, 0x0

    .line 454
    .local v0, "c":I
    invoke-static {}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getBluetoothStack()Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v3

    invoke-static {v3}, Lcom/intel/bluetooth/RemoteDeviceHelper;->devicesCashed(Lcom/intel/bluetooth/BluetoothStack;)Ljava/util/Hashtable;

    move-result-object v1

    .line 455
    .local v1, "devicesCashed":Ljava/util/Hashtable;
    monitor-enter v1

    .line 456
    :try_start_0
    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 457
    .local v2, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    .line 456
    if-nez v3, :cond_0

    .line 455
    monitor-exit v1

    .line 462
    return v0

    .line 458
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    .line 459
    invoke-virtual {v3}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->connectionsCount()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 455
    .end local v2    # "en":Ljava/util/Enumeration;
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static openConnections(J)I
    .locals 2
    .param p0, "address"    # J

    .prologue
    .line 472
    invoke-static {}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getBluetoothStack()Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v1

    .line 471
    invoke-static {v1, p0, p1}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getCashedDeviceWithExtendedInfo(Lcom/intel/bluetooth/BluetoothStack;J)Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    move-result-object v0

    .line 473
    .local v0, "dev":Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;
    if-nez v0, :cond_0

    .line 474
    const/4 v1, 0x0

    .line 476
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->connectionsCount()I

    move-result v1

    goto :goto_0
.end method

.method public static readRSSI(Ljavax/bluetooth/RemoteDevice;)I
    .locals 4
    .param p0, "device"    # Ljavax/bluetooth/RemoteDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 616
    invoke-static {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->remoteDeviceImpl(Ljavax/bluetooth/RemoteDevice;)Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    move-result-object v0

    .line 617
    .local v0, "deviceImpl":Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;
    iget-object v1, v0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    instance-of v1, v1, Lcom/intel/bluetooth/BluetoothStackExtension;

    if-eqz v1, :cond_0

    .line 618
    iget-object v1, v0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    check-cast v1, Lcom/intel/bluetooth/BluetoothStackExtension;

    .line 619
    iget-wide v2, v0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->addressLong:J

    invoke-interface {v1, v2, v3}, Lcom/intel/bluetooth/BluetoothStackExtension;->readRemoteDeviceRSSI(J)I

    move-result v1

    .line 618
    return v1

    .line 621
    :cond_0
    new-instance v1, Lcom/intel/bluetooth/NotSupportedIOException;

    .line 622
    iget-object v2, v0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    invoke-interface {v2}, Lcom/intel/bluetooth/BluetoothStack;->getStackID()Ljava/lang/String;

    move-result-object v2

    .line 621
    invoke-direct {v1, v2}, Lcom/intel/bluetooth/NotSupportedIOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static remoteDeviceImpl(Ljavax/bluetooth/RemoteDevice;)Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;
    .locals 1
    .param p0, "device"    # Ljavax/bluetooth/RemoteDevice;

    .prologue
    .line 422
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->createRemoteDevice(Lcom/intel/bluetooth/BluetoothStack;Ljavax/bluetooth/RemoteDevice;)Ljavax/bluetooth/RemoteDevice;

    move-result-object v0

    check-cast v0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    return-object v0
.end method

.method static remoteDeviceListToArray(Ljava/util/Vector;)[Ljavax/bluetooth/RemoteDevice;
    .locals 5
    .param p0, "devices"    # Ljava/util/Vector;

    .prologue
    .line 439
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v0, v4, [Ljavax/bluetooth/RemoteDevice;

    .line 440
    .local v0, "devicesArray":[Ljavax/bluetooth/RemoteDevice;
    const/4 v2, 0x0

    .line 441
    .local v2, "i":I
    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_0

    .line 444
    return-object v0

    .line 442
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/bluetooth/RemoteDevice;

    aput-object v4, v0, v2

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0
.end method

.method public static removeAuthentication(Ljavax/bluetooth/RemoteDevice;)V
    .locals 1
    .param p0, "device"    # Ljavax/bluetooth/RemoteDevice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 679
    invoke-static {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->remoteDeviceImpl(Ljavax/bluetooth/RemoteDevice;)Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->removeAuthentication()V

    .line 680
    return-void
.end method

.method static setStackAttributes(Lcom/intel/bluetooth/BluetoothStack;Ljavax/bluetooth/RemoteDevice;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "bluetoothStack"    # Lcom/intel/bluetooth/BluetoothStack;
    .param p1, "device"    # Ljavax/bluetooth/RemoteDevice;
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 555
    .line 554
    invoke-static {p0, p1}, Lcom/intel/bluetooth/RemoteDeviceHelper;->createRemoteDevice(Lcom/intel/bluetooth/BluetoothStack;Ljavax/bluetooth/RemoteDevice;)Ljavax/bluetooth/RemoteDevice;

    move-result-object v0

    check-cast v0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    .line 556
    .local v0, "devInfo":Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;
    # invokes: Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->setStackAttributes(Ljava/lang/Object;Ljava/lang/Object;)V
    invoke-static {v0, p2, p3}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->access$2(Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 557
    return-void
.end method

.method static shutdownConnections(Lcom/intel/bluetooth/BluetoothStack;)V
    .locals 3
    .param p0, "bluetoothStack"    # Lcom/intel/bluetooth/BluetoothStack;

    .prologue
    .line 500
    invoke-static {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->devicesCashed(Lcom/intel/bluetooth/BluetoothStack;)Ljava/util/Hashtable;

    move-result-object v0

    .line 501
    .local v0, "devicesCashed":Ljava/util/Hashtable;
    monitor-enter v0

    .line 502
    :try_start_0
    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 503
    .local v1, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    .line 502
    if-nez v2, :cond_0

    .line 501
    monitor-exit v0

    .line 508
    return-void

    .line 504
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;

    .line 505
    invoke-virtual {v2}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->shutdownConnections()V

    goto :goto_0

    .line 501
    .end local v1    # "en":Ljava/util/Enumeration;
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

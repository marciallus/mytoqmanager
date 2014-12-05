.class Lcom/intel/bluetooth/BluetoothStackMicrosoft;
.super Ljava/lang/Object;
.source "BluetoothStackMicrosoft.java"

# interfaces
.implements Lcom/intel/bluetooth/BluetoothStack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;
    }
.end annotation


# static fields
.field private static final ATTR_RETRIEVABLE_MAX:I = 0x100

.field private static final BTH_MODE_CONNECTABLE:I = 0x2

.field private static final BTH_MODE_DISCOVERABLE:I = 0x3

.field private static final BTH_MODE_POWER_OFF:I = 0x1

.field private static connectThreadNumber:I

.field private static singleInstance:Lcom/intel/bluetooth/BluetoothStackMicrosoft;


# instance fields
.field private currentDeviceDiscoveryListener:Ljavax/bluetooth/DiscoveryListener;

.field private deviceDiscoveryDevices:Ljava/util/Hashtable;

.field private limitedDiscoverableTimer:Ljava/lang/Thread;

.field private localBluetoothAddress:J

.field private peerInitialized:Z

.field private windowsCE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->singleInstance:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    .line 44
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->peerInitialized:Z

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->localBluetoothAddress:J

    .line 76
    return-void
.end method

.method private native accept(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->nextConnectThreadNum()I

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/intel/bluetooth/BluetoothStackMicrosoft;JJII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 658
    invoke-direct/range {p0 .. p6}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->connect(JJII)V

    return-void
.end method

.method static synthetic access$2(Lcom/intel/bluetooth/BluetoothStackMicrosoft;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->limitedDiscoverableTimer:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$3(Lcom/intel/bluetooth/BluetoothStackMicrosoft;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->setDiscoverable(Z)V

    return-void
.end method

.method static synthetic access$4(Lcom/intel/bluetooth/BluetoothStackMicrosoft;Ljava/util/Hashtable;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->deviceDiscoveryDevices:Ljava/util/Hashtable;

    return-void
.end method

.method static synthetic access$5(Lcom/intel/bluetooth/BluetoothStackMicrosoft;Ljavax/bluetooth/DiscoveryListener;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->currentDeviceDiscoveryListener:Ljavax/bluetooth/DiscoveryListener;

    return-void
.end method

.method static synthetic access$6(Lcom/intel/bluetooth/BluetoothStackMicrosoft;Lcom/intel/bluetooth/DeviceInquiryRunnable;Lcom/intel/bluetooth/DeviceInquiryThread;IILjavax/bluetooth/DiscoveryListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 427
    invoke-direct/range {p0 .. p5}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->runDeviceInquiryImpl(Lcom/intel/bluetooth/DeviceInquiryRunnable;Lcom/intel/bluetooth/DeviceInquiryThread;IILjavax/bluetooth/DiscoveryListener;)I

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/intel/bluetooth/BluetoothStackMicrosoft;)Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->deviceDiscoveryDevices:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$8(Lcom/intel/bluetooth/BluetoothStackMicrosoft;)Ljavax/bluetooth/DiscoveryListener;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->currentDeviceDiscoveryListener:Ljavax/bluetooth/DiscoveryListener;

    return-object v0
.end method

.method static synthetic access$9(Lcom/intel/bluetooth/BluetoothStackMicrosoft;[Ljavax/bluetooth/UUID;J)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/bluetooth/SearchServicesException;
        }
    .end annotation

    .prologue
    .line 519
    invoke-direct {p0, p1, p2, p3}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->runSearchServicesImpl([Ljavax/bluetooth/UUID;J)[I

    move-result-object v0

    return-object v0
.end method

.method private native authenticateRemoteDeviceImpl(JLjava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native bind(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native cancelInquiry()Z
.end method

.method private cancelLimitedDiscoverableTimer()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->limitedDiscoverableTimer:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->limitedDiscoverableTimer:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->limitedDiscoverableTimer:Ljava/lang/Thread;

    .line 225
    :cond_0
    return-void
.end method

.method private native close(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native connect(JJII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native getBluetoothRadioMode()I
.end method

.method private native getDeviceClass(J)I
.end method

.method private native getDeviceManufacturer(J)I
.end method

.method private native getDeviceVersion(J)I
.end method

.method private native getpeeraddress(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native getpeername(J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native getradioname(J)Ljava/lang/String;
.end method

.method private native getsockaddress(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native getsockchannel(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native initializationStatus()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private initialized()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->peerInitialized:Z

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljavax/bluetooth/BluetoothStateException;

    const-string v1, "Bluetooth system is unavailable"

    invoke-direct {v0, v1}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    return-void
.end method

.method private native isRemoteDeviceAuthenticatedImpl(J)Z
.end method

.method private native isRemoteDeviceTrustedImpl(J)Z
.end method

.method private native isWindowsCE()Z
.end method

.method private native listen(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static declared-synchronized nextConnectThreadNum()I
    .locals 3

    .prologue
    .line 72
    const-class v1, Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->connectThreadNumber:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->connectThreadNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native recv(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native recv(J[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native recvAvailable(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native registerService([BI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/ServiceRegistrationException;
        }
    .end annotation
.end method

.method private native removeAuthenticationWithRemoteDeviceImpl(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native retrieveDevicesImpl(ILcom/intel/bluetooth/RetrieveDevicesCallback;)Z
.end method

.method private native runDeviceInquiryImpl(Lcom/intel/bluetooth/DeviceInquiryRunnable;Lcom/intel/bluetooth/DeviceInquiryThread;IILjavax/bluetooth/DiscoveryListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation
.end method

.method private native runSearchServicesImpl([Ljavax/bluetooth/UUID;J)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/intel/bluetooth/SearchServicesException;
        }
    .end annotation
.end method

.method private native send(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native send(J[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native setDiscoverable(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation
.end method

.method private native socket(ZZ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native storesockopt(J)V
.end method

.method private native uninitialize()V
.end method

.method private native unregisterService(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/ServiceRegistrationException;
        }
    .end annotation
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
    .line 393
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->authenticateRemoteDeviceImpl(JLjava/lang/String;)Z

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
    .line 404
    invoke-direct {p0, p1, p2, p3}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->authenticateRemoteDeviceImpl(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public cancelInquiry(Ljavax/bluetooth/DiscoveryListener;)Z
    .locals 1
    .param p1, "listener"    # Ljavax/bluetooth/DiscoveryListener;

    .prologue
    .line 506
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->currentDeviceDiscoveryListener:Ljavax/bluetooth/DiscoveryListener;

    if-eq v0, p1, :cond_0

    .line 507
    const/4 v0, 0x0

    .line 511
    :goto_0
    return v0

    .line 510
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->currentDeviceDiscoveryListener:Ljavax/bluetooth/DiscoveryListener;

    .line 511
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->cancelInquiry()Z

    move-result v0

    goto :goto_0
.end method

.method public cancelServiceSearch(I)Z
    .locals 2
    .param p1, "transID"    # I

    .prologue
    .line 595
    invoke-static {p1}, Lcom/intel/bluetooth/SearchServicesThread;->getServiceSearchThread(I)Lcom/intel/bluetooth/SearchServicesThread;

    move-result-object v0

    .line 596
    .local v0, "sst":Lcom/intel/bluetooth/SearchServicesThread;
    if-eqz v0, :cond_0

    .line 597
    invoke-virtual {v0}, Lcom/intel/bluetooth/SearchServicesThread;->setTerminated()Z

    move-result v1

    .line 599
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
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
    .line 795
    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->close(J)V

    .line 796
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
    .line 888
    invoke-virtual {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->connectionRfCloseClientConnection(J)V

    .line 889
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
    .line 919
    return-void
.end method

.method public connectionRfOpenClientConnection(Lcom/intel/bluetooth/BluetoothConnectionParams;)J
    .locals 10
    .param p1, "params"    # Lcom/intel/bluetooth/BluetoothConnectionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 741
    iget-boolean v1, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->authenticate:Z

    iget-boolean v5, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->encrypt:Z

    invoke-direct {p0, v1, v5}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->socket(ZZ)J

    move-result-wide v3

    .line 744
    .local v3, "socket":J
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 745
    .local v2, "event":Ljava/lang/Object;
    new-instance v0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;-><init>(Lcom/intel/bluetooth/BluetoothStackMicrosoft;Ljava/lang/Object;JLcom/intel/bluetooth/BluetoothConnectionParams;)V

    .line 746
    .local v0, "connectThread":Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;
    invoke-static {v0}, Lcom/intel/bluetooth/UtilsJavaSE;->threadSetDaemon(Ljava/lang/Thread;)V

    .line 748
    const/4 v7, 0x0

    .line 750
    .local v7, "timeoutHappend":Z
    monitor-enter v2

    .line 751
    :try_start_0
    invoke-virtual {v0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->start()V

    .line 752
    :goto_0
    iget-boolean v1, v0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->connecting:Z

    if-nez v1, :cond_1

    .line 750
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    iget-boolean v1, v0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->success:Z

    if-nez v1, :cond_0

    .line 773
    :try_start_1
    invoke-direct {p0, v3, v4}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->close(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 777
    :cond_0
    :goto_2
    iget-object v1, v0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->error:Ljava/io/IOException;

    if-eqz v1, :cond_3

    .line 778
    iget-object v1, v0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->error:Ljava/io/IOException;

    throw v1

    .line 754
    :cond_1
    :try_start_2
    iget-boolean v1, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->timeouts:Z

    if-eqz v1, :cond_2

    .line 755
    iget v1, p1, Lcom/intel/bluetooth/BluetoothConnectionParams;->timeout:I

    int-to-long v8, v1

    invoke-virtual {v2, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 756
    iget-boolean v7, v0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->connecting:Z

    .line 757
    invoke-virtual {v0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->interrupt()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 762
    :catch_0
    move-exception v6

    .line 764
    .local v6, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-direct {p0, v3, v4}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->close(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 767
    :goto_3
    :try_start_4
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1

    .line 750
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 760
    :cond_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 781
    :cond_3
    iget-boolean v1, v0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->success:Z

    if-nez v1, :cond_5

    .line 782
    if-eqz v7, :cond_4

    .line 783
    new-instance v1, Ljavax/bluetooth/BluetoothConnectionException;

    .line 784
    const/4 v5, 0x5

    .line 783
    invoke-direct {v1, v5}, Ljavax/bluetooth/BluetoothConnectionException;-><init>(I)V

    throw v1

    .line 786
    :cond_4
    new-instance v1, Ljavax/bluetooth/BluetoothConnectionException;

    .line 787
    const/4 v5, 0x4

    .line 786
    invoke-direct {v1, v5}, Ljavax/bluetooth/BluetoothConnectionException;-><init>(I)V

    throw v1

    .line 765
    .restart local v6    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    goto :goto_3

    .line 774
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v1

    goto :goto_2

    .line 790
    :cond_5
    return-wide v3
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
    .line 896
    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->recv(J)I

    move-result v0

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
    .line 901
    invoke-direct/range {p0 .. p5}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->recv(J[BII)I

    move-result v0

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
    .line 905
    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->recvAvailable(J)I

    move-result v0

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
    .line 909
    invoke-direct {p0, p1, p2, p3}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->send(JI)V

    .line 910
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
    .line 914
    invoke-direct/range {p0 .. p5}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->send(J[BII)V

    .line 915
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 138
    sget-object v0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->singleInstance:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    if-eq v0, p0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Destroy invalid instance"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    iget-boolean v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->peerInitialized:Z

    if-eqz v0, :cond_1

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->peerInitialized:Z

    .line 143
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->uninitialize()V

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->cancelLimitedDiscoverableTimer()V

    .line 146
    const/4 v0, 0x0

    sput-object v0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->singleInstance:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    .line 147
    return-void
.end method

.method public native detectBluetoothStack()I
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
    .line 892
    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getpeeraddress(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFeatureSet()I
    .locals 1

    .prologue
    .line 161
    .line 162
    iget-boolean v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->windowsCE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 161
    :goto_0
    or-int/lit8 v0, v0, 0x2

    return v0

    .line 162
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public native getLibraryVersion()I
.end method

.method public getLocalDeviceBluetoothAddress()Ljava/lang/String;
    .locals 6

    .prologue
    .line 182
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-direct {p0, v4, v5}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->socket(ZZ)J

    move-result-wide v2

    .line 183
    .local v2, "socket":J
    invoke-direct {p0, v2, v3}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->bind(J)V

    .line 184
    invoke-direct {p0, v2, v3}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getsockaddress(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->localBluetoothAddress:J

    .line 186
    iget-wide v4, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->localBluetoothAddress:J

    invoke-static {v4, v5}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getBluetoothAddress(J)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "address":Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->storesockopt(J)V

    .line 188
    invoke-direct {p0, v2, v3}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->close(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "socket":J
    :goto_0
    return-object v0

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "get local bluetoothAddress"

    invoke-static {v4, v1}, Lcom/intel/bluetooth/DebugLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    const-string v0, "000000000000"

    goto :goto_0
.end method

.method public getLocalDeviceClass()Ljavax/bluetooth/DeviceClass;
    .locals 3

    .prologue
    .line 208
    new-instance v0, Ljavax/bluetooth/DeviceClass;

    iget-wide v1, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->localBluetoothAddress:J

    invoke-direct {p0, v1, v2}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getDeviceClass(J)I

    move-result v1

    invoke-direct {v0, v1}, Ljavax/bluetooth/DeviceClass;-><init>(I)V

    return-object v0
.end method

.method public getLocalDeviceDiscoverable()I
    .locals 2

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getBluetoothRadioMode()I

    move-result v0

    .line 275
    .local v0, "mode":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->limitedDiscoverableTimer:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 277
    const-string v1, "Discoverable = LIAC"

    invoke-static {v1}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 278
    const v1, 0x9e8b00

    .line 285
    :goto_0
    return v1

    .line 280
    :cond_0
    const-string v1, "Discoverable = GIAC"

    invoke-static {v1}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 281
    const v1, 0x9e8b33

    goto :goto_0

    .line 284
    :cond_1
    const-string v1, "Discoverable = NOT_DISCOVERABLE"

    invoke-static {v1}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 285
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocalDeviceName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 197
    iget-wide v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->localBluetoothAddress:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getLocalDeviceBluetoothAddress()Ljava/lang/String;

    .line 200
    :cond_0
    iget-wide v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->localBluetoothAddress:J

    invoke-direct {p0, v0, v1}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getradioname(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalDeviceProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 290
    const-string v0, "bluetooth.connected.devices.max"

    .line 291
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const-string v0, "7"

    .line 333
    :goto_0
    return-object v0

    .line 294
    :cond_0
    const-string v0, "bluetooth.sd.trans.max"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    const-string v0, "7"

    goto :goto_0

    .line 297
    :cond_1
    const-string v0, "bluetooth.connected.inquiry.scan"

    .line 298
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    const-string v0, "true"

    goto :goto_0

    .line 301
    :cond_2
    const-string v0, "bluetooth.connected.page.scan"

    .line 302
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 303
    const-string v0, "true"

    goto :goto_0

    .line 305
    :cond_3
    const-string v0, "bluetooth.connected.inquiry"

    .line 306
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 307
    const-string v0, "true"

    goto :goto_0

    .line 309
    :cond_4
    const-string v0, "bluetooth.connected.page"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 310
    const-string v0, "true"

    goto :goto_0

    .line 313
    :cond_5
    const-string v0, "bluetooth.sd.attr.retrievable.max"

    .line 314
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 315
    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 317
    :cond_6
    const-string v0, "bluetooth.master.switch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 318
    const-string v0, "false"

    goto :goto_0

    .line 320
    :cond_7
    const-string v0, "bluetooth.l2cap.receiveMTU.max"

    .line 321
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 322
    const-string v0, "0"

    goto :goto_0

    .line 325
    :cond_8
    const-string v0, "bluecove.radio.version"

    .line 326
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 327
    iget-wide v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->localBluetoothAddress:J

    invoke-direct {p0, v0, v1}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getDeviceVersion(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 329
    :cond_9
    const-string v0, "bluecove.radio.manufacturer"

    .line 330
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 331
    iget-wide v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->localBluetoothAddress:J

    invoke-direct {p0, v0, v1}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getDeviceManufacturer(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 333
    :cond_a
    const/4 v0, 0x0

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
    .line 204
    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getpeername(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public native getServiceAttributes([IJI)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getStackID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "winsock"

    return-object v0
.end method

.method public initialize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 117
    sget-object v2, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->singleInstance:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    if-eqz v2, :cond_0

    .line 118
    new-instance v2, Ljavax/bluetooth/BluetoothStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Only one instance of "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getStackID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " stack supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-direct {v2, v3}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->initializationStatus()I

    move-result v1

    .line 123
    .local v1, "status":I
    const-string v2, "initializationStatus"

    int-to-long v3, v1

    invoke-static {v2, v3, v4}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    .line 124
    if-ne v1, v5, :cond_1

    .line 125
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->peerInitialized:Z

    .line 127
    :cond_1
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->isWindowsCE()Z

    move-result v2

    iput-boolean v2, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->windowsCE:Z

    .line 128
    sput-object p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->singleInstance:Lcom/intel/bluetooth/BluetoothStackMicrosoft;
    :try_end_0
    .catch Ljavax/bluetooth/BluetoothStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    return-void

    .line 129
    .end local v1    # "status":I
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljavax/bluetooth/BluetoothStateException;
    throw v0

    .line 131
    .end local v0    # "e":Ljavax/bluetooth/BluetoothStateException;
    :catch_1
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "initialization"

    invoke-static {v2, v0}, Lcom/intel/bluetooth/DebugLog;->fatal(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    new-instance v2, Ljavax/bluetooth/BluetoothStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isCurrentThreadInterruptedCallback()Z
    .locals 1

    .prologue
    .line 343
    invoke-static {}, Lcom/intel/bluetooth/UtilsJavaSE;->isCurrentThreadInterrupted()Z

    move-result v0

    return v0
.end method

.method public isLocalDevicePowerOn()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 266
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getBluetoothRadioMode()I

    move-result v0

    .line 267
    .local v0, "mode":I
    if-ne v0, v2, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public native isNativeCodeLoaded()Z
.end method

.method public isRemoteDeviceAuthenticated(J)Ljava/lang/Boolean;
    .locals 2
    .param p1, "address"    # J

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->windowsCE:Z

    if-eqz v0, :cond_0

    .line 384
    const/4 v0, 0x0

    .line 386
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->isRemoteDeviceAuthenticatedImpl(J)Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_0
.end method

.method public isRemoteDeviceTrusted(J)Ljava/lang/Boolean;
    .locals 2
    .param p1, "address"    # J

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->windowsCE:Z

    if-eqz v0, :cond_0

    .line 375
    const/4 v0, 0x0

    .line 377
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->isRemoteDeviceTrustedImpl(J)Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_0
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
    .line 955
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getStackID()Ljava/lang/String;

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
    .line 1002
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getStackID()Ljava/lang/String;

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
    .line 1087
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getStackID()Ljava/lang/String;

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
    .line 1059
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getStackID()Ljava/lang/String;

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
    .line 1022
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getStackID()Ljava/lang/String;

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
    .line 1068
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getStackID()Ljava/lang/String;

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
    .line 946
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getStackID()Ljava/lang/String;

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
    .line 1031
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getStackID()Ljava/lang/String;

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
    .line 1040
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getStackID()Ljava/lang/String;

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
    .line 1077
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getStackID()Ljava/lang/String;

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
    .line 1050
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getStackID()Ljava/lang/String;

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
    .line 993
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getStackID()Ljava/lang/String;

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
    .line 1013
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getStackID()Ljava/lang/String;

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
    .line 968
    new-instance v0, Lcom/intel/bluetooth/NotSupportedIOException;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getStackID()Ljava/lang/String;

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
    .line 980
    new-instance v0, Ljavax/bluetooth/ServiceRegistrationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not Supported on"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 981
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getStackID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 980
    invoke-direct {v0, v1}, Ljavax/bluetooth/ServiceRegistrationException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 605
    array-length v6, p2

    const/16 v7, 0x100

    if-le v6, v7, :cond_0

    .line 606
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 612
    :cond_0
    invoke-virtual {p1}, Lcom/intel/bluetooth/ServiceRecordImpl;->getHostDevice()Ljavax/bluetooth/RemoteDevice;

    move-result-object v6

    invoke-static {v6}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getAddress(Ljavax/bluetooth/RemoteDevice;)J

    move-result-wide v6

    .line 613
    invoke-virtual {p1}, Lcom/intel/bluetooth/ServiceRecordImpl;->getHandle()J

    move-result-wide v8

    long-to-int v8, v8

    .line 611
    invoke-virtual {p0, p2, v6, v7, v8}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getServiceAttributes([IJI)[B

    move-result-object v2

    .line 615
    .local v2, "blob":[B
    array-length v6, v2

    if-lez v6, :cond_4

    .line 617
    const/4 v0, 0x0

    .line 618
    .local v0, "anyRetrived":Z
    :try_start_0
    new-instance v6, Lcom/intel/bluetooth/SDPInputStream;

    .line 619
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 618
    invoke-direct {v6, v7}, Lcom/intel/bluetooth/SDPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 619
    invoke-virtual {v6}, Lcom/intel/bluetooth/SDPInputStream;->readElement()Ljavax/bluetooth/DataElement;

    move-result-object v4

    .line 620
    .local v4, "element":Ljavax/bluetooth/DataElement;
    invoke-virtual {v4}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Enumeration;

    .line 621
    .local v3, "e":Ljava/util/Enumeration;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    .line 620
    if-nez v6, :cond_2

    .line 642
    .end local v0    # "anyRetrived":Z
    .end local v3    # "e":Ljava/util/Enumeration;
    .end local v4    # "element":Ljavax/bluetooth/DataElement;
    :goto_1
    return v0

    .line 622
    .restart local v0    # "anyRetrived":Z
    .restart local v3    # "e":Ljava/util/Enumeration;
    .restart local v4    # "element":Ljavax/bluetooth/DataElement;
    :cond_2
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/bluetooth/DataElement;

    .line 623
    invoke-virtual {v6}, Ljavax/bluetooth/DataElement;->getLong()J

    move-result-wide v6

    long-to-int v1, v6

    .line 625
    .local v1, "attrID":I
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/bluetooth/DataElement;

    .line 624
    invoke-virtual {p1, v1, v6}, Lcom/intel/bluetooth/ServiceRecordImpl;->populateAttributeValue(ILjavax/bluetooth/DataElement;)V

    .line 626
    if-nez v0, :cond_1

    .line 627
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    array-length v6, p2

    if-ge v5, v6, :cond_1

    .line 628
    aget v6, p2, v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v6, v1, :cond_3

    .line 629
    const/4 v0, 0x1

    .line 630
    goto :goto_0

    .line 627
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 636
    .end local v1    # "attrID":I
    .end local v3    # "e":Ljava/util/Enumeration;
    .end local v4    # "element":Ljavax/bluetooth/DataElement;
    .end local v5    # "i":I
    :catch_0
    move-exception v3

    .line 637
    .local v3, "e":Ljava/io/IOException;
    throw v3

    .line 638
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 639
    .local v3, "e":Ljava/lang/Throwable;
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6

    .line 642
    .end local v0    # "anyRetrived":Z
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
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
    .line 419
    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->removeAuthenticationWithRemoteDeviceImpl(J)V

    .line 420
    return-void
.end method

.method public requireNativeLibraries()[Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;
    .locals 1

    .prologue
    .line 97
    const-string v0, "intelbth"

    invoke-static {v0}, Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;->library(Ljava/lang/String;)[Lcom/intel/bluetooth/BluetoothStack$LibraryInformation;

    move-result-object v0

    return-object v0
.end method

.method public retrieveDevices(I)[Ljavax/bluetooth/RemoteDevice;
    .locals 4
    .param p1, "option"    # I

    .prologue
    const/4 v2, 0x0

    .line 350
    iget-boolean v3, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->windowsCE:Z

    if-eqz v3, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-object v2

    .line 353
    :cond_1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 354
    .local v0, "devices":Ljava/util/Vector;
    new-instance v1, Lcom/intel/bluetooth/BluetoothStackMicrosoft$2;

    invoke-direct {v1, p0, v0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft$2;-><init>(Lcom/intel/bluetooth/BluetoothStackMicrosoft;Ljava/util/Vector;)V

    .line 364
    .local v1, "retrieveDevicesCallback":Lcom/intel/bluetooth/RetrieveDevicesCallback;
    invoke-direct {p0, p1, v1}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->retrieveDevicesImpl(ILcom/intel/bluetooth/RetrieveDevicesCallback;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 365
    invoke-static {v0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->remoteDeviceListToArray(Ljava/util/Vector;)[Ljavax/bluetooth/RemoteDevice;

    move-result-object v2

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
    .line 932
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
    .line 922
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
    .line 868
    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->accept(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public rfServerClose(JLcom/intel/bluetooth/ServiceRecordImpl;)V
    .locals 3
    .param p1, "handle"    # J
    .param p3, "serviceRecord"    # Lcom/intel/bluetooth/ServiceRecordImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 845
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->close(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 850
    invoke-virtual {p3}, Lcom/intel/bluetooth/ServiceRecordImpl;->getHandle()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->unregisterService(J)V

    .line 852
    return-void

    .line 846
    :catchall_0
    move-exception v0

    .line 850
    invoke-virtual {p3}, Lcom/intel/bluetooth/ServiceRecordImpl;->getHandle()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->unregisterService(J)V

    .line 851
    throw v0
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
    .line 803
    iget-boolean v0, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->authenticate:Z

    iget-boolean v4, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->encrypt:Z

    invoke-direct {p0, v0, v4}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->socket(ZZ)J

    move-result-wide v8

    .line 804
    .local v8, "socket":J
    const/4 v10, 0x0

    .line 807
    .local v10, "success":Z
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 808
    :try_start_1
    invoke-direct {p0, v8, v9}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->bind(J)V

    .line 807
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 810
    :try_start_2
    invoke-direct {p0, v8, v9}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->listen(J)V

    .line 812
    invoke-direct {p0, v8, v9}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getsockchannel(J)I

    move-result v3

    .line 813
    .local v3, "channel":I
    const-string v0, "service channel "

    int-to-long v4, v3

    invoke-static {v0, v4, v5}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    .line 815
    move-wide v1, v8

    .line 817
    .local v1, "serviceRecordHandle":J
    iget-object v4, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->uuid:Ljavax/bluetooth/UUID;

    iget-object v5, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->name:Ljava/lang/String;

    iget-boolean v6, p1, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->obex:Z

    move-object v0, p2

    .line 816
    invoke-virtual/range {v0 .. v6}, Lcom/intel/bluetooth/ServiceRecordImpl;->populateRFCOMMAttributes(JILjavax/bluetooth/UUID;Ljava/lang/String;Z)V

    .line 823
    invoke-virtual {p2}, Lcom/intel/bluetooth/ServiceRecordImpl;->toByteArray()[B

    move-result-object v0

    .line 824
    iget v4, p2, Lcom/intel/bluetooth/ServiceRecordImpl;->deviceServiceClasses:I

    .line 822
    invoke-direct {p0, v0, v4}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->registerService([BI)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/intel/bluetooth/ServiceRecordImpl;->setHandle(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 826
    const/4 v10, 0x1

    .line 828
    if-nez v10, :cond_0

    .line 830
    :try_start_3
    invoke-direct {p0, v8, v9}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->close(J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 836
    :cond_0
    :goto_0
    return-wide v8

    .line 807
    .end local v1    # "serviceRecordHandle":J
    .end local v3    # "channel":I
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 827
    :catchall_1
    move-exception v0

    .line 828
    if-nez v10, :cond_1

    .line 830
    :try_start_6
    invoke-direct {p0, v8, v9}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->close(J)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 835
    :cond_1
    :goto_1
    throw v0

    .line 831
    :catch_0
    move-exception v7

    .line 832
    .local v7, "e":Ljava/io/IOException;
    const-string v4, "close on failure"

    invoke-static {v4, v7}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 831
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v1    # "serviceRecordHandle":J
    .restart local v3    # "channel":I
    :catch_1
    move-exception v7

    .line 832
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v0, "close on failure"

    invoke-static {v0, v7}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public rfServerUpdateServiceRecord(JLcom/intel/bluetooth/ServiceRecordImpl;Z)V
    .locals 4
    .param p1, "handle"    # J
    .param p3, "serviceRecord"    # Lcom/intel/bluetooth/ServiceRecordImpl;
    .param p4, "acceptAndOpen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/ServiceRegistrationException;
        }
    .end annotation

    .prologue
    .line 874
    invoke-virtual {p3}, Lcom/intel/bluetooth/ServiceRecordImpl;->getHandle()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->unregisterService(J)V

    .line 877
    :try_start_0
    invoke-virtual {p3}, Lcom/intel/bluetooth/ServiceRecordImpl;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 882
    .local v0, "blob":[B
    iget v2, p3, Lcom/intel/bluetooth/ServiceRecordImpl;->deviceServiceClasses:I

    .line 881
    invoke-direct {p0, v0, v2}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->registerService([BI)J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Lcom/intel/bluetooth/ServiceRecordImpl;->setHandle(J)V

    .line 883
    const-string v2, "new serviceRecord"

    invoke-static {v2, p3}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 884
    return-void

    .line 878
    .end local v0    # "blob":[B
    :catch_0
    move-exception v1

    .line 879
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljavax/bluetooth/ServiceRegistrationException;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/bluetooth/ServiceRegistrationException;-><init>(Ljava/lang/String;)V

    throw v2
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
    .line 532
    new-instance v1, Lcom/intel/bluetooth/BluetoothStackMicrosoft$4;

    invoke-direct {v1, p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft$4;-><init>(Lcom/intel/bluetooth/BluetoothStackMicrosoft;)V

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
    .locals 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    const v3, 0x9e8b33

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 229
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 262
    :cond_0
    :goto_0
    return v0

    .line 231
    :sswitch_0
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->cancelLimitedDiscoverableTimer()V

    .line 232
    const-string v2, "setDiscoverable(false)"

    invoke-static {v2}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 233
    invoke-direct {p0, v1}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->setDiscoverable(Z)V

    .line 234
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getLocalDeviceDiscoverable()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 236
    :sswitch_1
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->cancelLimitedDiscoverableTimer()V

    .line 237
    const-string v2, "setDiscoverable(true)"

    invoke-static {v2}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 238
    invoke-direct {p0, v0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->setDiscoverable(Z)V

    .line 239
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getLocalDeviceDiscoverable()I

    move-result v2

    if-eq v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 241
    :sswitch_2
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->cancelLimitedDiscoverableTimer()V

    .line 242
    const-string v2, "setDiscoverable(LIAC)"

    invoke-static {v2}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 243
    invoke-direct {p0, v0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->setDiscoverable(Z)V

    .line 244
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getLocalDeviceDiscoverable()I

    move-result v2

    if-eq v3, v2, :cond_1

    move v0, v1

    .line 245
    goto :goto_0

    .line 248
    :cond_1
    const-wide/32 v1, 0xea60

    .line 249
    new-instance v3, Lcom/intel/bluetooth/BluetoothStackMicrosoft$1;

    invoke-direct {v3, p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft$1;-><init>(Lcom/intel/bluetooth/BluetoothStackMicrosoft;)V

    .line 248
    invoke-static {v1, v2, v3}, Lcom/intel/bluetooth/Utils;->schedule(JLjava/lang/Runnable;)Lcom/intel/bluetooth/Utils$TimerThread;

    move-result-object v1

    iput-object v1, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->limitedDiscoverableTimer:Ljava/lang/Thread;

    goto :goto_0

    .line 229
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9e8b00 -> :sswitch_2
        0x9e8b33 -> :sswitch_1
    .end sparse-switch
.end method

.method public setLocalDeviceServiceClasses(I)V
    .locals 0
    .param p1, "classOfDevice"    # I

    .prologue
    .line 218
    return-void
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
    .line 434
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->initialized()V

    .line 435
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->currentDeviceDiscoveryListener:Ljavax/bluetooth/DiscoveryListener;

    if-eqz v1, :cond_0

    .line 436
    new-instance v1, Ljavax/bluetooth/BluetoothStateException;

    const-string v2, "Another inquiry already running"

    invoke-direct {v1, v2}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 438
    :cond_0
    iput-object p2, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->currentDeviceDiscoveryListener:Ljavax/bluetooth/DiscoveryListener;

    .line 440
    new-instance v0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$3;

    invoke-direct {v0, p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft$3;-><init>(Lcom/intel/bluetooth/BluetoothStackMicrosoft;)V

    .line 496
    .local v0, "inquiryRunnable":Lcom/intel/bluetooth/DeviceInquiryRunnable;
    invoke-static {p0, v0, p1, p2}, Lcom/intel/bluetooth/DeviceInquiryThread;->startInquiry(Lcom/intel/bluetooth/BluetoothStack;Lcom/intel/bluetooth/DeviceInquiryRunnable;ILjavax/bluetooth/DiscoveryListener;)Z

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->getStackID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

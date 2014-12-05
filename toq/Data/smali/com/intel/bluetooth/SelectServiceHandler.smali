.class public Lcom/intel/bluetooth/SelectServiceHandler;
.super Ljava/lang/Object;
.source "SelectServiceHandler.java"

# interfaces
.implements Ljavax/bluetooth/DiscoveryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;
    }
.end annotation


# static fields
.field private static threadNumber:I


# instance fields
.field private agent:Ljavax/bluetooth/DiscoveryAgent;

.field private devicesProcessed:Ljava/util/Hashtable;

.field private inquiryCompleted:Z

.field private inquiryCompletedEvent:Ljava/lang/Object;

.field private servRecordDiscovered:Ljavax/bluetooth/ServiceRecord;

.field private serviceSearchCompleted:Z

.field private serviceSearchCompletedEvent:Ljava/lang/Object;

.field private serviceSearchDeviceQueue:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljavax/bluetooth/DiscoveryAgent;)V
    .locals 1
    .param p1, "agent"    # Ljavax/bluetooth/DiscoveryAgent;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/intel/bluetooth/SelectServiceHandler;->inquiryCompletedEvent:Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/intel/bluetooth/SelectServiceHandler;->serviceSearchCompletedEvent:Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/intel/bluetooth/SelectServiceHandler;->devicesProcessed:Ljava/util/Hashtable;

    .line 59
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/intel/bluetooth/SelectServiceHandler;->serviceSearchDeviceQueue:Ljava/util/Vector;

    .line 70
    iput-object p1, p0, Lcom/intel/bluetooth/SelectServiceHandler;->agent:Ljavax/bluetooth/DiscoveryAgent;

    .line 71
    return-void
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/intel/bluetooth/SelectServiceHandler;->nextThreadNum()I

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/intel/bluetooth/SelectServiceHandler;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/intel/bluetooth/SelectServiceHandler;->serviceSearchDeviceQueue:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$2(Lcom/intel/bluetooth/SelectServiceHandler;)Ljavax/bluetooth/ServiceRecord;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/intel/bluetooth/SelectServiceHandler;->servRecordDiscovered:Ljavax/bluetooth/ServiceRecord;

    return-object v0
.end method

.method static synthetic access$3(Lcom/intel/bluetooth/SelectServiceHandler;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/intel/bluetooth/SelectServiceHandler;->inquiryCompleted:Z

    return v0
.end method

.method static synthetic access$4(Lcom/intel/bluetooth/SelectServiceHandler;Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;)Ljavax/bluetooth/ServiceRecord;
    .locals 1

    .prologue
    .line 239
    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/SelectServiceHandler;->findServiceOnDevice(Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;)Ljavax/bluetooth/ServiceRecord;

    move-result-object v0

    return-object v0
.end method

.method private findServiceOnDevice(Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;)Ljavax/bluetooth/ServiceRecord;
    .locals 7
    .param p1, "uuid"    # Ljavax/bluetooth/UUID;
    .param p2, "device"    # Ljavax/bluetooth/RemoteDevice;

    .prologue
    const/4 v1, 0x0

    .line 240
    iget-object v2, p0, Lcom/intel/bluetooth/SelectServiceHandler;->devicesProcessed:Ljava/util/Hashtable;

    invoke-virtual {v2, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    :goto_0
    return-object v1

    .line 243
    :cond_0
    iget-object v2, p0, Lcom/intel/bluetooth/SelectServiceHandler;->devicesProcessed:Ljava/util/Hashtable;

    invoke-virtual {v2, p2, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v2, "searchServices on "

    invoke-static {v2, p2}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    iget-object v2, p0, Lcom/intel/bluetooth/SelectServiceHandler;->serviceSearchCompletedEvent:Ljava/lang/Object;

    monitor-enter v2

    .line 247
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/intel/bluetooth/SelectServiceHandler;->serviceSearchCompleted:Z

    .line 248
    iget-object v3, p0, Lcom/intel/bluetooth/SelectServiceHandler;->agent:Ljavax/bluetooth/DiscoveryAgent;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavax/bluetooth/UUID;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5, p2, p0}, Ljavax/bluetooth/DiscoveryAgent;->searchServices([I[Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DiscoveryListener;)I
    :try_end_0
    .catch Ljavax/bluetooth/BluetoothStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :goto_1
    :try_start_1
    iget-boolean v3, p0, Lcom/intel/bluetooth/SelectServiceHandler;->serviceSearchCompleted:Z

    if-eqz v3, :cond_1

    .line 245
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    iget-object v1, p0, Lcom/intel/bluetooth/SelectServiceHandler;->servRecordDiscovered:Ljavax/bluetooth/ServiceRecord;

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljavax/bluetooth/BluetoothStateException;
    :try_start_2
    const-string v3, "searchServices"

    invoke-static {v3, v0}, Lcom/intel/bluetooth/DebugLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    monitor-exit v2

    goto :goto_0

    .line 245
    .end local v0    # "e":Ljavax/bluetooth/BluetoothStateException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 255
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/intel/bluetooth/SelectServiceHandler;->serviceSearchCompletedEvent:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 256
    :catch_1
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private static declared-synchronized nextThreadNum()I
    .locals 3

    .prologue
    .line 66
    const-class v1, Lcom/intel/bluetooth/SelectServiceHandler;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/intel/bluetooth/SelectServiceHandler;->threadNumber:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/intel/bluetooth/SelectServiceHandler;->threadNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public deviceDiscovered(Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DeviceClass;)V
    .locals 2
    .param p1, "btDevice"    # Ljavax/bluetooth/RemoteDevice;
    .param p2, "cod"    # Ljavax/bluetooth/DeviceClass;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/intel/bluetooth/SelectServiceHandler;->devicesProcessed:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/intel/bluetooth/SelectServiceHandler;->serviceSearchDeviceQueue:Ljava/util/Vector;

    monitor-enter v1

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/intel/bluetooth/SelectServiceHandler;->serviceSearchDeviceQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lcom/intel/bluetooth/SelectServiceHandler;->serviceSearchDeviceQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 268
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public inquiryCompleted(I)V
    .locals 2
    .param p1, "discType"    # I

    .prologue
    .line 275
    iget-object v1, p0, Lcom/intel/bluetooth/SelectServiceHandler;->inquiryCompletedEvent:Ljava/lang/Object;

    monitor-enter v1

    .line 276
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/intel/bluetooth/SelectServiceHandler;->inquiryCompleted:Z

    .line 277
    iget-object v0, p0, Lcom/intel/bluetooth/SelectServiceHandler;->inquiryCompletedEvent:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 275
    monitor-exit v1

    .line 279
    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public selectService(Ljavax/bluetooth/UUID;IZ)Ljava/lang/String;
    .locals 9
    .param p1, "uuid"    # Ljavax/bluetooth/UUID;
    .param p2, "security"    # I
    .param p3, "master"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 120
    if-nez p1, :cond_0

    .line 121
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "uuid is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 123
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 129
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 132
    :pswitch_0
    iget-object v6, p0, Lcom/intel/bluetooth/SelectServiceHandler;->agent:Ljavax/bluetooth/DiscoveryAgent;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljavax/bluetooth/DiscoveryAgent;->retrieveDevices(I)[Ljavax/bluetooth/RemoteDevice;

    move-result-object v0

    .line 133
    .local v0, "devs":[Ljavax/bluetooth/RemoteDevice;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-eqz v0, :cond_1

    array-length v6, v0

    if-lt v2, v6, :cond_4

    .line 139
    :cond_1
    iget-object v6, p0, Lcom/intel/bluetooth/SelectServiceHandler;->agent:Ljavax/bluetooth/DiscoveryAgent;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljavax/bluetooth/DiscoveryAgent;->retrieveDevices(I)[Ljavax/bluetooth/RemoteDevice;

    move-result-object v0

    .line 140
    const/4 v2, 0x0

    :goto_1
    if-eqz v0, :cond_2

    array-length v6, v0

    if-lt v2, v6, :cond_6

    .line 146
    :cond_2
    new-instance v4, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;

    invoke-direct {v4, p0, p1}, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;-><init>(Lcom/intel/bluetooth/SelectServiceHandler;Ljavax/bluetooth/UUID;)V

    .line 147
    .local v4, "t":Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;
    invoke-virtual {v4}, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->start()V

    .line 149
    iget-object v6, p0, Lcom/intel/bluetooth/SelectServiceHandler;->inquiryCompletedEvent:Ljava/lang/Object;

    monitor-enter v6

    .line 150
    :try_start_0
    iget-object v7, p0, Lcom/intel/bluetooth/SelectServiceHandler;->agent:Ljavax/bluetooth/DiscoveryAgent;

    const v8, 0x9e8b33

    invoke-virtual {v7, v8, p0}, Ljavax/bluetooth/DiscoveryAgent;->startInquiry(ILjavax/bluetooth/DiscoveryListener;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 151
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .end local v4    # "t":Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;
    :cond_3
    :goto_2
    return-object v5

    .line 134
    :cond_4
    aget-object v6, v0, v2

    invoke-direct {p0, p1, v6}, Lcom/intel/bluetooth/SelectServiceHandler;->findServiceOnDevice(Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;)Ljavax/bluetooth/ServiceRecord;

    move-result-object v3

    .line 135
    .local v3, "sr":Ljavax/bluetooth/ServiceRecord;
    if-eqz v3, :cond_5

    .line 136
    invoke-interface {v3, p2, p3}, Ljavax/bluetooth/ServiceRecord;->getConnectionURL(IZ)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 133
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    .end local v3    # "sr":Ljavax/bluetooth/ServiceRecord;
    :cond_6
    aget-object v6, v0, v2

    invoke-direct {p0, p1, v6}, Lcom/intel/bluetooth/SelectServiceHandler;->findServiceOnDevice(Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;)Ljavax/bluetooth/ServiceRecord;

    move-result-object v3

    .line 142
    .restart local v3    # "sr":Ljavax/bluetooth/ServiceRecord;
    if-eqz v3, :cond_7

    .line 143
    invoke-interface {v3, p2, p3}, Ljavax/bluetooth/ServiceRecord;->getConnectionURL(IZ)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 140
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 155
    .end local v3    # "sr":Ljavax/bluetooth/ServiceRecord;
    .restart local v4    # "t":Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;
    :cond_8
    :try_start_1
    iget-object v7, p0, Lcom/intel/bluetooth/SelectServiceHandler;->inquiryCompletedEvent:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    :cond_9
    :try_start_2
    iget-boolean v7, p0, Lcom/intel/bluetooth/SelectServiceHandler;->inquiryCompleted:Z

    if-eqz v7, :cond_8

    .line 160
    iget-object v7, p0, Lcom/intel/bluetooth/SelectServiceHandler;->agent:Ljavax/bluetooth/DiscoveryAgent;

    invoke-virtual {v7, p0}, Ljavax/bluetooth/DiscoveryAgent;->cancelInquiry(Ljavax/bluetooth/DiscoveryListener;)Z

    .line 149
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    iget-object v6, p0, Lcom/intel/bluetooth/SelectServiceHandler;->servRecordDiscovered:Ljavax/bluetooth/ServiceRecord;

    if-nez v6, :cond_a

    invoke-virtual {v4}, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->processedAll()Z

    move-result v6

    if-nez v6, :cond_a

    .line 164
    iget-object v6, p0, Lcom/intel/bluetooth/SelectServiceHandler;->serviceSearchDeviceQueue:Ljava/util/Vector;

    monitor-enter v6

    .line 165
    :try_start_3
    iget-object v7, p0, Lcom/intel/bluetooth/SelectServiceHandler;->serviceSearchDeviceQueue:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 164
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 168
    :try_start_4
    invoke-virtual {v4}, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->join()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 173
    :cond_a
    invoke-virtual {v4}, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->interrupt()V

    .line 175
    iget-object v6, p0, Lcom/intel/bluetooth/SelectServiceHandler;->servRecordDiscovered:Ljavax/bluetooth/ServiceRecord;

    if-eqz v6, :cond_3

    .line 176
    iget-object v5, p0, Lcom/intel/bluetooth/SelectServiceHandler;->servRecordDiscovered:Ljavax/bluetooth/ServiceRecord;

    invoke-interface {v5, p2, p3}, Ljavax/bluetooth/ServiceRecord;->getConnectionURL(IZ)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_5
    monitor-exit v6

    goto :goto_2

    .line 149
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v5

    .line 164
    :catchall_1
    move-exception v5

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v5

    .line 169
    :catch_1
    move-exception v1

    .line 170
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public serviceSearchCompleted(II)V
    .locals 2
    .param p1, "transID"    # I
    .param p2, "respCode"    # I

    .prologue
    .line 282
    iget-object v1, p0, Lcom/intel/bluetooth/SelectServiceHandler;->serviceSearchCompletedEvent:Ljava/lang/Object;

    monitor-enter v1

    .line 283
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/intel/bluetooth/SelectServiceHandler;->serviceSearchCompleted:Z

    .line 284
    iget-object v0, p0, Lcom/intel/bluetooth/SelectServiceHandler;->serviceSearchCompletedEvent:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 282
    monitor-exit v1

    .line 286
    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public servicesDiscovered(I[Ljavax/bluetooth/ServiceRecord;)V
    .locals 2
    .param p1, "transID"    # I
    .param p2, "servRecord"    # [Ljavax/bluetooth/ServiceRecord;

    .prologue
    .line 289
    array-length v0, p2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/intel/bluetooth/SelectServiceHandler;->servRecordDiscovered:Ljavax/bluetooth/ServiceRecord;

    if-nez v0, :cond_0

    .line 290
    const/4 v0, 0x0

    aget-object v0, p2, v0

    iput-object v0, p0, Lcom/intel/bluetooth/SelectServiceHandler;->servRecordDiscovered:Ljavax/bluetooth/ServiceRecord;

    .line 291
    iget-object v1, p0, Lcom/intel/bluetooth/SelectServiceHandler;->serviceSearchCompletedEvent:Ljava/lang/Object;

    monitor-enter v1

    .line 292
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/intel/bluetooth/SelectServiceHandler;->serviceSearchCompleted:Z

    .line 293
    iget-object v0, p0, Lcom/intel/bluetooth/SelectServiceHandler;->serviceSearchCompletedEvent:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 291
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    iget-object v1, p0, Lcom/intel/bluetooth/SelectServiceHandler;->inquiryCompletedEvent:Ljava/lang/Object;

    monitor-enter v1

    .line 296
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/intel/bluetooth/SelectServiceHandler;->inquiryCompleted:Z

    .line 297
    iget-object v0, p0, Lcom/intel/bluetooth/SelectServiceHandler;->inquiryCompletedEvent:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 295
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 300
    :cond_0
    return-void

    .line 291
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 295
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

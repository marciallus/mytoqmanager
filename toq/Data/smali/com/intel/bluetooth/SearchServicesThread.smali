.class Lcom/intel/bluetooth/SearchServicesThread;
.super Ljava/lang/Thread;
.source "SearchServicesThread.java"


# static fields
.field private static threads:Ljava/util/Hashtable;

.field private static transIDGenerator:I


# instance fields
.field private attrSet:[I

.field private device:Ljavax/bluetooth/RemoteDevice;

.field private finished:Z

.field private listener:Ljavax/bluetooth/DiscoveryListener;

.field private serachRunnable:Lcom/intel/bluetooth/SearchServicesRunnable;

.field private serviceSearchStartedEvent:Ljava/lang/Object;

.field private servicesRecords:Ljava/util/Vector;

.field private stack:Lcom/intel/bluetooth/BluetoothStack;

.field private startException:Ljavax/bluetooth/BluetoothStateException;

.field private started:Z

.field private terminated:Z

.field private transID:I

.field uuidSet:[Ljavax/bluetooth/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/intel/bluetooth/SearchServicesThread;->transIDGenerator:I

    .line 47
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/intel/bluetooth/SearchServicesThread;->threads:Ljava/util/Hashtable;

    .line 43
    return-void
.end method

.method private constructor <init>(ILcom/intel/bluetooth/BluetoothStack;Lcom/intel/bluetooth/SearchServicesRunnable;[I[Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DiscoveryListener;)V
    .locals 3
    .param p1, "transID"    # I
    .param p2, "stack"    # Lcom/intel/bluetooth/BluetoothStack;
    .param p3, "serachRunnable"    # Lcom/intel/bluetooth/SearchServicesRunnable;
    .param p4, "attrSet"    # [I
    .param p5, "uuidSet"    # [Ljavax/bluetooth/UUID;
    .param p6, "device"    # Ljavax/bluetooth/RemoteDevice;
    .param p7, "listener"    # Ljavax/bluetooth/DiscoveryListener;

    .prologue
    const/4 v2, 0x0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SearchServicesThread-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/intel/bluetooth/SearchServicesThread;->servicesRecords:Ljava/util/Vector;

    .line 67
    iput-boolean v2, p0, Lcom/intel/bluetooth/SearchServicesThread;->started:Z

    .line 69
    iput-boolean v2, p0, Lcom/intel/bluetooth/SearchServicesThread;->finished:Z

    .line 71
    iput-boolean v2, p0, Lcom/intel/bluetooth/SearchServicesThread;->terminated:Z

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/intel/bluetooth/SearchServicesThread;->serviceSearchStartedEvent:Ljava/lang/Object;

    .line 83
    iput-object p2, p0, Lcom/intel/bluetooth/SearchServicesThread;->stack:Lcom/intel/bluetooth/BluetoothStack;

    .line 84
    iput-object p3, p0, Lcom/intel/bluetooth/SearchServicesThread;->serachRunnable:Lcom/intel/bluetooth/SearchServicesRunnable;

    .line 85
    iput p1, p0, Lcom/intel/bluetooth/SearchServicesThread;->transID:I

    .line 86
    iput-object p4, p0, Lcom/intel/bluetooth/SearchServicesThread;->attrSet:[I

    .line 87
    iput-object p7, p0, Lcom/intel/bluetooth/SearchServicesThread;->listener:Ljavax/bluetooth/DiscoveryListener;

    .line 88
    iput-object p5, p0, Lcom/intel/bluetooth/SearchServicesThread;->uuidSet:[Ljavax/bluetooth/UUID;

    .line 89
    invoke-static {p2, p6}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getStackBoundDevice(Lcom/intel/bluetooth/BluetoothStack;Ljavax/bluetooth/RemoteDevice;)Ljavax/bluetooth/RemoteDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/bluetooth/SearchServicesThread;->device:Ljavax/bluetooth/RemoteDevice;

    .line 90
    return-void
.end method

.method private static countRunningSearchServicesThreads(Lcom/intel/bluetooth/BluetoothStack;)I
    .locals 4
    .param p0, "stack"    # Lcom/intel/bluetooth/BluetoothStack;

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "count":I
    sget-object v3, Lcom/intel/bluetooth/SearchServicesThread;->threads:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 146
    return v0

    .line 141
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intel/bluetooth/SearchServicesThread;

    .line 142
    .local v2, "t":Lcom/intel/bluetooth/SearchServicesThread;
    iget-object v3, v2, Lcom/intel/bluetooth/SearchServicesThread;->stack:Lcom/intel/bluetooth/BluetoothStack;

    if-ne v3, p0, :cond_0

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static getServiceSearchThread(I)Lcom/intel/bluetooth/SearchServicesThread;
    .locals 2
    .param p0, "transID"    # I

    .prologue
    .line 150
    sget-object v0, Lcom/intel/bluetooth/SearchServicesThread;->threads:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/bluetooth/SearchServicesThread;

    return-object v0
.end method

.method private static declared-synchronized nextThreadNum()I
    .locals 2

    .prologue
    .line 76
    const-class v1, Lcom/intel/bluetooth/SearchServicesThread;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/intel/bluetooth/SearchServicesThread;->transIDGenerator:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/intel/bluetooth/SearchServicesThread;->transIDGenerator:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static startSearchServices(Lcom/intel/bluetooth/BluetoothStack;Lcom/intel/bluetooth/SearchServicesRunnable;[I[Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DiscoveryListener;)I
    .locals 12
    .param p0, "stack"    # Lcom/intel/bluetooth/BluetoothStack;
    .param p1, "searchRunnable"    # Lcom/intel/bluetooth/SearchServicesRunnable;
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
    .line 101
    sget-object v11, Lcom/intel/bluetooth/SearchServicesThread;->threads:Ljava/util/Hashtable;

    monitor-enter v11

    .line 102
    :try_start_0
    invoke-static {p0}, Lcom/intel/bluetooth/SearchServicesThread;->countRunningSearchServicesThreads(Lcom/intel/bluetooth/BluetoothStack;)I

    move-result v10

    .line 105
    .local v10, "runningCount":I
    const-string v1, "bluetooth.sd.trans.max"

    invoke-interface {p0, v1}, Lcom/intel/bluetooth/BluetoothStack;->getLocalDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 107
    .local v8, "concurrentAllow":I
    if-lt v10, v8, :cond_0

    .line 108
    new-instance v1, Ljavax/bluetooth/BluetoothStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Already running "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " service discovery transactions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-direct {v1, v2}, Ljavax/bluetooth/BluetoothStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    .end local v8    # "concurrentAllow":I
    .end local v10    # "runningCount":I
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 111
    .restart local v8    # "concurrentAllow":I
    .restart local v10    # "runningCount":I
    :cond_0
    :try_start_1
    new-instance v0, Lcom/intel/bluetooth/SearchServicesThread;

    invoke-static {}, Lcom/intel/bluetooth/SearchServicesThread;->nextThreadNum()I

    move-result v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/intel/bluetooth/SearchServicesThread;-><init>(ILcom/intel/bluetooth/BluetoothStack;Lcom/intel/bluetooth/SearchServicesRunnable;[I[Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DiscoveryListener;)V

    .line 113
    .local v0, "t":Lcom/intel/bluetooth/SearchServicesThread;
    sget-object v1, Lcom/intel/bluetooth/SearchServicesThread;->threads:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/intel/bluetooth/SearchServicesThread;->getTransID()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    invoke-static {v0}, Lcom/intel/bluetooth/UtilsJavaSE;->threadSetDaemon(Ljava/lang/Thread;)V

    .line 117
    iget-object v2, v0, Lcom/intel/bluetooth/SearchServicesThread;->serviceSearchStartedEvent:Ljava/lang/Object;

    monitor-enter v2

    .line 118
    :try_start_2
    invoke-virtual {v0}, Lcom/intel/bluetooth/SearchServicesThread;->start()V

    .line 119
    :cond_1
    iget-boolean v1, v0, Lcom/intel/bluetooth/SearchServicesThread;->started:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/intel/bluetooth/SearchServicesThread;->finished:Z

    if-eqz v1, :cond_3

    .line 117
    :cond_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 130
    iget-boolean v1, v0, Lcom/intel/bluetooth/SearchServicesThread;->started:Z

    if-eqz v1, :cond_4

    .line 131
    invoke-virtual {v0}, Lcom/intel/bluetooth/SearchServicesThread;->getTransID()I

    move-result v1

    :goto_0
    return v1

    .line 121
    :cond_3
    :try_start_3
    iget-object v1, v0, Lcom/intel/bluetooth/SearchServicesThread;->serviceSearchStartedEvent:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    :try_start_4
    iget-object v1, v0, Lcom/intel/bluetooth/SearchServicesThread;->startException:Ljavax/bluetooth/BluetoothStateException;

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, v0, Lcom/intel/bluetooth/SearchServicesThread;->startException:Ljavax/bluetooth/BluetoothStateException;

    throw v1

    .line 117
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 122
    :catch_0
    move-exception v9

    .line 123
    .local v9, "e":Ljava/lang/InterruptedException;
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v1, 0x0

    goto :goto_0

    .line 134
    .end local v9    # "e":Ljava/lang/InterruptedException;
    :cond_4
    new-instance v1, Ljavax/bluetooth/BluetoothStateException;

    invoke-direct {v1}, Ljavax/bluetooth/BluetoothStateException;-><init>()V

    throw v1
.end method

.method private unregisterThread()V
    .locals 4

    .prologue
    .line 177
    sget-object v1, Lcom/intel/bluetooth/SearchServicesThread;->threads:Ljava/util/Hashtable;

    monitor-enter v1

    .line 178
    :try_start_0
    sget-object v0, Lcom/intel/bluetooth/SearchServicesThread;->threads:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/intel/bluetooth/SearchServicesThread;->getTransID()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    monitor-exit v1

    .line 180
    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method addServicesRecords(Ljavax/bluetooth/ServiceRecord;)V
    .locals 1
    .param p1, "servRecord"    # Ljavax/bluetooth/ServiceRecord;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/intel/bluetooth/SearchServicesThread;->servicesRecords:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method public getAttrSet()[I
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 224
    const/4 v6, 0x5

    new-array v5, v6, [I

    .line 226
    aput v7, v5, v7

    .line 227
    aput v9, v5, v9

    aput v10, v5, v10

    .line 228
    aput v11, v5, v11

    .line 229
    .local v5, "requiredAttrIDs":[I
    iget-object v6, p0, Lcom/intel/bluetooth/SearchServicesThread;->attrSet:[I

    if-nez v6, :cond_0

    .line 255
    .end local v5    # "requiredAttrIDs":[I
    :goto_0
    return-object v5

    .line 233
    .restart local v5    # "requiredAttrIDs":[I
    :cond_0
    array-length v6, v5

    iget-object v7, p0, Lcom/intel/bluetooth/SearchServicesThread;->attrSet:[I

    array-length v7, v7

    add-int v4, v6, v7

    .line 234
    .local v4, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v6, p0, Lcom/intel/bluetooth/SearchServicesThread;->attrSet:[I

    array-length v6, v6

    if-lt v2, v6, :cond_1

    .line 243
    new-array v0, v4, [I

    .line 244
    .local v0, "allIDs":[I
    array-length v6, v5

    invoke-static {v5, v8, v0, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    array-length v1, v5

    .line 246
    .local v1, "appendPosition":I
    const/4 v2, 0x0

    :goto_2
    iget-object v6, p0, Lcom/intel/bluetooth/SearchServicesThread;->attrSet:[I

    array-length v6, v6

    if-lt v2, v6, :cond_4

    move-object v5, v0

    .line 255
    goto :goto_0

    .line 235
    .end local v0    # "allIDs":[I
    .end local v1    # "appendPosition":I
    :cond_1
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_3
    array-length v6, v5

    if-lt v3, v6, :cond_2

    .line 234
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 236
    :cond_2
    aget v6, v5, v3

    iget-object v7, p0, Lcom/intel/bluetooth/SearchServicesThread;->attrSet:[I

    aget v7, v7, v2

    if-ne v6, v7, :cond_3

    .line 237
    add-int/lit8 v4, v4, -0x1

    .line 238
    goto :goto_4

    .line 235
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 247
    .end local v3    # "k":I
    .restart local v0    # "allIDs":[I
    .restart local v1    # "appendPosition":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "k":I
    :goto_5
    array-length v6, v5

    if-lt v3, v6, :cond_6

    .line 252
    iget-object v6, p0, Lcom/intel/bluetooth/SearchServicesThread;->attrSet:[I

    aget v6, v6, v2

    aput v6, v0, v1

    .line 253
    add-int/lit8 v1, v1, 0x1

    .line 246
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 248
    :cond_6
    aget v6, v5, v3

    iget-object v7, p0, Lcom/intel/bluetooth/SearchServicesThread;->attrSet:[I

    aget v7, v7, v2

    if-eq v6, v7, :cond_5

    .line 247
    add-int/lit8 v3, v3, 0x1

    goto :goto_5
.end method

.method getDevice()Ljavax/bluetooth/RemoteDevice;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/intel/bluetooth/SearchServicesThread;->device:Ljavax/bluetooth/RemoteDevice;

    return-object v0
.end method

.method getListener()Ljavax/bluetooth/DiscoveryListener;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/intel/bluetooth/SearchServicesThread;->listener:Ljavax/bluetooth/DiscoveryListener;

    return-object v0
.end method

.method getServicesRecords()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/intel/bluetooth/SearchServicesThread;->servicesRecords:Ljava/util/Vector;

    return-object v0
.end method

.method getTransID()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/intel/bluetooth/SearchServicesThread;->transID:I

    return v0
.end method

.method isTerminated()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/intel/bluetooth/SearchServicesThread;->terminated:Z

    return v0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 154
    const/4 v7, 0x3

    .line 156
    .local v7, "respCode":I
    :try_start_0
    iget-object v0, p0, Lcom/intel/bluetooth/SearchServicesThread;->stack:Lcom/intel/bluetooth/BluetoothStack;

    invoke-static {v0}, Lcom/intel/bluetooth/BlueCoveImpl;->setThreadBluetoothStack(Lcom/intel/bluetooth/BluetoothStack;)V

    .line 157
    iget-object v0, p0, Lcom/intel/bluetooth/SearchServicesThread;->serachRunnable:Lcom/intel/bluetooth/SearchServicesRunnable;

    iget-object v2, p0, Lcom/intel/bluetooth/SearchServicesThread;->attrSet:[I

    iget-object v3, p0, Lcom/intel/bluetooth/SearchServicesThread;->uuidSet:[Ljavax/bluetooth/UUID;

    .line 158
    iget-object v4, p0, Lcom/intel/bluetooth/SearchServicesThread;->device:Ljavax/bluetooth/RemoteDevice;

    iget-object v5, p0, Lcom/intel/bluetooth/SearchServicesThread;->listener:Ljavax/bluetooth/DiscoveryListener;

    move-object v1, p0

    .line 157
    invoke-interface/range {v0 .. v5}, Lcom/intel/bluetooth/SearchServicesRunnable;->runSearchServices(Lcom/intel/bluetooth/SearchServicesThread;[I[Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DiscoveryListener;)I
    :try_end_0
    .catch Ljavax/bluetooth/BluetoothStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v7

    .line 163
    iput-boolean v8, p0, Lcom/intel/bluetooth/SearchServicesThread;->finished:Z

    .line 164
    invoke-direct {p0}, Lcom/intel/bluetooth/SearchServicesThread;->unregisterThread()V

    .line 165
    iget-object v1, p0, Lcom/intel/bluetooth/SearchServicesThread;->serviceSearchStartedEvent:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_1
    iget-object v0, p0, Lcom/intel/bluetooth/SearchServicesThread;->serviceSearchStartedEvent:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 165
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 168
    const-string v0, "runSearchServices ends"

    invoke-virtual {p0}, Lcom/intel/bluetooth/SearchServicesThread;->getTransID()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    .line 169
    iget-boolean v0, p0, Lcom/intel/bluetooth/SearchServicesThread;->started:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Lcom/intel/bluetooth/Utils;->j2meUsagePatternDellay()V

    .line 171
    iget-object v0, p0, Lcom/intel/bluetooth/SearchServicesThread;->listener:Ljavax/bluetooth/DiscoveryListener;

    invoke-virtual {p0}, Lcom/intel/bluetooth/SearchServicesThread;->getTransID()I

    move-result v1

    invoke-interface {v0, v1, v7}, Ljavax/bluetooth/DiscoveryListener;->serviceSearchCompleted(II)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v6

    .line 160
    .local v6, "e":Ljavax/bluetooth/BluetoothStateException;
    :try_start_2
    iput-object v6, p0, Lcom/intel/bluetooth/SearchServicesThread;->startException:Ljavax/bluetooth/BluetoothStateException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 163
    iput-boolean v8, p0, Lcom/intel/bluetooth/SearchServicesThread;->finished:Z

    .line 164
    invoke-direct {p0}, Lcom/intel/bluetooth/SearchServicesThread;->unregisterThread()V

    .line 165
    iget-object v1, p0, Lcom/intel/bluetooth/SearchServicesThread;->serviceSearchStartedEvent:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_3
    iget-object v0, p0, Lcom/intel/bluetooth/SearchServicesThread;->serviceSearchStartedEvent:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 165
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 168
    const-string v0, "runSearchServices ends"

    invoke-virtual {p0}, Lcom/intel/bluetooth/SearchServicesThread;->getTransID()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    .line 169
    iget-boolean v0, p0, Lcom/intel/bluetooth/SearchServicesThread;->started:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Lcom/intel/bluetooth/Utils;->j2meUsagePatternDellay()V

    .line 171
    iget-object v0, p0, Lcom/intel/bluetooth/SearchServicesThread;->listener:Ljavax/bluetooth/DiscoveryListener;

    invoke-virtual {p0}, Lcom/intel/bluetooth/SearchServicesThread;->getTransID()I

    move-result v1

    invoke-interface {v0, v1, v7}, Ljavax/bluetooth/DiscoveryListener;->serviceSearchCompleted(II)V

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 162
    .end local v6    # "e":Ljavax/bluetooth/BluetoothStateException;
    :catchall_1
    move-exception v0

    .line 163
    iput-boolean v8, p0, Lcom/intel/bluetooth/SearchServicesThread;->finished:Z

    .line 164
    invoke-direct {p0}, Lcom/intel/bluetooth/SearchServicesThread;->unregisterThread()V

    .line 165
    iget-object v1, p0, Lcom/intel/bluetooth/SearchServicesThread;->serviceSearchStartedEvent:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_5
    iget-object v2, p0, Lcom/intel/bluetooth/SearchServicesThread;->serviceSearchStartedEvent:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 165
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 168
    const-string v1, "runSearchServices ends"

    invoke-virtual {p0}, Lcom/intel/bluetooth/SearchServicesThread;->getTransID()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    .line 169
    iget-boolean v1, p0, Lcom/intel/bluetooth/SearchServicesThread;->started:Z

    if-eqz v1, :cond_1

    .line 170
    invoke-static {}, Lcom/intel/bluetooth/Utils;->j2meUsagePatternDellay()V

    .line 171
    iget-object v1, p0, Lcom/intel/bluetooth/SearchServicesThread;->listener:Ljavax/bluetooth/DiscoveryListener;

    invoke-virtual {p0}, Lcom/intel/bluetooth/SearchServicesThread;->getTransID()I

    move-result v2

    invoke-interface {v1, v2, v7}, Ljavax/bluetooth/DiscoveryListener;->serviceSearchCompleted(II)V

    .line 173
    :cond_1
    throw v0

    .line 165
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method public searchServicesStartedCallback()V
    .locals 3

    .prologue
    .line 183
    const-string v0, "searchServicesStartedCallback"

    invoke-virtual {p0}, Lcom/intel/bluetooth/SearchServicesThread;->getTransID()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intel/bluetooth/SearchServicesThread;->started:Z

    .line 185
    iget-object v1, p0, Lcom/intel/bluetooth/SearchServicesThread;->serviceSearchStartedEvent:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/intel/bluetooth/SearchServicesThread;->serviceSearchStartedEvent:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 185
    monitor-exit v1

    .line 188
    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setTerminated()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 195
    invoke-virtual {p0}, Lcom/intel/bluetooth/SearchServicesThread;->isTerminated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const/4 v0, 0x0

    .line 200
    :goto_0
    return v0

    .line 198
    :cond_0
    iput-boolean v0, p0, Lcom/intel/bluetooth/SearchServicesThread;->terminated:Z

    .line 199
    invoke-direct {p0}, Lcom/intel/bluetooth/SearchServicesThread;->unregisterThread()V

    goto :goto_0
.end method

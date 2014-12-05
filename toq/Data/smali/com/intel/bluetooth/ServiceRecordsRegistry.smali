.class public abstract Lcom/intel/bluetooth/ServiceRecordsRegistry;
.super Ljava/lang/Object;
.source "ServiceRecordsRegistry.java"


# static fields
.field private static serviceRecordsMap:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/intel/bluetooth/ServiceRecordsRegistry;->serviceRecordsMap:Ljava/util/Hashtable;

    .line 42
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method static declared-synchronized getDeviceServiceClasses()I
    .locals 5

    .prologue
    .line 66
    const-class v4, Lcom/intel/bluetooth/ServiceRecordsRegistry;

    monitor-enter v4

    const/4 v0, 0x0

    .line 67
    .local v0, "deviceServiceClasses":I
    :try_start_0
    sget-object v3, Lcom/intel/bluetooth/ServiceRecordsRegistry;->serviceRecordsMap:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 72
    monitor-exit v4

    return v0

    .line 69
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intel/bluetooth/ServiceRecordImpl;

    .line 70
    .local v2, "serviceRecord":Lcom/intel/bluetooth/ServiceRecordImpl;
    iget v3, v2, Lcom/intel/bluetooth/ServiceRecordImpl;->deviceServiceClasses:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    or-int/2addr v0, v3

    goto :goto_0

    .line 66
    .end local v1    # "en":Ljava/util/Enumeration;
    .end local v2    # "serviceRecord":Lcom/intel/bluetooth/ServiceRecordImpl;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method static declared-synchronized register(Lcom/intel/bluetooth/BluetoothConnectionNotifierServiceRecordAccess;Lcom/intel/bluetooth/ServiceRecordImpl;)V
    .locals 2
    .param p0, "notifier"    # Lcom/intel/bluetooth/BluetoothConnectionNotifierServiceRecordAccess;
    .param p1, "serviceRecord"    # Lcom/intel/bluetooth/ServiceRecordImpl;

    .prologue
    .line 58
    const-class v1, Lcom/intel/bluetooth/ServiceRecordsRegistry;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/intel/bluetooth/ServiceRecordsRegistry;->serviceRecordsMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit v1

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized unregister(Lcom/intel/bluetooth/ServiceRecordImpl;)V
    .locals 2
    .param p0, "serviceRecord"    # Lcom/intel/bluetooth/ServiceRecordImpl;

    .prologue
    .line 62
    const-class v1, Lcom/intel/bluetooth/ServiceRecordsRegistry;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/intel/bluetooth/ServiceRecordsRegistry;->serviceRecordsMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit v1

    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static updateServiceRecord(Ljavax/bluetooth/ServiceRecord;)V
    .locals 3
    .param p0, "srvRecord"    # Ljavax/bluetooth/ServiceRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/ServiceRegistrationException;
        }
    .end annotation

    .prologue
    .line 78
    const-class v2, Lcom/intel/bluetooth/ServiceRecordsRegistry;

    monitor-enter v2

    .line 79
    :try_start_0
    sget-object v1, Lcom/intel/bluetooth/ServiceRecordsRegistry;->serviceRecordsMap:Ljava/util/Hashtable;

    .line 80
    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/bluetooth/BluetoothConnectionNotifierServiceRecordAccess;

    .line 78
    .local v0, "owner":Lcom/intel/bluetooth/BluetoothConnectionNotifierServiceRecordAccess;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    if-nez v0, :cond_0

    .line 83
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 84
    const-string v2, "Service record is not registered"

    .line 83
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    .end local v0    # "owner":Lcom/intel/bluetooth/BluetoothConnectionNotifierServiceRecordAccess;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 86
    .restart local v0    # "owner":Lcom/intel/bluetooth/BluetoothConnectionNotifierServiceRecordAccess;
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/intel/bluetooth/BluetoothConnectionNotifierServiceRecordAccess;->updateServiceRecord(Z)V

    .line 87
    return-void
.end method

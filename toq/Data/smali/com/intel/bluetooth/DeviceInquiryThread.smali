.class Lcom/intel/bluetooth/DeviceInquiryThread;
.super Ljava/lang/Thread;
.source "DeviceInquiryThread.java"


# static fields
.field private static threadNumber:I


# instance fields
.field private accessCode:I

.field private inquiryRunnable:Lcom/intel/bluetooth/DeviceInquiryRunnable;

.field private inquiryStartedEvent:Ljava/lang/Object;

.field private listener:Ljavax/bluetooth/DiscoveryListener;

.field private stack:Lcom/intel/bluetooth/BluetoothStack;

.field private startException:Ljavax/bluetooth/BluetoothStateException;

.field private started:Z

.field private terminated:Z


# direct methods
.method private constructor <init>(Lcom/intel/bluetooth/BluetoothStack;Lcom/intel/bluetooth/DeviceInquiryRunnable;ILjavax/bluetooth/DiscoveryListener;)V
    .locals 3
    .param p1, "stack"    # Lcom/intel/bluetooth/BluetoothStack;
    .param p2, "inquiryRunnable"    # Lcom/intel/bluetooth/DeviceInquiryRunnable;
    .param p3, "accessCode"    # I
    .param p4, "listener"    # Ljavax/bluetooth/DiscoveryListener;

    .prologue
    const/4 v2, 0x0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceInquiryThread-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/intel/bluetooth/DeviceInquiryThread;->nextThreadNum()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 48
    iput-boolean v2, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->started:Z

    .line 50
    iput-boolean v2, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->terminated:Z

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->inquiryStartedEvent:Ljava/lang/Object;

    .line 64
    iput-object p1, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->stack:Lcom/intel/bluetooth/BluetoothStack;

    .line 65
    iput-object p2, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->inquiryRunnable:Lcom/intel/bluetooth/DeviceInquiryRunnable;

    .line 66
    iput p3, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->accessCode:I

    .line 67
    iput-object p4, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->listener:Ljavax/bluetooth/DiscoveryListener;

    .line 68
    return-void
.end method

.method public static getConfigDeviceInquiryDuration()I
    .locals 2

    .prologue
    .line 100
    const-string v0, "bluecove.inquiry.duration"

    .line 101
    const/16 v1, 0xb

    .line 99
    invoke-static {v0, v1}, Lcom/intel/bluetooth/BlueCoveImpl;->getConfigProperty(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static declared-synchronized nextThreadNum()I
    .locals 3

    .prologue
    .line 57
    const-class v1, Lcom/intel/bluetooth/DeviceInquiryThread;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/intel/bluetooth/DeviceInquiryThread;->threadNumber:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/intel/bluetooth/DeviceInquiryThread;->threadNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static startInquiry(Lcom/intel/bluetooth/BluetoothStack;Lcom/intel/bluetooth/DeviceInquiryRunnable;ILjavax/bluetooth/DiscoveryListener;)Z
    .locals 4
    .param p0, "stack"    # Lcom/intel/bluetooth/BluetoothStack;
    .param p1, "inquiryRunnable"    # Lcom/intel/bluetooth/DeviceInquiryRunnable;
    .param p2, "accessCode"    # I
    .param p3, "listener"    # Ljavax/bluetooth/DiscoveryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v1, Lcom/intel/bluetooth/DeviceInquiryThread;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/intel/bluetooth/DeviceInquiryThread;-><init>(Lcom/intel/bluetooth/BluetoothStack;Lcom/intel/bluetooth/DeviceInquiryRunnable;ILjavax/bluetooth/DiscoveryListener;)V

    .line 80
    .local v1, "t":Lcom/intel/bluetooth/DeviceInquiryThread;
    invoke-static {v1}, Lcom/intel/bluetooth/UtilsJavaSE;->threadSetDaemon(Ljava/lang/Thread;)V

    .line 81
    iget-object v3, v1, Lcom/intel/bluetooth/DeviceInquiryThread;->inquiryStartedEvent:Ljava/lang/Object;

    monitor-enter v3

    .line 82
    :try_start_0
    invoke-virtual {v1}, Lcom/intel/bluetooth/DeviceInquiryThread;->start()V

    .line 83
    :cond_0
    iget-boolean v2, v1, Lcom/intel/bluetooth/DeviceInquiryThread;->started:Z

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lcom/intel/bluetooth/DeviceInquiryThread;->terminated:Z

    if-eqz v2, :cond_2

    .line 81
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    const-string v2, "startInquiry return"

    iget-boolean v3, v1, Lcom/intel/bluetooth/DeviceInquiryThread;->started:Z

    invoke-static {v2, v3}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Z)V

    .line 95
    iget-boolean v2, v1, Lcom/intel/bluetooth/DeviceInquiryThread;->started:Z

    :goto_0
    return v2

    .line 85
    :cond_2
    :try_start_1
    iget-object v2, v1, Lcom/intel/bluetooth/DeviceInquiryThread;->inquiryStartedEvent:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :try_start_2
    iget-object v2, v1, Lcom/intel/bluetooth/DeviceInquiryThread;->startException:Ljavax/bluetooth/BluetoothStateException;

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, v1, Lcom/intel/bluetooth/DeviceInquiryThread;->startException:Ljavax/bluetooth/BluetoothStateException;

    throw v2

    .line 81
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deviceInquiryStartedCallback()V
    .locals 2

    .prologue
    .line 130
    const-string v0, "deviceInquiryStartedCallback"

    invoke-static {v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->started:Z

    .line 132
    iget-object v1, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->inquiryStartedEvent:Ljava/lang/Object;

    monitor-enter v1

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->inquiryStartedEvent:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 132
    monitor-exit v1

    .line 135
    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 105
    const/4 v0, 0x7

    .line 107
    .local v0, "discType":I
    :try_start_0
    iget-object v2, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->stack:Lcom/intel/bluetooth/BluetoothStack;

    invoke-static {v2}, Lcom/intel/bluetooth/BlueCoveImpl;->setThreadBluetoothStack(Lcom/intel/bluetooth/BluetoothStack;)V

    .line 108
    iget-object v2, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->inquiryRunnable:Lcom/intel/bluetooth/DeviceInquiryRunnable;

    iget v3, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->accessCode:I

    .line 109
    iget-object v4, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->listener:Ljavax/bluetooth/DiscoveryListener;

    .line 108
    invoke-interface {v2, p0, v3, v4}, Lcom/intel/bluetooth/DeviceInquiryRunnable;->runDeviceInquiry(Lcom/intel/bluetooth/DeviceInquiryThread;ILjavax/bluetooth/DiscoveryListener;)I
    :try_end_0
    .catch Ljavax/bluetooth/BluetoothStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result v0

    .line 117
    iput-boolean v5, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->terminated:Z

    .line 118
    iget-object v3, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->inquiryStartedEvent:Ljava/lang/Object;

    monitor-enter v3

    .line 119
    :try_start_1
    iget-object v2, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->inquiryStartedEvent:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 118
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 121
    const-string v2, "runDeviceInquiry ends"

    invoke-static {v2}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 122
    iget-boolean v2, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->started:Z

    if-eqz v2, :cond_0

    .line 123
    invoke-static {}, Lcom/intel/bluetooth/Utils;->j2meUsagePatternDellay()V

    .line 124
    iget-object v2, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->listener:Ljavax/bluetooth/DiscoveryListener;

    invoke-interface {v2, v0}, Ljavax/bluetooth/DiscoveryListener;->inquiryCompleted(I)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljavax/bluetooth/BluetoothStateException;
    :try_start_2
    const-string v2, "runDeviceInquiry throw"

    invoke-static {v2, v1}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    iput-object v1, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->startException:Ljavax/bluetooth/BluetoothStateException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 117
    iput-boolean v5, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->terminated:Z

    .line 118
    iget-object v3, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->inquiryStartedEvent:Ljava/lang/Object;

    monitor-enter v3

    .line 119
    :try_start_3
    iget-object v2, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->inquiryStartedEvent:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 118
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    const-string v2, "runDeviceInquiry ends"

    invoke-static {v2}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 122
    iget-boolean v2, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->started:Z

    if-eqz v2, :cond_0

    .line 123
    invoke-static {}, Lcom/intel/bluetooth/Utils;->j2meUsagePatternDellay()V

    .line 124
    iget-object v2, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->listener:Ljavax/bluetooth/DiscoveryListener;

    invoke-interface {v2, v0}, Ljavax/bluetooth/DiscoveryListener;->inquiryCompleted(I)V

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 113
    .end local v1    # "e":Ljavax/bluetooth/BluetoothStateException;
    :catch_1
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_5
    const-string v2, "runDeviceInquiry"

    invoke-static {v2, v1}, Lcom/intel/bluetooth/DebugLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 117
    iput-boolean v5, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->terminated:Z

    .line 118
    iget-object v3, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->inquiryStartedEvent:Ljava/lang/Object;

    monitor-enter v3

    .line 119
    :try_start_6
    iget-object v2, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->inquiryStartedEvent:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 118
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 121
    const-string v2, "runDeviceInquiry ends"

    invoke-static {v2}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 122
    iget-boolean v2, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->started:Z

    if-eqz v2, :cond_0

    .line 123
    invoke-static {}, Lcom/intel/bluetooth/Utils;->j2meUsagePatternDellay()V

    .line 124
    iget-object v2, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->listener:Ljavax/bluetooth/DiscoveryListener;

    invoke-interface {v2, v0}, Ljavax/bluetooth/DiscoveryListener;->inquiryCompleted(I)V

    goto :goto_0

    .line 118
    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v2

    .line 116
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_2
    move-exception v2

    .line 117
    iput-boolean v5, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->terminated:Z

    .line 118
    iget-object v3, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->inquiryStartedEvent:Ljava/lang/Object;

    monitor-enter v3

    .line 119
    :try_start_8
    iget-object v4, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->inquiryStartedEvent:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 118
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 121
    const-string v3, "runDeviceInquiry ends"

    invoke-static {v3}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 122
    iget-boolean v3, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->started:Z

    if-eqz v3, :cond_1

    .line 123
    invoke-static {}, Lcom/intel/bluetooth/Utils;->j2meUsagePatternDellay()V

    .line 124
    iget-object v3, p0, Lcom/intel/bluetooth/DeviceInquiryThread;->listener:Ljavax/bluetooth/DiscoveryListener;

    invoke-interface {v3, v0}, Ljavax/bluetooth/DiscoveryListener;->inquiryCompleted(I)V

    .line 126
    :cond_1
    throw v2

    .line 118
    :catchall_3
    move-exception v2

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v2

    :catchall_4
    move-exception v2

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v2
.end method

.class Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;
.super Ljava/lang/Thread;
.source "SelectServiceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/bluetooth/SelectServiceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParallelSearchServicesThread"
.end annotation


# instance fields
.field private processedNext:I

.field private processedSize:I

.field private stoped:Z

.field final synthetic this$0:Lcom/intel/bluetooth/SelectServiceHandler;

.field private uuid:Ljavax/bluetooth/UUID;


# direct methods
.method constructor <init>(Lcom/intel/bluetooth/SelectServiceHandler;Ljavax/bluetooth/UUID;)V
    .locals 3
    .param p2, "uuid"    # Ljavax/bluetooth/UUID;

    .prologue
    const/4 v2, 0x0

    .line 192
    iput-object p1, p0, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->this$0:Lcom/intel/bluetooth/SelectServiceHandler;

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SelectServiceThread-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/intel/bluetooth/SelectServiceHandler;->nextThreadNum()I
    invoke-static {}, Lcom/intel/bluetooth/SelectServiceHandler;->access$0()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 184
    iput-boolean v2, p0, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->stoped:Z

    .line 186
    iput v2, p0, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->processedNext:I

    .line 188
    iput v2, p0, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->processedSize:I

    .line 194
    iput-object p2, p0, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->uuid:Ljavax/bluetooth/UUID;

    .line 195
    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 2

    .prologue
    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->stoped:Z

    .line 203
    iget-object v0, p0, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->this$0:Lcom/intel/bluetooth/SelectServiceHandler;

    # getter for: Lcom/intel/bluetooth/SelectServiceHandler;->serviceSearchDeviceQueue:Ljava/util/Vector;
    invoke-static {v0}, Lcom/intel/bluetooth/SelectServiceHandler;->access$1(Lcom/intel/bluetooth/SelectServiceHandler;)Ljava/util/Vector;

    move-result-object v1

    monitor-enter v1

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->this$0:Lcom/intel/bluetooth/SelectServiceHandler;

    # getter for: Lcom/intel/bluetooth/SelectServiceHandler;->serviceSearchDeviceQueue:Ljava/util/Vector;
    invoke-static {v0}, Lcom/intel/bluetooth/SelectServiceHandler;->access$1(Lcom/intel/bluetooth/SelectServiceHandler;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 203
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 207
    return-void

    .line 203
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method processedAll()Z
    .locals 2

    .prologue
    .line 198
    iget v0, p0, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->processedNext:I

    iget-object v1, p0, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->this$0:Lcom/intel/bluetooth/SelectServiceHandler;

    # getter for: Lcom/intel/bluetooth/SelectServiceHandler;->serviceSearchDeviceQueue:Ljava/util/Vector;
    invoke-static {v1}, Lcom/intel/bluetooth/SelectServiceHandler;->access$1(Lcom/intel/bluetooth/SelectServiceHandler;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 210
    :goto_0
    iget-boolean v3, p0, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->stoped:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->this$0:Lcom/intel/bluetooth/SelectServiceHandler;

    # getter for: Lcom/intel/bluetooth/SelectServiceHandler;->servRecordDiscovered:Ljavax/bluetooth/ServiceRecord;
    invoke-static {v3}, Lcom/intel/bluetooth/SelectServiceHandler;->access$2(Lcom/intel/bluetooth/SelectServiceHandler;)Ljavax/bluetooth/ServiceRecord;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 235
    :cond_0
    :goto_1
    return-void

    .line 211
    :cond_1
    iget-object v3, p0, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->this$0:Lcom/intel/bluetooth/SelectServiceHandler;

    # getter for: Lcom/intel/bluetooth/SelectServiceHandler;->serviceSearchDeviceQueue:Ljava/util/Vector;
    invoke-static {v3}, Lcom/intel/bluetooth/SelectServiceHandler;->access$1(Lcom/intel/bluetooth/SelectServiceHandler;)Ljava/util/Vector;

    move-result-object v4

    monitor-enter v4

    .line 212
    :try_start_0
    iget-object v3, p0, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->this$0:Lcom/intel/bluetooth/SelectServiceHandler;

    # getter for: Lcom/intel/bluetooth/SelectServiceHandler;->inquiryCompleted:Z
    invoke-static {v3}, Lcom/intel/bluetooth/SelectServiceHandler;->access$3(Lcom/intel/bluetooth/SelectServiceHandler;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 213
    iget v3, p0, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->processedSize:I

    iget-object v5, p0, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->this$0:Lcom/intel/bluetooth/SelectServiceHandler;

    # getter for: Lcom/intel/bluetooth/SelectServiceHandler;->serviceSearchDeviceQueue:Ljava/util/Vector;
    invoke-static {v5}, Lcom/intel/bluetooth/SelectServiceHandler;->access$1(Lcom/intel/bluetooth/SelectServiceHandler;)Ljava/util/Vector;

    move-result-object v5

    .line 214
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    .line 213
    if-ne v3, v5, :cond_2

    .line 215
    monitor-exit v4

    goto :goto_1

    .line 211
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 217
    :cond_2
    :try_start_1
    iget v3, p0, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->processedSize:I

    iget-object v5, p0, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->this$0:Lcom/intel/bluetooth/SelectServiceHandler;

    # getter for: Lcom/intel/bluetooth/SelectServiceHandler;->serviceSearchDeviceQueue:Ljava/util/Vector;
    invoke-static {v5}, Lcom/intel/bluetooth/SelectServiceHandler;->access$1(Lcom/intel/bluetooth/SelectServiceHandler;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-ne v3, v5, :cond_3

    .line 219
    :try_start_2
    iget-object v3, p0, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->this$0:Lcom/intel/bluetooth/SelectServiceHandler;

    # getter for: Lcom/intel/bluetooth/SelectServiceHandler;->serviceSearchDeviceQueue:Ljava/util/Vector;
    invoke-static {v3}, Lcom/intel/bluetooth/SelectServiceHandler;->access$1(Lcom/intel/bluetooth/SelectServiceHandler;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->this$0:Lcom/intel/bluetooth/SelectServiceHandler;

    # getter for: Lcom/intel/bluetooth/SelectServiceHandler;->serviceSearchDeviceQueue:Ljava/util/Vector;
    invoke-static {v3}, Lcom/intel/bluetooth/SelectServiceHandler;->access$1(Lcom/intel/bluetooth/SelectServiceHandler;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    iput v3, p0, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->processedSize:I

    .line 211
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 226
    iget v2, p0, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->processedNext:I

    .local v2, "i":I
    :goto_2
    iget v3, p0, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->processedSize:I

    if-lt v2, v3, :cond_4

    .line 233
    iget v3, p0, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->processedSize:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->processedNext:I

    goto :goto_0

    .line 220
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 227
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "i":I
    :cond_4
    iget-object v3, p0, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->this$0:Lcom/intel/bluetooth/SelectServiceHandler;

    # getter for: Lcom/intel/bluetooth/SelectServiceHandler;->serviceSearchDeviceQueue:Ljava/util/Vector;
    invoke-static {v3}, Lcom/intel/bluetooth/SelectServiceHandler;->access$1(Lcom/intel/bluetooth/SelectServiceHandler;)Ljava/util/Vector;

    move-result-object v3

    .line 228
    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/bluetooth/RemoteDevice;

    .line 229
    .local v0, "btDevice":Ljavax/bluetooth/RemoteDevice;
    iget-object v3, p0, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->this$0:Lcom/intel/bluetooth/SelectServiceHandler;

    iget-object v4, p0, Lcom/intel/bluetooth/SelectServiceHandler$ParallelSearchServicesThread;->uuid:Ljavax/bluetooth/UUID;

    # invokes: Lcom/intel/bluetooth/SelectServiceHandler;->findServiceOnDevice(Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;)Ljavax/bluetooth/ServiceRecord;
    invoke-static {v3, v4, v0}, Lcom/intel/bluetooth/SelectServiceHandler;->access$4(Lcom/intel/bluetooth/SelectServiceHandler;Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;)Ljavax/bluetooth/ServiceRecord;

    move-result-object v3

    if-nez v3, :cond_0

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

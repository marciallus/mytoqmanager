.class Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;
.super Ljava/lang/Thread;
.source "BluetoothStackMicrosoft.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/bluetooth/BluetoothStackMicrosoft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectThread"
.end annotation


# instance fields
.field volatile connecting:Z

.field volatile error:Ljava/io/IOException;

.field final event:Ljava/lang/Object;

.field final params:Lcom/intel/bluetooth/BluetoothConnectionParams;

.field final retryUnreachable:I

.field final socket:J

.field volatile success:Z

.field final synthetic this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;


# direct methods
.method constructor <init>(Lcom/intel/bluetooth/BluetoothStackMicrosoft;Ljava/lang/Object;JLcom/intel/bluetooth/BluetoothConnectionParams;)V
    .locals 2
    .param p2, "event"    # Ljava/lang/Object;
    .param p3, "socket"    # J
    .param p5, "params"    # Lcom/intel/bluetooth/BluetoothConnectionParams;

    .prologue
    .line 704
    iput-object p1, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConnectThread-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/intel/bluetooth/BluetoothStackMicrosoft;->nextConnectThreadNum()I
    invoke-static {}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->access$0()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 699
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->success:Z

    .line 701
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->connecting:Z

    .line 706
    iput-object p2, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->event:Ljava/lang/Object;

    .line 707
    iput-wide p3, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->socket:J

    .line 708
    iput-object p5, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->params:Lcom/intel/bluetooth/BluetoothConnectionParams;

    .line 711
    const-string v0, "bluecove.connect.unreachable_retry"

    .line 712
    const/4 v1, 0x2

    .line 710
    invoke-static {v0, v1}, Lcom/intel/bluetooth/BlueCoveImpl;->getConfigProperty(Ljava/lang/String;I)I

    move-result v0

    .line 709
    iput v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->retryUnreachable:I

    .line 714
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    iget-wide v1, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->socket:J

    iget-object v3, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->params:Lcom/intel/bluetooth/BluetoothConnectionParams;

    iget-wide v3, v3, Lcom/intel/bluetooth/BluetoothConnectionParams;->address:J

    iget-object v5, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->params:Lcom/intel/bluetooth/BluetoothConnectionParams;

    iget v5, v5, Lcom/intel/bluetooth/BluetoothConnectionParams;->channel:I

    .line 719
    iget v6, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->retryUnreachable:I

    .line 718
    # invokes: Lcom/intel/bluetooth/BluetoothStackMicrosoft;->connect(JJII)V
    invoke-static/range {v0 .. v6}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->access$1(Lcom/intel/bluetooth/BluetoothStackMicrosoft;JJII)V

    .line 720
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->success:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 724
    iput-boolean v8, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->connecting:Z

    .line 725
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->event:Ljava/lang/Object;

    monitor-enter v1

    .line 726
    :try_start_1
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->event:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 725
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 729
    :goto_0
    return-void

    .line 721
    :catch_0
    move-exception v7

    .line 722
    .local v7, "e":Ljava/io/IOException;
    :try_start_2
    iput-object v7, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->error:Ljava/io/IOException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 724
    iput-boolean v8, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->connecting:Z

    .line 725
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->event:Ljava/lang/Object;

    monitor-enter v1

    .line 726
    :try_start_3
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->event:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 725
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 723
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v0

    .line 724
    iput-boolean v8, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->connecting:Z

    .line 725
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->event:Ljava/lang/Object;

    monitor-enter v1

    .line 726
    :try_start_4
    iget-object v2, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$ConnectThread;->event:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 725
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 728
    throw v0

    .line 725
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0
.end method

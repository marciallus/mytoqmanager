.class Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$1;
.super Ljava/util/TimerTask;
.source "BTConnectionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)V
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$1;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 717
    # getter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isTimerRequired:Z
    invoke-static {}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$1;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    # invokes: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->stopTimer()V
    invoke-static {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$1200(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)V

    .line 719
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$1;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    # getter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;
    invoke-static {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$900(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$1;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    # getter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;
    invoke-static {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$900(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    move-result-object v1

    monitor-enter v1

    .line 721
    :try_start_0
    const-string v0, "BTConnectionListener"

    const-string v2, "startTimer() run() called: mTimer to stop the ConnectedThread"

    invoke-static {v0, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string v0, "BTConnectionListener"

    const-string v2, "Didn\'t receive payload, mTimer to stop the ConnectedThread"

    invoke-static {v0, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$1;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    # getter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;
    invoke-static {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$900(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->stopConnectedThread()V

    .line 726
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$1;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    # getter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;
    invoke-static {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$900(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->cancel()V

    .line 727
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$1;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    const/4 v2, 0x0

    # setter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;
    invoke-static {v0, v2}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$902(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;)Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    .line 728
    monitor-exit v1

    .line 731
    :cond_0
    return-void

    .line 728
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

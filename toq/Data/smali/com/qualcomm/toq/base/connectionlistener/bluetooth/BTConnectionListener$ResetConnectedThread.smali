.class Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;
.super Ljava/lang/Thread;
.source "BTConnectionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetConnectedThread"
.end annotation


# static fields
.field private static final RESET_DELAY:I = 0x2710


# instance fields
.field private continueFlagEnabled:Z

.field final synthetic this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)V
    .locals 2

    .prologue
    .line 661
    iput-object p1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 659
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;->continueFlagEnabled:Z

    .line 662
    const-string v0, "BTConnectionListener"

    const-string v1, "ResetConnectedThread Constructur"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;->start()V

    .line 664
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 668
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 670
    :try_start_0
    const-string v1, "BTConnectionListener"

    const-string v2, "ResetConnectedThread run() sleep for 10 seconds"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const-string v1, "BTConnectionListener"

    const-string v2, "[sleep] 10 seconds RESET_DELAY"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    const-wide/16 v1, 0x2710

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 673
    const-string v1, "BTConnectionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Post 10 seonds delay continueFlagEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;->continueFlagEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-boolean v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;->continueFlagEnabled:Z

    if-nez v1, :cond_0

    .line 676
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    # getter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;
    invoke-static {v1}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$900(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 677
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    # getter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;
    invoke-static {v1}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$900(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    :try_start_1
    const-string v1, "BTConnectionListener"

    const-string v3, "ResetConnectedThread stop the ConnectedThread"

    invoke-static {v1, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v1, "BTConnectionListener"

    const-string v3, "Didn\'t receive Aloha Message: ResetConnectedThread stop the ConnectedThread"

    invoke-static {v1, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    # getter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;
    invoke-static {v1}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$900(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->stopConnectedThread()V

    .line 683
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    # getter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;
    invoke-static {v1}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$900(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;->cancel()V

    .line 684
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    const/4 v3, 0x0

    # setter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;
    invoke-static {v1, v3}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$902(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;)Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectedThread;

    .line 685
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 693
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    # setter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mResetConnectedThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;
    invoke-static {v1, v4}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$1002(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;)Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;

    .line 694
    return-void

    .line 685
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 689
    :catch_0
    move-exception v0

    .line 690
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BTConnectionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in ResetConnectedThread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContinueFlagEnabled(Z)V
    .locals 3
    .param p1, "continueFlagEnabled"    # Z

    .prologue
    .line 697
    iput-boolean p1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ResetConnectedThread;->continueFlagEnabled:Z

    .line 698
    const-string v0, "BTConnectionListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContinueFlagEnabled called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    return-void
.end method

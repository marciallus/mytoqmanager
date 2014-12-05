.class public abstract Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
.super Lcom/qualcomm/toq/base/controller/DefaultController;
.source "AmbientController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/controller/AmbientController$AmbientTask;
    }
.end annotation


# static fields
.field public static final AMBIENT_AUTOCOMPLETE_TYPE:Ljava/lang/String; = "stock"

.field public static final AMB_TAG:Ljava/lang/String; = "Ambient"

.field public static final TASK_ADDED_TO_QUEUE:I = -0x63

.field public static final TASK_FORCE_POLL:I = 0x2

.field public static final TASK_RE_SYNC:I = 0x3

.field public static final TASK_TIMER_POLL:I = 0x1

.field public static final appName:Ljava/lang/String; = "AMBIENT_CONTROLLER"


# instance fields
.field public TAG:Ljava/lang/String;

.field protected fileSyncReuestNumber:J

.field public is:Z

.field protected isNetworkStateReciverActive:Z

.field public isTimerPolling:Z

.field private mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/qualcomm/toq/smartwatch/controller/AmbientController$AmbientTask;",
            ">;"
        }
    .end annotation
.end field

.field protected mState:Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;

.field networkConnectionStatusReceiver:Landroid/content/BroadcastReceiver;

.field private pollingTimer:Ljava/util/Timer;

.field protected prefAmbientInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private syncer:Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;

.field public wdRemoveFileCount:I


# direct methods
.method protected constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 111
    invoke-direct {p0}, Lcom/qualcomm/toq/base/controller/DefaultController;-><init>()V

    .line 58
    iput-boolean v4, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->is:Z

    .line 59
    iput-boolean v4, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->isNetworkStateReciverActive:Z

    .line 60
    iput-boolean v4, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->isTimerPolling:Z

    .line 62
    iput v4, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->wdRemoveFileCount:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->prefAmbientInfoList:Ljava/util/ArrayList;

    .line 793
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController$2;-><init>(Lcom/qualcomm/toq/smartwatch/controller/AmbientController;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->networkConnectionStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->mState:Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;

    .line 113
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->mState:Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;

    sget v1, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->IDLE_SATE:I

    sget v2, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->IDLE_SATE:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->setState(IJ)V

    .line 114
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->syncer:Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;

    .line 115
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->pollingTimer:Ljava/util/Timer;

    .line 117
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 118
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 119
    iput-boolean v4, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->isTimerPolling:Z

    .line 121
    return-void
.end method

.method private addAmbientTask(I)V
    .locals 8
    .param p1, "taskId"    # I

    .prologue
    .line 830
    const-string v5, "Ambient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "addAmbientTask taskId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->printTaskQueue()V

    .line 833
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 834
    .local v0, "currentTime":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 835
    .local v2, "requestId":J
    new-instance v4, Lcom/qualcomm/toq/smartwatch/controller/AmbientController$AmbientTask;

    invoke-direct {v4, p1, v2, v3}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController$AmbientTask;-><init>(IJ)V

    .line 838
    .local v4, "task":Lcom/qualcomm/toq/smartwatch/controller/AmbientController$AmbientTask;
    :try_start_0
    const-string v5, "Ambient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "addAmbientTask add task to queue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    :goto_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->printTaskQueue()V

    .line 850
    return-void

    .line 842
    :catch_0
    move-exception v1

    .line 843
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v5, "Ambient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!!!updateAmbientTaskQueue  exception while adding the task to queue taskId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientControllerFactory;->getInstance()Lcom/qualcomm/toq/smartwatch/ambient/AmbientControllerFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientControllerFactory;->getAmbientController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v0

    return-object v0
.end method

.method private getNextTaskFromQueue()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 857
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    .line 858
    .local v3, "queueSize":I
    const-string v5, "Ambient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "getNextTaskFromQueue Queue size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->printTaskQueue()V

    .line 865
    const/16 v2, -0x63

    .line 866
    .local v2, "nextTask":I
    const/4 v1, 0x1

    .line 868
    .local v1, "isTimerPolling":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_4

    .line 871
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/controller/AmbientController$AmbientTask;

    .line 874
    .local v4, "task":Lcom/qualcomm/toq/smartwatch/controller/AmbientController$AmbientTask;
    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController$AmbientTask;->getTaskId()I

    move-result v5

    if-eq v5, v8, :cond_0

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController$AmbientTask;->getTaskId()I

    move-result v5

    if-ne v5, v9, :cond_3

    .line 877
    :cond_0
    const-string v5, "Ambient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "getNextTaskFromQueue just before clear queue"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->printTaskQueue()V

    .line 884
    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController$AmbientTask;->getTaskId()I

    move-result v5

    if-ne v5, v8, :cond_1

    .line 885
    const/4 v1, 0x0

    .line 886
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 887
    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->doAmbientPoll(Z)V

    .line 929
    .end local v4    # "task":Lcom/qualcomm/toq/smartwatch/controller/AmbientController$AmbientTask;
    :goto_1
    return-void

    .line 891
    .restart local v4    # "task":Lcom/qualcomm/toq/smartwatch/controller/AmbientController$AmbientTask;
    :cond_1
    const-string v5, "Ambient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "getNextTaskFromQueue got pll task timerPoll="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 895
    :cond_3
    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController$AmbientTask;->getTaskId()I

    move-result v5

    if-ne v5, v10, :cond_2

    .line 896
    const/4 v2, 0x3

    goto :goto_2

    .line 900
    .end local v4    # "task":Lcom/qualcomm/toq/smartwatch/controller/AmbientController$AmbientTask;
    :cond_4
    const-string v5, "Ambient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "getNextTaskFromQueue just before clear queue after checking queue tasks"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->printTaskQueue()V

    .line 906
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 910
    if-ne v2, v10, :cond_5

    .line 911
    const-string v5, "Ambient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "getNextTaskFromQueue got resync task"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-string v5, "Ambient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "getNextTaskFromQueue just before resycn image call"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->printTaskQueue()V

    .line 916
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->reSyncImageFilesWithWd()V

    goto/16 :goto_1

    .line 918
    :cond_5
    if-eq v2, v8, :cond_6

    if-ne v2, v9, :cond_7

    .line 919
    :cond_6
    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->doAmbientPoll(Z)V

    goto/16 :goto_1

    .line 922
    :cond_7
    const-string v5, "Ambient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "getNextTaskFromQueue just before no tasks found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->printTaskQueue()V

    .line 925
    const-string v5, "Ambient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "getNextTaskFromQueue no task found nextTask="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private printTaskQueue()V
    .locals 6

    .prologue
    .line 1026
    const-string v3, "Ambient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-------size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 1028
    .local v2, "taskArray":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1029
    aget-object v1, v2, v0

    check-cast v1, Lcom/qualcomm/toq/smartwatch/controller/AmbientController$AmbientTask;

    .line 1031
    .local v1, "task":Lcom/qualcomm/toq/smartwatch/controller/AmbientController$AmbientTask;
    const-string v3, "Ambient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "task id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController$AmbientTask;->getTaskId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1034
    .end local v1    # "task":Lcom/qualcomm/toq/smartwatch/controller/AmbientController$AmbientTask;
    :cond_0
    const-string v3, "Ambient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "printTaskQueue end -----------------------------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    return-void
.end method

.method private updateAmbientTaskQueue(I)I
    .locals 3
    .param p1, "taskId"    # I

    .prologue
    .line 995
    const-string v0, "Ambient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "updateAmbientTaskQueue task Id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    const-string v0, "Ambient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "updateAmbientTaskQueue beofre "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->printTaskQueue()V

    .line 1003
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getState()I

    move-result v0

    sget v1, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->IDLE_SATE:I

    if-ne v0, v1, :cond_0

    .line 1004
    const-string v0, "Ambient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "updateAmbientTaskQueue is in IdleState no need of queue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    .end local p1    # "taskId":I
    :goto_0
    return p1

    .line 1010
    .restart local p1    # "taskId":I
    :cond_0
    const-string v0, "Ambient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "updateAmbientTaskQueue add taks to queue task:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->addAmbientTask(I)V

    .line 1015
    const-string v0, "Ambient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "updateAmbientTaskQueue after adding task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->printTaskQueue()V

    .line 1018
    const/16 p1, -0x63

    goto :goto_0
.end method


# virtual methods
.method public cancelPollingTimer()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->pollingTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 188
    const-string v0, "Ambient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cancelPollingTimer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->pollingTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->pollingTimer:Ljava/util/Timer;

    .line 192
    :cond_0
    return-void
.end method

.method public abstract cleanLocalAmbientFiles()V
.end method

.method public abstract currentCityDisabled()V
.end method

.method protected deRegisterNetWrokChangeReceiver()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 768
    const-string v2, "Ambient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Inside deRegisterNetWrokChangeReceiver isAlreadyDeRegistred:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->isNetworkStateReciverActive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    :try_start_0
    iget-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->isNetworkStateReciverActive:Z

    if-eqz v2, :cond_0

    .line 774
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 776
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->networkConnectionStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iput-boolean v5, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->isNetworkStateReciverActive:Z

    .line 786
    :goto_0
    return-void

    .line 780
    :catch_0
    move-exception v1

    .line 781
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 784
    iput-boolean v5, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->isNetworkStateReciverActive:Z

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iput-boolean v5, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->isNetworkStateReciverActive:Z

    throw v2
.end method

.method public deleteFiles(Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "parentDirectoryPath"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 685
    .local p2, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 688
    .local v2, "list":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    .line 689
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 690
    const-string v3, "Ambient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 693
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 695
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 696
    const-string v3, "Ambient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Deleting File: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 689
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 703
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 704
    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->deleteFiles(Ljava/io/File;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 712
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public abstract doAmbientPoll(Z)V
.end method

.method public abstract getAutocompleteResponse(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getPreferenceAmbientInfoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->prefAmbientInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->mState:Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->getState()I

    move-result v0

    return v0
.end method

.method public handleConnHandlerMessage(IILjava/lang/Object;II)V
    .locals 0
    .param p1, "appID"    # I
    .param p2, "command"    # I
    .param p3, "payload"    # Ljava/lang/Object;
    .param p4, "transactionId"    # I
    .param p5, "endpointType"    # I

    .prologue
    .line 131
    return-void
.end method

.method public isAmbientImageCreationSuccessful(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    .param p2, "ambientType"    # Ljava/lang/String;

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "imageCreationSuccessful":Z
    const-string v3, "stock"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 237
    instance-of v3, p1, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 238
    check-cast v1, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    .line 239
    .local v1, "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getSourceLocation()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 240
    const/4 v0, 0x1

    .line 278
    .end local v1    # "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :cond_0
    :goto_0
    const-string v3, "Ambient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isAmbientImageCreationSuccessful :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return v0

    .line 243
    .restart local v1    # "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 247
    .end local v1    # "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :cond_2
    const-string v3, "weather"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    instance-of v3, p1, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 249
    check-cast v2, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 252
    .local v2, "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    const-string v3, "Ambient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isAmbientImageCreationSuccessful City name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "END"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v3, "Ambient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isAmbientImageCreationSuccessful Hour temp  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getHourTemp()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "END"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v3, "Ambient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isAmbientImageCreationSuccessfulMax temp  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getMaxTemp()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "END"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v3, "Ambient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isAmbientImageCreationSuccessful Min temp  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getMinTemp()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "END"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v3, "Ambient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isAmbientImageCreationSuccessful WeatherCondition  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getWeatherCondition()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "END"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getSourceLocation()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 271
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 274
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public isTimerPolling()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->isTimerPolling:Z

    return v0
.end method

.method public abstract onAmbientImageReSyncComplete(I)V
.end method

.method public abstract onAmbientImageSyncComplete(I)V
.end method

.method public abstract onAmbientInfoUpdated(ILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onNetworkConnected()V
.end method

.method public abstract parseAutocompleteResponse(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public processAmbientTask(I)V
    .locals 4
    .param p1, "ambientTaskId"    # I

    .prologue
    .line 937
    const-string v1, "Ambient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "---------processAmbientTask taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    const-string v1, "Ambient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "processAmbientTask"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->printTaskQueue()V

    .line 945
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->updateAmbientTaskQueue(I)I

    move-result v0

    .line 947
    .local v0, "taskId":I
    const-string v1, "Ambient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "processAmbientTask after queue update"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->printTaskQueue()V

    .line 951
    sparse-switch v0, :sswitch_data_0

    .line 979
    const-string v1, "Ambient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!!! AmbientController-processAmbientTask invlid task id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    :cond_0
    :goto_0
    return-void

    .line 953
    :sswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->doAmbientPoll(Z)V

    goto :goto_0

    .line 956
    :sswitch_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->doAmbientPoll(Z)V

    goto :goto_0

    .line 959
    :sswitch_2
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->reSyncImageFilesWithWd()V

    goto :goto_0

    .line 962
    :sswitch_3
    const-string v1, "Ambient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "processAmbientTask  some other task is in progress this stored in queue state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->mState:Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->isResetState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 972
    const-string v1, "Ambient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Current state taking lot of time now resetting it to IDLE state."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    sget v1, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->IDLE_SATE:I

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->setState(I)V

    goto :goto_0

    .line 951
    :sswitch_data_0
    .sparse-switch
        -0x63 -> :sswitch_3
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
    .end sparse-switch
.end method

.method public pushTimeStampImage(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 419
    const-string v1, "Ambient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " updateWeatherAppTimeStamp type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    move-object v0, p1

    .line 423
    .local v0, "ambientType":Ljava/lang/String;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/qualcomm/toq/smartwatch/controller/AmbientController$1;

    invoke-direct {v2, p0, v0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController$1;-><init>(Lcom/qualcomm/toq/smartwatch/controller/AmbientController;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 480
    return-void
.end method

.method public abstract reSetController()V
.end method

.method public abstract reSyncImageFilesWithWd()V
.end method

.method protected registerNetWrokChangeReceiver()V
    .locals 5

    .prologue
    .line 749
    const-string v2, "Ambient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Inside registerNetWrokChangeReceiver isAlreadyRegistred:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->isNetworkStateReciverActive:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    iget-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->isNetworkStateReciverActive:Z

    if-nez v2, :cond_0

    .line 753
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->isNetworkStateReciverActive:Z

    .line 754
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 755
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 756
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 758
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->networkConnectionStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 761
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public removeFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "destPath"    # Ljava/lang/String;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->syncer:Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;->removeFile(ILjava/lang/String;)V

    .line 577
    return-void
.end method

.method public removeFilesFromWd(I)V
    .locals 8
    .param p1, "count"    # I

    .prologue
    const/4 v7, 0x1

    .line 616
    const-string v4, "Ambient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " removeFilesFromWd count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    if-lez p1, :cond_3

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getWDState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 621
    instance-of v4, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;

    if-eqz v4, :cond_0

    .line 623
    const/4 v2, 0x6

    .local v2, "i":I
    :goto_0
    rsub-int/lit8 v4, p1, 0x6

    if-le v2, v4, :cond_2

    .line 624
    const-string v4, "Ambient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "removeFilesFromWd deleting fms entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/ad/weather/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".img"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/apps/weather/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".img"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, "appImageDestPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->syncer:Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;

    invoke-virtual {v4, v7, v0}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;->removeFile(ILjava/lang/String;)V

    .line 623
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 635
    .end local v0    # "appImageDestPath":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_0
    instance-of v4, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;

    if-eqz v4, :cond_1

    .line 637
    const/4 v2, 0x5

    .restart local v2    # "i":I
    :goto_1
    rsub-int/lit8 v4, p1, 0x5

    if-le v2, v4, :cond_2

    .line 639
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/apps/stock/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".img"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 643
    .restart local v0    # "appImageDestPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/ad/stock/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_A"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".img"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 647
    .local v3, "lightImageDestPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/ad/stock/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_B"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".img"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 651
    .local v1, "darkImageDestPath":Ljava/lang/String;
    const-string v4, "Ambient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "removeFilesFromWd deleting Stock files:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->syncer:Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;

    invoke-virtual {v4, v7, v0}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;->removeFile(ILjava/lang/String;)V

    .line 657
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->syncer:Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;

    invoke-virtual {v4, v7, v3}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;->removeFile(ILjava/lang/String;)V

    .line 658
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->syncer:Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;

    invoke-virtual {v4, v7, v1}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;->removeFile(ILjava/lang/String;)V

    .line 637
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    .line 665
    .end local v0    # "appImageDestPath":Ljava/lang/String;
    .end local v1    # "darkImageDestPath":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "lightImageDestPath":Ljava/lang/String;
    :cond_1
    const-string v4, "Ambient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!!!AmbientController-removeFilesFromWd invlid controller type!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    :cond_2
    :goto_2
    return-void

    .line 672
    :cond_3
    const-string v4, "Ambient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "removeFilesFromWd Disconnected or count=0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public removeFilesFromWd(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 581
    .local p1, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 582
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "ambient__pref"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 585
    .local v9, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 586
    .local v0, "currentTime":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 587
    .local v1, "currentTimeMilli":J
    const-string v10, "stock_last_update_time"

    const-wide/16 v11, 0x0

    invoke-interface {v9, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 589
    .local v5, "lastFetchStock":J
    const-string v10, "weather_last_update_time"

    const-wide/16 v11, 0x0

    invoke-interface {v9, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 595
    .local v7, "lastFetchWeather":J
    sub-long v10, v1, v7

    const-wide/32 v12, 0xea60

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    sub-long v10, v1, v5

    const-wide/32 v12, 0xea60

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    .line 598
    :cond_0
    const-wide/16 v10, 0x1388

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :cond_1
    :goto_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_2

    .line 606
    const-string v11, "Ambient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " Removing File : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->syncer:Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;

    const/4 v12, 0x1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v12, v10}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;->removeFile(ILjava/lang/String;)V

    .line 605
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 600
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 601
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 612
    .end local v0    # "currentTime":Ljava/util/Calendar;
    .end local v1    # "currentTimeMilli":J
    .end local v3    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "lastFetchStock":J
    .end local v7    # "lastFetchWeather":J
    .end local v9    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    return-void
.end method

.method public abstract removeTimeStampFromWD()V
.end method

.method public abstract resetAmbientLastFetchTimeStamp()V
.end method

.method public resetPollingTimer()V
    .locals 6

    .prologue
    const-wide/32 v2, 0xdbba0

    .line 198
    const-string v0, "Ambient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " resetPollingTimer called "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->pollingTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->pollingTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 202
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->pollingTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->pollingTimer:Ljava/util/Timer;

    .line 205
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->pollingTimer:Ljava/util/Timer;

    .line 207
    const-string v0, "Ambient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " resetStockTimer stockTimerIntervalInMilliSec"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->pollingTimer:Ljava/util/Timer;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ambient/PollingTimerTask;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ambient/PollingTimerTask;-><init>(Lcom/qualcomm/toq/smartwatch/controller/AmbientController;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 214
    return-void
.end method

.method protected resetPreferenceAmbientInfoList()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->prefAmbientInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->prefAmbientInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->prefAmbientInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 145
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->prefAmbientInfoList:Ljava/util/ArrayList;

    .line 146
    return-void
.end method

.method public setState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 155
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 156
    .local v0, "currentTime":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 157
    .local v1, "currentTimeInMillis":J
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->mState:Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;

    invoke-virtual {v3, p1, v1, v2}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->setState(IJ)V

    .line 158
    const-string v3, "Ambient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-setState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget v3, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->IDLE_SATE:I

    if-ne p1, v3, :cond_1

    .line 162
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->resetPreferenceAmbientInfoList()V

    .line 163
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->fileSyncReuestNumber:J

    .line 164
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getNextTaskFromQueue()V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    sget v3, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->DATA_SYNC_COMPLETED:I

    if-ne p1, v3, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->cleanLocalAmbientFiles()V

    goto :goto_0
.end method

.method public abstract syncAmbientImages()V
.end method

.method public syncFileToWd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;

    .prologue
    .line 483
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->syncer:Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;->syncFile(Ljava/lang/String;Ljava/lang/String;I)V

    .line 484
    return-void
.end method

.method public syncFileToWd(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;
    .param p3, "priority"    # I

    .prologue
    .line 487
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->syncer:Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;->syncFile(Ljava/lang/String;Ljava/lang/String;I)V

    .line 488
    return-void
.end method

.method public syncImages(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 570
    const-string v0, "Ambient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AmbientController-SendStockImage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->syncer:Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;

    invoke-virtual {v0, p2, p1}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;->pushAmbientImage(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)I

    .line 573
    return-void
.end method

.method public synchCurrentCityImage(Landroid/content/Context;)Z
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    .line 223
    const-string v2, "Ambient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Get Current City data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {p1}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->getInstance(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->getCurrentCityName()V

    .line 225
    const-string v2, "ambient__pref"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 227
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 228
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "WeatherCurrentCityUpdate"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 229
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 230
    return v5
.end method

.method public updateSharedPreference(Landroid/content/Context;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Z
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;

    .prologue
    .line 287
    const-string v13, "Ambient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " updateSharedPreference"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const/4 v2, 0x0

    .line 289
    .local v2, "cities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    const/4 v11, 0x0

    .line 290
    .local v11, "stocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    if-eqz p1, :cond_6

    .line 291
    const-string v13, "ambient__pref"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 293
    .local v9, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 295
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    move-object/from16 v0, p2

    instance-of v13, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    if-eqz v13, :cond_2

    .line 296
    const-string v13, "Ambient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " updateSharedPreference STOCK"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v13, "StockSymbolsBackGround"

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v9, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/util/ArrayList;

    move-object v11, v0

    .line 300
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_0

    .line 301
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    .line 303
    .local v10, "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    if-eqz v10, :cond_1

    .line 304
    invoke-virtual {v10}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanySymbol()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanySymbol()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 306
    add-int/lit8 v7, v8, 0x1

    .line 308
    .local v7, "imgNumber":I
    const-string v13, "Ambient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Image "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanyName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Number"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/ad/stock/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_A"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".img"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 320
    .local v4, "destPath":Ljava/lang/String;
    const-string v13, "Ambient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " setDestinationLocation() 3: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;->setDestinationLocation(Ljava/lang/String;)V

    .line 324
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/ad/stock/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_B"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".img"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, "darkClockDestPath":Ljava/lang/String;
    move-object/from16 v0, p2

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    move-object v13, v0

    invoke-virtual {v13, v3}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setDarkImageDestinationLocation(Ljava/lang/String;)V

    .line 330
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/apps/stock/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".img"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "appDestPath":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;->setAppImageDestinationLocation(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 336
    move-object/from16 v0, p2

    invoke-virtual {v11, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 341
    .end local v1    # "appDestPath":Ljava/lang/String;
    .end local v3    # "darkClockDestPath":Ljava/lang/String;
    .end local v4    # "destPath":Ljava/lang/String;
    .end local v7    # "imgNumber":I
    .end local v10    # "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :cond_0
    const-string v13, "StockSymbolsBackGround"

    invoke-static {v11}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 343
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 344
    const/4 v13, 0x1

    .line 410
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v8    # "index":I
    .end local v9    # "prefs":Landroid/content/SharedPreferences;
    :goto_1
    return v13

    .line 300
    .restart local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v8    # "index":I
    .restart local v9    # "prefs":Landroid/content/SharedPreferences;
    .restart local v10    # "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 346
    .end local v8    # "index":I
    .end local v10    # "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :cond_2
    move-object/from16 v0, p2

    instance-of v13, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    if-eqz v13, :cond_5

    .line 347
    const-string v13, "Ambient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " updateSharedPreference WEATHER"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v13, "WeatherCitiesBackGround"

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v9, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    .line 351
    const/4 v8, 0x0

    .restart local v8    # "index":I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v8, v13, :cond_3

    .line 352
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 354
    .local v12, "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    if-eqz v12, :cond_4

    .line 355
    invoke-virtual {v12}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-virtual {v12}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v12}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getKey()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-virtual {v12}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getKey()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 363
    add-int/lit8 v7, v8, 0x2

    .line 365
    .restart local v7    # "imgNumber":I
    const-string v13, "Ambient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Image "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Number"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/ad/weather/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".img"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 376
    .restart local v4    # "destPath":Ljava/lang/String;
    const-string v13, "Ambient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " setDestinationLocation() 4: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;->setDestinationLocation(Ljava/lang/String;)V

    .line 380
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "/apps/weather/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".img"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 384
    .restart local v1    # "appDestPath":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;->setAppImageDestinationLocation(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 386
    move-object/from16 v0, p2

    invoke-virtual {v2, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 391
    .end local v1    # "appDestPath":Ljava/lang/String;
    .end local v4    # "destPath":Ljava/lang/String;
    .end local v7    # "imgNumber":I
    .end local v12    # "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    :cond_3
    const-string v13, "WeatherCitiesBackGround"

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 393
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 394
    const/4 v13, 0x1

    goto/16 :goto_1

    .line 351
    .restart local v12    # "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 397
    .end local v8    # "index":I
    .end local v12    # "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    :catch_0
    move-exception v5

    .line 398
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 410
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "prefs":Landroid/content/SharedPreferences;
    :cond_5
    :goto_3
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 400
    .restart local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v9    # "prefs":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v5

    .line 401
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 403
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v5

    .line 404
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 408
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "prefs":Landroid/content/SharedPreferences;
    :cond_6
    const-string v13, "Ambient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Context is null"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public updateStockDestinationLocation(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "destiantionLocation"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 544
    move-object v0, p1

    .line 545
    .local v0, "temp":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 546
    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 547
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 558
    :cond_0
    :goto_0
    return-object p1

    .line 552
    :cond_1
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public updateWeatherAppTimeStamp(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 498
    if-eqz p2, :cond_0

    .line 499
    :try_start_0
    const-string v6, "WeatherCitiesBackGround"

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 501
    .local v5, "weatherAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    const-string v6, "WeatherCurrentCityUpdate"

    const/4 v7, 0x0

    invoke-interface {p2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 504
    .local v2, "isCurrentCityUpdateEnabled":Z
    const-string v6, "Ambient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " updateWeatherAppTimeStamp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 509
    const-string v6, "weather"

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->pushTimeStampImage(Ljava/lang/String;)V

    .line 540
    .end local v2    # "isCurrentCityUpdateEnabled":Z
    .end local v5    # "weatherAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :cond_0
    :goto_0
    return-void

    .line 512
    .restart local v2    # "isCurrentCityUpdateEnabled":Z
    .restart local v5    # "weatherAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :cond_1
    if-nez v2, :cond_2

    .line 513
    const-string v0, "/apps/weather/99.img"

    .line 515
    .local v0, "destPath":Ljava/lang/String;
    const-string v6, "weather"

    invoke-static {v6}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientAppImageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 516
    .local v3, "rootDirectory":Ljava/io/File;
    const/4 v4, 0x0

    .line 517
    .local v4, "timeFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    .end local v4    # "timeFile":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "time_Stamp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".img"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 520
    .restart local v4    # "timeFile":Ljava/io/File;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 522
    const-string v6, "Ambient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " deleting time stamp file"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 526
    const-string v6, "Ambient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " removing time stamp file"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->syncer:Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v0}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;->removeFile(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 537
    .end local v0    # "destPath":Ljava/lang/String;
    .end local v2    # "isCurrentCityUpdateEnabled":Z
    .end local v3    # "rootDirectory":Ljava/io/File;
    .end local v4    # "timeFile":Ljava/io/File;
    .end local v5    # "weatherAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :catch_0
    move-exception v1

    .line 538
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 532
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "isCurrentCityUpdateEnabled":Z
    .restart local v5    # "weatherAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :cond_2
    :try_start_1
    const-string v6, "weather"

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->pushTimeStampImage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

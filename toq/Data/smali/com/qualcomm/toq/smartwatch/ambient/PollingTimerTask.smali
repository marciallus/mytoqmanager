.class public Lcom/qualcomm/toq/smartwatch/ambient/PollingTimerTask;
.super Ljava/util/TimerTask;
.source "PollingTimerTask.java"


# instance fields
.field private controller:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/smartwatch/controller/AmbientController;)V
    .locals 0
    .param p1, "controller"    # Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/PollingTimerTask;->controller:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    .line 25
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 33
    const-string v0, "Ambient"

    const-string v1, "PollingTimerTask run() called "

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/PollingTimerTask;->controller:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    if-eqz v0, :cond_1

    .line 37
    const-string v0, "Ambient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ambient/PollingTimerTask;->controller:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PollingTimerTask Starting Polling @   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "Ambient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ambient/PollingTimerTask;->controller:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PollingTimerTask Starting Polling @  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/PollingTimerTask;->controller:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->processAmbientTask(I)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const-string v0, "Ambient"

    const-string v1, "!!! PollingTimerTask AmbientController == null !!!"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

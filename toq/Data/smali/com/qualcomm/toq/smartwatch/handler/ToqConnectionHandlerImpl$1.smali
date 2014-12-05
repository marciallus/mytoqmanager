.class Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl$1;
.super Ljava/lang/Object;
.source "ToqConnectionHandlerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->initialSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl$1;->this$0:Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 359
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 362
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 364
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl$1;->this$0:Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v6

    # invokes: Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->deleteOutStandingWDAmbientFile(Landroid/content/Context;)V
    invoke-static {v5, v6}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->access$100(Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;Landroid/content/Context;)V

    .line 366
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl$1;->this$0:Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    # invokes: Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->resetAmbientTimeStamps(Landroid/content/Context;)V
    invoke-static {v5, v0}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->access$200(Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;Landroid/content/Context;)V

    .line 367
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 368
    .local v2, "fmsController":Lcom/qualcomm/toq/smartwatch/controller/FMSController;
    const/4 v4, 0x0

    .line 369
    .local v4, "wdFile":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 372
    :try_start_1
    const-string v4, "/packages/com.qualcomm.qce.androidnotifications/app.zip"

    .line 374
    const/4 v5, 0x1

    invoke-virtual {v2, v5, v4}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsRemoveFile(ILjava/lang/String;)I

    move-result v3

    .line 377
    .local v3, "result":I
    if-nez v3, :cond_1

    .line 378
    const-string v5, "ToqConnectionHandlerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Forcefully- removed Notification app.zip via fms, wdFile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 403
    .end local v3    # "result":I
    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl$1;->this$0:Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    # invokes: Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->startSynchingStores()V
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->access$300(Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;)V

    .line 404
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v5

    if-ne v5, v8, :cond_0

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl$1;->this$0:Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v6

    # invokes: Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->isFirstTimeConnected(Landroid/content/Context;)Z
    invoke-static {v5, v6}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->access$400(Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 408
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl$1;->this$0:Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    const-string v6, "stock"

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->deleteParentDirectoryContent(Ljava/lang/String;)V

    .line 409
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl$1;->this$0:Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    const-string v6, "weather"

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->deleteParentDirectoryContent(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 427
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "fmsController":Lcom/qualcomm/toq/smartwatch/controller/FMSController;
    .end local v4    # "wdFile":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Looper;->quit()V

    .line 429
    return-void

    .line 384
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v2    # "fmsController":Lcom/qualcomm/toq/smartwatch/controller/FMSController;
    .restart local v3    # "result":I
    .restart local v4    # "wdFile":Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string v5, "ToqConnectionHandlerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to- remove file via fms (problem?), wdFile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 391
    .end local v3    # "result":I
    :catch_0
    move-exception v1

    .line 392
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "ToqConnectionHandlerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "An error occurred removing file via fms, wdFile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 419
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fmsController":Lcom/qualcomm/toq/smartwatch/controller/FMSController;
    .end local v4    # "wdFile":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 420
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "ToqConnectionHandlerImpl"

    const-string v6, "Exception in intial sync"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 400
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v2    # "fmsController":Lcom/qualcomm/toq/smartwatch/controller/FMSController;
    .restart local v4    # "wdFile":Ljava/lang/String;
    :cond_2
    :try_start_5
    const-string v5, "ToqConnectionHandlerImpl"

    const-string v6, "Couldn\'t get reference to FMS controller"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0
.end method

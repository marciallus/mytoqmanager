.class Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;
.super Landroid/content/BroadcastReceiver;
.source "FMSController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/controller/FMSController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/controller/FMSController;)V
    .locals 0

    .prologue
    .line 1409
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1413
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1414
    .local v0, "action":Ljava/lang/String;
    const-string v10, "FMSController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fmsReceiver: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;
    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->access$000(Lcom/qualcomm/toq/smartwatch/controller/FMSController;)Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v10

    if-nez v10, :cond_0

    .line 1416
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v11

    invoke-virtual {v11}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSDatabaseAdapter(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v11

    # setter for: Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;
    invoke-static {v10, v11}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->access$002(Lcom/qualcomm/toq/smartwatch/controller/FMSController;Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;)Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    .line 1419
    :cond_0
    sget-object v10, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FMS_FILE_TRANSFER_COMPLETED:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1421
    const-string v10, "sent_file_name"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1422
    .local v8, "sentFileName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1424
    .local v3, "destinationpath":Ljava/lang/String;
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/FMSController;->destTransferFileMap:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->access$100(Lcom/qualcomm/toq/smartwatch/controller/FMSController;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 1426
    .local v2, "destTransferFile":[Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "jj":I
    :goto_0
    array-length v10, v2

    if-ge v7, v10, :cond_2

    .line 1427
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/FMSController;->destTransferFileMap:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->access$100(Lcom/qualcomm/toq/smartwatch/controller/FMSController;)Ljava/util/HashMap;

    move-result-object v10

    aget-object v11, v2, v7

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1429
    aget-object v10, v2, v7

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1426
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1433
    :cond_2
    if-nez v3, :cond_4

    .line 1434
    const-string v10, "FMSController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " transfer completed, but the mapped destpath is NULL"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    # invokes: Lcom/qualcomm/toq/smartwatch/controller/FMSController;->initiateFileTransfer()V
    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->access$200(Lcom/qualcomm/toq/smartwatch/controller/FMSController;)V

    .line 1589
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "destTransferFile":[Ljava/lang/Object;
    .end local v3    # "destinationpath":Ljava/lang/String;
    .end local v7    # "jj":I
    .end local v8    # "sentFileName":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 1441
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "destTransferFile":[Ljava/lang/Object;
    .restart local v3    # "destinationpath":Ljava/lang/String;
    .restart local v7    # "jj":I
    .restart local v8    # "sentFileName":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;
    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->access$000(Lcom/qualcomm/toq/smartwatch/controller/FMSController;)Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSState(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_6

    .line 1442
    const-string v10, "FMSController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not in the expected state: FMS_TRANSFER_IN_PROGRESS"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    const/16 v11, 0x4001

    # invokes: Lcom/qualcomm/toq/smartwatch/controller/FMSController;->removeTransactionId(ILjava/lang/String;)Z
    invoke-static {v10, v11, v3}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->access$300(Lcom/qualcomm/toq/smartwatch/controller/FMSController;ILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1449
    const-string v10, "FMSController"

    const-string v11, "FMSFileTransferResp Transaction doesn\'t exist in map"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    :cond_5
    const-string v10, "FMSController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ACTION_FMS_FILE_TRANSFER_COMPLETED-destTransferFileMap remove key: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/FMSController;->destTransferFileMap:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->access$100(Lcom/qualcomm/toq/smartwatch/controller/FMSController;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1458
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    # invokes: Lcom/qualcomm/toq/smartwatch/controller/FMSController;->initiateFileTransfer()V
    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->access$200(Lcom/qualcomm/toq/smartwatch/controller/FMSController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1585
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "destTransferFile":[Ljava/lang/Object;
    .end local v3    # "destinationpath":Ljava/lang/String;
    .end local v7    # "jj":I
    .end local v8    # "sentFileName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1586
    .local v4, "e":Ljava/lang/Exception;
    const-string v10, "FMSController"

    const-string v11, "Exception in FMS BroadcastReceiver"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1463
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v2    # "destTransferFile":[Ljava/lang/Object;
    .restart local v3    # "destinationpath":Ljava/lang/String;
    .restart local v7    # "jj":I
    .restart local v8    # "sentFileName":Ljava/lang/String;
    :cond_6
    :try_start_1
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;
    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->access$000(Lcom/qualcomm/toq/smartwatch/controller/FMSController;)Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->setStateTransferComplete()Z

    move-result v10

    if-nez v10, :cond_8

    .line 1464
    const-string v10, "FMSController"

    const-string v11, "FMS state change to TRANSFER_COMPLETE failed"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    const/16 v11, 0x4001

    # invokes: Lcom/qualcomm/toq/smartwatch/controller/FMSController;->removeTransactionId(ILjava/lang/String;)Z
    invoke-static {v10, v11, v3}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->access$300(Lcom/qualcomm/toq/smartwatch/controller/FMSController;ILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 1468
    const-string v10, "FMSController"

    const-string v11, "setStateTransferComplete failed-FMSFileTransferResp Transaction doesn\'t exist in map"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    :cond_7
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/FMSController;->destTransferFileMap:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->access$100(Lcom/qualcomm/toq/smartwatch/controller/FMSController;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1475
    :cond_8
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v11

    invoke-virtual {v11}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/fms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/transfer"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    .local v9, "transferFileToRemove":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1483
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v6

    .line 1484
    .local v6, "isDelete":Z
    const-string v10, "FMSController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Delete the Transfer File as transfer success: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " result: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    .end local v6    # "isDelete":Z
    :cond_9
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSDatabaseAdapter(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->resetFailedPriorities()V

    .line 1495
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    # invokes: Lcom/qualcomm/toq/smartwatch/controller/FMSController;->initiateFileTransfer()V
    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->access$200(Lcom/qualcomm/toq/smartwatch/controller/FMSController;)V

    goto/16 :goto_1

    .line 1498
    .end local v2    # "destTransferFile":[Ljava/lang/Object;
    .end local v3    # "destinationpath":Ljava/lang/String;
    .end local v7    # "jj":I
    .end local v8    # "sentFileName":Ljava/lang/String;
    .end local v9    # "transferFileToRemove":Ljava/io/File;
    :cond_a
    sget-object v10, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_PHONE_WD_CONNECTED:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1499
    const-string v10, "FMSController"

    const-string v11, "Received Broadcast message: ACTION_PHONE_WD_CONNECTED"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    invoke-virtual {v10}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->resetFMSCache()V

    .line 1502
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    const/4 v11, 0x1

    # setter for: Lcom/qualcomm/toq/smartwatch/controller/FMSController;->isPhoneWDConnected:Z
    invoke-static {v10, v11}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->access$402(Lcom/qualcomm/toq/smartwatch/controller/FMSController;Z)Z

    .line 1503
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    invoke-virtual {v10}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->initiateFMSOperation()V

    goto/16 :goto_1

    .line 1505
    :cond_b
    sget-object v10, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_PHONE_WD_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1506
    const-string v10, "FMSController"

    const-string v11, "Received Broadcast message: ACTION_PHONE_WD_DISCONNECTED"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    const/4 v11, 0x0

    # setter for: Lcom/qualcomm/toq/smartwatch/controller/FMSController;->isPhoneWDConnected:Z
    invoke-static {v10, v11}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->access$402(Lcom/qualcomm/toq/smartwatch/controller/FMSController;Z)Z

    .line 1509
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    invoke-virtual {v10}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->resetFMSCache()V

    goto/16 :goto_1

    .line 1511
    :cond_c
    sget-object v10, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FMS_FILE_TRANSFER_FAILED:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1512
    const-string v10, "sent_file_name"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1513
    .restart local v8    # "sentFileName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1514
    .restart local v3    # "destinationpath":Ljava/lang/String;
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/FMSController;->destTransferFileMap:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->access$100(Lcom/qualcomm/toq/smartwatch/controller/FMSController;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 1516
    .restart local v2    # "destTransferFile":[Ljava/lang/Object;
    const/4 v7, 0x0

    .restart local v7    # "jj":I
    :goto_2
    array-length v10, v2

    if-ge v7, v10, :cond_e

    .line 1517
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/FMSController;->destTransferFileMap:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->access$100(Lcom/qualcomm/toq/smartwatch/controller/FMSController;)Ljava/util/HashMap;

    move-result-object v10

    aget-object v11, v2, v7

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1519
    aget-object v10, v2, v7

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1516
    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1523
    :cond_e
    if-nez v3, :cond_f

    .line 1524
    const-string v10, "FMSController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " file transfer failed, but the mapped destpath is NULL"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1530
    :cond_f
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;
    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->access$000(Lcom/qualcomm/toq/smartwatch/controller/FMSController;)Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSState(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_11

    .line 1531
    const-string v10, "FMSController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error: transfer failed, but "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not in the expected state: FMS_TRANSFER_IN_PROGRESS"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    const/16 v11, 0x4001

    # invokes: Lcom/qualcomm/toq/smartwatch/controller/FMSController;->removeTransactionId(ILjava/lang/String;)Z
    invoke-static {v10, v11, v3}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->access$300(Lcom/qualcomm/toq/smartwatch/controller/FMSController;ILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 1538
    const-string v10, "FMSController"

    const-string v11, "FMSFileTransferResp Transaction doesn\'t exist in map"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    :cond_10
    const-string v10, "FMSController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ACTION_FMS_FILE_TRANSFER_FAILED1-destTransferFileMap remove key: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/FMSController;->destTransferFileMap:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->access$100(Lcom/qualcomm/toq/smartwatch/controller/FMSController;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1550
    :cond_11
    const-string v10, "FMSController"

    const-string v11, "update DB to Ready to Transfer, due to failure of file transfer 3 times"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;
    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->access$000(Lcom/qualcomm/toq/smartwatch/controller/FMSController;)Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getDestinationPath(I)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_12

    .line 1554
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;
    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->access$000(Lcom/qualcomm/toq/smartwatch/controller/FMSController;)Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v10

    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;
    invoke-static {v11}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->access$000(Lcom/qualcomm/toq/smartwatch/controller/FMSController;)Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getDestinationPath(I)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->setFailedFMSPriority(Ljava/lang/String;)V

    .line 1557
    :cond_12
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;
    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->access$000(Lcom/qualcomm/toq/smartwatch/controller/FMSController;)Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->setStateReadyToTransfer()V

    .line 1559
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    const/16 v11, 0x4001

    # invokes: Lcom/qualcomm/toq/smartwatch/controller/FMSController;->removeTransactionId(ILjava/lang/String;)Z
    invoke-static {v10, v11, v3}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->access$300(Lcom/qualcomm/toq/smartwatch/controller/FMSController;ILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_13

    .line 1561
    const-string v10, "FMSController"

    const-string v11, "FMSFileTransferResp Transaction doesn\'t exist in map"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    :cond_13
    const-string v10, "FMSController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setStateReadyToTransfer2-destTransferFileMap remove key: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/FMSController;->destTransferFileMap:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->access$100(Lcom/qualcomm/toq/smartwatch/controller/FMSController;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    new-instance v5, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v11

    invoke-virtual {v11}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/fms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/transfer"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1577
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v1

    .line 1578
    .local v1, "delTransferFileResult":Z
    const-string v10, "FMSController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Delete the Transfer File as transfer failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " result: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

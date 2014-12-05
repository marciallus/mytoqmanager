.class public Lcom/qualcomm/toq/smartwatch/ambient/StockController;
.super Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
.source "StockController.java"


# static fields
.field private static inst:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;


# instance fields
.field private ambientData:Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;

.field private imageCreator:Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;-><init>()V

    .line 43
    const-string v0, "Ambient"

    const-string v1, "StockController"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFactory;->getInstance()Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFactory;

    move-result-object v0

    const-string v1, "stock"

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFactory;->getAmbientData(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->ambientData:Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;

    .line 46
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;

    const-string v1, "stock"

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->imageCreator:Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->isTimerPolling:Z

    .line 48
    const-string v0, "StockController--"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->TAG:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private ambientStockImageReSyncIntent()V
    .locals 4

    .prologue
    .line 116
    const-string v1, "Ambient"

    const-string v2, "StockController-ambientStockImageReSyncIntent"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget v1, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->DATA_SYNC_IN_PROGRESS:I

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->setState(I)V

    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "service_task"

    const-string v2, "stock_resync_images_to_wd"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v1, "requstNumber"

    iget-wide v2, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->fileSyncReuestNumber:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 125
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 126
    return-void
.end method

.method private ambientStockImageSyncIntent()V
    .locals 4

    .prologue
    .line 100
    const-string v1, "Ambient"

    const-string v2, "StockController-ambientStockImageSyncIntent"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget v1, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->DATA_SYNC_IN_PROGRESS:I

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->setState(I)V

    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "service_task"

    const-string v2, "sync_stock_data_to_wd"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v1, "requstNumber"

    iget-wide v2, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->fileSyncReuestNumber:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 109
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 110
    return-void
.end method

.method private ambientStockTaskIntent()V
    .locals 3

    .prologue
    .line 82
    const-string v1, "Ambient"

    const-string v2, "StockController-ambientStockTaskIntent"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget v1, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->DATA_FETCH_INPROGRESS:I

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->setState(I)V

    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "Ambient"

    const-string v2, "StockController-ambientStockTaskIntent called"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "service_task"

    const-string v2, "stock_polling_task"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 94
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->inst:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    if-nez v0, :cond_1

    .line 53
    const-class v1, Lcom/qualcomm/toq/smartwatch/ambient/StockController;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->inst:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->inst:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    .line 57
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_1
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->inst:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isAnyDataErrorForStockData(Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 708
    .local p1, "prefStocksAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    const/4 v3, 0x0

    .line 709
    .local v3, "ret_value":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x5

    if-gt v4, v5, :cond_0

    .line 715
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 716
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    .line 717
    .local v2, "prefStockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanyName()Ljava/lang/String;

    move-result-object v0

    .line 718
    .local v0, "companySymbol":Ljava/lang/String;
    const-string v4, "Ambient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StockController-isAnyDataErrorForStockData stock "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " img type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v4, "push_online_image"

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 723
    const/4 v3, 0x1

    .line 724
    const-string v4, "Ambient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StockController-isAnyDataErrorForStockData Need to query for the Stock "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    .end local v0    # "companySymbol":Ljava/lang/String;
    .end local v1    # "index":I
    .end local v2    # "prefStockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :cond_0
    return v3

    .line 715
    .restart local v0    # "companySymbol":Ljava/lang/String;
    .restart local v1    # "index":I
    .restart local v2    # "prefStockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cleanLocalAmbientFiles()V
    .locals 10

    .prologue
    .line 556
    const-string v7, "Ambient"

    const-string v8, "StockController-cleanLocalAmbientFiles"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "ambient__pref"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 565
    .local v3, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    const-string v7, "StockSymbolsBackGround"

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 568
    .local v5, "stockAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .local v4, "sourceFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v5, :cond_3

    .line 570
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 571
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    .line 572
    .local v6, "stockInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getAppImageSourceLocation()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 573
    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getAppImageSourceLocation()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    :cond_0
    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDarkImageSourceLocation()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 576
    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDarkImageSourceLocation()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    :cond_1
    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getSourceLocation()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 579
    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getSourceLocation()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 584
    .end local v1    # "i":I
    .end local v6    # "stockInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :cond_3
    const-string v7, "Ambient"

    const-string v8, "StockController-cleanLocalAmbientFiles empty stock list delete all local  fiels."

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    :cond_4
    const-string v7, "stock"

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 589
    .local v2, "parentDirectoryPath":Ljava/io/File;
    const-string v7, "Ambient"

    const-string v8, "StockController-cleanLocalAmbientFiles Deleting stock files"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    if-eqz v2, :cond_5

    .line 592
    invoke-virtual {p0, v2, v4}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->deleteFiles(Ljava/io/File;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 602
    .end local v2    # "parentDirectoryPath":Ljava/io/File;
    .end local v4    # "sourceFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "stockAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :cond_5
    :goto_1
    return-void

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 599
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public currentCityDisabled()V
    .locals 2

    .prologue
    .line 606
    const-string v0, "Ambient"

    const-string v1, "!!!StockController-currentCityDisabled No current city for stock!!!"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    return-void
.end method

.method public doAmbientPoll(Z)V
    .locals 17
    .param p1, "isTimerPolling"    # Z

    .prologue
    .line 302
    const-string v14, "Ambient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "StockController-doManualPoll isTimerPolling:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->isTimerPolling:Z

    .line 306
    const-string v14, "Ambient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "StockController-doManualPoll state:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->mState:Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->getState()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->getState()I

    move-result v14

    sget v15, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->IDLE_SATE:I

    if-eq v14, v15, :cond_0

    .line 317
    sget v14, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->IDLE_SATE:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->setState(I)V

    .line 322
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->updateStockCopyFile()V

    .line 325
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "ambient__pref"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 329
    .local v13, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 330
    .local v4, "currentTime":Ljava/util/Calendar;
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 331
    .local v5, "currentTimeMilli":J
    const-string v14, "stock_last_update_time"

    const-wide/16 v15, 0x0

    invoke-interface/range {v13 .. v16}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 335
    .local v11, "lastFetchStock":J
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getWDState()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_5

    .line 337
    const-string v14, "Ambient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "StockController-doManualPoll Current time : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    new-instance v16, Ljava/util/Date;

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v14, "Ambient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "StockController-doManualPoll last fetch time : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    new-instance v16, Ljava/util/Date;

    move-object/from16 v0, v16

    invoke-direct {v0, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v14, "Ambient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " Stock controller Current time : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    new-instance v16, Ljava/util/Date;

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Stock last Fetch: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    new-instance v16, Ljava/util/Date;

    move-object/from16 v0, v16

    invoke-direct {v0, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    cmp-long v14, v11, v5

    if-lez v14, :cond_1

    .line 351
    const-string v14, "Ambient"

    const-string v15, "StockController-doManualPoll Last Fetch Greater than current time resetting it for Stock"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v14, "AmbientController"

    const-string v15, "!!! Last Fetch Greater than current time resetting it for Stock!!!"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    .line 358
    .local v3, "context":Landroid/content/Context;
    const-string v14, "ambient__pref"

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 360
    .local v2, "ambPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 361
    .local v9, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v14, "stock_last_update_time"

    const-wide/16 v15, 0x0

    move-wide v0, v15

    invoke-interface {v9, v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 362
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 366
    .end local v2    # "ambPrefs":Landroid/content/SharedPreferences;
    .end local v3    # "context":Landroid/content/Context;
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->resetPreferenceAmbientInfoList()V

    .line 369
    const-string v14, "StockSymbolsBackGround"

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v15}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->prefAmbientInfoList:Ljava/util/ArrayList;

    .line 372
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->prefAmbientInfoList:Ljava/util/ArrayList;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->prefAmbientInfoList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x5

    if-gt v14, v15, :cond_4

    .line 377
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Utils;->isETradeDown()Z

    move-result v14

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->prefAmbientInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->isAnyDataErrorForStockData(Ljava/util/ArrayList;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 380
    const-string v14, "Ambient"

    const-string v15, "!!!StockController-doManualPoll STOCK MARKET IS CLOSED and last fetch for Stock was successful. !!!"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v14, "StockController"

    const-string v15, "!!! STOCK MARKET IS CLOSED and last fetch for Stock was successful. !!!"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    sget v14, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->IDLE_SATE:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->setState(I)V

    .line 445
    :cond_2
    :goto_0
    return-void

    .line 392
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->ambientData:Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->prefAmbientInfoList:Ljava/util/ArrayList;

    invoke-virtual {v14, v15}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;->updateAmbientDataList(Ljava/util/ArrayList;)V

    .line 393
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->ambientStockTaskIntent()V

    .line 397
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/qualcomm/toq/base/utils/Utils;->isNetworkConnectivityAvailable(Landroid/content/Context;)Z

    move-result v7

    .line 402
    .local v7, "dataConnectivity":Z
    if-nez v7, :cond_2

    .line 404
    const-string v14, "Ambient"

    const-string v15, "StockController-doAmbientPoll there is no data connection registring for network change listener"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v14, "Ambient"

    const-string v15, "StockController-doAmbientPoll there is no data connection registring for network change listener"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->registerNetWrokChangeReceiver()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 442
    .end local v7    # "dataConnectivity":Z
    :catch_0
    move-exception v8

    .line 443
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 417
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    const-string v14, "Ambient"

    const-string v15, "!!!StockController-doManualPoll Empty stock data !!!"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v14, "Ambient"

    const-string v15, "!!!StockController-doManualPoll Empty stock data!!!"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :cond_5
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/qualcomm/toq/base/utils/Utils;->isNetworkConnectivityAvailable(Landroid/content/Context;)Z

    move-result v10

    .line 426
    .local v10, "isDataConnectionAvailable":Z
    const-string v14, "Ambient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "!!!StockController-doAmbientPoll WD not connected or isDataConnectionAvailable=:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v14, "Ambient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "!!StockController-doAmbientPoll WD not connected or isDataConnectionAvailable:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    if-nez v10, :cond_2

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->registerNetWrokChangeReceiver()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getAmbientData()Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->ambientData:Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;

    return-object v0
.end method

.method public getAutocompleteResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    const/4 v11, 0x0

    .line 740
    const/4 v2, 0x0

    .line 741
    .local v2, "conn":Ljava/net/HttpURLConnection;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 743
    .local v7, "responseData":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f0a004e

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 748
    .local v4, "formattedString":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p1, v10, v13

    invoke-static {v4, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 750
    .local v8, "stockURL":Ljava/lang/String;
    const-string v10, "Ambient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "StockListActivityStock Auto Complete URL: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :try_start_0
    const-string v10, "Ambient"

    const-string v12, "StockListActivityautocomplete ---------"

    invoke-static {v10, v12}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 759
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 761
    const-string v10, "GET"

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 762
    const-string v10, "ConsumerKey"

    const-string v12, "f9269f0dbe43320e8143305cd0afdcfa"

    invoke-virtual {v2, v10, v12}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 768
    .local v5, "in":Ljava/io/InputStreamReader;
    const/16 v10, 0x400

    new-array v1, v10, [C

    .line 769
    .local v1, "buff":[C
    :goto_0
    invoke-virtual {v5, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v6

    .local v6, "read":I
    const/4 v10, -0x1

    if-eq v6, v10, :cond_1

    .line 770
    const/4 v10, 0x0

    invoke-virtual {v7, v1, v10, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 773
    .end local v1    # "buff":[C
    .end local v5    # "in":Ljava/io/InputStreamReader;
    .end local v6    # "read":I
    .end local v9    # "url":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 774
    .local v3, "e":Ljava/net/MalformedURLException;
    :try_start_1
    const-string v10, "Ambient"

    const-string v12, "StockListActivityError processing Stock API URL"

    invoke-static {v10, v12, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 796
    if-eqz v2, :cond_0

    .line 797
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    move-object v10, v11

    .line 801
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :goto_1
    return-object v10

    .line 796
    .restart local v1    # "buff":[C
    .restart local v5    # "in":Ljava/io/InputStreamReader;
    .restart local v6    # "read":I
    .restart local v9    # "url":Ljava/net/URL;
    :cond_1
    if-eqz v2, :cond_2

    .line 797
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 801
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 779
    .end local v1    # "buff":[C
    .end local v5    # "in":Ljava/io/InputStreamReader;
    .end local v6    # "read":I
    .end local v9    # "url":Ljava/net/URL;
    :catch_1
    move-exception v3

    .line 780
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v10, "Ambient"

    const-string v12, "StockListActivityNot able to retreive file through Stock API"

    invoke-static {v10, v12, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 796
    if-eqz v2, :cond_3

    .line 797
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    move-object v10, v11

    goto :goto_1

    .line 785
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 786
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    const-string v10, "Ambient"

    const-string v12, "StockListActivityError connecting to Stock API"

    invoke-static {v10, v12, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 796
    if-eqz v2, :cond_4

    .line 797
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    move-object v10, v11

    goto :goto_1

    .line 791
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 792
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 796
    if-eqz v2, :cond_5

    .line 797
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    move-object v10, v11

    goto :goto_1

    .line 796
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    if-eqz v2, :cond_6

    .line 797
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v10
.end method

.method public getImageCreator()Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->imageCreator:Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;

    return-object v0
.end method

.method public onAmbientImageReSyncComplete(I)V
    .locals 3
    .param p1, "error_code"    # I

    .prologue
    .line 250
    const-string v0, "Ambient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StockController-onAmbientImageReSyncComplete error_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->getState()I

    move-result v0

    sget v1, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->DATA_SYNC_IN_PROGRESS:I

    if-eq v0, v1, :cond_0

    .line 257
    const-string v0, "Ambient"

    const-string v1, "StockController-onAmbientImageReSyncComplete Ignore this is call back either state is not proper or request and response nubmer are different."

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    sget v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->DATA_SYNC_COMPLETED:I

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->setState(I)V

    .line 263
    sget v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->IDLE_SATE:I

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->setState(I)V

    goto :goto_0
.end method

.method public onAmbientImageSyncComplete(I)V
    .locals 2
    .param p1, "error_code"    # I

    .prologue
    .line 215
    const-string v0, "Ambient"

    const-string v1, "StockController-onAmbientImageSyncComplete "

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->getState()I

    move-result v0

    sget v1, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->DATA_SYNC_IN_PROGRESS:I

    if-eq v0, v1, :cond_0

    .line 221
    const-string v0, "Ambient"

    const-string v1, "StockController-onAmbientInfoUpdated Ignore this is call back either state is not proper or request and response nubmer are different."

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :goto_0
    return-void

    .line 228
    :cond_0
    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    .line 229
    sget v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->DATA_SYNC_COMPLETED:I

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->setState(I)V

    .line 230
    sget v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->IDLE_SATE:I

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->setState(I)V

    goto :goto_0

    .line 234
    :cond_1
    sget v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->DATA_SYNC_COMPLETED:I

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->setState(I)V

    .line 235
    sget v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->IDLE_SATE:I

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->setState(I)V

    .line 236
    const-string v0, "Ambient"

    const-string v1, "!!!StockController-onAmbientImageSyncComplete not able to construnct ambient info object.!!!"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v0, "Ambient"

    const-string v1, "!!!StockController-onAmbientImageSyncComplete not able to construnct ambient info object.!!!"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAmbientInfoUpdated(ILjava/util/ArrayList;)V
    .locals 3
    .param p1, "error_code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p2, "ambientInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    const-string v0, "Ambient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StockController-onAmbientInfoUpdated error_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->getState()I

    move-result v0

    sget v1, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->DATA_FETCH_INPROGRESS:I

    if-eq v0, v1, :cond_0

    .line 143
    const-string v0, "Ambient"

    const-string v1, "StockController-onAmbientInfoUpdated Ignore this is call back either state is not proper or request and response nubmer are different."

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_0
    return-void

    .line 150
    :cond_0
    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    .line 151
    sget v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->DATA_FETCH_COMPLETED:I

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->setState(I)V

    .line 154
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->ambientData:Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;

    invoke-virtual {v0, p2}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;->updateAmbientDataList(Ljava/util/ArrayList;)V

    .line 155
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->ambientStockImageSyncIntent()V

    goto :goto_0

    .line 159
    :cond_1
    sget v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->IDLE_SATE:I

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->setState(I)V

    .line 160
    const-string v0, "Ambient"

    const-string v1, "!!!StockController-onAmbientInfoUpdated not able to construnct ambient info object.!!!"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "Ambient"

    const-string v1, "!!!StockController-onAmbientInfoUpdated not able to construnct ambient info object.!!!"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNetworkConnected()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 272
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getWDState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 273
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "ambient__pref"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 276
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v6, "stock_last_update_time"

    invoke-interface {v5, v6, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 279
    .local v3, "lastFetchStock":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 280
    .local v0, "currentTime":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 283
    .local v1, "currentTimeMilli":J
    cmp-long v6, v3, v9

    if-lez v6, :cond_0

    sub-long v6, v1, v3

    const-wide/32 v8, 0xdbba0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Utils;->isETradeDown()Z

    move-result v6

    if-nez v6, :cond_0

    .line 285
    const-string v6, "Ambient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "onReceive Network state changed to connected state, do manual pool"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v6, "AmbientController"

    const-string v7, "onReceive Network connected, Do manual pool"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->processAmbientTask(I)V

    .line 294
    .end local v0    # "currentTime":Ljava/util/Calendar;
    .end local v1    # "currentTimeMilli":J
    .end local v3    # "lastFetchStock":J
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public parseAutocompleteResponse(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "responseData"    # Ljava/lang/String;
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

    .prologue
    .line 813
    .local p2, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "cityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ambient/StockDataParser;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockDataParser;-><init>()V

    .line 814
    .local v0, "stockDataParser":Lcom/qualcomm/toq/smartwatch/ambient/StockDataParser;
    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/toq/smartwatch/ambient/StockDataParser;->parseAutocompleteResponse(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 815
    const/4 v0, 0x0

    .line 816
    return-void
.end method

.method public reSetController()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->inst:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->inst:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->cancelPollingTimer()V

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->inst:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    .line 68
    :cond_0
    return-void
.end method

.method public reSyncImageFilesWithWd()V
    .locals 3

    .prologue
    .line 507
    sget v1, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->DATA_FETCH_INPROGRESS:I

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->setState(I)V

    .line 508
    sget v1, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->DATA_FETCH_COMPLETED:I

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->setState(I)V

    .line 509
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->updateStockCopyFile()V

    .line 512
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->ambientStockImageReSyncIntent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :goto_0
    return-void

    .line 514
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 517
    const-string v1, "Ambient"

    const-string v2, "!!!WeatherController-reSyncImageFilesWithWd Exception in Ambient BackGround Sync"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    sget v1, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->IDLE_SATE:I

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->setState(I)V

    goto :goto_0
.end method

.method public removeTimeStampFromWD()V
    .locals 6

    .prologue
    .line 525
    const-string v3, "Ambient"

    const-string v4, "StockController-removeTimeStampFromWD"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v0, "/apps/stock/99.img"

    .line 529
    .local v0, "destPath":Ljava/lang/String;
    const-string v3, "stock"

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientAppImageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 531
    .local v2, "rootDirectory":Ljava/io/File;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 532
    const/4 v1, 0x0

    .line 533
    .local v1, "errorFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    .end local v1    # "errorFile":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "time_Stamp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".img"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 536
    .restart local v1    # "errorFile":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 537
    const-string v3, "Ambient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StockController-removeTimeStampFromWD removing time stamp file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->removeFile(Ljava/lang/String;)V

    .line 544
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 545
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 546
    const-string v3, "Ambient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StockController-removeTimeStampFromWD deleting time stamp fire"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    .end local v1    # "errorFile":Ljava/io/File;
    :cond_1
    return-void
.end method

.method public resetAmbientLastFetchTimeStamp()V
    .locals 5

    .prologue
    .line 613
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ambient__pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 616
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 617
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "stock_last_update_time"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 618
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 619
    return-void
.end method

.method public syncAmbientImages()V
    .locals 5

    .prologue
    .line 450
    const-string v2, "Ambient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StockController-syncAmbientImages state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->updateStockCopyFile()V

    .line 457
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ambient__pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 463
    .local v1, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getWDState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 465
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->resetPreferenceAmbientInfoList()V

    .line 468
    const-string v2, "StockSymbolsBackGround"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->prefAmbientInfoList:Ljava/util/ArrayList;

    .line 471
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->prefAmbientInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->prefAmbientInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_0

    .line 474
    sget v2, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->DATA_FETCH_COMPLETED:I

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->setState(I)V

    .line 477
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->ambientData:Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->prefAmbientInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;->updateAmbientDataList(Ljava/util/ArrayList;)V

    .line 478
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->ambientStockImageSyncIntent()V

    .line 500
    :goto_0
    return-void

    .line 481
    :cond_0
    const-string v2, "Ambient"

    const-string v3, "!!!StockController-syncAmbientImages Empty stock data!!!"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v2, "Ambient"

    const-string v3, "!!!StockController-syncAmbientImages Empty stock data!!!"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 489
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v2, "Ambient"

    const-string v3, "!!!StockController-syncAmbientImages WD not connected!!!"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v2, "Ambient"

    const-string v3, "!!!StockController-syncAmbientImages WD not connected!!!"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public updateStockCopyFile()V
    .locals 17

    .prologue
    .line 622
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "ambient__pref"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 626
    .local v9, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    const-string v14, "StockSymbolsBackGround"

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v15}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 629
    .local v11, "stockAmbientInfosBack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    const-string v14, "StockSymbols"

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v15}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 631
    .local v10, "stockAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v7, v14, :cond_2

    .line 632
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    .line 633
    .local v13, "uiInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v8, v14, :cond_0

    .line 634
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    .line 635
    .local v2, "baseInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    invoke-virtual {v13}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanySymbol()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanySymbol()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 637
    const-string v14, "Ambient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "StockController-updateStockCopyFile Location: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanySymbol()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "has  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "and source: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getSourceLocation()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v3

    .line 645
    .local v3, "clockImageDestiantionLocation":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v1

    .line 646
    .local v1, "appImageDestinationLocation":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDarkImageDestinationLocation()Ljava/lang/String;

    move-result-object v4

    .line 648
    .local v4, "darkImageDestinationLocation":Ljava/lang/String;
    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 651
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->updateStockDestinationLocation(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 653
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->updateStockDestinationLocation(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 655
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->updateStockDestinationLocation(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 657
    const-string v14, "Ambient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "StockController-updateStockCopyFile Destination location is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setDestinationLocation(Ljava/lang/String;)V

    .line 661
    invoke-virtual {v2, v4}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setDarkImageDestinationLocation(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v2, v1}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setAppImageDestinationLocation(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 664
    invoke-virtual {v10, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 631
    .end local v1    # "appImageDestinationLocation":Ljava/lang/String;
    .end local v2    # "baseInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    .end local v3    # "clockImageDestiantionLocation":Ljava/lang/String;
    .end local v4    # "darkImageDestinationLocation":Ljava/lang/String;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 633
    .restart local v2    # "baseInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 671
    .end local v2    # "baseInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    .end local v8    # "j":I
    .end local v13    # "uiInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :cond_2
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 673
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_1
    const-string v14, "StockSymbolsBackGround"

    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6, v14, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 680
    :goto_2
    :try_start_2
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 682
    const-string v14, "StockSymbolsBackGround"

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v15}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 685
    .local v12, "stockAmbientInfosBack_del":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    const-string v14, "Ambient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "StockController-updateStockCopyFile before delete count="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    rsub-int/lit8 v14, v14, 0x5

    if-lez v14, :cond_4

    .line 691
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-nez v14, :cond_3

    .line 692
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->removeTimeStampFromWD()V

    .line 694
    :cond_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    rsub-int/lit8 v14, v14, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->removeFilesFromWd(I)V

    .line 705
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "i":I
    .end local v10    # "stockAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .end local v11    # "stockAmbientInfosBack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .end local v12    # "stockAmbientInfosBack_del":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :cond_4
    :goto_3
    return-void

    .line 677
    .restart local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v7    # "i":I
    .restart local v10    # "stockAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .restart local v11    # "stockAmbientInfosBack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :catch_0
    move-exception v5

    .line 678
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 699
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "i":I
    .end local v10    # "stockAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .end local v11    # "stockAmbientInfosBack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :catch_1
    move-exception v5

    .line 700
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 702
    .end local v5    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 703
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_3
.end method

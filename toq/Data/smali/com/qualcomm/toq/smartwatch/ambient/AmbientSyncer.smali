.class public Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;
.super Ljava/lang/Object;
.source "AmbientSyncer.java"


# static fields
.field private static inst:Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;->inst:Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;

    if-nez v0, :cond_1

    .line 38
    const-class v1, Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;->inst:Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;->inst:Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;

    .line 42
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_1
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;->inst:Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public pushAmbientImage(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)I
    .locals 23
    .param p1, "ambientType"    # Ljava/lang/String;
    .param p2, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;

    .prologue
    .line 55
    const/4 v5, -0x1

    .line 57
    .local v5, "ambientPushStatus":I
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 59
    .local v7, "context":Landroid/content/Context;
    if-eqz v7, :cond_10

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getWDState()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 61
    if-eqz p2, :cond_f

    .line 62
    const-string v18, "stock"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 63
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 64
    move-object/from16 v0, p2

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    move-object v14, v0

    .line 65
    .local v14, "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getSourceLocation()Ljava/lang/String;

    move-result-object v12

    .line 66
    .local v12, "path":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getAppImageSourceLocation()Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, "appPath":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDarkImageSourceLocation()Ljava/lang/String;

    move-result-object v8

    .line 68
    .local v8, "darkClockPath":Ljava/lang/String;
    if-eqz v12, :cond_4

    const-string v18, ".img"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_4

    if-eqz v6, :cond_4

    const-string v18, ".img"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_4

    if-eqz v8, :cond_4

    const-string v18, ".img"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 75
    const-string v18, "Ambient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "AmbientSyncer- Stock file name getting pushed = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanySymbol()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".img"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " SrcPath "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " DestPath  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v18

    if-eqz v18, :cond_3

    .line 86
    :try_start_1
    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_1

    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_1

    .line 89
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->getClockSettingsController()Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;

    move-result-object v18

    const-string v19, "Stocks"

    invoke-virtual/range {v18 .. v19}, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->isClockSelected(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 91
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDarkImageDestinationLocation()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsSyncFile(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 96
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v12, v2, v3}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsSyncFile(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 103
    :cond_0
    const-string v18, "Ambient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "AmbientSyncer-Status of Clock "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanySymbol()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".img"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsSyncFile(ILjava/lang/String;Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    .line 122
    :cond_1
    :goto_0
    :try_start_2
    const-string v18, "Ambient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "AmbientSyncer- Status of App Image "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanySymbol()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".img"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v6    # "appPath":Ljava/lang/String;
    .end local v8    # "darkClockPath":Ljava/lang/String;
    .end local v12    # "path":Ljava/lang/String;
    .end local v14    # "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :cond_2
    :goto_1
    move/from16 v18, v5

    .line 318
    .end local v7    # "context":Landroid/content/Context;
    :goto_2
    return v18

    .line 116
    .restart local v6    # "appPath":Ljava/lang/String;
    .restart local v7    # "context":Landroid/content/Context;
    .restart local v8    # "darkClockPath":Ljava/lang/String;
    .restart local v12    # "path":Ljava/lang/String;
    .restart local v14    # "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :catch_0
    move-exception v9

    .line 117
    .local v9, "e":Ljava/lang/Exception;
    const-string v18, "Ambient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "AmbientSyncer- !!! Exception occured during fileSynchFile "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 313
    .end local v6    # "appPath":Ljava/lang/String;
    .end local v7    # "context":Landroid/content/Context;
    .end local v8    # "darkClockPath":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v12    # "path":Ljava/lang/String;
    .end local v14    # "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :catch_1
    move-exception v9

    .line 314
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v18, "Ambient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "AmbientSyncer- !!! Image creation is not successful"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const/16 v18, -0x1

    goto :goto_2

    .line 129
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v6    # "appPath":Ljava/lang/String;
    .restart local v7    # "context":Landroid/content/Context;
    .restart local v8    # "darkClockPath":Ljava/lang/String;
    .restart local v12    # "path":Ljava/lang/String;
    .restart local v14    # "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :cond_3
    :try_start_3
    const-string v18, "Ambient"

    const-string v19, "AmbientSyncer- !!! FMSController is null"

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 135
    :cond_4
    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_5

    .line 136
    const-string v18, "Ambient"

    const-string v19, "AmbientSyncer- Sorce is null so it is better to remove dest file"

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsRemoveFile(ILjava/lang/String;)I

    .line 142
    :cond_5
    const-string v18, "Ambient"

    const-string v19, "AmbientSyncer- !!! Path is null"

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 147
    .end local v6    # "appPath":Ljava/lang/String;
    .end local v8    # "darkClockPath":Ljava/lang/String;
    .end local v12    # "path":Ljava/lang/String;
    .end local v14    # "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :cond_6
    const-string v18, "weather"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 148
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 149
    move-object/from16 v0, p2

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    move-object v15, v0

    .line 150
    .local v15, "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getSourceLocation()Ljava/lang/String;

    move-result-object v12

    .line 151
    .restart local v12    # "path":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageSourceLocation()Ljava/lang/String;

    move-result-object v6

    .line 152
    .restart local v6    # "appPath":Ljava/lang/String;
    if-eqz v12, :cond_d

    const-string v18, ".img"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_d

    if-eqz v6, :cond_d

    const-string v18, ".img"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 157
    const-string v18, "Ambient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "AmbientSyncer- Weather file name getting pushed = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".img"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " SrcPath "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " DestPath "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v18

    if-eqz v18, :cond_c

    .line 173
    :try_start_4
    instance-of v0, v15, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 174
    if-eqz v7, :cond_9

    .line 175
    const-string v18, "ambient__pref"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 177
    .local v13, "prefs":Landroid/content/SharedPreferences;
    const-string v18, "WeatherCurrentCityUpdate"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 179
    .local v11, "isCurrentCityUpdateEnabled":Z
    if-eqz v11, :cond_9

    .line 181
    const-string v18, "Ambient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "AmbientSyncer- Time before  Clock Image pushed "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    new-instance v20, Ljava/util/Date;

    invoke-direct/range {v20 .. v20}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    move-object v0, v15

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->getClockZipSourceLocation()Ljava/lang/String;

    move-result-object v16

    .line 188
    .local v16, "zipSourcePath":Ljava/lang/String;
    if-eqz v16, :cond_7

    const-string v18, ".zip"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 190
    const-string v18, "push_online_image"

    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 196
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->getClockSettingsController()Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;

    move-result-object v18

    const-string v19, "Weather Grid"

    invoke-virtual/range {v18 .. v19}, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->isClockSelected(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 198
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v19

    const/16 v20, 0x1

    move-object v0, v15

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->getClockZipSourceLocation()Ljava/lang/String;

    move-result-object v21

    move-object v0, v15

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->getClockZipDestinationLocation()Ljava/lang/String;

    move-result-object v18

    const/16 v22, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v18

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsSyncFile(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v17

    .line 203
    .local v17, "zipTransferStatus":I
    const-string v18, "Ambient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "AmbientSyncer- Status for Zip File Sync "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .end local v17    # "zipTransferStatus":I
    :cond_7
    :goto_3
    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_8

    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_8

    .line 229
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsSyncFile(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 236
    :cond_8
    const-string v18, "Ambient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "AmbientSyncer- Time after App Image pushed"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    new-instance v20, Ljava/util/Date;

    invoke-direct/range {v20 .. v20}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v18, "Ambient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "AmbientSyncer- Status for App  Image sync "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 277
    .end local v11    # "isCurrentCityUpdateEnabled":Z
    .end local v13    # "prefs":Landroid/content/SharedPreferences;
    .end local v16    # "zipSourcePath":Ljava/lang/String;
    :cond_9
    :goto_4
    :try_start_5
    const-string v18, "Ambient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "AmbientSyncer- Status of "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".img = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 209
    .restart local v11    # "isCurrentCityUpdateEnabled":Z
    .restart local v13    # "prefs":Landroid/content/SharedPreferences;
    .restart local v16    # "zipSourcePath":Ljava/lang/String;
    :cond_a
    :try_start_6
    const-string v18, "Ambient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "AmbientSyncer- deleting zip file for Clock Three.zipin condition "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 215
    const-string v18, "Ambient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "AmbientSyncer- deleting zip file for Clock Three.zip"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "in condition "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 221
    const/16 v19, 0x1

    move-object v0, v15

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->getClockZipDestinationLocation()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientSyncer;->removeFile(ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_3

    .line 272
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "isCurrentCityUpdateEnabled":Z
    .end local v13    # "prefs":Landroid/content/SharedPreferences;
    .end local v16    # "zipSourcePath":Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 273
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_7
    const-string v18, "Ambient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "AmbientSyncer- Exception occured during fileSynchFile "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_4

    .line 247
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_b
    :try_start_8
    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_9

    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_9

    .line 249
    const-string v18, "Ambient"

    const-string v19, "AmbientSyncer- Pushing Weather Image files"

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v18, "Ambient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "AmbientSyncer- Status for Clock Image sync "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsSyncFile(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 266
    const-string v18, "Ambient"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "AmbientSyncer- Status for App  Image sync "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_4

    .line 283
    :cond_c
    :try_start_9
    const-string v18, "Ambient"

    const-string v19, "AmbientSyncer- !!! FMSController is null"

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 289
    :cond_d
    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_e

    .line 290
    const-string v18, "Ambient"

    const-string v19, "AmbientSyncer- Sorce is null so it is better to remove dest file"

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsRemoveFile(ILjava/lang/String;)I

    .line 296
    :cond_e
    const-string v18, "Ambient"

    const-string v19, "AmbientSyncer- !!! Path is null"

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 303
    .end local v6    # "appPath":Ljava/lang/String;
    .end local v12    # "path":Ljava/lang/String;
    .end local v15    # "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    :cond_f
    const-string v18, "Ambient"

    const-string v19, "AmbientSyncer- !!! Returning ambientInfo is null"

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const/16 v18, -0x1

    goto/16 :goto_2

    .line 309
    :cond_10
    const-string v18, "Ambient"

    const-string v19, "AmbientSyncer- !!! WD is disconnected"

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_1
.end method

.method public removeFile(ILjava/lang/String;)V
    .locals 2
    .param p1, "appId"    # I
    .param p2, "destPath"    # Ljava/lang/String;

    .prologue
    .line 322
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsRemoveFile(ILjava/lang/String;)I

    .line 325
    :cond_0
    return-void
.end method

.method public syncFile(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;
    .param p3, "priority"    # I

    .prologue
    .line 328
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsSyncFile(ILjava/lang/String;Ljava/lang/String;I)I

    .line 329
    return-void
.end method

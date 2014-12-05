.class public Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;
.super Lcom/qualcomm/toq/base/controller/DefaultController;
.source "EPCommunicationController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EPCommunicationController"

.field private static isSWUpdateTimerRequired:Z

.field private static mInstance:Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

.field private static mSWUpdateTimer:Ljava/util/Timer;


# instance fields
.field private EP_BATTERY_RANGE:I

.field private PBEMode:Ljava/lang/String;

.field public appName:Ljava/lang/String;

.field private epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    sput-object v0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->mInstance:Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    .line 490
    sput-object v0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->mSWUpdateTimer:Ljava/util/Timer;

    .line 491
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->isSWUpdateTimerRequired:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/qualcomm/toq/base/controller/DefaultController;-><init>()V

    .line 55
    const-string v0, "EP_COMMUNICATION_CONTROLLER"

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->appName:Ljava/lang/String;

    .line 57
    const-string v0, "Off"

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->PBEMode:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    .line 525
    const/16 v0, 0x14

    iput v0, p0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->EP_BATTERY_RANGE:I

    .line 61
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->isSWUpdateTimerRequired:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 50
    sput-boolean p0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->isSWUpdateTimerRequired:Z

    return p0
.end method

.method static synthetic access$100()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->mSWUpdateTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$102(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Ljava/util/Timer;

    .prologue
    .line 50
    sput-object p0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->mSWUpdateTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->broadcastEPFirmwareUpdateSuccess(I)V

    return-void
.end method

.method private broadcastEPFirmwareUpdateLowBattery(I)V
    .locals 3
    .param p1, "endPointType"    # I

    .prologue
    .line 1164
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1165
    .local v0, "fileTransferErrorIntent":Landroid/content/Intent;
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_EAR_PIECE_UI_UPDATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1166
    const-string v1, "endpointtype"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1167
    const-string v1, "state"

    const/16 v2, 0x7e4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1169
    const-string v1, "ep_firmware_update_error"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1171
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1172
    return-void
.end method

.method private broadcastEPFirmwareUpdateSuccess(I)V
    .locals 3
    .param p1, "endPointType"    # I

    .prologue
    .line 1175
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1176
    .local v0, "fileTransferErrorIntent":Landroid/content/Intent;
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_EAR_PIECE_UI_UPDATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1177
    const-string v1, "endpointtype"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1178
    const-string v1, "state"

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1180
    const-string v1, "ep_firmware_update_error"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1182
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1183
    return-void
.end method

.method public static getEPCommunicationController()Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;
    .locals 2

    .prologue
    .line 64
    const-class v1, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->mInstance:Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    invoke-direct {v0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->mInstance:Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    .line 68
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    sget-object v0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->mInstance:Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    if-nez v0, :cond_0

    .line 74
    invoke-static {}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    return-object v0
.end method

.method private getNewLinkKey()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1355
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1356
    .local v1, "newLinkKey":Ljava/lang/StringBuffer;
    const-string v3, ":"

    .line 1357
    .local v3, "seperator":Ljava/lang/String;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 1358
    .local v2, "random":Ljava/util/Random;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v4, 0x10

    if-ge v0, v4, :cond_1

    .line 1359
    const/16 v4, 0x59

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    rem-int/lit8 v4, v4, 0x64

    add-int/lit8 v4, v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1360
    const/16 v4, 0xf

    if-eq v0, v4, :cond_0

    .line 1361
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1358
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1364
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static setController(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 1347
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->mInstance:Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    .line 1348
    return-void
.end method

.method private testing(I)V
    .locals 8
    .param p1, "endPointType"    # I

    .prologue
    const-wide/16 v2, 0x2710

    .line 494
    sget-object v0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->mSWUpdateTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 495
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->mSWUpdateTimer:Ljava/util/Timer;

    .line 496
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->isSWUpdateTimerRequired:Z

    .line 498
    :cond_0
    const/16 v6, 0x2710

    .line 499
    .local v6, "delay":I
    const/16 v7, 0x2710

    .line 500
    .local v7, "period":I
    sget-object v0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->mSWUpdateTimer:Ljava/util/Timer;

    new-instance v1, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController$2;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController$2;-><init>(Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;I)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 523
    return-void
.end method


# virtual methods
.method public broadcastEPStateUpdate(I)V
    .locals 3
    .param p1, "endPointType"    # I

    .prologue
    .line 1155
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    .line 1156
    .local v0, "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    if-eqz v0, :cond_0

    .line 1157
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_EP_CONFIG_STATE_UPDATE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1158
    .local v1, "epRoleUpdateIntent":Landroid/content/Intent;
    const-string v2, "endpointtype"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1159
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1161
    .end local v1    # "epRoleUpdateIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public getLocalFileName(I)Ljava/lang/String;
    .locals 17
    .param p1, "endPointType"    # I

    .prologue
    .line 1369
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    .line 1370
    .local v5, "context":Landroid/content/Context;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    .line 1372
    .local v4, "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    const-string v9, ""

    .line 1373
    .local v9, "fullFileName":Ljava/lang/String;
    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 1374
    const-string v14, "watch_details_pref"

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 1377
    .local v13, "prefs":Landroid/content/SharedPreferences;
    const-string v10, ""

    .local v10, "hwRevision":Ljava/lang/String;
    const-string v3, ""

    .line 1378
    .local v3, "buildTarget":Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 1379
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "hardware_revision"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1381
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "build_target"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1395
    :cond_0
    if-eqz v10, :cond_1

    invoke-static {v10}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->isEPBuildVariantSupported(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    :cond_1
    if-eqz v3, :cond_8

    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->isEPBuildVariantSupported(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1405
    :cond_2
    if-eqz v3, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "ep_p2"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1408
    const-string v14, "EPCommunicationController"

    const-string v15, "Choosing zip file based on EP build target P2"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1409
    const-string v9, "ep_p2.zip"

    .line 1426
    .end local v3    # "buildTarget":Ljava/lang/String;
    .end local v10    # "hwRevision":Ljava/lang/String;
    .end local v13    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    :goto_0
    if-eqz v5, :cond_a

    .line 1427
    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 1429
    .local v2, "assetManager":Landroid/content/res/AssetManager;
    const/4 v8, 0x0

    .line 1431
    .local v8, "files":[Ljava/lang/String;
    :try_start_0
    const-string v14, ""

    invoke-virtual {v2, v14}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1437
    move-object v1, v8

    .local v1, "arr$":[Ljava/lang/String;
    array-length v12, v1

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1
    if-ge v11, v12, :cond_a

    aget-object v7, v1, v11

    .line 1439
    .local v7, "fileName":Ljava/lang/String;
    const/4 v14, 0x1

    move/from16 v0, p1

    if-eq v0, v14, :cond_4

    const/4 v14, 0x2

    move/from16 v0, p1

    if-ne v0, v14, :cond_9

    .line 1441
    :cond_4
    :try_start_1
    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v14

    if-eqz v14, :cond_9

    .line 1454
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "assetManager":Landroid/content/res/AssetManager;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "files":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    :goto_2
    return-object v7

    .line 1411
    .restart local v3    # "buildTarget":Ljava/lang/String;
    .restart local v10    # "hwRevision":Ljava/lang/String;
    .restart local v13    # "prefs":Landroid/content/SharedPreferences;
    :cond_5
    const-string v14, "P2"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_6

    const-string v14, "MP"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1413
    :cond_6
    const-string v14, "EPCommunicationController"

    const-string v15, "Choosing zip file based on EP Hardware revision"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    const-string v9, "ep_p2.zip"

    goto :goto_0

    .line 1418
    :cond_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ep_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".zip"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 1422
    :cond_8
    const/4 v7, 0x0

    goto :goto_2

    .line 1433
    .end local v3    # "buildTarget":Ljava/lang/String;
    .end local v10    # "hwRevision":Ljava/lang/String;
    .end local v13    # "prefs":Landroid/content/SharedPreferences;
    .restart local v2    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v8    # "files":[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1434
    .local v6, "e":Ljava/io/IOException;
    const-string v14, "EPCommunicationController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to get asset file list: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    const/4 v7, 0x0

    goto :goto_2

    .line 1447
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v7    # "fileName":Ljava/lang/String;
    .restart local v11    # "i$":I
    .restart local v12    # "len$":I
    :catch_1
    move-exception v6

    .line 1448
    .local v6, "e":Ljava/lang/Exception;
    const-string v14, "EPCommunicationController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to get version from filename in assets folder: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " details: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 1454
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "assetManager":Landroid/content/res/AssetManager;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "files":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_2
.end method

.method public handleConnHandlerMessage(IILjava/lang/Object;II)V
    .locals 22
    .param p1, "appID"    # I
    .param p2, "messageType"    # I
    .param p3, "payload"    # Ljava/lang/Object;
    .param p4, "transactionId"    # I
    .param p5, "endPointType"    # I

    .prologue
    .line 85
    const-string v17, "EPCommunicationController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Processing EPComm message. appID:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " messageType:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " transID:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, p5

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 101
    const/16 v17, 0x13

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 102
    packed-switch p2, :pswitch_data_0

    .line 488
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 108
    :pswitch_1
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Lorg/json/JSONObject;

    move-object v9, v0

    .line 109
    .local v9, "jsonPayloadData":Lorg/json/JSONObject;
    const-string v17, "EPCommunicationController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "VersionInd Payload ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v17, "role"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 113
    .local v14, "roleValue":Ljava/lang/String;
    const-string v17, "link_key_ep"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 114
    .local v10, "linkKeyValue":Ljava/lang/String;
    const-string v17, "mode"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 115
    .local v11, "modeValue":Ljava/lang/String;
    const-string v8, ""

    .line 116
    .local v8, "epDownloaerVersion":Ljava/lang/String;
    const-string v5, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    .local v5, "connectedEPValue":Ljava/lang/String;
    const/4 v7, 0x0

    .line 119
    .local v7, "epBassBoostMode":Ljava/lang/String;
    :try_start_1
    const-string v17, "epdl_ota_version"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 126
    const-string v17, "connected_ep"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 133
    :goto_1
    :try_start_2
    const-string v17, "bass_boost_mode"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    .line 142
    :goto_2
    :try_start_3
    const-string v17, "EPCommunicationController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EPMessage:Received  state["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x7

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, p5

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 150
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-virtual {v0, v1, v14}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointRole(ILjava/lang/String;)V

    .line 152
    const-string v17, "1.1"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 153
    const-string v17, "EPCommunicationController"

    const-string v18, "Set FTPBaseMessage.BLOCK_SIZE = 1536"

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/16 v17, 0x600

    sput v17, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->BLOCK_SIZE:I

    .line 200
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-virtual {v0, v1, v10}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointLinkKey(ILjava/lang/String;)V

    .line 202
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-virtual {v0, v1, v11}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndpointMode(ILjava/lang/String;)V

    .line 203
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-virtual {v0, v1, v5}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndpointConnectedEPAddress(ILjava/lang/String;)V

    .line 206
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-virtual {v0, v1, v7}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setBassBoostMode(ILjava/lang/String;)V

    .line 209
    const-string v17, "EPCommunicationController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "connectedEPValue = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", epBassBoostMode = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", endPointType = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v17, "Config"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 221
    new-instance v17, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController$1;-><init>(Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;II)V

    invoke-virtual/range {v17 .. v17}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController$1;->start()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 272
    .end local v5    # "connectedEPValue":Ljava/lang/String;
    .end local v7    # "epBassBoostMode":Ljava/lang/String;
    .end local v8    # "epDownloaerVersion":Ljava/lang/String;
    .end local v9    # "jsonPayloadData":Lorg/json/JSONObject;
    .end local v10    # "linkKeyValue":Ljava/lang/String;
    .end local v11    # "modeValue":Ljava/lang/String;
    .end local v14    # "roleValue":Ljava/lang/String;
    :cond_1
    :goto_4
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v17

    if-eqz v17, :cond_0

    .line 274
    sget-object v17, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v18, "SUB_STATE_SUCCESS,RESPONSE_CODE_NONE"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v19

    const/16 v20, 0x2

    aget-object v19, v19, v20

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v19

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v20

    const/16 v21, 0x2

    aget-object v20, v20, v21

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v20

    invoke-static/range {v17 .. v20}, Lcom/qualcomm/toq/base/utils/Utils;->printEarpieceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 281
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v17

    const/16 v18, 0x65

    const/16 v19, -0x1

    invoke-virtual/range {v17 .. v19}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->broadcastResponsetoHeadset(II)V

    .line 285
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->setCancelTimer()V

    .line 287
    const/16 v17, 0x2

    move/from16 v0, p5

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 288
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v17

    const-string v18, "UPDATE_HEADSET"

    const v19, 0x7f0a0194

    invoke-static/range {v19 .. v19}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move/from16 v1, p5

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->updateEarpieceUIBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_2
    const/16 v17, 0x1

    move/from16 v0, p5

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 294
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v17

    const-string v18, "UPDATE_HEADSET"

    const v19, 0x7f0a018e

    invoke-static/range {v19 .. v19}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move/from16 v1, p5

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->updateEarpieceUIBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    .restart local v5    # "connectedEPValue":Ljava/lang/String;
    .restart local v7    # "epBassBoostMode":Ljava/lang/String;
    .restart local v8    # "epDownloaerVersion":Ljava/lang/String;
    .restart local v9    # "jsonPayloadData":Lorg/json/JSONObject;
    .restart local v10    # "linkKeyValue":Ljava/lang/String;
    .restart local v11    # "modeValue":Ljava/lang/String;
    .restart local v14    # "roleValue":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 129
    .local v6, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 264
    .end local v5    # "connectedEPValue":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "epBassBoostMode":Ljava/lang/String;
    .end local v8    # "epDownloaerVersion":Ljava/lang/String;
    .end local v9    # "jsonPayloadData":Lorg/json/JSONObject;
    .end local v10    # "linkKeyValue":Ljava/lang/String;
    .end local v11    # "modeValue":Ljava/lang/String;
    .end local v14    # "roleValue":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 265
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v17, "EPCommunicationController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failed to send file/configure EP: details: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 136
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v5    # "connectedEPValue":Ljava/lang/String;
    .restart local v7    # "epBassBoostMode":Ljava/lang/String;
    .restart local v8    # "epDownloaerVersion":Ljava/lang/String;
    .restart local v9    # "jsonPayloadData":Lorg/json/JSONObject;
    .restart local v10    # "linkKeyValue":Ljava/lang/String;
    .restart local v11    # "modeValue":Ljava/lang/String;
    .restart local v14    # "roleValue":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 137
    .restart local v6    # "e":Ljava/lang/Exception;
    const/4 v7, 0x0

    .line 138
    :try_start_5
    const-string v17, "EPCommunicationController"

    const-string v18, "[BassBoost] Exception in retrieving bass_boost_mode field"

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 157
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v17, "EPCommunicationController"

    const-string v18, "Set FTPBaseMessage.BLOCK_SIZE = 512"

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/16 v17, 0x200

    sput v17, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->BLOCK_SIZE:I

    goto/16 :goto_3

    .line 242
    :cond_4
    const-string v17, "Operational"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 247
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->handleEPModeConfigurationRev1(II)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_4

    .line 305
    .end local v5    # "connectedEPValue":Ljava/lang/String;
    .end local v7    # "epBassBoostMode":Ljava/lang/String;
    .end local v8    # "epDownloaerVersion":Ljava/lang/String;
    .end local v9    # "jsonPayloadData":Lorg/json/JSONObject;
    .end local v10    # "linkKeyValue":Ljava/lang/String;
    .end local v11    # "modeValue":Ljava/lang/String;
    .end local v14    # "roleValue":Ljava/lang/String;
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v16

    .line 306
    .local v16, "tempRole":Ljava/lang/String;
    const-string v17, "EPCommunicationController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[ChangeRoleResponse] Got response for changeRoleRequest("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, p5

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 313
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPCommunicationController()Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    move-result-object v17

    const-string v18, "Operational"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->sendChageModeRequestMessage(Ljava/lang/String;II)V

    .line 318
    const-string v17, "EPCommunicationController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[ChangeRoleResponse] Sent ChangeModeRequest for endPointType = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, p5

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    goto/16 :goto_0

    .line 398
    .end local v16    # "tempRole":Ljava/lang/String;
    :pswitch_3
    :try_start_6
    const-string v17, "EPCommunicationController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[BassBoost] Received bassBoostResponse for endPointType = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    move-object/from16 v0, p3

    check-cast v0, Lorg/json/JSONObject;

    move-object v9, v0

    .line 402
    .restart local v9    # "jsonPayloadData":Lorg/json/JSONObject;
    const-string v17, "bass_boost_status"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 403
    .local v15, "status":Ljava/lang/String;
    const-string v17, "EPCommunicationController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[BassBoost] bassBoostResponse Status = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    sget-object v17, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "pass"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 408
    const-string v17, "EPCommunicationController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[BassBoost] Storing LAST_KNOWN_HEADSET_PBE_MODE = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->PBEMode:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v17

    const-string v18, "last_known_headset_mode"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->PBEMode:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_5
    const-string v17, "EPCommunicationController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EPMessage:Received bassBoostResponse. Status:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x7

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, p5

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 424
    .end local v9    # "jsonPayloadData":Lorg/json/JSONObject;
    .end local v15    # "status":Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 425
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 430
    .end local v6    # "e":Ljava/lang/Exception;
    :pswitch_4
    :try_start_7
    move-object/from16 v0, p3

    check-cast v0, Lorg/json/JSONObject;

    move-object v9, v0

    .line 431
    .restart local v9    # "jsonPayloadData":Lorg/json/JSONObject;
    const-string v17, "mode"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 432
    .restart local v11    # "modeValue":Ljava/lang/String;
    const-string v17, "name"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 433
    .local v12, "name":Ljava/lang/String;
    const-string v17, "percentage"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 434
    .local v13, "percentageValue":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-virtual {v0, v1, v13}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEpBatteryIndPercentage(ILjava/lang/String;)V

    .line 437
    const-string v17, "EPCommunicationController"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EPMessage:Received BatteryInd. modeValue:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " name:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " percentageValue:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x7

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, p5

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 447
    .end local v9    # "jsonPayloadData":Lorg/json/JSONObject;
    .end local v11    # "modeValue":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "percentageValue":Ljava/lang/String;
    :catch_4
    move-exception v6

    .line 448
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public handleEPModeConfiguration(II)Z
    .locals 1
    .param p1, "transactionId"    # I
    .param p2, "endPointType"    # I

    .prologue
    .line 749
    const/4 v0, 0x1

    .line 885
    .local v0, "result":Z
    return v0
.end method

.method public handleEPModeConfigurationRev1(II)Z
    .locals 13
    .param p1, "transactionId"    # I
    .param p2, "endPointType"    # I

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x7

    const/4 v5, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 529
    const/4 v4, 0x1

    .line 530
    .local v4, "result":Z
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    .line 532
    .local v2, "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    const-string v6, "EPCommunicationController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EPMessage:rev1 Action= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", UpgradeState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2, p2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeState(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", versionstate = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2, p2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p2, v9, v11}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 545
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v6

    if-nez v6, :cond_b

    .line 547
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEpBatteryIndPercentage(I)Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, "batteryLevel":Ljava/lang/String;
    const/4 v0, 0x0

    .line 549
    .local v0, "batterRange":I
    if-nez v1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 551
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 563
    :cond_1
    :goto_0
    sget-object v6, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Battery range is = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget v6, p0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->EP_BATTERY_RANGE:I

    if-le v0, v6, :cond_9

    invoke-virtual {v2, p2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeState(I)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getCustomsBuildFlag()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 567
    :cond_2
    invoke-virtual {v2, p2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v6

    if-ne v6, v9, :cond_6

    .line 568
    invoke-virtual {v2, p2, v10}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointVersionState(II)V

    .line 571
    if-ne p2, v10, :cond_3

    .line 572
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v6

    const-string v7, "UPDATE_HEADSET"

    const v8, 0x7f0a0197

    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, p2, v7, v8}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->updateEarpieceUIBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    .line 577
    :cond_3
    if-ne p2, v9, :cond_4

    .line 578
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v6

    const-string v7, "UPDATE_HEADSET"

    const v8, 0x7f0a0191

    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, p2, v7, v8}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->updateEarpieceUIBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    .line 584
    :cond_4
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPVersionController;->getEPVersionController()Lcom/qualcomm/toq/earpiece/controller/EPVersionController;

    move-result-object v6

    invoke-virtual {v6, v5, p2}, Lcom/qualcomm/toq/earpiece/controller/EPVersionController;->sendAlohaWaitUpdateMessage(II)V

    .end local v0    # "batterRange":I
    .end local v1    # "batteryLevel":Ljava/lang/String;
    :cond_5
    :goto_1
    move v5, v4

    .line 744
    :goto_2
    return v5

    .line 556
    .restart local v0    # "batterRange":I
    .restart local v1    # "batteryLevel":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 557
    .local v3, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0

    .line 588
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6
    invoke-virtual {v2, p2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v6

    if-ne v6, v10, :cond_5

    .line 590
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndpointMode(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Config"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 593
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/TFTP/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/qualcomm/toq/base/utils/Constants;->EP_TFTP_PATH:Ljava/lang/String;

    .line 598
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v6

    invoke-virtual {v6, p2, v9}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEpSoftwareUpgradeOnProcess(IZ)V

    .line 600
    const/16 v6, 0xb

    invoke-virtual {p0, v6, p2}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->pushFileThroughTFTPZipVersion(II)Z

    move-result v4

    .line 601
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v6

    invoke-virtual {v6, p2, v5}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEpSoftwareUpgradeOnProcess(IZ)V

    .line 603
    const-string v6, "EPCommunicationController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Earpiece Firmware push result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, p2, v9, v9}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 610
    if-nez v4, :cond_7

    .line 611
    const-string v5, "EPCommunicationController"

    const-string v6, "EPMessage:->Error in File transfer!!!"

    invoke-static {v5, v6, p2, v9, v11}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 618
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current_status_text"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_REQUIRED:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current_status_subtext"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 636
    :cond_7
    const-string v6, "EPCommunicationController"

    const-string v7, "EPMessage:->File transfer completed"

    invoke-static {v6, v7, p2, v9, v11}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 642
    const-string v6, "Operational"

    invoke-virtual {p0, v6, v5, p2}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->sendChageModeRequestMessage(Ljava/lang/String;II)V

    .line 646
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v5

    const-string v6, "Operational"

    invoke-virtual {v5, p2, v6}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndpointMode(ILjava/lang/String;)V

    .line 661
    sget-object v5, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v6, "SUB_STATE_SUCCESS,RESPONSE_CODE_NONE [Instread of success we are sending failure from Connection handler impl]"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    aget-object v7, v7, v10

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    aget-object v8, v8, v10

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/qualcomm/toq/base/utils/Utils;->printEarpieceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 668
    invoke-direct {p0, p2}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->testing(I)V

    goto/16 :goto_1

    .line 674
    :cond_8
    const-string v6, "EPCommunicationController"

    const-string v7, "EPMessage:Earpiece needs update but it is not in Config mode!!! Leads to send waitUpdate message"

    invoke-static {v6, v7, p2, v9, v11}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 680
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPVersionController;->getEPVersionController()Lcom/qualcomm/toq/earpiece/controller/EPVersionController;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Lcom/qualcomm/toq/earpiece/controller/EPVersionController;->sendAlohaWaitUpdateMessage(II)V

    goto/16 :goto_2

    .line 690
    :cond_9
    iget v6, p0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->EP_BATTERY_RANGE:I

    if-gt v0, v6, :cond_a

    invoke-virtual {v2, p2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeState(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 692
    sget-object v6, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v7, "SUB_STATE_SUCCESS,RESPONSE_CODE_NONE--Low Battery"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    aget-object v8, v8, v10

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/qualcomm/toq/base/utils/Utils;->printEarpieceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 699
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v6

    const/16 v7, 0x65

    invoke-virtual {v6, v7, v12}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->broadcastResponsetoHeadset(II)V

    .line 702
    invoke-direct {p0, p2}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->broadcastEPFirmwareUpdateLowBattery(I)V

    goto/16 :goto_2

    .line 706
    :cond_a
    sget-object v5, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v6, "SUB_STATE_SUCCESS,RESPONSE_CODE_NONE"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    aget-object v7, v7, v10

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    aget-object v8, v8, v10

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    invoke-static {v5, v6, v7, v8}, Lcom/qualcomm/toq/base/utils/Utils;->printEarpieceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 713
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v5

    const/16 v6, 0x65

    invoke-virtual {v5, v6, v12}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->broadcastResponsetoHeadset(II)V

    .line 717
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isRightEPBonded()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isLeftEPBonded()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 721
    invoke-virtual {v2, v9}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeState(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 722
    const-string v5, "EPCommunicationController"

    const-string v6, ".......... Firmware update sent........."

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    invoke-direct {p0, v9}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->broadcastEPFirmwareUpdateSuccess(I)V

    goto/16 :goto_1

    .line 732
    .end local v0    # "batterRange":I
    .end local v1    # "batteryLevel":Ljava/lang/String;
    :cond_b
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v5

    if-eq v5, v9, :cond_5

    .line 739
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v5

    if-ne v5, v10, :cond_5

    goto/16 :goto_1
.end method

.method public handleEPRoleConfigurationRev3(II)Z
    .locals 25
    .param p1, "transactionId"    # I
    .param p2, "endPointType"    # I

    .prologue
    .line 895
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_3

    const/16 v18, 0x2

    .line 901
    .local v18, "otherEndpointType":I
    :goto_0
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isRightEPBonded()Z

    move-result v19

    .line 905
    .local v19, "otherEndpointTypeBonded":Z
    :goto_1
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getDeviceState(I)I

    move-result v1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    if-eqz v19, :cond_7

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v1

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getDeviceState(I)I

    move-result v1

    const/4 v5, 0x3

    if-eq v1, v5, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v1

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "Request"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 912
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v13

    .line 913
    .local v13, "endpointTypeRole":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v1

    move/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v20

    .line 914
    .local v20, "otherEndpointTypeRole":Ljava/lang/String;
    const-string v1, "Request"

    invoke-virtual {v13, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 915
    const-string v1, "Primary"

    invoke-virtual {v13, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 916
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v1

    const-string v5, "PrimaryPendingRequest"

    move/from16 v0, p2

    invoke-virtual {v1, v0, v5}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointRole(ILjava/lang/String;)V

    .line 926
    :cond_1
    :goto_2
    const-string v1, "Request"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 927
    const-string v1, "Primary"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 928
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v1

    const-string v5, "PrimaryPendingRequest"

    move/from16 v0, v18

    invoke-virtual {v1, v0, v5}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointRole(ILjava/lang/String;)V

    .line 938
    :cond_2
    :goto_3
    const/4 v1, 0x0

    .line 1087
    .end local v13    # "endpointTypeRole":Ljava/lang/String;
    .end local v20    # "otherEndpointTypeRole":Ljava/lang/String;
    :goto_4
    return v1

    .line 895
    .end local v18    # "otherEndpointType":I
    .end local v19    # "otherEndpointTypeBonded":Z
    :cond_3
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 901
    .restart local v18    # "otherEndpointType":I
    :cond_4
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isLeftEPBonded()Z

    move-result v19

    goto/16 :goto_1

    .line 921
    .restart local v13    # "endpointTypeRole":Ljava/lang/String;
    .restart local v19    # "otherEndpointTypeBonded":Z
    .restart local v20    # "otherEndpointTypeRole":Ljava/lang/String;
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v1

    const-string v5, "SecondaryPendingRequest"

    move/from16 v0, p2

    invoke-virtual {v1, v0, v5}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointRole(ILjava/lang/String;)V

    goto :goto_2

    .line 933
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v1

    const-string v5, "SecondaryPendingRequest"

    move/from16 v0, v18

    invoke-virtual {v1, v0, v5}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointRole(ILjava/lang/String;)V

    goto :goto_3

    .line 942
    .end local v13    # "endpointTypeRole":Ljava/lang/String;
    .end local v20    # "otherEndpointTypeRole":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v21

    .line 947
    .local v21, "prefs":Landroid/content/SharedPreferences;
    monitor-enter p0

    .line 948
    :try_start_0
    const-string v1, "associated_ep_l_device_name"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 950
    .local v2, "leftEPName":Ljava/lang/String;
    const-string v1, "associated_ep_r_device_name"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 952
    .local v6, "rightEPName":Ljava/lang/String;
    const-string v1, "associated_ep_l_device_address"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 954
    .local v3, "leftEPAddress":Ljava/lang/String;
    const-string v1, "associated_ep_r_device_address"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 956
    .local v7, "rightEPAddress":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v16

    .line 957
    .local v16, "leftEPRole":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v1

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v24

    .line 958
    .local v24, "rightEPRole":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointLinkKey(I)Ljava/lang/String;

    move-result-object v15

    .line 959
    .local v15, "leftEPLinkKey":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v1

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointLinkKey(I)Ljava/lang/String;

    move-result-object v23

    .line 960
    .local v23, "rightEPLinkKey":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndpointCommonLinkKey()Ljava/lang/String;

    move-result-object v14

    .line 961
    .local v14, "epLinkKey":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getNewLinkKey()Ljava/lang/String;

    move-result-object v17

    .line 963
    .local v17, "newLinkKey":Ljava/lang/String;
    const-string v12, ":00:00:10:"

    .line 965
    .local v12, "addressAndLinkKeySeperator":Ljava/lang/String;
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_8

    const-string v1, "Request"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    const/4 v1, 0x2

    move/from16 v0, p2

    if-ne v0, v1, :cond_19

    const-string v1, "Request"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 969
    :cond_9
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_f

    .line 970
    if-eqz v23, :cond_e

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 971
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 973
    move-object v14, v15

    .line 1016
    :cond_a
    :goto_5
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_13

    move-object/from16 v4, v16

    .line 1018
    .local v4, "endpointReqRole":Ljava/lang/String;
    :goto_6
    const-string v1, "Primary"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v4, "Primary"

    .line 1024
    :goto_7
    const-string v5, "EPCommunicationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Other ep address("

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_15

    move-object v1, v7

    :goto_8
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ")"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move/from16 v0, p2

    invoke-static {v5, v1, v0, v8, v9}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 1033
    const/4 v1, 0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_16

    .line 1034
    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1040
    :cond_b
    const-string v7, "00:00:00:00:00:00"

    .line 1045
    const-string v12, ":00:00:00:"

    .line 1046
    const-string v14, "00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00"

    move-object/from16 v22, v7

    .line 1048
    .end local v7    # "rightEPAddress":Ljava/lang/String;
    .local v22, "rightEPAddress":Ljava/lang/String;
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v1, p0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->sendChageRoleRequestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .end local v6    # "rightEPName":Ljava/lang/String;
    move-object/from16 v7, v22

    .line 1080
    .end local v22    # "rightEPAddress":Ljava/lang/String;
    .restart local v7    # "rightEPAddress":Ljava/lang/String;
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0, v14}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointLinkKey(ILjava/lang/String;)V

    .line 1086
    monitor-exit p0

    .line 1087
    const/4 v1, 0x1

    goto/16 :goto_4

    .line 978
    .end local v4    # "endpointReqRole":Ljava/lang/String;
    .restart local v6    # "rightEPName":Ljava/lang/String;
    :cond_c
    if-eqz v14, :cond_d

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 979
    :cond_d
    move-object/from16 v14, v17

    .line 980
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndpointCommonLinkKey(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1086
    .end local v2    # "leftEPName":Ljava/lang/String;
    .end local v3    # "leftEPAddress":Ljava/lang/String;
    .end local v6    # "rightEPName":Ljava/lang/String;
    .end local v7    # "rightEPAddress":Ljava/lang/String;
    .end local v12    # "addressAndLinkKeySeperator":Ljava/lang/String;
    .end local v14    # "epLinkKey":Ljava/lang/String;
    .end local v15    # "leftEPLinkKey":Ljava/lang/String;
    .end local v16    # "leftEPRole":Ljava/lang/String;
    .end local v17    # "newLinkKey":Ljava/lang/String;
    .end local v23    # "rightEPLinkKey":Ljava/lang/String;
    .end local v24    # "rightEPRole":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 986
    .restart local v2    # "leftEPName":Ljava/lang/String;
    .restart local v3    # "leftEPAddress":Ljava/lang/String;
    .restart local v6    # "rightEPName":Ljava/lang/String;
    .restart local v7    # "rightEPAddress":Ljava/lang/String;
    .restart local v12    # "addressAndLinkKeySeperator":Ljava/lang/String;
    .restart local v14    # "epLinkKey":Ljava/lang/String;
    .restart local v15    # "leftEPLinkKey":Ljava/lang/String;
    .restart local v16    # "leftEPRole":Ljava/lang/String;
    .restart local v17    # "newLinkKey":Ljava/lang/String;
    .restart local v23    # "rightEPLinkKey":Ljava/lang/String;
    .restart local v24    # "rightEPRole":Ljava/lang/String;
    :cond_e
    move-object v14, v15

    goto/16 :goto_5

    .line 992
    :cond_f
    const/4 v1, 0x2

    move/from16 v0, p2

    if-ne v0, v1, :cond_a

    .line 993
    if-eqz v15, :cond_12

    :try_start_1
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 994
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 996
    move-object/from16 v14, v23

    goto/16 :goto_5

    .line 1001
    :cond_10
    if-eqz v14, :cond_11

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1002
    :cond_11
    move-object/from16 v14, v17

    .line 1003
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndpointCommonLinkKey(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1009
    :cond_12
    move-object/from16 v14, v23

    goto/16 :goto_5

    :cond_13
    move-object/from16 v4, v24

    .line 1016
    goto/16 :goto_6

    .line 1018
    .restart local v4    # "endpointReqRole":Ljava/lang/String;
    :cond_14
    const-string v4, "Secondary"

    goto/16 :goto_7

    :cond_15
    move-object v1, v3

    .line 1024
    goto/16 :goto_8

    .line 1058
    :cond_16
    if-eqz v3, :cond_17

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1061
    :cond_17
    const-string v3, "00:00:00:00:00:00"

    .line 1066
    const-string v12, ":00:00:00:"

    .line 1067
    const-string v14, "00:00:00:00:00:00:00:00:00:00:00:00:00:00:00:00"

    .line 1069
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v5, p0

    move-object v8, v4

    move/from16 v10, p1

    move/from16 v11, p2

    invoke-virtual/range {v5 .. v11}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->sendChageRoleRequestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_a

    .line 1084
    .end local v4    # "endpointReqRole":Ljava/lang/String;
    :cond_19
    const/4 v1, 0x0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    .restart local v4    # "endpointReqRole":Ljava/lang/String;
    :cond_1a
    move-object/from16 v22, v7

    .end local v7    # "rightEPAddress":Ljava/lang/String;
    .restart local v22    # "rightEPAddress":Ljava/lang/String;
    goto/16 :goto_9
.end method

.method public pushFileThroughTFTPZipVersion(II)Z
    .locals 33
    .param p1, "transactionID"    # I
    .param p2, "endpointType"    # I

    .prologue
    .line 1460
    const/16 v26, 0x0

    .line 1463
    .local v26, "sendFileStatus":Z
    const/4 v14, 0x0

    .line 1464
    .local v14, "endpointZipFileName":Ljava/lang/String;
    const/16 v29, 0x1

    move/from16 v0, p2

    move/from16 v1, v29

    if-eq v0, v1, :cond_0

    const/16 v29, 0x2

    move/from16 v0, p2

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    .line 1466
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getLocalFileName(I)Ljava/lang/String;

    move-result-object v14

    .line 1470
    :cond_1
    if-eqz v14, :cond_12

    .line 1471
    const/16 v17, 0x0

    .line 1476
    .local v17, "entryDestination":Ljava/io/File;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1481
    :try_start_1
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v30, Lcom/qualcomm/toq/base/utils/Constants;->EP_TFTP_PATH:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1484
    .local v11, "destZipPath":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1485
    .local v12, "destinationZipFile":Ljava/io/File;
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v12, v0}, Ljava/io/File;->setWritable(Z)Z

    .line 1486
    const/4 v8, 0x0

    .line 1489
    .local v8, "copy":Z
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v29

    if-nez v29, :cond_3

    .line 1490
    const/4 v8, 0x1

    .line 1506
    :cond_2
    :goto_0
    if-nez v8, :cond_6

    .line 1508
    const-string v29, "EPCommunicationController"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Problem in deleting previous firmware file in device "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v31

    aget-object v31, v31, p2

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    const/16 v29, 0x0

    monitor-exit p0

    .line 1655
    .end local v8    # "copy":Z
    .end local v11    # "destZipPath":Ljava/lang/String;
    .end local v12    # "destinationZipFile":Ljava/io/File;
    .end local v17    # "entryDestination":Ljava/io/File;
    :goto_1
    return v29

    .line 1493
    .restart local v8    # "copy":Z
    .restart local v11    # "destZipPath":Ljava/lang/String;
    .restart local v12    # "destinationZipFile":Ljava/io/File;
    .restart local v17    # "entryDestination":Ljava/io/File;
    :cond_3
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_2

    .line 1494
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v29

    if-eqz v29, :cond_4

    .line 1495
    const-string v29, "EPCommunicationController"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Old Zip file path: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", Deletion Success from SD"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    const/4 v8, 0x1

    goto :goto_0

    .line 1500
    :cond_4
    const-string v29, "EPCommunicationController"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Old Zip file path: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", Deletion Failure from SD"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1625
    .end local v8    # "copy":Z
    .end local v11    # "destZipPath":Ljava/lang/String;
    .end local v12    # "destinationZipFile":Ljava/io/File;
    :catchall_0
    move-exception v29

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v29
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1648
    .end local v17    # "entryDestination":Ljava/io/File;
    :catch_0
    move-exception v13

    .line 1649
    .local v13, "e":Ljava/lang/Exception;
    const-string v29, "EPCommunicationController"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Error in pushFileThroughTFTPZipVersion."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 1652
    const/16 v26, 0x0

    .end local v13    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_3
    move/from16 v29, v26

    .line 1655
    goto :goto_1

    .line 1515
    .restart local v8    # "copy":Z
    .restart local v11    # "destZipPath":Ljava/lang/String;
    .restart local v12    # "destinationZipFile":Ljava/io/File;
    .restart local v17    # "entryDestination":Ljava/io/File;
    :cond_6
    :try_start_3
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->mkdirs()Z

    move-result v5

    .line 1517
    .local v5, "bCreateDestDir":Z
    const-string v29, "EPCommunicationController"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " dest folder creation: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v12, v0}, Ljava/io/File;->setWritable(Z)Z

    .line 1521
    const/16 v19, 0x0

    .line 1523
    .local v19, "fileInputStream":Ljava/io/InputStream;
    const/16 v23, 0x0

    .line 1524
    .local v23, "foundFileinCustomFolder":Z
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getCustomsBuildFlag()Z

    move-result v29

    if-eqz v29, :cond_8

    .line 1527
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "/TFTP/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1529
    .local v10, "customPATH":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "custom/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1532
    .local v9, "customFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v29

    if-nez v29, :cond_7

    .line 1533
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->mkdirs()Z

    .line 1540
    :cond_7
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_a

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v29

    const-wide/16 v31, 0x0

    cmp-long v29, v29, v31

    if-lez v29, :cond_a

    .line 1541
    const/16 v23, 0x1

    .line 1543
    new-instance v19, Ljava/io/FileInputStream;

    .end local v19    # "fileInputStream":Ljava/io/InputStream;
    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1544
    .restart local v19    # "fileInputStream":Ljava/io/InputStream;
    const-string v29, "EPCommunicationController"

    const-string v30, "EPMessage:Custom build"

    const/16 v31, 0x1

    const/16 v32, 0x7

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, p2

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 1555
    .end local v9    # "customFile":Ljava/io/File;
    .end local v10    # "customPATH":Ljava/lang/String;
    :cond_8
    :goto_4
    if-nez v23, :cond_9

    .line 1556
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v19

    .line 1559
    const-string v29, "EPCommunicationController"

    const-string v30, "EPMessage:Assets build"

    const/16 v31, 0x1

    const/16 v32, 0x7

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, p2

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 1566
    :cond_9
    const-string v29, "EPCommunicationController"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "destinationZipFile = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1569
    .local v20, "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v29, 0x200

    move/from16 v0, v29

    new-array v7, v0, [B

    .line 1570
    .local v7, "bufffer":[B
    :goto_5
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "bufferSize":I
    if-lez v6, :cond_b

    .line 1571
    const/16 v29, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v7, v1, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_5

    .line 1551
    .end local v6    # "bufferSize":I
    .end local v7    # "bufffer":[B
    .end local v20    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v9    # "customFile":Ljava/io/File;
    .restart local v10    # "customPATH":Ljava/lang/String;
    :cond_a
    const/16 v23, 0x0

    goto :goto_4

    .line 1574
    .end local v9    # "customFile":Ljava/io/File;
    .end local v10    # "customPATH":Ljava/lang/String;
    .restart local v6    # "bufferSize":I
    .restart local v7    # "bufffer":[B
    .restart local v20    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_b
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V

    .line 1575
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V

    .line 1577
    const-string v29, "EPCommunicationController"

    const-string v30, "EPMessage:Copied zip to assets"

    const/16 v31, 0x1

    const/16 v32, 0x7

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move/from16 v2, p2

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 1584
    new-instance v28, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v28

    invoke-direct {v0, v12}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 1585
    .local v28, "zipFile":Ljava/util/zip/ZipFile;
    invoke-virtual/range {v28 .. v28}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v15

    .line 1586
    .local v15, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_c
    invoke-interface {v15}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v29

    if-eqz v29, :cond_f

    .line 1587
    invoke-interface {v15}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/zip/ZipEntry;

    .line 1588
    .local v16, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v22

    .line 1589
    .local v22, "filename":Ljava/lang/String;
    const-string v29, ".BIN"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_c

    .line 1590
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v30, 0x0

    const-string v31, "/"

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "/"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v30, 0x0

    const-string v31, "."

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v31

    move-object/from16 v0, v22

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v30

    aget-object v30, v30, p2

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "."

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1597
    .local v21, "filePath":Ljava/lang/String;
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1601
    .end local v17    # "entryDestination":Ljava/io/File;
    .local v18, "entryDestination":Ljava/io/File;
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_d

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v29

    const-wide/16 v31, 0x0

    cmp-long v29, v29, v31

    if-lez v29, :cond_d

    .line 1603
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 1606
    :cond_d
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->mkdirs()Z

    .line 1607
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v24

    .line 1608
    .local v24, "in":Ljava/io/InputStream;
    new-instance v25, Ljava/io/FileOutputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1609
    .local v25, "out":Ljava/io/OutputStream;
    :goto_6
    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_e

    .line 1610
    const/16 v29, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v7, v1, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_6

    .line 1625
    .end local v24    # "in":Ljava/io/InputStream;
    .end local v25    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v29

    move-object/from16 v17, v18

    .end local v18    # "entryDestination":Ljava/io/File;
    .restart local v17    # "entryDestination":Ljava/io/File;
    goto/16 :goto_2

    .line 1612
    .end local v17    # "entryDestination":Ljava/io/File;
    .restart local v18    # "entryDestination":Ljava/io/File;
    .restart local v24    # "in":Ljava/io/InputStream;
    .restart local v25    # "out":Ljava/io/OutputStream;
    :cond_e
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V

    .line 1613
    invoke-virtual/range {v25 .. v25}, Ljava/io/OutputStream;->close()V

    .line 1614
    const-string v29, "EPCommunicationController"

    const-string v30, "Extracted"

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v17, v18

    .line 1621
    .end local v16    # "entry":Ljava/util/zip/ZipEntry;
    .end local v18    # "entryDestination":Ljava/io/File;
    .end local v21    # "filePath":Ljava/lang/String;
    .end local v22    # "filename":Ljava/lang/String;
    .end local v24    # "in":Ljava/io/InputStream;
    .end local v25    # "out":Ljava/io/OutputStream;
    .restart local v17    # "entryDestination":Ljava/io/File;
    :cond_f
    if-eqz v28, :cond_10

    .line 1622
    :try_start_5
    invoke-virtual/range {v28 .. v28}, Ljava/util/zip/ZipFile;->close()V

    .line 1625
    :cond_10
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1628
    if-eqz v17, :cond_5

    .line 1629
    :try_start_6
    invoke-static/range {p2 .. p2}, Lcom/qualcomm/toq/base/controller/TFTPController;->getTFTPController(I)Lcom/qualcomm/toq/base/controller/TFTPController;

    move-result-object v29

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v30

    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    move/from16 v0, p1

    int-to-byte v0, v0

    move/from16 v32, v0

    invoke-virtual/range {v29 .. v32}, Lcom/qualcomm/toq/base/controller/TFTPController;->sendFile(Ljava/lang/String;Ljava/util/ArrayList;B)Z

    move-result v26

    .line 1635
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    move-result v27

    .line 1637
    .local v27, "status":Z
    if-nez v27, :cond_11

    .line 1638
    const-string v29, "EPCommunicationController"

    const-string v30, "Error in temporary file deletion!!!"

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    :cond_11
    const-string v29, "EPCommunicationController"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Bin File deleted: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1644
    .end local v5    # "bCreateDestDir":Z
    .end local v6    # "bufferSize":I
    .end local v7    # "bufffer":[B
    .end local v8    # "copy":Z
    .end local v11    # "destZipPath":Ljava/lang/String;
    .end local v12    # "destinationZipFile":Ljava/io/File;
    .end local v15    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v17    # "entryDestination":Ljava/io/File;
    .end local v19    # "fileInputStream":Ljava/io/InputStream;
    .end local v20    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v23    # "foundFileinCustomFolder":Z
    .end local v27    # "status":Z
    .end local v28    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_12
    const-string v29, "EPCommunicationController"

    const-string v30, "endpointZipFileName is null"

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_3
.end method

.method public sendChageModeRequestMessage(Ljava/lang/String;II)V
    .locals 8
    .param p1, "requestedMode"    # Ljava/lang/String;
    .param p2, "transactionId"    # I
    .param p3, "endpointType"    # I

    .prologue
    .line 1255
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"mode\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \"phone_addr\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->sLocalBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1260
    .local v4, "jsonChageModeRequest":Ljava/lang/String;
    const/16 v2, 0x13

    const/16 v3, 0x14

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p3

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 1267
    const-string v0, "EPCommunicationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ChangeModeRequestInd] sent changeModeRequestMessage[Operational] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v0, v1, p3, v2, v3}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 1274
    const-string v0, "EPCommunicationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EPMessage:->Sent changeModeRequestMessage[Operational] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x7

    invoke-static {v0, v1, p3, v2, v3}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1287
    .end local v4    # "jsonChageModeRequest":Ljava/lang/String;
    :goto_0
    return-void

    .line 1282
    :catch_0
    move-exception v7

    .line 1283
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "EPCommunicationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in sendChageModeRequestMessage(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendChageRoleRequestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .param p1, "epName"    # Ljava/lang/String;
    .param p2, "epAddress"    # Ljava/lang/String;
    .param p3, "role"    # Ljava/lang/String;
    .param p4, "newLinkKey"    # Ljava/lang/String;
    .param p5, "transactionId"    # I
    .param p6, "endpointType"    # I

    .prologue
    .line 1293
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"name\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \"role\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \"link_key_ep\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1297
    .local v4, "jsonChangeRoleRequest":Ljava/lang/String;
    const/16 v2, 0x13

    const/16 v3, 0x14

    const/4 v5, 0x2

    move-object v0, p0

    move v1, p6

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 1304
    const-string v0, "EPCommunicationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EPMessage:->Sent changeRoleRequest-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x7

    invoke-static {v0, v1, p6, v2, v3}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1316
    .end local v4    # "jsonChangeRoleRequest":Ljava/lang/String;
    :goto_0
    return-void

    .line 1311
    :catch_0
    move-exception v7

    .line 1312
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "EPCommunicationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in sendChageRoleRequestMessage(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendControllerMessageData(IIILjava/lang/Object;II)V
    .locals 6
    .param p1, "endPointType"    # I
    .param p2, "srcAdd"    # I
    .param p3, "destAdd"    # I
    .param p4, "payloadData"    # Ljava/lang/Object;
    .param p5, "messageType"    # I
    .param p6, "transactionId"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 1191
    if-eq p1, v3, :cond_0

    if-ne p1, v2, :cond_5

    .line 1193
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEPDependendentOnPrimaryFlag(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1197
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    .line 1198
    .local v0, "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    if-eqz v0, :cond_2

    .line 1199
    if-ne p1, v3, :cond_3

    invoke-virtual {v0, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    .line 1201
    .local v1, "endpoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    :goto_0
    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_2

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEPDependendentOnPrimaryFlag(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1203
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getDeviceState(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    .line 1205
    const-string v2, "EPCommunicationController"

    const-string v4, "Secondary ear piece is not in CONNECTED state. Just neglect the message."

    invoke-static {v2, v4, p1, v3, v3}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 1249
    .end local v0    # "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    .end local v1    # "endpoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    :cond_2
    :goto_1
    return-void

    .line 1199
    .restart local v0    # "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    :cond_3
    invoke-virtual {v0, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    goto :goto_0

    .line 1221
    .restart local v1    # "endpoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    :cond_4
    const-string v4, "EPCommunicationController"

    const-string v5, "Secondary ear piece is in CONNECTED state with primary."

    invoke-static {v4, v5, p1, v3, v3}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 1238
    if-ne p1, v3, :cond_6

    move p1, v2

    .line 1240
    :goto_2
    const/16 p3, 0x16

    .line 1243
    .end local v0    # "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    .end local v1    # "endpoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    :cond_5
    invoke-super/range {p0 .. p6}, Lcom/qualcomm/toq/base/controller/DefaultController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    goto :goto_1

    .restart local v0    # "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    .restart local v1    # "endpoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    :cond_6
    move p1, v3

    .line 1238
    goto :goto_2
.end method

.method public sendbassBoostRequest(Ljava/lang/String;II)V
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "transactionId"    # I
    .param p3, "endpointType"    # I

    .prologue
    .line 1322
    :try_start_0
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->PBEMode:Ljava/lang/String;

    .line 1323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"bass_boost_mode\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1325
    .local v4, "jsonChangeRoleRequest":Ljava/lang/String;
    const/16 v2, 0x13

    const/16 v3, 0x14

    const/4 v5, 0x6

    move-object v0, p0

    move v1, p3

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 1331
    const-string v0, "EPCommunicationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BassBoost] Sent bassBoostRequest payload = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    const-string v0, "EPCommunicationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EPMessage:->Sent bassBoostRequest-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x7

    invoke-static {v0, v1, p3, v2, v3}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1344
    .end local v4    # "jsonChangeRoleRequest":Ljava/lang/String;
    :goto_0
    return-void

    .line 1340
    :catch_0
    move-exception v7

    .line 1341
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "EPCommunicationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in sendbassBoostRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateRoleRequest(I)V
    .locals 4
    .param p1, "endPointType"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1093
    if-ne p1, v2, :cond_2

    .line 1096
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "associated_ep_r_device_name"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1103
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v0

    const-string v1, "PrimaryPendingRequest"

    invoke-virtual {v0, v2, v1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointRole(ILjava/lang/String;)V

    .line 1152
    :cond_0
    :goto_0
    return-void

    .line 1114
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v0

    const-string v1, "SecondaryPendingRequest"

    invoke-virtual {v0, v3, v1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointRole(ILjava/lang/String;)V

    .line 1117
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v0

    const-string v1, "PrimaryPendingRequest"

    invoke-virtual {v0, v2, v1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointRole(ILjava/lang/String;)V

    goto :goto_0

    .line 1122
    :cond_2
    if-ne p1, v3, :cond_0

    .line 1125
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "associated_ep_l_device_name"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1132
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v0

    const-string v1, "PrimaryPendingRequest"

    invoke-virtual {v0, v3, v1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointRole(ILjava/lang/String;)V

    goto :goto_0

    .line 1143
    :cond_3
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v0

    const-string v1, "SecondaryPendingRequest"

    invoke-virtual {v0, v2, v1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointRole(ILjava/lang/String;)V

    .line 1146
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v0

    const-string v1, "PrimaryPendingRequest"

    invoke-virtual {v0, v3, v1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointRole(ILjava/lang/String;)V

    goto :goto_0
.end method

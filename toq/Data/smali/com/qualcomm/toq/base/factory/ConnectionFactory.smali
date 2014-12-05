.class public Lcom/qualcomm/toq/base/factory/ConnectionFactory;
.super Ljava/lang/Object;
.source "ConnectionFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConnectionFactory"

.field private static mInstance:Lcom/qualcomm/toq/base/factory/ConnectionFactory;


# instance fields
.field private connManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

.field private context:Landroid/content/Context;

.field private epLeftEndPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

.field private epLeftVersionState:I

.field private epRightEndPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

.field private epRightVersionState:I

.field private isEPLeftUpgrade:Z

.field private isEPRightUpgrade:Z

.field private isWDUpgrade:Z

.field private mode:I

.field private transactionID:I

.field private wdEndPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

.field private wdUpgradeFileName:Ljava/lang/String;

.field private wdVersionState:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v1, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->wdVersionState:I

    .line 37
    iput v1, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->epLeftVersionState:I

    .line 38
    iput v1, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->epRightVersionState:I

    .line 39
    iput-boolean v1, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->isWDUpgrade:Z

    .line 40
    iput-boolean v1, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->isEPLeftUpgrade:Z

    .line 41
    iput-boolean v1, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->isEPRightUpgrade:Z

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->wdUpgradeFileName:Ljava/lang/String;

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setAppCurrentMode(I)V

    .line 46
    iput v1, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->transactionID:I

    .line 47
    return-void
.end method

.method public static getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    .locals 2

    .prologue
    .line 50
    const-class v1, Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->mInstance:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-direct {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->mInstance:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    .line 54
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    sget-object v0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->mInstance:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized createTransactionID()I
    .locals 2

    .prologue
    .line 393
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->transactionID:I

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->transactionID:I

    if-nez v0, :cond_1

    .line 394
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->transactionID:I

    .line 399
    :goto_0
    iget v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->transactionID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 397
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->transactionID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->transactionID:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 373
    const-string v1, "final"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finalize:::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->mInstance:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public finalizeConnMgr()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 354
    iget-object v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->connManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    if-eqz v0, :cond_0

    .line 356
    sget-boolean v0, Lcom/qualcomm/toq/base/service/PHubBaseService;->isStopCalledOnUnpair:Z

    if-nez v0, :cond_1

    .line 357
    const-string v0, "PHubBaseService"

    const-string v1, "StopConnectionManagerCalled from onDestroy"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->connManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    invoke-interface {v0}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->stopConnectionManager()V

    .line 364
    :goto_0
    iput-object v2, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->connManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    .line 366
    :cond_0
    iput-object v2, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->wdEndPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    .line 369
    return-void

    .line 362
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/toq/base/service/PHubBaseService;->isStopCalledOnUnpair:Z

    goto :goto_0
.end method

.method public getAppCurrentMode()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->mode:I

    return v0
.end method

.method public getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->connManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 313
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->context:Landroid/content/Context;

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCustomsBuildFlag()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 295
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "app_pref"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 298
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "useCustomsBuild"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 300
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    .locals 1
    .param p1, "endPointType"    # I

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "endPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    packed-switch p1, :pswitch_data_0

    .line 77
    :goto_0
    return-object v0

    .line 68
    :pswitch_0
    iget-object v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->wdEndPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    .line 69
    goto :goto_0

    .line 71
    :pswitch_1
    iget-object v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->epLeftEndPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    .line 72
    goto :goto_0

    .line 74
    :pswitch_2
    iget-object v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->epRightEndPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    goto :goto_0

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getEndPoint(Ljava/lang/String;)Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->wdEndPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->wdEndPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v0}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->wdEndPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v0}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->wdEndPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    .line 336
    :goto_0
    return-object v0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->epLeftEndPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->epLeftEndPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v0}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->epLeftEndPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v0}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->epLeftEndPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    goto :goto_0

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->epRightEndPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->epRightEndPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v0}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->epRightEndPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v0}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    iget-object v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->epRightEndPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    goto :goto_0

    .line 336
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEndPointFirmwareDate(I)Ljava/lang/String;
    .locals 5
    .param p1, "endPointType"    # I

    .prologue
    const/4 v1, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "app_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 161
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ep_firmware_date"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-object v1
.end method

.method public getEndPointFirmwareVersion(I)Ljava/lang/String;
    .locals 5
    .param p1, "endPointType"    # I

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "app_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 124
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ep_firmware_version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-object v1
.end method

.method public getEndPointUpgradeFileName(I)Ljava/lang/String;
    .locals 1
    .param p1, "endPointType"    # I

    .prologue
    .line 266
    const-string v0, ""

    .line 267
    .local v0, "fileName":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 276
    :goto_0
    :pswitch_0
    return-object v0

    .line 269
    :pswitch_1
    iget-object v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->wdUpgradeFileName:Ljava/lang/String;

    .line 270
    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getEndPointUpgradeState(I)Z
    .locals 1
    .param p1, "endPointType"    # I

    .prologue
    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "state":Z
    packed-switch p1, :pswitch_data_0

    .line 242
    :goto_0
    return v0

    .line 233
    :pswitch_0
    iget-boolean v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->isWDUpgrade:Z

    .line 234
    goto :goto_0

    .line 236
    :pswitch_1
    iget-boolean v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->isEPLeftUpgrade:Z

    .line 237
    goto :goto_0

    .line 239
    :pswitch_2
    iget-boolean v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->isEPRightUpgrade:Z

    goto :goto_0

    .line 231
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getEndPointVersionState(I)I
    .locals 1
    .param p1, "endPointType"    # I

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "versionState":I
    packed-switch p1, :pswitch_data_0

    .line 206
    :goto_0
    return v0

    .line 197
    :pswitch_0
    iget v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->wdVersionState:I

    .line 198
    goto :goto_0

    .line 200
    :pswitch_1
    iget v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->epLeftVersionState:I

    .line 201
    goto :goto_0

    .line 203
    :pswitch_2
    iget v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->epRightVersionState:I

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public initiateConnection(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "endPointType"    # I

    .prologue
    .line 341
    iput-object p1, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->context:Landroid/content/Context;

    .line 342
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v0

    if-nez v0, :cond_1

    .line 343
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->initiateConnectionMgr(Landroid/content/Context;I)V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 348
    invoke-static {}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->initiateConnectionMgr(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public setAppCurrentMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 384
    iput p1, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->mode:I

    .line 385
    return-void
.end method

.method public setConnManager(Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;)V
    .locals 0
    .param p1, "connManager"    # Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->connManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    .line 309
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 319
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->context:Landroid/content/Context;

    .line 320
    return-void
.end method

.method public setCustomsBuildFlag(Z)V
    .locals 5
    .param p1, "status"    # Z

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "app_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 288
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 289
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "useCustomsBuild"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 290
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 292
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public setEndPoint(ILcom/qualcomm/toq/base/endpoint/IEndPoint;)V
    .locals 0
    .param p1, "endPointType"    # I
    .param p2, "endPoint"    # Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    .prologue
    .line 81
    packed-switch p1, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iput-object p2, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->wdEndPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    goto :goto_0

    .line 86
    :pswitch_1
    iput-object p2, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->epLeftEndPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    goto :goto_0

    .line 89
    :pswitch_2
    iput-object p2, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->epRightEndPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setEndPointFirmwareDate(ILjava/lang/String;)V
    .locals 5
    .param p1, "endPointType"    # I
    .param p2, "firmwareDate"    # Ljava/lang/String;

    .prologue
    .line 141
    const-string v2, "ConnectionFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEndPointFirmwareDate endPointType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", firmwareDate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "app_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 146
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 147
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 148
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ep_firmware_date"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 154
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public setEndPointFirmwareVersion(ILjava/lang/String;)V
    .locals 5
    .param p1, "endPointType"    # I
    .param p2, "firmwareVersion"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string v2, "ConnectionFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEndPointFirmwareVersion endPointType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", firmwareVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "app_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 108
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 109
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 110
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ep_firmware_version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 117
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public setEndPointUpgradeFileName(ILjava/lang/String;)V
    .locals 0
    .param p1, "endPointType"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 252
    packed-switch p1, :pswitch_data_0

    .line 263
    :goto_0
    :pswitch_0
    return-void

    .line 254
    :pswitch_1
    iput-object p2, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->wdUpgradeFileName:Ljava/lang/String;

    goto :goto_0

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEndPointUpgradeState(IZ)V
    .locals 0
    .param p1, "endPointType"    # I
    .param p2, "state"    # Z

    .prologue
    .line 216
    packed-switch p1, :pswitch_data_0

    .line 227
    :goto_0
    return-void

    .line 218
    :pswitch_0
    iput-boolean p2, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->isWDUpgrade:Z

    goto :goto_0

    .line 221
    :pswitch_1
    iput-boolean p2, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->isEPLeftUpgrade:Z

    goto :goto_0

    .line 224
    :pswitch_2
    iput-boolean p2, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->isEPRightUpgrade:Z

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setEndPointVersionState(II)V
    .locals 2
    .param p1, "endPointType"    # I
    .param p2, "versionState"    # I

    .prologue
    .line 177
    packed-switch p1, :pswitch_data_0

    .line 191
    :goto_0
    return-void

    .line 179
    :pswitch_0
    iput p2, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->wdVersionState:I

    .line 180
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_ALOHA_STATE_CHANGE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "aloha_state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 185
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    iput p2, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->epLeftVersionState:I

    goto :goto_0

    .line 188
    :pswitch_2
    iput p2, p0, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->epRightVersionState:I

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

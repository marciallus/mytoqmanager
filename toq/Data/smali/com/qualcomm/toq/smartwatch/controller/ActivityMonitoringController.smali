.class public Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;
.super Lcom/qualcomm/toq/base/controller/DefaultController;
.source "ActivityMonitoringController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityMonitoringController"

.field public static final appName:Ljava/lang/String; = "ACTIVITY_MONITORING_CONTROLLER"

.field private static mInstance:Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;


# instance fields
.field private activityExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private activityPointsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Lcom/qualcomm/toq/base/controller/DefaultController;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->activityExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 32
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->activityPointsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;

    .line 33
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity_monitoring_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->prefs:Landroid/content/SharedPreferences;

    .line 38
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->activityPointsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;

    if-nez v0, :cond_0

    .line 39
    const-string v0, "ActivityMonitoringController"

    const-string v1, "ActivityPointsDatabaseAdapter open() from ActivityMonitoringController as activityPointsDatabaseAdapter is NULL"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->getActivityPointsDatabaseAdapter(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->activityPointsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;

    .line 42
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->activityPointsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->open()Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;

    .line 43
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->activityPointsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->isDBOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->activityPointsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->close()V

    .line 45
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->activityPointsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->open()Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;

    .line 48
    :cond_0
    return-void
.end method

.method public static getActivityMonitoringController()Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;

    .line 54
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;

    return-object v0
.end method

.method public static setController(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 355
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;

    .line 356
    return-void
.end method


# virtual methods
.method public clearActivityData()V
    .locals 5

    .prologue
    .line 363
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->prefs:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_0

    .line 366
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->getActivityPointsDatabaseAdapter(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->dropDB()V

    .line 368
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->getActivityPointsDatabaseAdapter(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->close()V

    .line 372
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 373
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "activity_final_points"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 374
    const-string v3, "activity_last_received_final_points"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 375
    const-string v3, "activity_reset_diff_points"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 376
    const-string v3, "activity_last_epoc_time"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 377
    const-string v3, "activity_last_received_points"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 378
    const-string v3, "activity_monitoring_offset_points"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 379
    const-string v3, "activity_monitoring_offset_final_points"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 380
    const-string v3, "activity_monitoring_new_key_value"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 381
    const-string v3, "activity_monitoring_key_value"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 382
    const-string v3, "activity_monitoring_ui_value"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 383
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 385
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->sendResetActivityCountReq()V

    .line 387
    const-string v3, "ActivityMonitoringController"

    const-string v4, "Intent send to start HandleMessage Service on clear data"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_SMARTWATCH_HANDLE_MESSAGE_SERVICE:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    .local v2, "intentService":Landroid/content/Intent;
    const-string v3, "condition"

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 394
    const-string v3, "action"

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 396
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "intentService":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "ActivityMonitoringController"

    const-string v4, "Exception in clearData"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public handleConnHandlerMessage(IILjava/lang/Object;II)V
    .locals 18
    .param p1, "appID"    # I
    .param p2, "command"    # I
    .param p3, "payload"    # Ljava/lang/Object;
    .param p4, "transactionId"    # I
    .param p5, "endpointType"    # I

    .prologue
    .line 61
    sparse-switch p2, :sswitch_data_0

    .line 259
    :goto_0
    return-void

    .line 63
    :sswitch_0
    const-string v1, "ActivityMonitoringController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityUpdateReq received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v1, "ActivityMonitoringController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityUpdateReq received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->activityPointsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;

    if-nez v1, :cond_0

    .line 69
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->getActivityPointsDatabaseAdapter(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->activityPointsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;

    :cond_0
    move-object/from16 v16, p3

    .line 72
    check-cast v16, Lorg/json/JSONObject;

    .line 75
    .local v16, "jsonActivityUpdateReq":Lorg/json/JSONObject;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->prefs:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 76
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity_monitoring_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->prefs:Landroid/content/SharedPreferences;

    .line 81
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 83
    .local v9, "activityPrefsEditor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "activity"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 84
    const-string v1, "activity"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 86
    .local v10, "activityRecords":Lorg/json/JSONArray;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 88
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v14, v1, :cond_5

    .line 89
    invoke-virtual {v10, v14}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    .line 90
    .local v8, "activityKeyValue":Lorg/json/JSONObject;
    const-string v1, "ActivityMonitoringController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity Monitoring Key Value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "et"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "p"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    const-string v1, "p"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 96
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->activityPointsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;

    const-string v2, "et"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "p"

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->insertActivitydata(JI)V

    .line 88
    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 100
    :cond_3
    const-string v1, "ActivityMonitoringController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WD sends negative value for epochtime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "et"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "ActivityMonitoringController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WD sends negative value for epochtime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "et"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 245
    .end local v8    # "activityKeyValue":Lorg/json/JSONObject;
    .end local v9    # "activityPrefsEditor":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "activityRecords":Lorg/json/JSONArray;
    .end local v14    # "i":I
    :catch_0
    move-exception v12

    .line 246
    .local v12, "e":Ljava/lang/Exception;
    const-string v1, "ActivityMonitoringController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in ActivityUpdateReq parsing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 249
    const-string v1, "ActivityMonitoringController"

    const-string v2, "Error in ActivityUpdateReq parsing: "

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 111
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v9    # "activityPrefsEditor":Landroid/content/SharedPreferences$Editor;
    .restart local v10    # "activityRecords":Lorg/json/JSONArray;
    :cond_4
    :try_start_1
    const-string v1, "ActivityMonitoringController"

    const-string v2, "ActivityUpdateReq activity key array is null or empty"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .end local v10    # "activityRecords":Lorg/json/JSONArray;
    :cond_5
    :goto_3
    const-string v1, "current-count"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 121
    const-string v1, "current-count"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 122
    .local v11, "currentRunningCount":I
    const-string v1, "ActivityMonitoringController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentRunningCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    if-gez v11, :cond_7

    .line 131
    const-string v1, "ActivityMonitoringController"

    const-string v2, "WD sends negative value discard the message"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v1, "ActivityMonitoringController"

    const-string v2, "WD sends negative value discard the message"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 116
    .end local v11    # "currentRunningCount":I
    :cond_6
    const-string v1, "ActivityMonitoringController"

    const-string v2, "ActivityUpdateReq doesn\'t contain activity key"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 138
    .restart local v11    # "currentRunningCount":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "activity_monitoring_offset_points"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 170
    .local v17, "offsetPoints":I
    add-int v13, v11, v17

    .line 171
    .local v13, "finalPoints":I
    const-string v1, "ActivityMonitoringController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current counter value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v1, "ActivityMonitoringController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Offset Points in Preference= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "CurrentRunningCount from WD= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Final Points = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v1, "activity_final_points"

    invoke-interface {v9, v1, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 183
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 185
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 186
    .local v5, "activityUpdateRespJson":Lorg/json/JSONObject;
    const-string v1, "result"

    const/4 v2, 0x0

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 188
    const-string v1, "description"

    const-string v2, "Updated Activity data successfully"

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    const/4 v2, 0x0

    const/16 v3, 0x1e

    const/16 v4, 0x1f

    const/16 v6, 0x4000

    move-object/from16 v1, p0

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 196
    const-string v1, "ActivityMonitoringController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send success ActivityUpdateResp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v1, "ActivityMonitoringController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send success ActivityUpdateResp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .end local v11    # "currentRunningCount":I
    .end local v13    # "finalPoints":I
    .end local v17    # "offsetPoints":I
    :goto_4
    const-string v1, "ActivityMonitoringController"

    const-string v2, "Intent send to start HandleMessage Service"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v15, Landroid/content/Intent;

    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_SMARTWATCH_HANDLE_MESSAGE_SERVICE:Ljava/lang/String;

    invoke-direct {v15, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .local v15, "intentService":Landroid/content/Intent;
    const-string v1, "condition"

    const/4 v2, 0x6

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 241
    const-string v1, "action"

    const/16 v2, 0x8

    invoke-virtual {v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 204
    .end local v5    # "activityUpdateRespJson":Lorg/json/JSONObject;
    .end local v15    # "intentService":Landroid/content/Intent;
    :cond_8
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 205
    .restart local v5    # "activityUpdateRespJson":Lorg/json/JSONObject;
    const-string v1, "result"

    const/4 v2, 0x1

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 207
    const-string v1, "description"

    const-string v2, "Error: Activity data doesn\'t contain current-count value"

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    const/4 v2, 0x0

    const/16 v3, 0x1e

    const/16 v4, 0x1f

    const/16 v6, 0x4000

    move-object/from16 v1, p0

    move/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 215
    const-string v1, "ActivityMonitoringController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send failure ActivityUpdateResp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v1, "ActivityMonitoringController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send failure ActivityUpdateResp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 255
    .end local v5    # "activityUpdateRespJson":Lorg/json/JSONObject;
    .end local v9    # "activityPrefsEditor":Landroid/content/SharedPreferences$Editor;
    .end local v16    # "jsonActivityUpdateReq":Lorg/json/JSONObject;
    :sswitch_1
    const-string v1, "ActivityMonitoringController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResetActivityCountResp received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 61
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4001 -> :sswitch_1
    .end sparse-switch
.end method

.method public initiateActivityOperation()V
    .locals 8

    .prologue
    .line 309
    const-string v0, "ActivityMonitoringController"

    const-string v1, "initiateActivityOperation() called"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->activityExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->activityExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->activityExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->activityExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 317
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->activityExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 318
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->activityExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController$1;-><init>(Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;)V

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 329
    const-string v0, "ActivityMonitoringController"

    const-string v1, "initiateActivityOperation  activityExecutorService created for 1 hour"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v7

    .line 333
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "ActivityMonitoringController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in initiateActivityOperation(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendActivityUpdateInd()V
    .locals 7

    .prologue
    .line 286
    const-string v0, "ActivityMonitoringController"

    const-string v1, "sendActivityUpdateInd() called"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const/4 v1, 0x0

    const/16 v2, 0x1e

    const/16 v3, 0x1f

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const v5, 0x8000

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 295
    return-void
.end method

.method public sendControllerMessageData(IIILjava/lang/Object;II)V
    .locals 2
    .param p1, "endPointType"    # I
    .param p2, "srcAdd"    # I
    .param p3, "destAdd"    # I
    .param p4, "payloadData"    # Ljava/lang/Object;
    .param p5, "messageType"    # I
    .param p6, "transactionId"    # I

    .prologue
    .line 265
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 267
    invoke-super/range {p0 .. p6}, Lcom/qualcomm/toq/base/controller/DefaultController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 274
    :cond_0
    return-void
.end method

.method public sendResetActivityCountReq()V
    .locals 7

    .prologue
    .line 298
    const-string v0, "ActivityMonitoringController"

    const-string v1, "sendResetActivityCountReq() called"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/4 v1, 0x0

    const/16 v2, 0x1e

    const/16 v3, 0x1f

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x1

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 306
    return-void
.end method

.method public stopActivityOperation()V
    .locals 4

    .prologue
    .line 340
    const-string v1, "ActivityMonitoringController"

    const-string v2, "stopActivityOperation() called"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->activityExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->activityExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->activityExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 345
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->activityExecutorService:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityMonitoringController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in stopActivityOperation(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

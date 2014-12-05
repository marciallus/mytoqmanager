.class public Lcom/qualcomm/toq/smartwatch/service/receiver/PHubTimeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PHubTimeReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PHubTimeReceiver"


# instance fields
.field public counter:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 35
    .local v10, "action":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/qualcomm/toq/base/utils/Constants;->APPLICATION_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".smartwatch.service.receiver.PHubTimeReceiver"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 37
    const-string v4, "PHubTimeReceiver"

    const-string v5, "Intent com.qualcomm.toq.smartwatch.service.receiver.PHubTimeReceiver called."

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 42
    .local v13, "currentDate":Ljava/util/Calendar;
    const-string v4, "PHubTimeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current date = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v4, "PHubTimeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentDate.getHours() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xb

    invoke-virtual {v13, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v4, "PHubTimeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentDate.getMinutes() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xc

    invoke-virtual {v13, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/16 v4, 0xb

    invoke-virtual {v13, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-nez v4, :cond_4

    const/16 v4, 0xc

    invoke-virtual {v13, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-nez v4, :cond_4

    .line 52
    const-string v4, "PHubTimeReceiver"

    const-string v5, "Day Completed and New Day started!"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 55
    .local v7, "jsonTime":Lorg/json/JSONObject;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 56
    .local v16, "currentSysTimeInMilis":J
    const-wide/16 v4, 0x3e8

    div-long v14, v16, v4

    .line 58
    .local v14, "currentSysTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 59
    .local v12, "cal":Ljava/util/Calendar;
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v24

    .line 61
    .local v24, "timeZone":Ljava/util/TimeZone;
    invoke-virtual/range {v24 .. v24}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    div-int/lit16 v0, v4, 0x3e8

    move/from16 v25, v0

    .line 62
    .local v25, "timezoneOffset":I
    const-string v4, "PHubTimeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timezone Offset Raw = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    move-object/from16 v0, v24

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    div-int/lit16 v0, v4, 0x3e8

    move/from16 v26, v0

    .line 65
    .local v26, "timezoneOffsetDST":I
    const-string v4, "PHubTimeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "timezone Offset including daylight savings time  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/16 v19, 0x0

    .line 70
    .local v19, "dayLightSaving":I
    invoke-virtual {v12}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v18

    .line 71
    .local v18, "date":Ljava/util/Date;
    invoke-virtual/range {v24 .. v24}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 72
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 73
    const/16 v19, 0x1

    .line 83
    :goto_0
    :try_start_0
    new-instance v22, Lorg/json/JSONObject;

    invoke-direct/range {v22 .. v22}, Lorg/json/JSONObject;-><init>()V

    .line 84
    .local v22, "jsonInternalTimeData":Lorg/json/JSONObject;
    const-string v4, "epoch_time"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 86
    const-string v4, "dst"

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    const-string v4, "time_zone"

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 90
    const-string v4, "time"

    move-object/from16 v0, v22

    invoke-virtual {v7, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v22    # "jsonInternalTimeData":Lorg/json/JSONObject;
    :goto_1
    const-string v4, "PHubTimeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TimeUpdateInd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 99
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->getPHubService()Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-result-object v3

    .line 100
    .local v3, "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    if-eqz v3, :cond_0

    .line 101
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v4

    invoke-interface {v4}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x6

    const v8, 0x8000

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v9

    invoke-virtual {v9}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v9

    invoke-virtual/range {v3 .. v9}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->sendDataToController(IIILjava/lang/Object;II)V

    .line 113
    .end local v3    # "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 115
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->getAgendaController()Lcom/qualcomm/toq/smartwatch/controller/AgendaController;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 116
    const-string v4, "PHubTimeReceiver"

    const-string v5, "storeUpdateAgendaToFile() called from PHubServiceReceiver"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->getAgendaController()Lcom/qualcomm/toq/smartwatch/controller/AgendaController;

    move-result-object v4

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->storeUpdateAgendaToFile(Landroid/content/Context;)V

    .line 122
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->getCommHubController()Lcom/qualcomm/toq/smartwatch/controller/CommHubController;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 123
    const-string v4, "PHubTimeReceiver"

    const-string v5, "storeCommHubToFile() called from PHubServiceReceiver"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->getCommHubController()Lcom/qualcomm/toq/smartwatch/controller/CommHubController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->storeCommHubToFile()V

    .line 131
    :cond_2
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "activity_monitoring_pref"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 134
    .local v23, "prefs":Landroid/content/SharedPreferences;
    if-eqz v23, :cond_3

    .line 135
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 136
    .local v11, "actvityPrefsEditor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "activity_final_points"

    const/4 v5, 0x0

    invoke-interface {v11, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 140
    new-instance v21, Landroid/content/Intent;

    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_SMARTWATCH_HANDLE_MESSAGE_SERVICE:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v21, "intentService":Landroid/content/Intent;
    const-string v4, "condition"

    const/4 v5, 0x6

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    const-string v4, "action"

    const/4 v5, 0x7

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 157
    .end local v11    # "actvityPrefsEditor":Landroid/content/SharedPreferences$Editor;
    .end local v21    # "intentService":Landroid/content/Intent;
    :cond_3
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->getActivityMonitoringController()Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 158
    const-string v4, "PHubTimeReceiver"

    const-string v5, "sendGetActivityInd() called from PHubTimeReceiver"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v4, "PHubTimeReceiver"

    const-string v5, "sendGetActivityInd() called from PHubTimeReceiver "

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->getActivityMonitoringController()Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->sendActivityUpdateInd()V

    .line 171
    .end local v7    # "jsonTime":Lorg/json/JSONObject;
    .end local v12    # "cal":Ljava/util/Calendar;
    .end local v13    # "currentDate":Ljava/util/Calendar;
    .end local v14    # "currentSysTime":J
    .end local v16    # "currentSysTimeInMilis":J
    .end local v18    # "date":Ljava/util/Date;
    .end local v19    # "dayLightSaving":I
    .end local v23    # "prefs":Landroid/content/SharedPreferences;
    .end local v24    # "timeZone":Ljava/util/TimeZone;
    .end local v25    # "timezoneOffset":I
    .end local v26    # "timezoneOffsetDST":I
    :cond_4
    return-void

    .line 76
    .restart local v7    # "jsonTime":Lorg/json/JSONObject;
    .restart local v12    # "cal":Ljava/util/Calendar;
    .restart local v13    # "currentDate":Ljava/util/Calendar;
    .restart local v14    # "currentSysTime":J
    .restart local v16    # "currentSysTimeInMilis":J
    .restart local v18    # "date":Ljava/util/Date;
    .restart local v19    # "dayLightSaving":I
    .restart local v24    # "timeZone":Ljava/util/TimeZone;
    .restart local v25    # "timezoneOffset":I
    .restart local v26    # "timezoneOffsetDST":I
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 80
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 92
    :catch_0
    move-exception v20

    .line 93
    .local v20, "e":Ljava/lang/Exception;
    const-string v4, "PHubTimeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception ocured in PHubTimeReceiver"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

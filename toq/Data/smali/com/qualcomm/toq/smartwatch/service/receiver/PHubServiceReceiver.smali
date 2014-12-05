.class public Lcom/qualcomm/toq/smartwatch/service/receiver/PHubServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PHubServiceReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PHubServiceReceiver"


# instance fields
.field private final ONE_DAY_IN_SEC:J

.field public counter:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 46
    const-wide/32 v0, 0x15180

    iput-wide v0, p0, Lcom/qualcomm/toq/smartwatch/service/receiver/PHubServiceReceiver;->ONE_DAY_IN_SEC:J

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 78
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    .line 50
    .local v21, "action":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v77

    .line 52
    .local v77, "type":Ljava/lang/String;
    const-string v5, "PHubServiceReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PHubServiceReceiver onReceive() called : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v5, "android.provider.Telephony.SMS_RECEIVED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android.provider.Telephony.SMS_DELIVER"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 56
    :cond_0
    const-string v5, "SMSController"

    const-string v6, "SMS Received"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v24

    .line 60
    .local v24, "bundle":Landroid/os/Bundle;
    new-instance v51, Landroid/content/Intent;

    sget-object v5, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_SMARTWATCH_HANDLE_MESSAGE_SERVICE:Ljava/lang/String;

    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v51, "intentService":Landroid/content/Intent;
    new-instance v58, Landroid/os/Bundle;

    invoke-direct/range {v58 .. v58}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v58, "newBundle":Landroid/os/Bundle;
    const-string v5, "pdus"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object/from16 v54, v5

    check-cast v54, [Ljava/lang/Object;

    .line 64
    .local v54, "messages":[Ljava/lang/Object;
    const-string v5, "PHubServiceReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "messages:::"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    move-object/from16 v0, v54

    array-length v0, v0

    move/from16 v53, v0

    .line 66
    .local v53, "len":I
    const/16 v49, 0x0

    .local v49, "i":I
    :goto_0
    move/from16 v0, v49

    move/from16 v1, v53

    if-ge v0, v1, :cond_1

    .line 67
    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aget-object v5, v54, v49

    check-cast v5, [B

    check-cast v5, [B

    move-object/from16 v0, v58

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 66
    add-int/lit8 v49, v49, 0x1

    goto :goto_0

    .line 70
    :cond_1
    const-string v5, "condition"

    const/4 v6, 0x4

    move-object/from16 v0, v58

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    const-string v5, "messageLength"

    move-object/from16 v0, v58

    move/from16 v1, v53

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    move-object/from16 v0, v51

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 74
    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 457
    .end local v24    # "bundle":Landroid/os/Bundle;
    .end local v49    # "i":I
    .end local v51    # "intentService":Landroid/content/Intent;
    .end local v53    # "len":I
    .end local v54    # "messages":[Ljava/lang/Object;
    .end local v58    # "newBundle":Landroid/os/Bundle;
    :cond_2
    :goto_1
    return-void

    .line 77
    :cond_3
    const-string v5, "android.intent.action.DATE_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "android.intent.action.TIME_SET"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "android.intent.action.TIMEZONE_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 86
    :cond_4
    const-string v5, "android.intent.action.DATE_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 87
    const-string v5, "PHubServiceReceiver"

    const-string v6, "Date Changed"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_5
    :goto_2
    const-string v5, "PHubServiceReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Action Called"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity_monitoring_pref"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v65

    .line 99
    .local v65, "prefs":Landroid/content/SharedPreferences;
    if-eqz v65, :cond_6

    .line 100
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v27

    .line 101
    .local v27, "calander":Ljava/util/Calendar;
    invoke-virtual/range {v27 .. v27}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v34, v5, v9

    .line 102
    .local v34, "currentDate":J
    const-string v5, "activity_current_day_end"

    const-wide/16 v6, 0x0

    move-object/from16 v0, v65

    invoke-interface {v0, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v66

    .line 104
    .local v66, "previousDayEndDate":J
    const-wide/32 v5, 0x15180

    sub-long v68, v66, v5

    .line 105
    .local v68, "previousDayStartDate":J
    cmp-long v5, v34, v68

    if-ltz v5, :cond_c

    cmp-long v5, v34, v66

    if-gez v5, :cond_c

    .line 107
    const-string v5, "PHubServiceReceiver"

    const-string v6, "There is only time change"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .end local v27    # "calander":Ljava/util/Calendar;
    .end local v34    # "currentDate":J
    .end local v66    # "previousDayEndDate":J
    .end local v68    # "previousDayStartDate":J
    :cond_6
    :goto_3
    new-instance v51, Landroid/content/Intent;

    sget-object v5, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_SMARTWATCH_HANDLE_MESSAGE_SERVICE:Ljava/lang/String;

    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .restart local v51    # "intentService":Landroid/content/Intent;
    const-string v5, "condition"

    const/4 v6, 0x6

    move-object/from16 v0, v51

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    const-string v5, "action"

    const/4 v6, 0x7

    move-object/from16 v0, v51

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 133
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->getSMSController()Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->updateSMSReceivedTime()V

    .line 136
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v55

    .line 142
    .local v55, "midnightTime":Ljava/util/Calendar;
    const/16 v5, 0xb

    const/16 v6, 0x18

    move-object/from16 v0, v55

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 143
    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, v55

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 144
    const/16 v5, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v55

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 145
    invoke-virtual/range {v55 .. v55}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v56

    .line 147
    .local v56, "midnightTimeInMillis":J
    const-string v5, "PHubServiceReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Midnight Alarm time set date "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    move-wide/from16 v0, v56

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v5, "PHubServiceReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Midnight Alarm time set date "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    move-wide/from16 v0, v56

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    new-instance v71, Landroid/content/Intent;

    const-class v5, Lcom/qualcomm/toq/smartwatch/service/receiver/PHubTimeReceiver;

    move-object/from16 v0, v71

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v71, "timeReceiverIntent":Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/qualcomm/toq/base/utils/Constants;->APPLICATION_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".smartwatch.service.receiver.PHubTimeReceiver"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v71

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v71

    invoke-static {v0, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v62

    .line 161
    .local v62, "pendingIntent":Landroid/app/PendingIntent;
    const-string v5, "alarm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/AlarmManager;

    .line 162
    .local v22, "alarmManager":Landroid/app/AlarmManager;
    const/4 v5, 0x0

    move-object/from16 v0, v22

    move-wide/from16 v1, v56

    move-object/from16 v3, v62

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 166
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 167
    .local v8, "jsonTime":Lorg/json/JSONObject;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    .line 168
    .local v40, "currentSysTimeInMilis":J
    const-wide/16 v5, 0x3e8

    div-long v38, v40, v5

    .line 170
    .local v38, "currentSysTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v25

    .line 171
    .local v25, "cal":Ljava/util/Calendar;
    invoke-virtual/range {v25 .. v25}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v72

    .line 173
    .local v72, "timeZone":Ljava/util/TimeZone;
    invoke-virtual/range {v72 .. v72}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    div-int/lit16 v0, v5, 0x3e8

    move/from16 v75, v0

    .line 174
    .local v75, "timezoneOffset":I
    const-string v5, "PHubServiceReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timezone Offset Raw = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v75

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    move-object/from16 v0, v72

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    div-int/lit16 v0, v5, 0x3e8

    move/from16 v76, v0

    .line 177
    .local v76, "timezoneOffsetDST":I
    const-string v5, "PHubServiceReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timezone Offset including daylight savings time  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v76

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/16 v44, 0x0

    .line 181
    .local v44, "dayLightSaving":I
    invoke-virtual/range {v25 .. v25}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v42

    .line 182
    .local v42, "date":Ljava/util/Date;
    invoke-virtual/range {v72 .. v72}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 183
    move-object/from16 v0, v72

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 184
    const/16 v44, 0x1

    .line 194
    :goto_4
    :try_start_0
    new-instance v52, Lorg/json/JSONObject;

    invoke-direct/range {v52 .. v52}, Lorg/json/JSONObject;-><init>()V

    .line 195
    .local v52, "jsonInternalTimeData":Lorg/json/JSONObject;
    const-string v5, "epoch_time"

    move-object/from16 v0, v52

    move-wide/from16 v1, v38

    invoke-virtual {v0, v5, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 197
    const-string v5, "dst"

    move-object/from16 v0, v52

    move/from16 v1, v44

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 198
    const-string v5, "time_zone"

    move-object/from16 v0, v52

    move/from16 v1, v75

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 200
    const-string v5, "time"

    move-object/from16 v0, v52

    invoke-virtual {v8, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v52    # "jsonInternalTimeData":Lorg/json/JSONObject;
    :goto_5
    const-string v5, "PHubServiceReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TimeUpdateInd: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 210
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->getPHubService()Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-result-object v4

    .line 211
    .local v4, "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    if-eqz v4, :cond_7

    .line 212
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v5

    invoke-interface {v5}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x6

    const v9, 0x8000

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v10

    invoke-virtual/range {v4 .. v10}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->sendDataToController(IIILjava/lang/Object;II)V

    .line 225
    .end local v4    # "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    :cond_7
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 227
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->getAgendaController()Lcom/qualcomm/toq/smartwatch/controller/AgendaController;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 228
    const-string v5, "PHubServiceReceiver"

    const-string v6, "storeUpdateAgendaToFile() called from PHubServiceReceiver"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->getAgendaController()Lcom/qualcomm/toq/smartwatch/controller/AgendaController;

    move-result-object v5

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->storeUpdateAgendaToFile(Landroid/content/Context;)V

    .line 234
    :cond_8
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 235
    sget v5, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->DEFAULT_EVENTS:I

    if-nez v5, :cond_f

    .line 236
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v5

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->readCalendar(Landroid/content/Context;)V

    .line 246
    :cond_9
    :goto_6
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->getCommHubController()Lcom/qualcomm/toq/smartwatch/controller/CommHubController;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 247
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->getCommHubController()Lcom/qualcomm/toq/smartwatch/controller/CommHubController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->storeCommHubToFile()V

    goto/16 :goto_1

    .line 89
    .end local v8    # "jsonTime":Lorg/json/JSONObject;
    .end local v22    # "alarmManager":Landroid/app/AlarmManager;
    .end local v25    # "cal":Ljava/util/Calendar;
    .end local v38    # "currentSysTime":J
    .end local v40    # "currentSysTimeInMilis":J
    .end local v42    # "date":Ljava/util/Date;
    .end local v44    # "dayLightSaving":I
    .end local v51    # "intentService":Landroid/content/Intent;
    .end local v55    # "midnightTime":Ljava/util/Calendar;
    .end local v56    # "midnightTimeInMillis":J
    .end local v62    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v65    # "prefs":Landroid/content/SharedPreferences;
    .end local v71    # "timeReceiverIntent":Landroid/content/Intent;
    .end local v72    # "timeZone":Ljava/util/TimeZone;
    .end local v75    # "timezoneOffset":I
    .end local v76    # "timezoneOffsetDST":I
    :cond_a
    const-string v5, "android.intent.action.TIME_SET"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 90
    const-string v5, "PHubServiceReceiver"

    const-string v6, "Time Changed"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 92
    :cond_b
    const-string v5, "android.intent.action.TIMEZONE_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 93
    const-string v5, "PHubServiceReceiver"

    const-string v6, "Timezone Changed"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 110
    .restart local v27    # "calander":Ljava/util/Calendar;
    .restart local v34    # "currentDate":J
    .restart local v65    # "prefs":Landroid/content/SharedPreferences;
    .restart local v66    # "previousDayEndDate":J
    .restart local v68    # "previousDayStartDate":J
    :cond_c
    const-string v5, "PHubServiceReceiver"

    const-string v6, "Date got changed.Resetting initial progress to 0"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-interface/range {v65 .. v65}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v48

    .line 116
    .local v48, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getCurrentDayEndTimeInSec()J

    move-result-wide v36

    .line 118
    .local v36, "currentDayEndTime":J
    const-string v5, "activity_current_day_end"

    move-object/from16 v0, v48

    move-wide/from16 v1, v36

    invoke-interface {v0, v5, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface/range {v48 .. v48}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_3

    .line 187
    .end local v27    # "calander":Ljava/util/Calendar;
    .end local v34    # "currentDate":J
    .end local v36    # "currentDayEndTime":J
    .end local v48    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v66    # "previousDayEndDate":J
    .end local v68    # "previousDayStartDate":J
    .restart local v8    # "jsonTime":Lorg/json/JSONObject;
    .restart local v22    # "alarmManager":Landroid/app/AlarmManager;
    .restart local v25    # "cal":Ljava/util/Calendar;
    .restart local v38    # "currentSysTime":J
    .restart local v40    # "currentSysTimeInMilis":J
    .restart local v42    # "date":Ljava/util/Date;
    .restart local v44    # "dayLightSaving":I
    .restart local v51    # "intentService":Landroid/content/Intent;
    .restart local v55    # "midnightTime":Ljava/util/Calendar;
    .restart local v56    # "midnightTimeInMillis":J
    .restart local v62    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v71    # "timeReceiverIntent":Landroid/content/Intent;
    .restart local v72    # "timeZone":Ljava/util/TimeZone;
    .restart local v75    # "timezoneOffset":I
    .restart local v76    # "timezoneOffsetDST":I
    :cond_d
    const/16 v44, 0x0

    goto/16 :goto_4

    .line 191
    :cond_e
    const/16 v44, 0x0

    goto/16 :goto_4

    .line 202
    :catch_0
    move-exception v47

    .line 203
    .local v47, "e":Ljava/lang/Exception;
    const-string v5, "PHubServiceReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception ocured in either date, time or timezone changed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v47

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 240
    .end local v47    # "e":Ljava/lang/Exception;
    :cond_f
    sget v5, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->DEFAULT_EVENTS:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    .line 241
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v5

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->readCalendarVer2(Landroid/content/Context;)V

    goto/16 :goto_6

    .line 252
    .end local v8    # "jsonTime":Lorg/json/JSONObject;
    .end local v22    # "alarmManager":Landroid/app/AlarmManager;
    .end local v25    # "cal":Ljava/util/Calendar;
    .end local v38    # "currentSysTime":J
    .end local v40    # "currentSysTimeInMilis":J
    .end local v42    # "date":Ljava/util/Date;
    .end local v44    # "dayLightSaving":I
    .end local v51    # "intentService":Landroid/content/Intent;
    .end local v55    # "midnightTime":Ljava/util/Calendar;
    .end local v56    # "midnightTimeInMillis":J
    .end local v62    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v65    # "prefs":Landroid/content/SharedPreferences;
    .end local v71    # "timeReceiverIntent":Landroid/content/Intent;
    .end local v72    # "timeZone":Ljava/util/TimeZone;
    .end local v75    # "timezoneOffset":I
    .end local v76    # "timezoneOffsetDST":I
    :cond_10
    const-string v5, "android.intent.action.NEW_OUTGOING_CALL"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 254
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v24

    .line 256
    .restart local v24    # "bundle":Landroid/os/Bundle;
    const-string v5, "android.intent.extra.PHONE_NUMBER"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    .line 258
    .local v63, "phoneNumber":Ljava/lang/String;
    if-eqz v63, :cond_2

    .line 260
    invoke-static/range {v63 .. v63}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    .line 261
    const-string v5, "PHubServiceReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_NEW_OUTGOING_CALL:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v63

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-static/range {p1 .. p1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getPhoneStateListener(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-result-object v64

    .line 264
    .local v64, "phoneStateListener":Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;
    invoke-virtual/range {v64 .. v64}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCurrentState()I

    move-result v5

    if-nez v5, :cond_11

    .line 265
    const/4 v5, 0x1

    move-object/from16 v0, v64

    invoke-virtual {v0, v5}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->setOutgoingActive(Z)V

    .line 267
    :cond_11
    move-object/from16 v0, v64

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->setCallerNumber(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 301
    .end local v24    # "bundle":Landroid/os/Bundle;
    .end local v63    # "phoneNumber":Ljava/lang/String;
    .end local v64    # "phoneStateListener":Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;
    :cond_12
    const-string v5, "android.media.RINGER_MODE_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string v5, "android.media.VIBRATE_SETTING_CHANGED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 303
    :cond_13
    const-string v5, "PHubServiceReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received action =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " RINGER or VIBRATE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v5, "audio"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/media/AudioManager;

    .line 307
    .local v23, "am":Landroid/media/AudioManager;
    const/16 v70, 0x0

    .line 309
    .local v70, "silence_mode":I
    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_14

    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-nez v5, :cond_15

    .line 311
    :cond_14
    const/16 v70, 0x1

    .line 314
    :cond_15
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 316
    .local v13, "jsonRingerStateData":Lorg/json/JSONObject;
    :try_start_1
    const-string v5, "silence_mode"

    move/from16 v0, v70

    invoke-virtual {v13, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 321
    :goto_7
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 323
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->getPHubService()Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-result-object v4

    .line 324
    .restart local v4    # "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    if-eqz v4, :cond_2

    .line 325
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v5

    invoke-interface {v5}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v10

    const/4 v11, 0x5

    const/4 v12, 0x6

    const v14, 0x8001

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v15

    move-object v9, v4

    invoke-virtual/range {v9 .. v15}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->sendDataToController(IIILjava/lang/Object;II)V

    .line 334
    const-string v5, "PHubServiceReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SilencePhoneInd: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 338
    .end local v4    # "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    .end local v13    # "jsonRingerStateData":Lorg/json/JSONObject;
    .end local v23    # "am":Landroid/media/AudioManager;
    .end local v70    # "silence_mode":I
    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/qualcomm/toq/base/utils/Constants;->APPLICATION_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".smartwatch.calendarcontroller.popup"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 341
    :try_start_2
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v5

    if-eqz v5, :cond_17

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarObject()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_17

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarObject()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 347
    :cond_17
    const-string v5, "PopUpController"

    const-string v6, "CalendarController: nextCalendarEventObectsForPopup is null or empty"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 438
    :catch_1
    move-exception v47

    .line 439
    .restart local v47    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v47 .. v47}, Ljava/lang/Exception;->printStackTrace()V

    .line 440
    const-string v5, "PopUpController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in CalendarController: com.qualcomm.toq.smartwatch.calendarcontroller.popup :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 352
    .end local v47    # "e":Ljava/lang/Exception;
    :cond_18
    :try_start_3
    sget v5, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->DEFAULT_EVENTS:I

    if-nez v5, :cond_1a

    .line 353
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v28

    .line 354
    .local v28, "calendar":Ljava/util/Calendar;
    invoke-virtual/range {v28 .. v28}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v73

    .line 355
    .local v73, "timeinMilli":J
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_19

    .line 358
    const-string v5, "occurenceTime"

    const-wide/32 v6, 0x12d4cd

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v45

    .line 360
    .local v45, "dummyTime":J
    const-string v5, "occurenceTime"

    move-object/from16 v0, p2

    move-wide/from16 v1, v73

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v60

    .line 362
    .local v60, "occurnaceTime":J
    const-string v5, "PHubServiceReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v73

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Scheduleed Time= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v60

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Dummy Time "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v45

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    sub-long v5, v73, v60

    const-wide/16 v9, 0x3a98

    cmp-long v5, v5, v9

    if-gtz v5, :cond_2

    .line 369
    .end local v45    # "dummyTime":J
    .end local v60    # "occurnaceTime":J
    :cond_19
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->updateState()V

    .line 372
    .end local v28    # "calendar":Ljava/util/Calendar;
    .end local v73    # "timeinMilli":J
    :cond_1a
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarObject()Ljava/util/List;

    move-result-object v26

    .line 374
    .local v26, "calEventObjs":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;>;"
    monitor-enter v26
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 375
    :try_start_4
    const-string v5, "CalendarController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Size of the nextCalendarEventObectsForPopup calendar event List: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v29

    .line 380
    .local v29, "calendar1":Ljava/util/Calendar;
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v50

    .local v50, "i$":Ljava/util/Iterator;
    :cond_1b
    :goto_8
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;

    .line 381
    .local v59, "obj":Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;
    invoke-virtual/range {v59 .. v59}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventTitle()Ljava/lang/String;

    move-result-object v33

    .line 382
    .local v33, "calendarEventTitle":Ljava/lang/String;
    invoke-virtual/range {v59 .. v59}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventLocation()Ljava/lang/String;

    move-result-object v31

    .line 383
    .local v31, "calendarEventLocation":Ljava/lang/String;
    invoke-virtual/range {v59 .. v59}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventDescription()Ljava/lang/String;

    move-result-object v30

    .line 384
    .local v30, "calendarEventDescription":Ljava/lang/String;
    sget v5, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->DEFAULT_EVENTS:I

    if-nez v5, :cond_1c

    .line 385
    invoke-virtual/range {v29 .. v29}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual/range {v59 .. v59}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getReminderTime()J

    move-result-wide v9

    sub-long/2addr v5, v9

    const-wide/16 v9, 0x3a98

    cmp-long v5, v5, v9

    if-gtz v5, :cond_1b

    .line 390
    :cond_1c
    new-instance v43, Ljava/text/SimpleDateFormat;

    const-string v5, "h:mmaa"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v43

    invoke-direct {v0, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 393
    .local v43, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v59 .. v59}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventStartDate()Ljava/util/Date;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v59 .. v59}, Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;->getEventEndDate()Ljava/util/Date;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 398
    .local v32, "calendarEventTime":Ljava/lang/String;
    const-string v5, "PHubServiceReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Getting details for title: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->getPopUpController()Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    move-result-object v5

    if-eqz v5, :cond_1b

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v5

    if-eqz v5, :cond_1b

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v5

    if-eqz v5, :cond_1b

    .line 409
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1b

    .line 412
    const-string v5, "PHubServiceReceiver"

    const-string v6, "CreatePopUp for Calendar Event called"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v5, "PHubService"

    const-string v6, "Sending Calendar Pop Up Event to WD"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->getPopUpController()Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    move-result-object v14

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v5

    invoke-interface {v5}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v15

    const/16 v16, 0x7

    const/16 v17, 0x8

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    move-object/from16 v2, v30

    invoke-virtual {v5, v0, v1, v6, v2}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->createPopUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    const/16 v19, 0xa

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v20

    invoke-virtual/range {v14 .. v20}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    goto/16 :goto_8

    .line 436
    .end local v29    # "calendar1":Ljava/util/Calendar;
    .end local v30    # "calendarEventDescription":Ljava/lang/String;
    .end local v31    # "calendarEventLocation":Ljava/lang/String;
    .end local v32    # "calendarEventTime":Ljava/lang/String;
    .end local v33    # "calendarEventTitle":Ljava/lang/String;
    .end local v43    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v50    # "i$":Ljava/util/Iterator;
    .end local v59    # "obj":Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;
    :catchall_0
    move-exception v5

    monitor-exit v26
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 435
    .restart local v29    # "calendar1":Ljava/util/Calendar;
    .restart local v50    # "i$":Ljava/util/Iterator;
    :cond_1d
    :try_start_6
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->clear()V

    .line 436
    monitor-exit v26
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 445
    .end local v26    # "calEventObjs":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/utils/CalendarEventObject;>;"
    .end local v29    # "calendar1":Ljava/util/Calendar;
    .end local v50    # "i$":Ljava/util/Iterator;
    :cond_1e
    const-string v5, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "application/vnd.wap.mms-message"

    move-object/from16 v0, v77

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 447
    const-string v5, "PHubServiceReceiver"

    const-string v6, "MMS Received"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    new-instance v51, Landroid/content/Intent;

    sget-object v5, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_SMARTWATCH_HANDLE_MESSAGE_SERVICE:Ljava/lang/String;

    move-object/from16 v0, v51

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 450
    .restart local v51    # "intentService":Landroid/content/Intent;
    new-instance v58, Landroid/os/Bundle;

    invoke-direct/range {v58 .. v58}, Landroid/os/Bundle;-><init>()V

    .line 451
    .restart local v58    # "newBundle":Landroid/os/Bundle;
    const-string v5, "condition"

    const/4 v6, 0x5

    move-object/from16 v0, v58

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 453
    const-string v5, "messageLength"

    const/4 v6, 0x0

    move-object/from16 v0, v58

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 454
    move-object/from16 v0, v51

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 455
    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 319
    .end local v51    # "intentService":Landroid/content/Intent;
    .end local v58    # "newBundle":Landroid/os/Bundle;
    .restart local v13    # "jsonRingerStateData":Lorg/json/JSONObject;
    .restart local v23    # "am":Landroid/media/AudioManager;
    .restart local v70    # "silence_mode":I
    :catch_2
    move-exception v5

    goto/16 :goto_7
.end method

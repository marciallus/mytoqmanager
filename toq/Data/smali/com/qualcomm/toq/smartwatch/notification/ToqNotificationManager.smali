.class public Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;
.super Ljava/lang/Object;
.source "ToqNotificationManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ToqNotificationManager"

.field private static inst:Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;
    .locals 2

    .prologue
    .line 25
    const-class v1, Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;->inst:Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;->inst:Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;

    .line 29
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;->inst:Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public isToqNotificationVisible(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "intentAction"    # Ljava/lang/String;
    .param p2, "notificationId"    # I

    .prologue
    .line 125
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 127
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v1, "notificationIntent":Landroid/content/Intent;
    const-string v3, "com.qualcomm.toq.smartwatch.ui.receiver.ToqNotificationReceiver"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const/high16 v3, 0x20000000

    invoke-static {v0, p2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 136
    .local v2, "notificationPI":Landroid/app/PendingIntent;
    const-string v3, "ToqNotificationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Pending intent for action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public showWatchBTDisconnectNotification()V
    .locals 15

    .prologue
    .line 39
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    .line 43
    .local v8, "context":Landroid/content/Context;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "app_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 46
    .local v13, "prefs":Landroid/content/SharedPreferences;
    const/4 v10, 0x0

    .line 47
    .local v10, "isFirstTimeAppLaunch":Z
    if-eqz v13, :cond_0

    .line 48
    const-string v1, "firstTime"

    const/4 v2, 0x1

    invoke-interface {v13, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 51
    :cond_0
    const/16 v11, 0xa

    .line 53
    .local v11, "notificationId":I
    const-string v12, "notification_id_key"

    .line 59
    .local v12, "notificationIdKey":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isWDBonded()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v10, :cond_1

    .line 63
    new-instance v0, Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;

    invoke-direct {v0, v8}, Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;-><init>(Landroid/content/Context;)V

    .line 65
    .local v0, "watchDisconnectNotificationBuilder":Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;
    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 70
    .local v14, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0a025c

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v4, 0x7f020139

    const/4 v5, 0x0

    const v6, 0x7f0a025d

    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0a0006

    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;->initToqNotificationBuilder(Ljava/lang/CharSequence;JIZLjava/lang/String;Ljava/lang/String;)V

    .line 80
    const v1, -0xff0100

    const/16 v2, 0x12c

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 86
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.qualcomm.toq.smartwatch.action.TOQ_NOTIFICATION_ON_CLICK"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v9, "intent":Landroid/content/Intent;
    const-string v1, "com.qualcomm.toq.smartwatch.ui.receiver.ToqNotificationReceiver"

    invoke-virtual {v9, v8, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {v9, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v9, v11, v1}, Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;->setContentBroadcastIntent(Landroid/content/Intent;II)V

    .line 99
    new-instance v9, Landroid/content/Intent;

    .end local v9    # "intent":Landroid/content/Intent;
    const-string v1, "com.qualcomm.toq.smartwatch.action.TOQ_NOTIFICATION_ON_DELETE"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string v1, "com.qualcomm.toq.smartwatch.ui.receiver.ToqNotificationReceiver"

    invoke-virtual {v9, v8, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {v9, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v9, v11, v1}, Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;->setDeleteBroadcastIntent(Landroid/content/Intent;II)V

    .line 108
    invoke-virtual {v0, v11}, Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;->notifyToqNotification(I)V

    .line 112
    .end local v0    # "watchDisconnectNotificationBuilder":Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v14    # "resources":Landroid/content/res/Resources;
    :cond_1
    return-void
.end method

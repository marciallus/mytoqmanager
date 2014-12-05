.class public Lcom/qualcomm/toq/smartwatch/ui/receiver/ToqNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ToqNotificationReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ToqNotificationReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "action":Ljava/lang/String;
    const-string v4, "ToqNotificationReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ToqNotificationReceiver : onReceive called ******* action received : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v4, "notification_id_key"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 31
    .local v3, "notificationId":I
    invoke-static {p1, v3, p2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/PendingIntent;->cancel()V

    .line 33
    const-string v4, "com.qualcomm.toq.smartwatch.action.TOQ_NOTIFICATION_ON_CLICK"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 35
    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 38
    new-instance v2, Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;-><init>(Landroid/content/Context;)V

    .line 39
    .local v2, "notificationBuilder":Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;
    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;->cancelToqNotification(I)V

    .line 42
    const/4 v2, 0x0

    .line 45
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 47
    .local v1, "activityLauncherIntent":Landroid/content/Intent;
    const-string v4, "com.qualcomm.toq.smartwatch.ui.activity.MainActivity"

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const/high16 v4, 0x14000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 51
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 59
    .end local v1    # "activityLauncherIntent":Landroid/content/Intent;
    .end local v2    # "notificationBuilder":Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string v4, "com.qualcomm.toq.smartwatch.action.TOQ_NOTIFICATION_ON_DELETE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0
.end method

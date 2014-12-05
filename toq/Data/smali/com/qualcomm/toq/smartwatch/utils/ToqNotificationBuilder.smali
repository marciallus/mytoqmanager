.class public Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;
.super Landroid/support/v4/app/NotificationCompat$Builder;
.source "ToqNotificationBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ToqNotificationBuilder"


# instance fields
.field private context:Landroid/content/Context;

.field private toqBuilderNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;->context:Landroid/content/Context;

    .line 25
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;->toqBuilderNotificationManager:Landroid/app/NotificationManager;

    .line 26
    return-void
.end method


# virtual methods
.method public cancelToqNotification(I)V
    .locals 1
    .param p1, "notifyId"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;->toqBuilderNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;->toqBuilderNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 109
    :cond_0
    return-void
.end method

.method public initToqNotificationBuilder(Ljava/lang/CharSequence;JIZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tickerText"    # Ljava/lang/CharSequence;
    .param p2, "notifyTime"    # J
    .param p4, "smallIconId"    # I
    .param p5, "isAutoCancellable"    # Z
    .param p6, "contentText"    # Ljava/lang/String;
    .param p7, "contentTitle"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 51
    invoke-virtual {p0, p2, p3}, Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 52
    invoke-virtual {p0, p4}, Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 53
    invoke-virtual {p0, p5}, Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 54
    invoke-virtual {p0, p6}, Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 55
    invoke-virtual {p0, p7}, Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 56
    return-void
.end method

.method public notifyToqNotification(I)V
    .locals 2
    .param p1, "notifyId"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;->toqBuilderNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;->toqBuilderNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 97
    :cond_0
    return-void
.end method

.method public setActivityLauncherIntent(Landroid/content/Intent;II)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "pendingIntentFlags"    # I

    .prologue
    .line 77
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;->context:Landroid/content/Context;

    invoke-static {v1, p2, p1, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 81
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 85
    :cond_0
    return-void
.end method

.method public setContentBroadcastIntent(Landroid/content/Intent;II)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "pendingIntentFlags"    # I

    .prologue
    .line 125
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;->context:Landroid/content/Context;

    invoke-static {v1, p2, p1, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 129
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 137
    :goto_0
    return-void

    .line 133
    :cond_0
    const-string v1, "ToqNotificationBuilder"

    const-string v2, "Pending Intent for content is null because of flag set is PendingIntent.FLAG_NO_CREATE "

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDeleteBroadcastIntent(Landroid/content/Intent;II)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "pendingIntentFlags"    # I

    .prologue
    .line 153
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;->context:Landroid/content/Context;

    invoke-static {v1, p2, p1, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 157
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/utils/ToqNotificationBuilder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 165
    :goto_0
    return-void

    .line 161
    :cond_0
    const-string v1, "ToqNotificationBuilder"

    const-string v2, "Pending Intent for delete is null because of flag set is PendingIntent.FLAG_NO_CREATE "

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .param p1, "argb"    # I
    .param p2, "onMs"    # I
    .param p3, "offMs"    # I

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

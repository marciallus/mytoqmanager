.class public Lcom/qualcomm/toq/smartwatch/service/PHubNotificationListenerService;
.super Landroid/service/notification/NotificationListenerService;
.source "PHubNotificationListenerService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method

.method private getCurrentPackageNames()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/service/PHubNotificationListenerService;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 110
    .local v0, "current":[Landroid/service/notification/StatusBarNotification;
    if-nez v0, :cond_0

    .line 111
    const/4 v4, 0x0

    .line 126
    :goto_0
    return-object v4

    .line 114
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 116
    .local v1, "currentList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 118
    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 121
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 126
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 32
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    .line 33
    const-string v0, "NotificationHandler"

    const-string v1, "PHubNotificationListenerService.onCreate"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 6
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    const-string v3, "NotificationHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PHubNotificationListenerService.onNotificationPosted ignoring, spurious sbn with no package, sbn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 55
    .local v1, "notification":Landroid/app/Notification;
    if-nez v1, :cond_1

    .line 56
    const-string v3, "NotificationHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PHubNotificationListenerService.onNotificationPosted ignoring, notification is null, package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_1
    const-string v0, ""

    .line 63
    .local v0, "defaultText":Ljava/lang/String;
    iget-object v3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 64
    iget-object v3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "^\\[|\\]$"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_2
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->getInstance()Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    move-result-object v3

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/service/PHubNotificationListenerService;->getCurrentPackageNames()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->onAndroidNotificationPosted(Ljava/lang/String;Ljava/lang/String;Landroid/app/Notification;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    const-string v2, "NotificationHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHubNotificationListenerService.onNotificationRemoved ignoring, spurious sbn with no package, sbn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 90
    .local v0, "notification":Landroid/app/Notification;
    if-nez v0, :cond_1

    .line 91
    const-string v2, "NotificationHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PHubNotificationListenerService.onNotificationRemoved ignoring, notification is null, package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->getInstance()Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    move-result-object v2

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/service/PHubNotificationListenerService;->getCurrentPackageNames()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->onAndroidNotificationRemoved(Ljava/lang/String;Landroid/app/Notification;[Ljava/lang/String;)V

    goto :goto_0
.end method

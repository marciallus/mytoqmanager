.class public final Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynNotificationReceiver;
.super Ljava/lang/Object;
.source "AllJoynNotificationReceiver.java"

# interfaces
.implements Lorg/alljoyn/ns/NotificationReceiver;


# static fields
.field public static final APP_NAME:Ljava/lang/String; = "AllJoyn"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.qualcomm.qce.alljoyn"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "AllJoynNotificationReceiver"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynNotificationReceiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dismiss(ILjava/util/UUID;)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Ljava/util/UUID;

    .prologue
    .line 78
    return-void
.end method

.method public receive(Lorg/alljoyn/ns/Notification;)V
    .locals 12
    .param p1, "notification"    # Lorg/alljoyn/ns/Notification;

    .prologue
    .line 37
    const-string v0, "AllJoynNotificationReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Notification - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/alljoyn/ns/Notification;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :try_start_0
    invoke-virtual {p1}, Lorg/alljoyn/ns/Notification;->getText()Ljava/util/List;

    move-result-object v11

    .line 43
    .local v11, "textList":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ns/NotificationText;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 44
    const-string v0, "AllJoyn"

    const-string v1, "AllJoynNotificationReceiver.receive - received AllJoyn notification with no text, do nothing"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .end local v11    # "textList":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ns/NotificationText;>;"
    :goto_0
    return-void

    .line 48
    .restart local v11    # "textList":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ns/NotificationText;>;"
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v8, "messageText":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/alljoyn/ns/NotificationText;>;"
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/alljoyn/ns/NotificationText;

    .line 53
    .local v9, "notificationText":Lorg/alljoyn/ns/NotificationText;
    invoke-virtual {v9}, Lorg/alljoyn/ns/NotificationText;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {v9}, Lorg/alljoyn/ns/NotificationText;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 68
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/alljoyn/ns/NotificationText;>;"
    .end local v8    # "messageText":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "notificationText":Lorg/alljoyn/ns/NotificationText;
    .end local v11    # "textList":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ns/NotificationText;>;"
    :catch_0
    move-exception v6

    .line 69
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "AllJoyn"

    const-string v1, "AllJoynNotificationReceiver.receive - an error occurred processing the AllJoyn notification"

    invoke-static {v0, v1, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 59
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/alljoyn/ns/NotificationText;>;"
    .restart local v8    # "messageText":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "textList":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ns/NotificationText;>;"
    :cond_2
    :try_start_1
    const-string v4, ""

    .line 61
    .local v4, "titleText":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 64
    .local v5, "message":[Ljava/lang/String;
    const-string v0, "com.qualcomm.qce.alljoyn"

    invoke-virtual {p1}, Lorg/alljoyn/ns/Notification;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static/range {v0 .. v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getAllJoynNotificationInstance(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;

    move-result-object v10

    .line 65
    .local v10, "notifyCard":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->getAppMessagingController()Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;

    move-result-object v0

    const-string v1, "com.qualcomm.qce.alljoyn"

    const-string v2, "AllJoyn"

    invoke-virtual {v0, v1, v2, v10}, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->showNotificationPopup(Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

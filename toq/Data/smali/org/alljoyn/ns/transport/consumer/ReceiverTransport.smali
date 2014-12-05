.class public Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;
.super Ljava/lang/Object;
.source "ReceiverTransport.java"

# interfaces
.implements Lorg/alljoyn/services/common/AnnouncementHandler;


# static fields
.field private static final DISMISSER_MATCH_RULE:Ljava/lang/String; = "type=\'signal\',interface=\'org.alljoyn.Notification.Dismisser\'"

.field private static final DISMISS_SIGNAL_NAME:Ljava/lang/String; = "dismiss"

.field private static final NOTIF_SIGNAL_NAME:Ljava/lang/String; = "notify"

.field private static final NOTIF_TRANS_MATCH_RULE:Ljava/lang/String; = "type=\'signal\',interface=\'org.alljoyn.Notification\'"

.field private static final SUPER_AGENT_MATCH_RULE:Ljava/lang/String; = "type=\'signal\',interface=\'org.alljoyn.Notification.Superagent\'"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private dismissSignalHandler:Lorg/alljoyn/ns/transport/consumer/DismissConsumer;

.field private fromProducerChannel:Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;

.field private fromSuperAgentChannel:Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;

.field private isNeedSearchSA:Z

.field private isSuperAgentFound:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

.field private notificationReceiver:Lorg/alljoyn/ns/NotificationReceiver;

.field private stopReceiving:Z

.field private superAgentSenderName:Ljava/lang/String;

.field private superAgentSpecificRule:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ioe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/alljoyn/ns/commons/NativePlatform;Lorg/alljoyn/ns/NotificationReceiver;)V
    .locals 1
    .param p1, "nativePlatform"    # Lorg/alljoyn/ns/commons/NativePlatform;
    .param p2, "receiver"    # Lorg/alljoyn/ns/NotificationReceiver;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->isNeedSearchSA:Z

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->stopReceiving:Z

    .line 134
    iput-object p2, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->notificationReceiver:Lorg/alljoyn/ns/NotificationReceiver;

    .line 135
    iput-object p1, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;)Lorg/alljoyn/ns/NotificationReceiver;
    .locals 1
    .param p0, "x0"    # Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->notificationReceiver:Lorg/alljoyn/ns/NotificationReceiver;

    return-object v0
.end method

.method private addMatchRule(Ljava/lang/String;)V
    .locals 6
    .param p1, "rule"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 536
    iget-object v3, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v3}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v1

    .line 537
    .local v1, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    sget-object v3, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call AddMatch rule: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-static {}, Lorg/alljoyn/ns/transport/Transport;->getInstance()Lorg/alljoyn/ns/transport/Transport;

    move-result-object v3

    invoke-virtual {v3}, Lorg/alljoyn/ns/transport/Transport;->getBusAttachment()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v0

    .line 540
    .local v0, "bus":Lorg/alljoyn/bus/BusAttachment;
    invoke-virtual {v0, p1}, Lorg/alljoyn/bus/BusAttachment;->addMatch(Ljava/lang/String;)Lorg/alljoyn/bus/Status;

    move-result-object v2

    .line 542
    .local v2, "status":Lorg/alljoyn/bus/Status;
    sget-object v3, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-eq v2, v3, :cond_0

    .line 543
    sget-object v3, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to call AddMatch rule: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', Error: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    new-instance v3, Lorg/alljoyn/ns/NotificationServiceException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to call AddMatch rule: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', Error: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 546
    :cond_0
    return-void
.end method

.method private getDismissSignalMethod()Ljava/lang/reflect/Method;
    .locals 7

    .prologue
    .line 600
    :try_start_0
    const-class v2, Lorg/alljoyn/ns/transport/interfaces/NotificationDismisser;

    const-string v3, "dismiss"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, [B

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 609
    .local v1, "retMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 604
    .end local v1    # "retMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 605
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v2}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v2

    sget-object v3, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get a reflection of the signal method: \'dismiss\', Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const/4 v1, 0x0

    .restart local v1    # "retMethod":Ljava/lang/reflect/Method;
    goto :goto_0
.end method

.method private getNotificationConsumerSignalMethod()Ljava/lang/reflect/Method;
    .locals 7

    .prologue
    .line 569
    :try_start_0
    const-class v2, Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;

    const-string v3, "notify"

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-class v6, [B

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-class v6, Ljava/util/Map;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-class v6, Ljava/util/Map;

    aput-object v6, v4, v5

    const/16 v5, 0x9

    const-class v6, [Lorg/alljoyn/ns/transport/TransportNotificationText;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 587
    .local v1, "retMethod":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 582
    .end local v1    # "retMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 583
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v2}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v2

    sget-object v3, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get a reflection of the signal method: \'notify\', Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const/4 v1, 0x0

    .restart local v1    # "retMethod":Ljava/lang/reflect/Method;
    goto :goto_0
.end method

.method private registerDismissSignalHandler(Lorg/alljoyn/ns/transport/consumer/DismissConsumer;)Z
    .locals 9
    .param p1, "dismissConsumer"    # Lorg/alljoyn/ns/transport/consumer/DismissConsumer;

    .prologue
    const/4 v8, 0x0

    .line 509
    iget-object v0, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v0}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v1

    .line 511
    .local v1, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    sget-object v0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    const-string v2, "Registering signal handler for interface: \'org.alljoyn.Notification.Dismisser\' servicePath: \'/dismissReceiver\'"

    invoke-interface {v1, v0, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-direct {p0}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->getDismissSignalMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    .line 514
    .local v4, "handlerMethod":Ljava/lang/reflect/Method;
    if-nez v4, :cond_0

    move v0, v8

    .line 526
    :goto_0
    return v0

    .line 518
    :cond_0
    const-class v0, Lorg/alljoyn/bus/annotation/BusSignal;

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/bus/annotation/BusSignal;

    invoke-interface {v0}, Lorg/alljoyn/bus/annotation/BusSignal;->name()Ljava/lang/String;

    move-result-object v3

    .line 519
    .local v3, "allJoynName":Ljava/lang/String;
    invoke-static {}, Lorg/alljoyn/ns/transport/Transport;->getInstance()Lorg/alljoyn/ns/transport/Transport;

    move-result-object v0

    const-string v2, "org.alljoyn.Notification.Dismisser"

    const-string v6, "/dismissReceiver"

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lorg/alljoyn/ns/transport/Transport;->registerObjectAndSetSignalHandler(Lorg/alljoyn/ns/commons/GenericLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lorg/alljoyn/bus/BusObject;Ljava/lang/String;)Z

    move-result v7

    .line 521
    .local v7, "regRes":Z
    if-nez v7, :cond_1

    .line 522
    invoke-virtual {p0}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->stopReceiverTransport()V

    move v0, v8

    .line 523
    goto :goto_0

    .line 526
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private registerNotificationSignalHandlerChannel(Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "receiverChannel"    # Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;
    .param p2, "receiverChannelServicePath"    # Ljava/lang/String;
    .param p3, "signalHandlerIfName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 483
    iget-object v0, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v0}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v1

    .line 485
    .local v1, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    sget-object v0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering signal handler for interface: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' servicePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-direct {p0}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->getNotificationConsumerSignalMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    .line 488
    .local v4, "handlerMethod":Ljava/lang/reflect/Method;
    if-nez v4, :cond_0

    move v0, v8

    .line 499
    :goto_0
    return v0

    .line 492
    :cond_0
    invoke-static {}, Lorg/alljoyn/ns/transport/Transport;->getInstance()Lorg/alljoyn/ns/transport/Transport;

    move-result-object v0

    const-string v3, "notify"

    move-object v2, p3

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lorg/alljoyn/ns/transport/Transport;->registerObjectAndSetSignalHandler(Lorg/alljoyn/ns/commons/GenericLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lorg/alljoyn/bus/BusObject;Ljava/lang/String;)Z

    move-result v7

    .line 494
    .local v7, "regRes":Z
    if-nez v7, :cond_1

    .line 495
    invoke-virtual {p0}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->stopReceiverTransport()V

    move v0, v8

    .line 496
    goto :goto_0

    .line 499
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private registerReceivingProducerNotifications()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 458
    iget-object v2, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v2}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v0

    .line 461
    .local v0, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    sget-object v2, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    const-string v3, "Registering to receive signals from producers"

    invoke-interface {v0, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    new-instance v2, Lorg/alljoyn/ns/transport/consumer/NotificationTransportConsumer;

    const-string v3, "/producerReceiver"

    invoke-direct {v2, v3}, Lorg/alljoyn/ns/transport/consumer/NotificationTransportConsumer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->fromProducerChannel:Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;

    .line 464
    iget-object v2, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->fromProducerChannel:Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;

    const-string v3, "/producerReceiver"

    const-string v4, "org.alljoyn.Notification"

    invoke-direct {p0, v2, v3, v4}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->registerNotificationSignalHandlerChannel(Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 466
    .local v1, "regProducerHandler":Z
    if-nez v1, :cond_0

    .line 467
    sget-object v2, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    const-string v3, "Failed to register a Producer signal handler"

    invoke-interface {v0, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    new-instance v2, Lorg/alljoyn/ns/NotificationServiceException;

    const-string v3, "Failed to register a Producer signal handler"

    invoke-direct {v2, v3}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 471
    :cond_0
    const-string v2, "type=\'signal\',interface=\'org.alljoyn.Notification\'"

    invoke-direct {p0, v2}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->addMatchRule(Ljava/lang/String;)V

    .line 472
    return-void
.end method

.method private removeMatchRule(Ljava/lang/String;)Lorg/alljoyn/bus/Status;
    .locals 6
    .param p1, "rule"    # Ljava/lang/String;

    .prologue
    .line 554
    invoke-static {}, Lorg/alljoyn/ns/transport/Transport;->getInstance()Lorg/alljoyn/ns/transport/Transport;

    move-result-object v2

    invoke-virtual {v2}, Lorg/alljoyn/ns/transport/Transport;->getBusAttachment()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v0

    .line 555
    .local v0, "bus":Lorg/alljoyn/bus/BusAttachment;
    invoke-virtual {v0, p1}, Lorg/alljoyn/bus/BusAttachment;->removeMatch(Ljava/lang/String;)Lorg/alljoyn/bus/Status;

    move-result-object v1

    .line 556
    .local v1, "status":Lorg/alljoyn/bus/Status;
    iget-object v2, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v2}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v2

    sget-object v3, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoveMatch rule: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' result: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    return-object v1
.end method


# virtual methods
.method public getIsSuperAgentFound()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->isSuperAgentFound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onAnnouncement(Ljava/lang/String;S[Lorg/alljoyn/services/common/BusObjectDescription;Ljava/util/Map;)V
    .locals 12
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "port"    # S
    .param p3, "objectDescriptions"    # [Lorg/alljoyn/services/common/BusObjectDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "S[",
            "Lorg/alljoyn/services/common/BusObjectDescription;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/alljoyn/bus/Variant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 332
    .local p4, "serviceMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/alljoyn/bus/Variant;>;"
    iget-object v10, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v10}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v9

    .line 333
    .local v9, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    invoke-static {}, Lorg/alljoyn/ns/transport/Transport;->getInstance()Lorg/alljoyn/ns/transport/Transport;

    move-result-object v10

    invoke-virtual {v10}, Lorg/alljoyn/ns/transport/Transport;->getBusAttachment()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v3

    .line 335
    .local v3, "busAttachment":Lorg/alljoyn/bus/BusAttachment;
    invoke-virtual {v3}, Lorg/alljoyn/bus/BusAttachment;->enableConcurrentCallbacks()V

    .line 338
    iget-object v10, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->isSuperAgentFound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    sget-object v10, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    const-string v11, "Received announcement signal"

    invoke-interface {v9, v10, v11}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    move-object v0, p3

    .local v0, "arr$":[Lorg/alljoyn/services/common/BusObjectDescription;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v0    # "arr$":[Lorg/alljoyn/services/common/BusObjectDescription;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_0

    aget-object v2, v0, v5

    .line 346
    .local v2, "bod":Lorg/alljoyn/services/common/BusObjectDescription;
    iget-object v1, v2, Lorg/alljoyn/services/common/BusObjectDescription;->interfaces:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v8, :cond_3

    aget-object v6, v1, v4

    .line 347
    .local v6, "ifName":Ljava/lang/String;
    const-string v10, "org.alljoyn.Notification.Superagent"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 348
    sget-object v10, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    const-string v11, "Received announcement signal from SA, call onReceivedFirstSuperAgentNotification"

    invoke-interface {v9, v10, v11}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {v3}, Lorg/alljoyn/bus/BusAttachment;->getMessageContext()Lorg/alljoyn/bus/MessageContext;

    move-result-object v10

    iget-object v10, v10, Lorg/alljoyn/bus/MessageContext;->sender:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->onReceivedFirstSuperAgentNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 345
    .end local v6    # "ifName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_1
.end method

.method public onDeviceLost(Ljava/lang/String;)V
    .locals 5
    .param p1, "senderName"    # Ljava/lang/String;

    .prologue
    .line 417
    iget-object v2, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v2}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v0

    .line 418
    .local v0, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    sget-object v2, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lostAdvertisedName: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v2, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->superAgentSenderName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 448
    :goto_0
    return-void

    .line 424
    :cond_0
    sget-object v2, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received lostAdvertisedName for SuperAgent: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->superAgentSenderName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', registering to listen for Producer and SuperAgent notifications"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :try_start_0
    invoke-direct {p0}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->registerReceivingProducerNotifications()V
    :try_end_0
    .catch Lorg/alljoyn/ns/NotificationServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :try_start_1
    const-string v2, "type=\'signal\',interface=\'org.alljoyn.Notification.Superagent\'"

    invoke-direct {p0, v2}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->addMatchRule(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/alljoyn/ns/NotificationServiceException; {:try_start_1 .. :try_end_1} :catch_1

    .line 441
    :goto_1
    sget-object v2, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing the specific SuperAgent Match rule: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->superAgentSpecificRule:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v2, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->superAgentSpecificRule:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->removeMatchRule(Ljava/lang/String;)Lorg/alljoyn/bus/Status;

    .line 445
    const-string v2, ""

    iput-object v2, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->superAgentSenderName:Ljava/lang/String;

    .line 446
    const-string v2, ""

    iput-object v2, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->superAgentSpecificRule:Ljava/lang/String;

    .line 447
    iget-object v2, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->isSuperAgentFound:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 429
    :catch_0
    move-exception v1

    .line 430
    .local v1, "nse":Lorg/alljoyn/ns/NotificationServiceException;
    sget-object v2, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to register receiving Notifications back directly from Producers, Error: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/alljoyn/ns/NotificationServiceException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 437
    .end local v1    # "nse":Lorg/alljoyn/ns/NotificationServiceException;
    :catch_1
    move-exception v1

    .line 438
    .restart local v1    # "nse":Lorg/alljoyn/ns/NotificationServiceException;
    sget-object v2, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to add SuperAgent generic match rule: \'type=\'signal\',interface=\'org.alljoyn.Notification.Superagent\'\', possibly we will not receive Notifications from a SuperAgent, Error: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/alljoyn/ns/NotificationServiceException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onReceivedFirstSuperAgentNotification(Ljava/lang/String;)V
    .locals 7
    .param p1, "superAgentSenderName"    # Ljava/lang/String;

    .prologue
    .line 365
    iget-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v4}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v1

    .line 366
    .local v1, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    invoke-static {}, Lorg/alljoyn/ns/transport/Transport;->getInstance()Lorg/alljoyn/ns/transport/Transport;

    move-result-object v4

    invoke-virtual {v4}, Lorg/alljoyn/ns/transport/Transport;->getBusAttachment()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v0

    .line 368
    .local v0, "busAttachment":Lorg/alljoyn/bus/BusAttachment;
    iget-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->isSuperAgentFound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 369
    sget-object v4, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    const-string v5, "The SuperAgent has already been found, returning"

    invoke-interface {v1, v4, v5}, Lorg/alljoyn/ns/commons/GenericLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :goto_0
    return-void

    .line 374
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type=\'signal\',interface=\'org.alljoyn.Notification.Superagent\',sender=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->superAgentSpecificRule:Ljava/lang/String;

    .line 375
    sget-object v4, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Add the Match rule to receive Notifications from the specific SuperAgent, Rule: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->superAgentSpecificRule:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :try_start_0
    iget-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->superAgentSpecificRule:Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->addMatchRule(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/alljoyn/ns/NotificationServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    sget-object v4, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    const-string v5, "Remove the generic SuperAgent Match rule: \'type=\'signal\',interface=\'org.alljoyn.Notification.Superagent\'\'"

    invoke-interface {v1, v4, v5}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v4, "type=\'signal\',interface=\'org.alljoyn.Notification.Superagent\'"

    invoke-direct {p0, v4}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->removeMatchRule(Ljava/lang/String;)Lorg/alljoyn/bus/Status;

    move-result-object v3

    .line 387
    .local v3, "status":Lorg/alljoyn/bus/Status;
    sget-object v4, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-eq v3, v4, :cond_1

    .line 388
    sget-object v4, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    const-string v5, "Failed to remove the generic SuperAgent Match rule: \'type=\'signal\',interface=\'org.alljoyn.Notification.Superagent\'\', we may continue receiving Notifications from another SuperAgents"

    invoke-interface {v1, v4, v5}, Lorg/alljoyn/ns/commons/GenericLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_1
    sget-object v4, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    const-string v5, "Remove the Producer Match rule: \'type=\'signal\',interface=\'org.alljoyn.Notification\'\'"

    invoke-interface {v1, v4, v5}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v4, "type=\'signal\',interface=\'org.alljoyn.Notification\'"

    invoke-direct {p0, v4}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->removeMatchRule(Ljava/lang/String;)Lorg/alljoyn/bus/Status;

    move-result-object v3

    .line 393
    sget-object v4, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-eq v3, v4, :cond_2

    .line 394
    sget-object v4, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    const-string v5, "Failed to remove Notification Producer Match rule: \'type=\'signal\',interface=\'org.alljoyn.Notification\'\', we may continue receiving Notifications from Notification Producers"

    invoke-interface {v1, v4, v5}, Lorg/alljoyn/ns/commons/GenericLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_2
    sget-object v4, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    const-string v5, "Set SuperAgent found as TRUE"

    invoke-interface {v1, v4, v5}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->isSuperAgentFound:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 400
    iput-object p1, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->superAgentSenderName:Ljava/lang/String;

    .line 402
    sget-object v4, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    const-string v5, "Unregister fromProducer signal handler"

    invoke-interface {v1, v4, v5}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->fromProducerChannel:Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;

    invoke-direct {p0}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->getNotificationConsumerSignalMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/alljoyn/bus/BusAttachment;->unregisterSignalHandler(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    .line 405
    sget-object v4, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    const-string v5, "Unregister fromProducer bus object"

    invoke-interface {v1, v4, v5}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->fromProducerChannel:Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;

    invoke-virtual {v0, v4}, Lorg/alljoyn/bus/BusAttachment;->unregisterBusObject(Lorg/alljoyn/bus/BusObject;)V

    .line 407
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->fromProducerChannel:Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;

    goto/16 :goto_0

    .line 379
    .end local v3    # "status":Lorg/alljoyn/bus/Status;
    :catch_0
    move-exception v2

    .line 380
    .local v2, "nse":Lorg/alljoyn/ns/NotificationServiceException;
    sget-object v4, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to add the new Match rule: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->superAgentSpecificRule:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', not listening to this SuperAgent, Error: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/alljoyn/ns/NotificationServiceException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onReceivedNotification(Lorg/alljoyn/ns/Notification;)V
    .locals 5
    .param p1, "notification"    # Lorg/alljoyn/ns/Notification;

    .prologue
    .line 280
    iget-object v2, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v2}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v0

    .line 282
    .local v0, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    iget-boolean v2, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->stopReceiving:Z

    if-eqz v2, :cond_0

    .line 283
    sget-object v2, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    const-string v3, "In stopSending mode NOT delivering notifications!!!"

    invoke-interface {v0, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :goto_0
    return-void

    .line 288
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/alljoyn/ns/transport/TaskManager;->getInstance()Lorg/alljoyn/ns/transport/TaskManager;

    move-result-object v2

    new-instance v3, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport$1;

    invoke-direct {v3, p0, p1}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport$1;-><init>(Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;Lorg/alljoyn/ns/Notification;)V

    invoke-virtual {v2, v3}, Lorg/alljoyn/ns/transport/TaskManager;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v1

    .line 298
    .local v1, "ree":Ljava/util/concurrent/RejectedExecutionException;
    sget-object v2, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to return a received notification, id: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/alljoyn/ns/Notification;->getMessageId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', Error: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedNotificationDismiss(ILjava/util/UUID;)V
    .locals 5
    .param p1, "msgId"    # I
    .param p2, "appId"    # Ljava/util/UUID;

    .prologue
    .line 309
    iget-object v2, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v2}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v0

    .line 310
    .local v0, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    sget-object v2, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received the Dismiss signal notifId: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', from the appId: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', delivering to the NotificationReceiver"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :try_start_0
    invoke-static {}, Lorg/alljoyn/ns/transport/TaskManager;->getInstance()Lorg/alljoyn/ns/transport/TaskManager;

    move-result-object v2

    new-instance v3, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport$2;

    invoke-direct {v3, p0, p1, p2}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport$2;-><init>(Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;ILjava/util/UUID;)V

    invoke-virtual {v2, v3}, Lorg/alljoyn/ns/transport/TaskManager;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v1

    .line 323
    .local v1, "ree":Ljava/util/concurrent/RejectedExecutionException;
    sget-object v2, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to deliver the Dismiss event of the notifId: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', from the appId:\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', Error: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startReceiverTransport()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v4}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v1

    .line 154
    .local v1, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    sget-object v4, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    const-string v5, "Starting receiver transport"

    invoke-interface {v1, v4, v5}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->isSuperAgentFound:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 158
    iget-boolean v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->isNeedSearchSA:Z

    if-eqz v4, :cond_2

    .line 159
    sget-object v4, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    const-string v5, "Need to search for SuperAgent, register SuperAgent signal receiver, announcement receiver and then Producer signal receiver"

    invoke-interface {v1, v4, v5}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v4, ""

    iput-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->superAgentSenderName:Ljava/lang/String;

    .line 164
    new-instance v4, Lorg/alljoyn/ns/transport/consumer/NotificationTransportConsumer;

    const-string v5, "/superagentReceiver"

    invoke-direct {v4, v5}, Lorg/alljoyn/ns/transport/consumer/NotificationTransportConsumer;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->fromSuperAgentChannel:Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;

    .line 165
    iget-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->fromSuperAgentChannel:Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;

    const-string v5, "/superagentReceiver"

    const-string v6, "org.alljoyn.Notification.Superagent"

    invoke-direct {p0, v4, v5, v6}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->registerNotificationSignalHandlerChannel(Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 167
    .local v3, "regSAHandler":Z
    if-nez v3, :cond_0

    .line 168
    sget-object v4, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    const-string v5, "Failed to register a SuperAgent signal handler"

    invoke-interface {v1, v4, v5}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v4, Lorg/alljoyn/ns/NotificationServiceException;

    const-string v5, "Failed to register a SuperAgent signal handler"

    invoke-direct {v4, v5}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 173
    :cond_0
    const-string v4, "type=\'signal\',interface=\'org.alljoyn.Notification.Superagent\'"

    invoke-direct {p0, v4}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->addMatchRule(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lorg/alljoyn/about/AboutServiceImpl;->getInstance()Lorg/alljoyn/about/AboutService;

    move-result-object v0

    .line 178
    .local v0, "aboutService":Lorg/alljoyn/about/AboutService;
    invoke-interface {v0}, Lorg/alljoyn/about/AboutService;->isClientRunning()Z

    move-result v4

    if-nez v4, :cond_1

    .line 179
    sget-object v4, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    const-string v5, "The AboutClient wasn\'t started, unable to register to receive Announcement signals"

    invoke-interface {v1, v4, v5}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->stopReceiverTransport()V

    .line 181
    new-instance v4, Lorg/alljoyn/ns/NotificationServiceException;

    const-string v5, "The AboutClient wasn\'t started"

    invoke-direct {v4, v5}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 185
    :cond_1
    sget-object v4, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    const-string v5, "Registering AnnouncementReceiver"

    invoke-interface {v1, v4, v5}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-interface {v0, p0}, Lorg/alljoyn/about/AboutService;->addAnnouncementHandler(Lorg/alljoyn/services/common/AnnouncementHandler;)V

    .line 190
    .end local v0    # "aboutService":Lorg/alljoyn/about/AboutService;
    .end local v3    # "regSAHandler":Z
    :cond_2
    new-instance v4, Lorg/alljoyn/ns/transport/consumer/DismissConsumer;

    invoke-direct {v4}, Lorg/alljoyn/ns/transport/consumer/DismissConsumer;-><init>()V

    iput-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->dismissSignalHandler:Lorg/alljoyn/ns/transport/consumer/DismissConsumer;

    .line 191
    iget-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->dismissSignalHandler:Lorg/alljoyn/ns/transport/consumer/DismissConsumer;

    invoke-direct {p0, v4}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->registerDismissSignalHandler(Lorg/alljoyn/ns/transport/consumer/DismissConsumer;)Z

    move-result v2

    .line 193
    .local v2, "regDismissHandler":Z
    if-nez v2, :cond_3

    .line 194
    sget-object v4, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    const-string v5, "Failed to register Dismiss signal handler"

    invoke-interface {v1, v4, v5}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v4, Lorg/alljoyn/ns/NotificationServiceException;

    const-string v5, "Failed to register Dismiss signal handler"

    invoke-direct {v4, v5}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 199
    :cond_3
    const-string v4, "type=\'signal\',interface=\'org.alljoyn.Notification.Dismisser\'"

    invoke-direct {p0, v4}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->addMatchRule(Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->registerReceivingProducerNotifications()V

    .line 205
    return-void
.end method

.method public stopReceiverTransport()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 212
    iget-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v4}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v2

    .line 213
    .local v2, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    invoke-static {}, Lorg/alljoyn/ns/transport/Transport;->getInstance()Lorg/alljoyn/ns/transport/Transport;

    move-result-object v4

    invoke-virtual {v4}, Lorg/alljoyn/ns/transport/Transport;->getBusAttachment()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v0

    .line 215
    .local v0, "busAttachment":Lorg/alljoyn/bus/BusAttachment;
    sget-object v4, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    const-string v5, "Stopping ReceiverTransport"

    invoke-interface {v2, v4, v5}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-direct {p0}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->getNotificationConsumerSignalMethod()Ljava/lang/reflect/Method;

    move-result-object v3

    .line 219
    .local v3, "notifConsumerMethod":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->fromSuperAgentChannel:Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;

    if-eqz v4, :cond_1

    .line 221
    sget-object v4, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    const-string v5, "Searched for a SuperAgent, cleaning up..."

    invoke-interface {v2, v4, v5}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-object v4, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    const-string v5, "Unregister SuperAgent signal handler"

    invoke-interface {v2, v4, v5}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    if-eqz v3, :cond_0

    .line 225
    iget-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->fromSuperAgentChannel:Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;

    invoke-virtual {v0, v4, v3}, Lorg/alljoyn/bus/BusAttachment;->unregisterSignalHandler(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    .line 228
    :cond_0
    iget-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->fromSuperAgentChannel:Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;

    invoke-virtual {v0, v4}, Lorg/alljoyn/bus/BusAttachment;->unregisterBusObject(Lorg/alljoyn/bus/BusObject;)V

    .line 230
    iget-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->isSuperAgentFound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 231
    iget-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->superAgentSpecificRule:Ljava/lang/String;

    invoke-direct {p0, v4}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->removeMatchRule(Ljava/lang/String;)Lorg/alljoyn/bus/Status;

    .line 232
    const-string v4, ""

    iput-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->superAgentSpecificRule:Ljava/lang/String;

    .line 238
    :goto_0
    iput-object v6, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->fromSuperAgentChannel:Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;

    .line 239
    iput-object v6, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->isSuperAgentFound:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 243
    :cond_1
    sget-object v4, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    const-string v5, "Remove the AnnouncementReceiver"

    invoke-interface {v2, v4, v5}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lorg/alljoyn/about/AboutServiceImpl;->getInstance()Lorg/alljoyn/about/AboutService;

    move-result-object v4

    invoke-interface {v4, p0}, Lorg/alljoyn/about/AboutService;->removeAnnouncementHandler(Lorg/alljoyn/services/common/AnnouncementHandler;)V

    .line 246
    iget-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->fromProducerChannel:Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;

    if-eqz v4, :cond_3

    .line 247
    sget-object v4, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    const-string v5, "Unregister Producer signal handler"

    invoke-interface {v2, v4, v5}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    if-eqz v3, :cond_2

    .line 250
    iget-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->fromProducerChannel:Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;

    invoke-virtual {v0, v4, v3}, Lorg/alljoyn/bus/BusAttachment;->unregisterSignalHandler(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    .line 253
    :cond_2
    iget-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->fromProducerChannel:Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;

    invoke-virtual {v0, v4}, Lorg/alljoyn/bus/BusAttachment;->unregisterBusObject(Lorg/alljoyn/bus/BusObject;)V

    .line 254
    iput-object v6, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->fromProducerChannel:Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;

    .line 255
    const-string v4, "type=\'signal\',interface=\'org.alljoyn.Notification\'"

    invoke-direct {p0, v4}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->removeMatchRule(Ljava/lang/String;)Lorg/alljoyn/bus/Status;

    .line 258
    :cond_3
    iget-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->dismissSignalHandler:Lorg/alljoyn/ns/transport/consumer/DismissConsumer;

    if-eqz v4, :cond_5

    .line 259
    sget-object v4, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->TAG:Ljava/lang/String;

    const-string v5, "Unregister Dismiss signal handler"

    invoke-interface {v2, v4, v5}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->getDismissSignalMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 262
    .local v1, "dismisSignalMethod":Ljava/lang/reflect/Method;
    if-nez v1, :cond_4

    .line 263
    iget-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->dismissSignalHandler:Lorg/alljoyn/ns/transport/consumer/DismissConsumer;

    invoke-virtual {v0, v4, v1}, Lorg/alljoyn/bus/BusAttachment;->unregisterSignalHandler(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    .line 266
    :cond_4
    iget-object v4, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->dismissSignalHandler:Lorg/alljoyn/ns/transport/consumer/DismissConsumer;

    invoke-virtual {v0, v4}, Lorg/alljoyn/bus/BusAttachment;->unregisterBusObject(Lorg/alljoyn/bus/BusObject;)V

    .line 267
    iput-object v6, p0, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->dismissSignalHandler:Lorg/alljoyn/ns/transport/consumer/DismissConsumer;

    .line 269
    const-string v4, "type=\'signal\',interface=\'org.alljoyn.Notification.Dismisser\'"

    invoke-direct {p0, v4}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->removeMatchRule(Ljava/lang/String;)Lorg/alljoyn/bus/Status;

    .line 272
    .end local v1    # "dismisSignalMethod":Ljava/lang/reflect/Method;
    :cond_5
    return-void

    .line 235
    :cond_6
    const-string v4, "type=\'signal\',interface=\'org.alljoyn.Notification.Superagent\'"

    invoke-direct {p0, v4}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->removeMatchRule(Ljava/lang/String;)Lorg/alljoyn/bus/Status;

    goto :goto_0
.end method

.class public Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;
.super Lorg/alljoyn/bus/OnJoinSessionListener;
.source "NotificationFeedback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/alljoyn/ns/transport/consumer/NotificationFeedback$NFSessionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static taskDispatcher:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final appId:Ljava/util/UUID;

.field private logger:Lorg/alljoyn/ns/commons/GenericLogger;

.field private final notifId:I

.field private final origSender:Ljava/lang/String;

.field private transport:Lorg/alljoyn/ns/transport/Transport;

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ioe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->TAG:Ljava/lang/String;

    .line 70
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->taskDispatcher:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lorg/alljoyn/ns/Notification;)V
    .locals 1
    .param p1, "notification"    # Lorg/alljoyn/ns/Notification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0}, Lorg/alljoyn/bus/OnJoinSessionListener;-><init>()V

    .line 109
    invoke-static {}, Lorg/alljoyn/ns/transport/Transport;->getInstance()Lorg/alljoyn/ns/transport/Transport;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->transport:Lorg/alljoyn/ns/transport/Transport;

    .line 110
    iget-object v0, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->transport:Lorg/alljoyn/ns/transport/Transport;

    invoke-virtual {v0}, Lorg/alljoyn/ns/transport/Transport;->getLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->logger:Lorg/alljoyn/ns/commons/GenericLogger;

    .line 112
    invoke-virtual {p1}, Lorg/alljoyn/ns/Notification;->getVersion()I

    move-result v0

    iput v0, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->version:I

    .line 113
    invoke-virtual {p1}, Lorg/alljoyn/ns/Notification;->getOriginalSenderBusName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->origSender:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Lorg/alljoyn/ns/Notification;->getMessageId()I

    move-result v0

    iput v0, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->notifId:I

    .line 115
    invoke-virtual {p1}, Lorg/alljoyn/ns/Notification;->getAppId()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->appId:Ljava/util/UUID;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;)Lorg/alljoyn/ns/commons/GenericLogger;
    .locals 1
    .param p0, "x0"    # Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->logger:Lorg/alljoyn/ns/commons/GenericLogger;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;)I
    .locals 1
    .param p0, "x0"    # Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;

    .prologue
    .line 49
    iget v0, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->version:I

    return v0
.end method

.method static synthetic access$300(Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->origSender:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;)I
    .locals 1
    .param p0, "x0"    # Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;

    .prologue
    .line 49
    iget v0, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->notifId:I

    return v0
.end method

.method static synthetic access$500(Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->appId:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$600(Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;)V
    .locals 0
    .param p0, "x0"    # Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->invokeDismiss()V

    return-void
.end method

.method private establishSession(Lorg/alljoyn/bus/BusAttachment;Lorg/alljoyn/bus/Mutable$IntegerValue;)Lorg/alljoyn/bus/Status;
    .locals 6
    .param p1, "bus"    # Lorg/alljoyn/bus/BusAttachment;
    .param p2, "sessionId"    # Lorg/alljoyn/bus/Mutable$IntegerValue;

    .prologue
    .line 192
    iget-object v1, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->origSender:Ljava/lang/String;

    const/16 v2, 0x3f2

    invoke-static {}, Lorg/alljoyn/ns/transport/producer/SenderSessionListener;->getSessionOpts()Lorg/alljoyn/bus/SessionOpts;

    move-result-object v4

    new-instance v5, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback$NFSessionListener;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback$NFSessionListener;-><init>(Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;Lorg/alljoyn/ns/transport/consumer/NotificationFeedback$1;)V

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/alljoyn/bus/BusAttachment;->joinSession(Ljava/lang/String;SLorg/alljoyn/bus/Mutable$IntegerValue;Lorg/alljoyn/bus/SessionOpts;Lorg/alljoyn/bus/SessionListener;)Lorg/alljoyn/bus/Status;

    move-result-object v0

    return-object v0
.end method

.method private getProxyObject(Lorg/alljoyn/bus/BusAttachment;I)Lorg/alljoyn/ns/transport/interfaces/NotificationProducer;
    .locals 6
    .param p1, "bus"    # Lorg/alljoyn/bus/BusAttachment;
    .param p2, "sid"    # I

    .prologue
    .line 222
    iget-object v1, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->logger:Lorg/alljoyn/ns/commons/GenericLogger;

    sget-object v2, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating ProxyBusObject with sender: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->origSender:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', SID: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->origSender:Ljava/lang/String;

    const-string v2, "/notificationProducer"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/alljoyn/ns/transport/interfaces/NotificationProducer;

    aput-object v5, v3, v4

    invoke-virtual {p1, v1, v2, p2, v3}, Lorg/alljoyn/bus/BusAttachment;->getProxyBusObject(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Class;)Lorg/alljoyn/bus/ProxyBusObject;

    move-result-object v0

    .line 228
    .local v0, "proxyObj":Lorg/alljoyn/bus/ProxyBusObject;
    const-class v1, Lorg/alljoyn/ns/transport/interfaces/NotificationProducer;

    invoke-virtual {v0, v1}, Lorg/alljoyn/bus/ProxyBusObject;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/alljoyn/ns/transport/interfaces/NotificationProducer;

    return-object v1
.end method

.method private invokeDismiss()V
    .locals 10

    .prologue
    .line 146
    iget-object v6, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->transport:Lorg/alljoyn/ns/transport/Transport;

    invoke-virtual {v6}, Lorg/alljoyn/ns/transport/Transport;->getBusAttachment()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v1

    .line 147
    .local v1, "bus":Lorg/alljoyn/bus/BusAttachment;
    if-nez v1, :cond_1

    .line 148
    iget-object v6, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->logger:Lorg/alljoyn/ns/commons/GenericLogger;

    sget-object v7, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to call Dismiss for notifId: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->notifId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\', BusAttachment is not defined, returning..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    new-instance v4, Lorg/alljoyn/bus/Mutable$IntegerValue;

    invoke-direct {v4}, Lorg/alljoyn/bus/Mutable$IntegerValue;-><init>()V

    .line 153
    .local v4, "sid":Lorg/alljoyn/bus/Mutable$IntegerValue;
    invoke-direct {p0, v1, v4}, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->establishSession(Lorg/alljoyn/bus/BusAttachment;Lorg/alljoyn/bus/Mutable$IntegerValue;)Lorg/alljoyn/bus/Status;

    move-result-object v5

    .line 157
    .local v5, "status":Lorg/alljoyn/bus/Status;
    sget-object v6, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-eq v5, v6, :cond_2

    sget-object v6, Lorg/alljoyn/bus/Status;->ALLJOYN_JOINSESSION_REPLY_ALREADY_JOINED:Lorg/alljoyn/bus/Status;

    if-eq v5, v6, :cond_2

    .line 158
    iget-object v6, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->logger:Lorg/alljoyn/ns/commons/GenericLogger;

    sget-object v7, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to call Dismiss method for notifId: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->notifId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\', session is not established, Error: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\', Sending a Dismiss signal"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget v6, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->notifId:I

    iget-object v7, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->appId:Ljava/util/UUID;

    invoke-static {v6, v7}, Lorg/alljoyn/ns/transport/DismissEmitter;->send(ILjava/util/UUID;)V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v6, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->logger:Lorg/alljoyn/ns/commons/GenericLogger;

    sget-object v7, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Handling Dismiss method call for notifId: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->notifId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\', session: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lorg/alljoyn/bus/Mutable$IntegerValue;->value:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\', SessionJoin status: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget v6, v4, Lorg/alljoyn/bus/Mutable$IntegerValue;->value:I

    invoke-direct {p0, v1, v6}, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->getProxyObject(Lorg/alljoyn/bus/BusAttachment;I)Lorg/alljoyn/ns/transport/interfaces/NotificationProducer;

    move-result-object v3

    .line 167
    .local v3, "notifProducer":Lorg/alljoyn/ns/transport/interfaces/NotificationProducer;
    :try_start_0
    iget v6, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->notifId:I

    invoke-interface {v3, v6}, Lorg/alljoyn/ns/transport/interfaces/NotificationProducer;->dismiss(I)V
    :try_end_0
    .catch Lorg/alljoyn/bus/ErrorReplyBusException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    sget-object v6, Lorg/alljoyn/bus/Status;->ALLJOYN_JOINSESSION_REPLY_ALREADY_JOINED:Lorg/alljoyn/bus/Status;

    if-eq v5, v6, :cond_0

    .line 179
    iget v6, v4, Lorg/alljoyn/bus/Mutable$IntegerValue;->value:I

    invoke-direct {p0, v1, v6}, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->leaveSession(Lorg/alljoyn/bus/BusAttachment;I)V

    goto/16 :goto_0

    .line 169
    :catch_0
    move-exception v2

    .line 170
    .local v2, "erbe":Lorg/alljoyn/bus/ErrorReplyBusException;
    :try_start_1
    iget-object v6, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->logger:Lorg/alljoyn/ns/commons/GenericLogger;

    sget-object v7, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to call Dismiss for notifId: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->notifId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\', ErrorName: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lorg/alljoyn/bus/ErrorReplyBusException;->getErrorName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\', ErrorMessage: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lorg/alljoyn/bus/ErrorReplyBusException;->getErrorMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\', sending Dismiss signal"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget v6, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->notifId:I

    iget-object v7, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->appId:Ljava/util/UUID;

    invoke-static {v6, v7}, Lorg/alljoyn/ns/transport/DismissEmitter;->send(ILjava/util/UUID;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    sget-object v6, Lorg/alljoyn/bus/Status;->ALLJOYN_JOINSESSION_REPLY_ALREADY_JOINED:Lorg/alljoyn/bus/Status;

    if-eq v5, v6, :cond_0

    .line 179
    iget v6, v4, Lorg/alljoyn/bus/Mutable$IntegerValue;->value:I

    invoke-direct {p0, v1, v6}, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->leaveSession(Lorg/alljoyn/bus/BusAttachment;I)V

    goto/16 :goto_0

    .line 173
    .end local v2    # "erbe":Lorg/alljoyn/bus/ErrorReplyBusException;
    :catch_1
    move-exception v0

    .line 174
    .local v0, "be":Lorg/alljoyn/bus/BusException;
    :try_start_2
    iget-object v6, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->logger:Lorg/alljoyn/ns/commons/GenericLogger;

    sget-object v7, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to call Dismiss method for notifId: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->notifId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\', Error: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lorg/alljoyn/bus/BusException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\', Sending Dismiss signal"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget v6, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->notifId:I

    iget-object v7, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->appId:Ljava/util/UUID;

    invoke-static {v6, v7}, Lorg/alljoyn/ns/transport/DismissEmitter;->send(ILjava/util/UUID;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    sget-object v6, Lorg/alljoyn/bus/Status;->ALLJOYN_JOINSESSION_REPLY_ALREADY_JOINED:Lorg/alljoyn/bus/Status;

    if-eq v5, v6, :cond_0

    .line 179
    iget v6, v4, Lorg/alljoyn/bus/Mutable$IntegerValue;->value:I

    invoke-direct {p0, v1, v6}, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->leaveSession(Lorg/alljoyn/bus/BusAttachment;I)V

    goto/16 :goto_0

    .line 178
    .end local v0    # "be":Lorg/alljoyn/bus/BusException;
    :catchall_0
    move-exception v6

    sget-object v7, Lorg/alljoyn/bus/Status;->ALLJOYN_JOINSESSION_REPLY_ALREADY_JOINED:Lorg/alljoyn/bus/Status;

    if-eq v5, v7, :cond_3

    .line 179
    iget v7, v4, Lorg/alljoyn/bus/Mutable$IntegerValue;->value:I

    invoke-direct {p0, v1, v7}, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->leaveSession(Lorg/alljoyn/bus/BusAttachment;I)V

    :cond_3
    throw v6
.end method

.method private leaveSession(Lorg/alljoyn/bus/BusAttachment;I)V
    .locals 5
    .param p1, "bus"    # Lorg/alljoyn/bus/BusAttachment;
    .param p2, "sid"    # I

    .prologue
    .line 206
    invoke-virtual {p1, p2}, Lorg/alljoyn/bus/BusAttachment;->leaveSession(I)Lorg/alljoyn/bus/Status;

    move-result-object v0

    .line 208
    .local v0, "status":Lorg/alljoyn/bus/Status;
    sget-object v1, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-ne v0, v1, :cond_0

    .line 209
    iget-object v1, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->logger:Lorg/alljoyn/ns/commons/GenericLogger;

    sget-object v2, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The session: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' was disconnected successfully"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v1, p0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->logger:Lorg/alljoyn/ns/commons/GenericLogger;

    sget-object v2, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to disconnect the session: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', Error: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->taskDispatcher:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback$1;

    invoke-direct {v1, p0}, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback$1;-><init>(Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method

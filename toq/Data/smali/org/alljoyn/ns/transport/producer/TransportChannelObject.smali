.class Lorg/alljoyn/ns/transport/producer/TransportChannelObject;
.super Ljava/lang/Object;
.source "TransportChannelObject.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final LOCK:Ljava/util/concurrent/locks/ReentrantLock;

.field private emitter:Lorg/alljoyn/bus/SignalEmitter;

.field private volatile lastMsgSerialId:Ljava/lang/Integer;

.field private volatile lastNotifId:Ljava/lang/Integer;

.field private messageType:Lorg/alljoyn/ns/NotificationMessageType;

.field private nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

.field private servicePath:Ljava/lang/String;

.field private transportObj:Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ioe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/alljoyn/ns/NotificationMessageType;Lorg/alljoyn/bus/BusAttachment;Lorg/alljoyn/ns/commons/NativePlatform;)V
    .locals 8
    .param p1, "messageType"    # Lorg/alljoyn/ns/NotificationMessageType;
    .param p2, "busAttachment"    # Lorg/alljoyn/bus/BusAttachment;
    .param p3, "nativePlatform"    # Lorg/alljoyn/ns/commons/NativePlatform;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->messageType:Lorg/alljoyn/ns/NotificationMessageType;

    .line 89
    iput-object p3, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    .line 90
    invoke-interface {p3}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v0

    .line 92
    .local v0, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2, v7}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v2, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    .line 93
    new-instance v2, Lorg/alljoyn/ns/transport/producer/NotificationTransportProducer;

    invoke-direct {v2}, Lorg/alljoyn/ns/transport/producer/NotificationTransportProducer;-><init>()V

    iput-object v2, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->transportObj:Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;

    .line 94
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->lastMsgSerialId:Ljava/lang/Integer;

    .line 96
    invoke-static {}, Lorg/alljoyn/ns/transport/producer/NotificationTransportProducer;->getServicePath()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->servicePath:Ljava/lang/String;

    .line 99
    iget-object v2, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->transportObj:Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;

    iget-object v3, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->servicePath:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Lorg/alljoyn/bus/BusAttachment;->registerBusObject(Lorg/alljoyn/bus/BusObject;Ljava/lang/String;)Lorg/alljoyn/bus/Status;

    move-result-object v1

    .line 102
    .local v1, "status":Lorg/alljoyn/bus/Status;
    sget-object v2, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-eq v1, v2, :cond_0

    .line 103
    sget-object v2, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to registerBusObject status: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v2, Lorg/alljoyn/ns/NotificationServiceException;

    const-string v3, "Failed to prepare sending channel"

    invoke-direct {v2, v3}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 108
    :cond_0
    invoke-static {}, Lorg/alljoyn/about/AboutServiceImpl;->getInstance()Lorg/alljoyn/about/AboutService;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->servicePath:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "org.alljoyn.Notification"

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/alljoyn/about/AboutService;->addObjectDescription(Ljava/lang/String;[Ljava/lang/String;)V

    .line 111
    sget-object v2, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initializing signal emitter for sessionless signal, MessageType: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v2, Lorg/alljoyn/bus/SignalEmitter;

    iget-object v3, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->transportObj:Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;

    sget-object v4, Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;->Off:Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;

    invoke-direct {v2, v3, v4}, Lorg/alljoyn/bus/SignalEmitter;-><init>(Lorg/alljoyn/bus/BusObject;Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;)V

    iput-object v2, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->emitter:Lorg/alljoyn/bus/SignalEmitter;

    .line 113
    iget-object v2, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->emitter:Lorg/alljoyn/bus/SignalEmitter;

    invoke-virtual {v2, v7}, Lorg/alljoyn/bus/SignalEmitter;->setSessionlessFlag(Z)V

    .line 114
    return-void
.end method


# virtual methods
.method public acquireLock()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 122
    return-void
.end method

.method public clean(Lorg/alljoyn/bus/BusAttachment;)V
    .locals 6
    .param p1, "busAttachment"    # Lorg/alljoyn/bus/BusAttachment;

    .prologue
    const/4 v5, 0x0

    .line 212
    iget-object v0, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->transportObj:Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;

    invoke-virtual {p1, v0}, Lorg/alljoyn/bus/BusAttachment;->unregisterBusObject(Lorg/alljoyn/bus/BusObject;)V

    .line 215
    invoke-static {}, Lorg/alljoyn/about/AboutServiceImpl;->getInstance()Lorg/alljoyn/about/AboutService;

    move-result-object v0

    iget-object v1, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->servicePath:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "org.alljoyn.Notification"

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/about/AboutService;->removeObjectDescription(Ljava/lang/String;[Ljava/lang/String;)V

    .line 217
    iput-object v5, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->transportObj:Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;

    .line 218
    iput-object v5, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->emitter:Lorg/alljoyn/bus/SignalEmitter;

    .line 219
    iput-object v5, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->lastMsgSerialId:Ljava/lang/Integer;

    .line 220
    iput-object v5, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->lastNotifId:Ljava/lang/Integer;

    .line 221
    return-void
.end method

.method public deleteNotification()V
    .locals 5

    .prologue
    .line 180
    iget-object v2, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v2}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v0

    .line 182
    .local v0, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    iget-object v2, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 185
    :try_start_0
    iget-object v2, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->lastMsgSerialId:Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 186
    sget-object v2, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to delete last message for  messageType: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->messageType:Lorg/alljoyn/ns/NotificationMessageType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. No message was previously sent from this object, lastMsgSerialId is NULL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    iget-object v2, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 205
    :goto_0
    return-void

    .line 190
    :cond_0
    :try_start_1
    sget-object v2, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting last notification message for messageType: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->messageType:Lorg/alljoyn/ns/NotificationMessageType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', MsgSerialId: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->lastMsgSerialId:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->emitter:Lorg/alljoyn/bus/SignalEmitter;

    iget-object v3, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->lastMsgSerialId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/alljoyn/bus/SignalEmitter;->cancelSessionlessSignal(I)Lorg/alljoyn/bus/Status;

    move-result-object v1

    .line 193
    .local v1, "status":Lorg/alljoyn/bus/Status;
    sget-object v2, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-ne v1, v2, :cond_1

    .line 194
    sget-object v2, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The notification message deleted successfully, messageType: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->messageType:Lorg/alljoyn/ns/NotificationMessageType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', MsgSerialId: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->lastMsgSerialId:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', lastNotifId: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->lastNotifId:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->lastMsgSerialId:Ljava/lang/Integer;

    .line 196
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->lastNotifId:Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    :goto_1
    iget-object v2, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 199
    :cond_1
    :try_start_2
    sget-object v2, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete last message for  messageType: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->messageType:Lorg/alljoyn/ns/NotificationMessageType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'. Status: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 203
    .end local v1    # "status":Lorg/alljoyn/bus/Status;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public getNotificationId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->lastNotifId:Ljava/lang/Integer;

    return-object v0
.end method

.method public releaseLock()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 129
    return-void
.end method

.method public sendNotification(IISLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Ljava/util/Map;[Lorg/alljoyn/ns/transport/TransportNotificationText;I)V
    .locals 14
    .param p1, "version"    # I
    .param p2, "msgId"    # I
    .param p3, "messageType"    # S
    .param p4, "deviceId"    # Ljava/lang/String;
    .param p5, "deviceName"    # Ljava/lang/String;
    .param p6, "appId"    # [B
    .param p7, "appName"    # Ljava/lang/String;
    .param p10, "text"    # [Lorg/alljoyn/ns/transport/TransportNotificationText;
    .param p11, "ttl"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIS",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/alljoyn/bus/Variant;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Lorg/alljoyn/ns/transport/TransportNotificationText;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 154
    .local p8, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/alljoyn/bus/Variant;>;"
    .local p9, "customAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v2}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v13

    .line 155
    .local v13, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    sget-object v2, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending notification message for messageType: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' message id: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', ttl: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->emitter:Lorg/alljoyn/bus/SignalEmitter;

    move/from16 v0, p11

    invoke-virtual {v2, v0}, Lorg/alljoyn/bus/SignalEmitter;->setTimeToLive(I)V

    .line 157
    iget-object v2, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->emitter:Lorg/alljoyn/bus/SignalEmitter;

    const-class v3, Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;

    invoke-virtual {v2, v3}, Lorg/alljoyn/bus/SignalEmitter;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;

    .line 159
    .local v1, "transportChannel":Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;
    iget-object v2, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 161
    :try_start_0
    invoke-interface/range {v1 .. v11}, Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;->notify(IISLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Ljava/util/Map;[Lorg/alljoyn/ns/transport/TransportNotificationText;)V

    .line 162
    iget-object v2, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->emitter:Lorg/alljoyn/bus/SignalEmitter;

    invoke-virtual {v2}, Lorg/alljoyn/bus/SignalEmitter;->getMessageContext()Lorg/alljoyn/bus/MessageContext;

    move-result-object v2

    iget v2, v2, Lorg/alljoyn/bus/MessageContext;->serial:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->lastMsgSerialId:Ljava/lang/Integer;

    .line 163
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->lastNotifId:Ljava/lang/Integer;

    .line 164
    sget-object v2, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The message was sent successfully. messageType: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' message id: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' SerialId: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->lastMsgSerialId:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v13, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    iget-object v2, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 174
    return-void

    .line 166
    :catch_0
    move-exception v12

    .line 167
    .local v12, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v2, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->TAG:Ljava/lang/String;

    const-string v3, "Failed to call notify to send notification"

    invoke-interface {v13, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v2, Lorg/alljoyn/ns/NotificationServiceException;

    const-string v3, "Failed to send notification"

    invoke-direct {v2, v3, v12}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

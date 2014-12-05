.class Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;
.super Ljava/lang/Object;
.source "NotificationProducerImpl.java"

# interfaces
.implements Lorg/alljoyn/ns/transport/interfaces/NotificationProducer;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

.field private senderTransport:Lorg/alljoyn/ns/transport/producer/SenderTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ioe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/alljoyn/ns/transport/producer/SenderTransport;Lorg/alljoyn/ns/commons/NativePlatform;)V
    .locals 0
    .param p1, "senderTransport"    # Lorg/alljoyn/ns/transport/producer/SenderTransport;
    .param p2, "nativePlatform"    # Lorg/alljoyn/ns/commons/NativePlatform;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;->senderTransport:Lorg/alljoyn/ns/transport/producer/SenderTransport;

    .line 54
    iput-object p2, p0, Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;)Lorg/alljoyn/ns/transport/producer/SenderTransport;
    .locals 1
    .param p0, "x0"    # Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;->senderTransport:Lorg/alljoyn/ns/transport/producer/SenderTransport;

    return-object v0
.end method


# virtual methods
.method public clean()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 109
    iget-object v0, p0, Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v0}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v0

    sget-object v1, Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;->TAG:Ljava/lang/String;

    const-string v2, "Cleaning the NotificationProducerImpl"

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lorg/alljoyn/ns/transport/Transport;->getInstance()Lorg/alljoyn/ns/transport/Transport;

    move-result-object v0

    invoke-virtual {v0}, Lorg/alljoyn/ns/transport/Transport;->getBusAttachment()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/alljoyn/bus/BusAttachment;->unregisterBusObject(Lorg/alljoyn/bus/BusObject;)V

    .line 114
    invoke-static {}, Lorg/alljoyn/about/AboutServiceImpl;->getInstance()Lorg/alljoyn/about/AboutService;

    move-result-object v0

    const-string v1, "/notificationProducer"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "org.alljoyn.Notification.Producer"

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/about/AboutService;->removeObjectDescription(Ljava/lang/String;[Ljava/lang/String;)V

    .line 116
    iput-object v5, p0, Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;->senderTransport:Lorg/alljoyn/ns/transport/producer/SenderTransport;

    .line 117
    iput-object v5, p0, Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    .line 118
    return-void
.end method

.method public dismiss(I)V
    .locals 4
    .param p1, "msgId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v1, p0, Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v1}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v0

    .line 81
    .local v0, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    sget-object v1, Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received Dismiss for notifId: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', delegating to be executed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lorg/alljoyn/ns/transport/Transport;->getInstance()Lorg/alljoyn/ns/transport/Transport;

    move-result-object v1

    invoke-virtual {v1}, Lorg/alljoyn/ns/transport/Transport;->getBusAttachment()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/alljoyn/bus/BusAttachment;->enableConcurrentCallbacks()V

    .line 86
    invoke-static {}, Lorg/alljoyn/ns/transport/TaskManager;->getInstance()Lorg/alljoyn/ns/transport/TaskManager;

    move-result-object v1

    new-instance v2, Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl$1;

    invoke-direct {v2, p0, p1}, Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl$1;-><init>(Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;I)V

    invoke-virtual {v1, v2}, Lorg/alljoyn/ns/transport/TaskManager;->enqueue(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method

.method public getVersion()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public init()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {}, Lorg/alljoyn/ns/transport/Transport;->getInstance()Lorg/alljoyn/ns/transport/Transport;

    move-result-object v1

    invoke-virtual {v1}, Lorg/alljoyn/ns/transport/Transport;->getBusAttachment()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v1

    const-string v2, "/notificationProducer"

    invoke-virtual {v1, p0, v2}, Lorg/alljoyn/bus/BusAttachment;->registerBusObject(Lorg/alljoyn/bus/BusObject;Ljava/lang/String;)Lorg/alljoyn/bus/Status;

    move-result-object v0

    .line 65
    .local v0, "status":Lorg/alljoyn/bus/Status;
    iget-object v1, p0, Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v1}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v1

    sget-object v2, Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotificationProducer BusObject: \'/notificationProducer\' was registered on the bus, Status: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object v1, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-eq v0, v1, :cond_0

    .line 68
    new-instance v1, Lorg/alljoyn/ns/NotificationServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register BusObject: \'/notificationProducer\', Error: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_0
    invoke-static {}, Lorg/alljoyn/about/AboutServiceImpl;->getInstance()Lorg/alljoyn/about/AboutService;

    move-result-object v1

    const-string v2, "/notificationProducer"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "org.alljoyn.Notification.Producer"

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/alljoyn/about/AboutService;->addObjectDescription(Ljava/lang/String;[Ljava/lang/String;)V

    .line 73
    return-void
.end method

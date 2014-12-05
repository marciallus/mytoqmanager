.class public Lorg/alljoyn/ns/NotificationService;
.super Ljava/lang/Object;
.source "NotificationService.java"


# static fields
.field public static final PROTOCOL_VERSION:I = 0x2

.field private static final SELF:Lorg/alljoyn/ns/NotificationService;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

.field private transport:Lorg/alljoyn/ns/transport/Transport;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ioe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ns/NotificationService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ns/NotificationService;->TAG:Ljava/lang/String;

    .line 38
    new-instance v0, Lorg/alljoyn/ns/NotificationService;

    invoke-direct {v0}, Lorg/alljoyn/ns/NotificationService;-><init>()V

    sput-object v0, Lorg/alljoyn/ns/NotificationService;->SELF:Lorg/alljoyn/ns/NotificationService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/alljoyn/ns/NotificationService;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/alljoyn/ns/NotificationService;->SELF:Lorg/alljoyn/ns/NotificationService;

    return-object v0
.end method

.method private init()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v3, p0, Lorg/alljoyn/ns/NotificationService;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/alljoyn/ns/NotificationService;->transport:Lorg/alljoyn/ns/transport/Transport;

    if-eqz v3, :cond_0

    .line 172
    :goto_0
    return-void

    .line 163
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/alljoyn/ns/commons/NativePlatformFactory;->getPlatformObject()Lorg/alljoyn/ns/commons/NativePlatform;

    move-result-object v3

    iput-object v3, p0, Lorg/alljoyn/ns/NotificationService;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    .line 164
    iget-object v3, p0, Lorg/alljoyn/ns/NotificationService;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v3}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v1

    .line 165
    .local v1, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    sget-object v3, Lorg/alljoyn/ns/NotificationService;->TAG:Ljava/lang/String;

    const-string v4, "Notification Service created"

    invoke-interface {v1, v3, v4}, Lorg/alljoyn/ns/commons/GenericLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lorg/alljoyn/ns/transport/Transport;->getInstance()Lorg/alljoyn/ns/transport/Transport;

    move-result-object v3

    iput-object v3, p0, Lorg/alljoyn/ns/NotificationService;->transport:Lorg/alljoyn/ns/transport/Transport;
    :try_end_0
    .catch Lorg/alljoyn/ns/commons/NativePlatformFactoryException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 167
    .end local v1    # "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    :catch_0
    move-exception v2

    .line 168
    .local v2, "npfe":Lorg/alljoyn/ns/commons/NativePlatformFactoryException;
    new-instance v3, Lorg/alljoyn/ns/NotificationServiceException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create Notification Service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lorg/alljoyn/ns/commons/NativePlatformFactoryException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 169
    .end local v2    # "npfe":Lorg/alljoyn/ns/commons/NativePlatformFactoryException;
    :catch_1
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/alljoyn/ns/NotificationServiceException;

    const-string v4, "Failed to create Notification Service: General Error"

    invoke-direct {v3, v4}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public initReceive(Lorg/alljoyn/bus/BusAttachment;Lorg/alljoyn/ns/NotificationReceiver;)V
    .locals 3
    .param p1, "bus"    # Lorg/alljoyn/bus/BusAttachment;
    .param p2, "receiver"    # Lorg/alljoyn/ns/NotificationReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0}, Lorg/alljoyn/ns/NotificationService;->init()V

    .line 101
    iget-object v1, p0, Lorg/alljoyn/ns/NotificationService;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v1}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v0

    .line 102
    .local v0, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    sget-object v1, Lorg/alljoyn/ns/NotificationService;->TAG:Ljava/lang/String;

    const-string v2, "Init Receive called, calling Transport"

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    if-nez p2, :cond_0

    .line 104
    new-instance v1, Lorg/alljoyn/ns/NotificationServiceException;

    const-string v2, "NotificationReceiver interface should be implemented in order to receive notifications, received null pointer"

    invoke-direct {v1, v2}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_0
    iget-object v1, p0, Lorg/alljoyn/ns/NotificationService;->transport:Lorg/alljoyn/ns/transport/Transport;

    invoke-virtual {v1, p1, p2}, Lorg/alljoyn/ns/transport/Transport;->startReceiverTransport(Lorg/alljoyn/bus/BusAttachment;Lorg/alljoyn/ns/NotificationReceiver;)V

    .line 108
    return-void
.end method

.method public initSend(Lorg/alljoyn/bus/BusAttachment;Lorg/alljoyn/services/common/PropertyStore;)Lorg/alljoyn/ns/NotificationSender;
    .locals 3
    .param p1, "bus"    # Lorg/alljoyn/bus/BusAttachment;
    .param p2, "propertyStore"    # Lorg/alljoyn/services/common/PropertyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/alljoyn/ns/NotificationService;->init()V

    .line 78
    iget-object v1, p0, Lorg/alljoyn/ns/NotificationService;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v1}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v0

    .line 80
    .local v0, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    if-nez p2, :cond_0

    .line 81
    new-instance v1, Lorg/alljoyn/ns/NotificationServiceException;

    const-string v2, "PropertyStore is NULL"

    invoke-direct {v1, v2}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_0
    sget-object v1, Lorg/alljoyn/ns/NotificationService;->TAG:Ljava/lang/String;

    const-string v2, "Init Send invoked, calling Transport"

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lorg/alljoyn/ns/NotificationService;->transport:Lorg/alljoyn/ns/transport/Transport;

    invoke-virtual {v1, p1, p2}, Lorg/alljoyn/ns/transport/Transport;->startSenderTransport(Lorg/alljoyn/bus/BusAttachment;Lorg/alljoyn/services/common/PropertyStore;)V

    .line 87
    sget-object v1, Lorg/alljoyn/ns/NotificationService;->TAG:Ljava/lang/String;

    const-string v2, "Creating and returning NotificationSender"

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v1, Lorg/alljoyn/ns/NotificationSender;

    invoke-direct {v1}, Lorg/alljoyn/ns/NotificationSender;-><init>()V

    return-object v1
.end method

.method public setLogger(Lorg/alljoyn/ns/commons/GenericLogger;)V
    .locals 2
    .param p1, "logger"    # Lorg/alljoyn/ns/commons/GenericLogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Lorg/alljoyn/ns/NotificationService;->init()V

    .line 118
    if-nez p1, :cond_0

    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Provided logger is NULL"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    iget-object v0, p0, Lorg/alljoyn/ns/NotificationService;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v0, p1}, Lorg/alljoyn/ns/commons/NativePlatform;->setNativeLogger(Lorg/alljoyn/ns/commons/GenericLogger;)V

    .line 122
    return-void
.end method

.method public shutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0}, Lorg/alljoyn/ns/NotificationService;->init()V

    .line 130
    iget-object v0, p0, Lorg/alljoyn/ns/NotificationService;->transport:Lorg/alljoyn/ns/transport/Transport;

    invoke-virtual {v0}, Lorg/alljoyn/ns/transport/Transport;->shutdown()V

    .line 131
    return-void
.end method

.method public shutdownReceiver()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0}, Lorg/alljoyn/ns/NotificationService;->init()V

    .line 148
    iget-object v0, p0, Lorg/alljoyn/ns/NotificationService;->transport:Lorg/alljoyn/ns/transport/Transport;

    invoke-virtual {v0}, Lorg/alljoyn/ns/transport/Transport;->shutdownReceiver()V

    .line 149
    return-void
.end method

.method public shutdownSender()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0}, Lorg/alljoyn/ns/NotificationService;->init()V

    .line 139
    iget-object v0, p0, Lorg/alljoyn/ns/NotificationService;->transport:Lorg/alljoyn/ns/transport/Transport;

    invoke-virtual {v0}, Lorg/alljoyn/ns/transport/Transport;->shutdownSender()V

    .line 140
    return-void
.end method

.class public Lorg/alljoyn/ns/transport/Transport;
.super Ljava/lang/Object;
.source "Transport.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final transport:Lorg/alljoyn/ns/transport/Transport;


# instance fields
.field private busAttachment:Lorg/alljoyn/bus/BusAttachment;

.field private isReceiverTransportCalled:Z

.field private isSenderTransportCalled:Z

.field private nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

.field private propertyStore:Lorg/alljoyn/services/common/PropertyStore;

.field private receiverTransport:Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;

.field private senderTransport:Lorg/alljoyn/ns/transport/producer/SenderTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ioe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ns/transport/Transport;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ns/transport/Transport;->TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Lorg/alljoyn/ns/transport/Transport;

    invoke-direct {v0}, Lorg/alljoyn/ns/transport/Transport;-><init>()V

    sput-object v0, Lorg/alljoyn/ns/transport/Transport;->transport:Lorg/alljoyn/ns/transport/Transport;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean v0, p0, Lorg/alljoyn/ns/transport/Transport;->isSenderTransportCalled:Z

    .line 91
    iput-boolean v0, p0, Lorg/alljoyn/ns/transport/Transport;->isReceiverTransportCalled:Z

    .line 104
    return-void
.end method

.method public static getInstance()Lorg/alljoyn/ns/transport/Transport;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lorg/alljoyn/ns/transport/Transport;->transport:Lorg/alljoyn/ns/transport/Transport;

    return-object v0
.end method

.method private saveBus(Lorg/alljoyn/bus/BusAttachment;)V
    .locals 4
    .param p1, "bus"    # Lorg/alljoyn/bus/BusAttachment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 431
    iget-object v1, p0, Lorg/alljoyn/ns/transport/Transport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v1}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v0

    .line 433
    .local v0, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    if-nez p1, :cond_0

    .line 434
    sget-object v1, Lorg/alljoyn/ns/transport/Transport;->TAG:Ljava/lang/String;

    const-string v2, "Received a NULL BusAttachment"

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    new-instance v1, Lorg/alljoyn/ns/NotificationServiceException;

    const-string v2, "Received a not initialized BusAttachment"

    invoke-direct {v1, v2}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 438
    :cond_0
    iget-object v1, p0, Lorg/alljoyn/ns/transport/Transport;->busAttachment:Lorg/alljoyn/bus/BusAttachment;

    if-nez v1, :cond_3

    .line 439
    invoke-virtual {p1}, Lorg/alljoyn/bus/BusAttachment;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 440
    sget-object v1, Lorg/alljoyn/ns/transport/Transport;->TAG:Ljava/lang/String;

    const-string v2, "Received a BusAttachment that is not connected to the AJ Bus"

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    new-instance v1, Lorg/alljoyn/ns/NotificationServiceException;

    const-string v2, "Received a BusAttachment that is not connected to the AJ bus"

    invoke-direct {v1, v2}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    :cond_1
    sget-object v1, Lorg/alljoyn/ns/transport/Transport;->TAG:Ljava/lang/String;

    const-string v2, "BusAttachment is stored successfully"

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iput-object p1, p0, Lorg/alljoyn/ns/transport/Transport;->busAttachment:Lorg/alljoyn/bus/BusAttachment;

    .line 451
    :cond_2
    return-void

    .line 446
    :cond_3
    iget-object v1, p0, Lorg/alljoyn/ns/transport/Transport;->busAttachment:Lorg/alljoyn/bus/BusAttachment;

    invoke-virtual {v1}, Lorg/alljoyn/bus/BusAttachment;->getUniqueName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/alljoyn/bus/BusAttachment;->getUniqueName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 447
    sget-object v1, Lorg/alljoyn/ns/transport/Transport;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotificationService received a new BusAttachment: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/alljoyn/bus/BusAttachment;->getUniqueName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', while previously initialized with a BusAttachment: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ns/transport/Transport;->busAttachment:Lorg/alljoyn/bus/BusAttachment;

    invoke-virtual {v3}, Lorg/alljoyn/bus/BusAttachment;->getUniqueName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    new-instance v1, Lorg/alljoyn/ns/NotificationServiceException;

    const-string v2, "BusAttachment already exists"

    invoke-direct {v1, v2}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setNativePlatform()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 460
    iget-object v1, p0, Lorg/alljoyn/ns/transport/Transport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    if-nez v1, :cond_0

    .line 462
    :try_start_0
    invoke-static {}, Lorg/alljoyn/ns/commons/NativePlatformFactory;->getPlatformObject()Lorg/alljoyn/ns/commons/NativePlatform;

    move-result-object v1

    iput-object v1, p0, Lorg/alljoyn/ns/transport/Transport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;
    :try_end_0
    .catch Lorg/alljoyn/ns/commons/NativePlatformFactoryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :cond_0
    return-void

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "npfe":Lorg/alljoyn/ns/commons/NativePlatformFactoryException;
    new-instance v1, Lorg/alljoyn/ns/NotificationServiceException;

    invoke-virtual {v0}, Lorg/alljoyn/ns/commons/NativePlatformFactoryException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private stopReceiverTransport(Lorg/alljoyn/ns/commons/GenericLogger;)V
    .locals 4
    .param p1, "logger"    # Lorg/alljoyn/ns/commons/GenericLogger;

    .prologue
    const/4 v3, 0x0

    .line 534
    iget-object v1, p0, Lorg/alljoyn/ns/transport/Transport;->receiverTransport:Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;

    if-eqz v1, :cond_0

    .line 535
    iget-object v1, p0, Lorg/alljoyn/ns/transport/Transport;->receiverTransport:Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;

    invoke-virtual {v1}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->stopReceiverTransport()V

    .line 536
    iput-object v3, p0, Lorg/alljoyn/ns/transport/Transport;->receiverTransport:Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;

    .line 540
    :cond_0
    iget-boolean v1, p0, Lorg/alljoyn/ns/transport/Transport;->isSenderTransportCalled:Z

    if-nez v1, :cond_2

    .line 542
    sget-object v1, Lorg/alljoyn/ns/transport/Transport;->TAG:Ljava/lang/String;

    const-string v2, "Sender is not running, clearing common resources"

    invoke-interface {p1, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-static {}, Lorg/alljoyn/ns/transport/TaskManager;->getInstance()Lorg/alljoyn/ns/transport/TaskManager;

    move-result-object v0

    .line 545
    .local v0, "taskManager":Lorg/alljoyn/ns/transport/TaskManager;
    invoke-virtual {v0}, Lorg/alljoyn/ns/transport/TaskManager;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 546
    invoke-virtual {v0}, Lorg/alljoyn/ns/transport/TaskManager;->shutdown()V

    .line 549
    :cond_1
    iput-object v3, p0, Lorg/alljoyn/ns/transport/Transport;->busAttachment:Lorg/alljoyn/bus/BusAttachment;

    .line 552
    .end local v0    # "taskManager":Lorg/alljoyn/ns/transport/TaskManager;
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/alljoyn/ns/transport/Transport;->isReceiverTransportCalled:Z

    .line 553
    return-void
.end method

.method private stopSenderTransport(Lorg/alljoyn/ns/commons/GenericLogger;)V
    .locals 4
    .param p1, "logger"    # Lorg/alljoyn/ns/commons/GenericLogger;

    .prologue
    const/4 v3, 0x0

    .line 505
    iget-object v1, p0, Lorg/alljoyn/ns/transport/Transport;->senderTransport:Lorg/alljoyn/ns/transport/producer/SenderTransport;

    if-eqz v1, :cond_0

    .line 506
    iget-object v1, p0, Lorg/alljoyn/ns/transport/Transport;->senderTransport:Lorg/alljoyn/ns/transport/producer/SenderTransport;

    invoke-virtual {v1}, Lorg/alljoyn/ns/transport/producer/SenderTransport;->stopSenderTransport()V

    .line 507
    iput-object v3, p0, Lorg/alljoyn/ns/transport/Transport;->senderTransport:Lorg/alljoyn/ns/transport/producer/SenderTransport;

    .line 511
    :cond_0
    iget-boolean v1, p0, Lorg/alljoyn/ns/transport/Transport;->isReceiverTransportCalled:Z

    if-nez v1, :cond_2

    .line 513
    sget-object v1, Lorg/alljoyn/ns/transport/Transport;->TAG:Ljava/lang/String;

    const-string v2, "Receiver is not running, clearing common resources"

    invoke-interface {p1, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-static {}, Lorg/alljoyn/ns/transport/TaskManager;->getInstance()Lorg/alljoyn/ns/transport/TaskManager;

    move-result-object v0

    .line 516
    .local v0, "taskManager":Lorg/alljoyn/ns/transport/TaskManager;
    invoke-virtual {v0}, Lorg/alljoyn/ns/transport/TaskManager;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    invoke-virtual {v0}, Lorg/alljoyn/ns/transport/TaskManager;->shutdown()V

    .line 520
    :cond_1
    iput-object v3, p0, Lorg/alljoyn/ns/transport/Transport;->busAttachment:Lorg/alljoyn/bus/BusAttachment;

    .line 523
    .end local v0    # "taskManager":Lorg/alljoyn/ns/transport/TaskManager;
    :cond_2
    iput-object v3, p0, Lorg/alljoyn/ns/transport/Transport;->propertyStore:Lorg/alljoyn/services/common/PropertyStore;

    .line 524
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/alljoyn/ns/transport/Transport;->isSenderTransportCalled:Z

    .line 525
    return-void
.end method


# virtual methods
.method public deleteLastMessage(Lorg/alljoyn/ns/NotificationMessageType;)V
    .locals 4
    .param p1, "messageType"    # Lorg/alljoyn/ns/NotificationMessageType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 287
    :try_start_0
    invoke-virtual {p0}, Lorg/alljoyn/ns/transport/Transport;->getLogger()Lorg/alljoyn/ns/commons/GenericLogger;
    :try_end_0
    .catch Lorg/alljoyn/ns/NotificationServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 293
    .local v0, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    iget-boolean v2, p0, Lorg/alljoyn/ns/transport/Transport;->isSenderTransportCalled:Z

    if-nez v2, :cond_0

    .line 294
    sget-object v2, Lorg/alljoyn/ns/transport/Transport;->TAG:Ljava/lang/String;

    const-string v3, "Notification service is not running, can\'t delete message"

    invoke-interface {v0, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    new-instance v2, Lorg/alljoyn/ns/NotificationServiceException;

    const-string v3, "Notification service is not running, can\'t delete message"

    invoke-direct {v2, v3}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 289
    .end local v0    # "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    :catch_0
    move-exception v1

    .line 290
    .local v1, "nse":Lorg/alljoyn/ns/NotificationServiceException;
    throw v1

    .line 298
    .end local v1    # "nse":Lorg/alljoyn/ns/NotificationServiceException;
    .restart local v0    # "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    :cond_0
    iget-object v2, p0, Lorg/alljoyn/ns/transport/Transport;->senderTransport:Lorg/alljoyn/ns/transport/producer/SenderTransport;

    invoke-virtual {v2, p1}, Lorg/alljoyn/ns/transport/producer/SenderTransport;->deleteLastMessage(Lorg/alljoyn/ns/NotificationMessageType;)V

    .line 299
    return-void
.end method

.method public getAppId(Ljava/util/Map;)Ljava/util/UUID;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/UUID;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 136
    new-instance v1, Lorg/alljoyn/ns/NotificationServiceException;

    const-string v2, "props can\'t be NULL"

    invoke-direct {v1, v2}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_0
    const-string v1, "AppId"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 140
    .local v0, "appIdObj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/UUID;

    if-nez v1, :cond_1

    .line 141
    new-instance v1, Lorg/alljoyn/ns/NotificationServiceException;

    const-string v2, "The AppId is NULL or not an instance of UUID"

    invoke-direct {v1, v2}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_1
    check-cast v0, Ljava/util/UUID;

    .end local v0    # "appIdObj":Ljava/lang/Object;
    return-object v0
.end method

.method public getBusAttachment()Lorg/alljoyn/bus/BusAttachment;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/alljoyn/ns/transport/Transport;->busAttachment:Lorg/alljoyn/bus/BusAttachment;

    return-object v0
.end method

.method public declared-synchronized getIsSuperAgentFound()Z
    .locals 1

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/alljoyn/ns/transport/Transport;->receiverTransport:Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 154
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/alljoyn/ns/transport/Transport;->receiverTransport:Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;

    invoke-virtual {v0}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->getIsSuperAgentFound()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLogger()Lorg/alljoyn/ns/commons/GenericLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 415
    invoke-direct {p0}, Lorg/alljoyn/ns/transport/Transport;->setNativePlatform()V

    .line 416
    iget-object v0, p0, Lorg/alljoyn/ns/transport/Transport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v0}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized onReceivedFirstSuperAgentNotification(Ljava/lang/String;)V
    .locals 5
    .param p1, "superAgentUniqueName"    # Ljava/lang/String;

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/alljoyn/ns/transport/Transport;->getLogger()Lorg/alljoyn/ns/commons/GenericLogger;
    :try_end_0
    .catch Lorg/alljoyn/ns/NotificationServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 352
    .local v0, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    :try_start_1
    iget-boolean v2, p0, Lorg/alljoyn/ns/transport/Transport;->isReceiverTransportCalled:Z

    if-nez v2, :cond_0

    .line 353
    sget-object v2, Lorg/alljoyn/ns/transport/Transport;->TAG:Ljava/lang/String;

    const-string v3, "The method \'onReceivedFirstSuperAgentNotification\' was called, but the Notification Received is stopped"

    invoke-interface {v0, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    .end local v0    # "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    :goto_0
    monitor-exit p0

    return-void

    .line 347
    :catch_0
    move-exception v1

    .line 348
    .local v1, "nse":Lorg/alljoyn/ns/NotificationServiceException;
    :try_start_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get logger in onReceivedFirstSuperAgentNotification error: \'"

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

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 345
    .end local v1    # "nse":Lorg/alljoyn/ns/NotificationServiceException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 357
    .restart local v0    # "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    :cond_0
    :try_start_3
    iget-object v2, p0, Lorg/alljoyn/ns/transport/Transport;->receiverTransport:Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;

    invoke-virtual {v2, p1}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->onReceivedFirstSuperAgentNotification(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public onReceivedNotification(Lorg/alljoyn/ns/Notification;)V
    .locals 5
    .param p1, "notification"    # Lorg/alljoyn/ns/Notification;

    .prologue
    .line 310
    :try_start_0
    invoke-virtual {p0}, Lorg/alljoyn/ns/transport/Transport;->getLogger()Lorg/alljoyn/ns/commons/GenericLogger;
    :try_end_0
    .catch Lorg/alljoyn/ns/NotificationServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 317
    .local v0, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    monitor-enter p0

    .line 319
    :try_start_1
    iget-boolean v2, p0, Lorg/alljoyn/ns/transport/Transport;->isReceiverTransportCalled:Z

    if-nez v2, :cond_0

    .line 320
    sget-object v2, Lorg/alljoyn/ns/transport/Transport;->TAG:Ljava/lang/String;

    const-string v3, "Received a Notification message, but the Notification Receiver transport is stopped"

    invoke-interface {v0, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    .end local v0    # "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v1

    .line 313
    .local v1, "nse":Lorg/alljoyn/ns/NotificationServiceException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get logger in receive notification error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/alljoyn/ns/NotificationServiceException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 324
    .end local v1    # "nse":Lorg/alljoyn/ns/NotificationServiceException;
    .restart local v0    # "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    :cond_0
    :try_start_2
    iget-object v2, p0, Lorg/alljoyn/ns/transport/Transport;->receiverTransport:Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;

    invoke-virtual {v2, p1}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->onReceivedNotification(Lorg/alljoyn/ns/Notification;)V

    .line 325
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onReceivedNotificationDismiss(ILjava/util/UUID;)V
    .locals 1
    .param p1, "msgId"    # I
    .param p2, "appId"    # Ljava/util/UUID;

    .prologue
    .line 335
    iget-object v0, p0, Lorg/alljoyn/ns/transport/Transport;->receiverTransport:Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;

    invoke-virtual {v0, p1, p2}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->onReceivedNotificationDismiss(ILjava/util/UUID;)V

    .line 336
    return-void
.end method

.method public readAllProperties()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 120
    .local v0, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    iget-object v2, p0, Lorg/alljoyn/ns/transport/Transport;->propertyStore:Lorg/alljoyn/services/common/PropertyStore;

    const-string v3, ""

    sget-object v4, Lorg/alljoyn/services/common/PropertyStore$Filter;->READ:Lorg/alljoyn/services/common/PropertyStore$Filter;

    invoke-interface {v2, v3, v4, v0}, Lorg/alljoyn/services/common/PropertyStore;->readAll(Ljava/lang/String;Lorg/alljoyn/services/common/PropertyStore$Filter;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/alljoyn/services/common/PropertyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    return-object v0

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, "pse":Lorg/alljoyn/services/common/PropertyStoreException;
    new-instance v2, Lorg/alljoyn/ns/NotificationServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read properties from the PropertyStore, Error: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/alljoyn/services/common/PropertyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public registerObjectAndSetSignalHandler(Lorg/alljoyn/ns/commons/GenericLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lorg/alljoyn/bus/BusObject;Ljava/lang/String;)Z
    .locals 5
    .param p1, "logger"    # Lorg/alljoyn/ns/commons/GenericLogger;
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "signalName"    # Ljava/lang/String;
    .param p4, "handlerMethod"    # Ljava/lang/reflect/Method;
    .param p5, "toBeRegistered"    # Lorg/alljoyn/bus/BusObject;
    .param p6, "servicePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 482
    sget-object v2, Lorg/alljoyn/ns/transport/Transport;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Registering BusObject and setting signal handler, IFName: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", method: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v2, p0, Lorg/alljoyn/ns/transport/Transport;->busAttachment:Lorg/alljoyn/bus/BusAttachment;

    invoke-virtual {v2, p5, p6}, Lorg/alljoyn/bus/BusAttachment;->registerBusObject(Lorg/alljoyn/bus/BusObject;Ljava/lang/String;)Lorg/alljoyn/bus/Status;

    move-result-object v0

    .line 484
    .local v0, "status":Lorg/alljoyn/bus/Status;
    sget-object v2, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-eq v0, v2, :cond_0

    .line 485
    sget-object v2, Lorg/alljoyn/ns/transport/Transport;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to register bus object, status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :goto_0
    return v1

    .line 489
    :cond_0
    iget-object v2, p0, Lorg/alljoyn/ns/transport/Transport;->busAttachment:Lorg/alljoyn/bus/BusAttachment;

    invoke-virtual {v2, p2, p3, p5, p4}, Lorg/alljoyn/bus/BusAttachment;->registerSignalHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;)Lorg/alljoyn/bus/Status;

    move-result-object v0

    .line 490
    sget-object v2, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-eq v0, v2, :cond_1

    .line 491
    sget-object v2, Lorg/alljoyn/ns/transport/Transport;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to register signal handler, status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 494
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public sendNotification(IILorg/alljoyn/ns/NotificationMessageType;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Ljava/util/Map;[Lorg/alljoyn/ns/transport/TransportNotificationText;I)V
    .locals 14
    .param p1, "version"    # I
    .param p2, "msgId"    # I
    .param p3, "messageType"    # Lorg/alljoyn/ns/NotificationMessageType;
    .param p4, "deviceId"    # Ljava/lang/String;
    .param p5, "deviceName"    # Ljava/lang/String;
    .param p6, "appId"    # [B
    .param p7, "appName"    # Ljava/lang/String;
    .param p10, "text"    # [Lorg/alljoyn/ns/transport/TransportNotificationText;
    .param p11, "ttl"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/alljoyn/ns/NotificationMessageType;",
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
    .line 253
    .local p8, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/alljoyn/bus/Variant;>;"
    .local p9, "customAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/alljoyn/ns/transport/Transport;->getLogger()Lorg/alljoyn/ns/commons/GenericLogger;
    :try_end_0
    .catch Lorg/alljoyn/ns/NotificationServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 259
    .local v12, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    iget-boolean v0, p0, Lorg/alljoyn/ns/transport/Transport;->isSenderTransportCalled:Z

    if-nez v0, :cond_0

    .line 260
    sget-object v0, Lorg/alljoyn/ns/transport/Transport;->TAG:Ljava/lang/String;

    const-string v1, "Notification service is not running, can\'t send message"

    invoke-interface {v12, v0, v1}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v0, Lorg/alljoyn/ns/NotificationServiceException;

    const-string v1, "Notification service is not running, can\'t send message"

    invoke-direct {v0, v1}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    .end local v12    # "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    :catch_0
    move-exception v13

    .line 256
    .local v13, "nse":Lorg/alljoyn/ns/NotificationServiceException;
    throw v13

    .line 264
    .end local v13    # "nse":Lorg/alljoyn/ns/NotificationServiceException;
    .restart local v12    # "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    :cond_0
    iget-object v0, p0, Lorg/alljoyn/ns/transport/Transport;->senderTransport:Lorg/alljoyn/ns/transport/producer/SenderTransport;

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lorg/alljoyn/ns/transport/producer/SenderTransport;->sendNotification(IILorg/alljoyn/ns/NotificationMessageType;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Ljava/util/Map;[Lorg/alljoyn/ns/transport/TransportNotificationText;I)V

    .line 276
    return-void
.end method

.method public declared-synchronized shutdown()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 365
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/alljoyn/ns/transport/Transport;->getLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v0

    .line 367
    .local v0, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    iget-object v1, p0, Lorg/alljoyn/ns/transport/Transport;->busAttachment:Lorg/alljoyn/bus/BusAttachment;

    if-nez v1, :cond_0

    .line 368
    sget-object v1, Lorg/alljoyn/ns/transport/Transport;->TAG:Ljava/lang/String;

    const-string v2, "No BusAttachment defined, sender and receiver must be down, returning"

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    :goto_0
    monitor-exit p0

    return-void

    .line 372
    :cond_0
    :try_start_1
    sget-object v1, Lorg/alljoyn/ns/transport/Transport;->TAG:Ljava/lang/String;

    const-string v2, "Shutdown called, stopping sender and receiver transports"

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-direct {p0, v0}, Lorg/alljoyn/ns/transport/Transport;->stopSenderTransport(Lorg/alljoyn/ns/commons/GenericLogger;)V

    .line 374
    invoke-direct {p0, v0}, Lorg/alljoyn/ns/transport/Transport;->stopReceiverTransport(Lorg/alljoyn/ns/commons/GenericLogger;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 365
    .end local v0    # "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized shutdownReceiver()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 398
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/alljoyn/ns/transport/Transport;->getLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v0

    .line 400
    .local v0, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    iget-boolean v1, p0, Lorg/alljoyn/ns/transport/Transport;->isReceiverTransportCalled:Z

    if-nez v1, :cond_0

    .line 401
    sget-object v1, Lorg/alljoyn/ns/transport/Transport;->TAG:Ljava/lang/String;

    const-string v2, "Receiver service wasn\'t started"

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    new-instance v1, Lorg/alljoyn/ns/NotificationServiceException;

    const-string v2, "Receiver service wasn\'t started"

    invoke-direct {v1, v2}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    .end local v0    # "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 405
    .restart local v0    # "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    :cond_0
    :try_start_1
    sget-object v1, Lorg/alljoyn/ns/transport/Transport;->TAG:Ljava/lang/String;

    const-string v2, "Stopping receiver transport"

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-direct {p0, v0}, Lorg/alljoyn/ns/transport/Transport;->stopReceiverTransport(Lorg/alljoyn/ns/commons/GenericLogger;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized shutdownSender()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 382
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/alljoyn/ns/transport/Transport;->getLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v0

    .line 384
    .local v0, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    iget-boolean v1, p0, Lorg/alljoyn/ns/transport/Transport;->isSenderTransportCalled:Z

    if-nez v1, :cond_0

    .line 385
    sget-object v1, Lorg/alljoyn/ns/transport/Transport;->TAG:Ljava/lang/String;

    const-string v2, "Sender service wasn\'t started"

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    new-instance v1, Lorg/alljoyn/ns/NotificationServiceException;

    const-string v2, "Sender service wasn\'t started"

    invoke-direct {v1, v2}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    .end local v0    # "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 389
    .restart local v0    # "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    :cond_0
    :try_start_1
    sget-object v1, Lorg/alljoyn/ns/transport/Transport;->TAG:Ljava/lang/String;

    const-string v2, "Stopping sender transport"

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-direct {p0, v0}, Lorg/alljoyn/ns/transport/Transport;->stopSenderTransport(Lorg/alljoyn/ns/commons/GenericLogger;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized startReceiverTransport(Lorg/alljoyn/bus/BusAttachment;Lorg/alljoyn/ns/NotificationReceiver;)V
    .locals 5
    .param p1, "bus"    # Lorg/alljoyn/bus/BusAttachment;
    .param p2, "receiver"    # Lorg/alljoyn/ns/NotificationReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/alljoyn/ns/transport/Transport;->getLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v0

    .line 208
    .local v0, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    iget-boolean v3, p0, Lorg/alljoyn/ns/transport/Transport;->isReceiverTransportCalled:Z

    if-eqz v3, :cond_0

    .line 209
    sget-object v3, Lorg/alljoyn/ns/transport/Transport;->TAG:Ljava/lang/String;

    const-string v4, "Receiver transport was previously started, returning"

    invoke-interface {v0, v3, v4}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :goto_0
    monitor-exit p0

    return-void

    .line 213
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lorg/alljoyn/ns/transport/Transport;->saveBus(Lorg/alljoyn/bus/BusAttachment;)V

    .line 215
    invoke-static {}, Lorg/alljoyn/ns/transport/TaskManager;->getInstance()Lorg/alljoyn/ns/transport/TaskManager;

    move-result-object v2

    .line 216
    .local v2, "taskManager":Lorg/alljoyn/ns/transport/TaskManager;
    invoke-virtual {v2}, Lorg/alljoyn/ns/transport/TaskManager;->isRunning()Z

    move-result v3

    if-nez v3, :cond_1

    .line 217
    iget-object v3, p0, Lorg/alljoyn/ns/transport/Transport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-virtual {v2, v3}, Lorg/alljoyn/ns/transport/TaskManager;->initPool(Lorg/alljoyn/ns/commons/NativePlatform;)V

    .line 220
    :cond_1
    new-instance v3, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;

    iget-object v4, p0, Lorg/alljoyn/ns/transport/Transport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-direct {v3, v4, p2}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;-><init>(Lorg/alljoyn/ns/commons/NativePlatform;Lorg/alljoyn/ns/NotificationReceiver;)V

    iput-object v3, p0, Lorg/alljoyn/ns/transport/Transport;->receiverTransport:Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    :try_start_2
    iget-object v3, p0, Lorg/alljoyn/ns/transport/Transport;->receiverTransport:Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;

    invoke-virtual {v3}, Lorg/alljoyn/ns/transport/consumer/ReceiverTransport;->startReceiverTransport()V
    :try_end_2
    .catch Lorg/alljoyn/ns/NotificationServiceException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    const/4 v3, 0x1

    :try_start_3
    iput-boolean v3, p0, Lorg/alljoyn/ns/transport/Transport;->isReceiverTransportCalled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 206
    .end local v0    # "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    .end local v2    # "taskManager":Lorg/alljoyn/ns/transport/TaskManager;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 225
    .restart local v0    # "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    .restart local v2    # "taskManager":Lorg/alljoyn/ns/transport/TaskManager;
    :catch_0
    move-exception v1

    .line 226
    .local v1, "nse":Lorg/alljoyn/ns/NotificationServiceException;
    :try_start_4
    invoke-direct {p0, v0}, Lorg/alljoyn/ns/transport/Transport;->stopReceiverTransport(Lorg/alljoyn/ns/commons/GenericLogger;)V

    .line 227
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized startSenderTransport(Lorg/alljoyn/bus/BusAttachment;Lorg/alljoyn/services/common/PropertyStore;)V
    .locals 5
    .param p1, "bus"    # Lorg/alljoyn/bus/BusAttachment;
    .param p2, "propertyStore"    # Lorg/alljoyn/services/common/PropertyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/alljoyn/ns/transport/Transport;->getLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v0

    .line 169
    .local v0, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    iget-boolean v3, p0, Lorg/alljoyn/ns/transport/Transport;->isSenderTransportCalled:Z

    if-eqz v3, :cond_0

    .line 170
    sget-object v3, Lorg/alljoyn/ns/transport/Transport;->TAG:Ljava/lang/String;

    const-string v4, "Sender transport was previously started, returning"

    invoke-interface {v0, v3, v4}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :goto_0
    monitor-exit p0

    return-void

    .line 175
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lorg/alljoyn/ns/transport/Transport;->saveBus(Lorg/alljoyn/bus/BusAttachment;)V

    .line 177
    invoke-static {}, Lorg/alljoyn/ns/transport/TaskManager;->getInstance()Lorg/alljoyn/ns/transport/TaskManager;

    move-result-object v2

    .line 178
    .local v2, "taskManager":Lorg/alljoyn/ns/transport/TaskManager;
    invoke-virtual {v2}, Lorg/alljoyn/ns/transport/TaskManager;->isRunning()Z

    move-result v3

    if-nez v3, :cond_1

    .line 179
    iget-object v3, p0, Lorg/alljoyn/ns/transport/Transport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-virtual {v2, v3}, Lorg/alljoyn/ns/transport/TaskManager;->initPool(Lorg/alljoyn/ns/commons/NativePlatform;)V

    .line 182
    :cond_1
    iput-object p2, p0, Lorg/alljoyn/ns/transport/Transport;->propertyStore:Lorg/alljoyn/services/common/PropertyStore;

    .line 184
    new-instance v3, Lorg/alljoyn/ns/transport/producer/SenderTransport;

    iget-object v4, p0, Lorg/alljoyn/ns/transport/Transport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-direct {v3, v4}, Lorg/alljoyn/ns/transport/producer/SenderTransport;-><init>(Lorg/alljoyn/ns/commons/NativePlatform;)V

    iput-object v3, p0, Lorg/alljoyn/ns/transport/Transport;->senderTransport:Lorg/alljoyn/ns/transport/producer/SenderTransport;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    :try_start_2
    iget-object v3, p0, Lorg/alljoyn/ns/transport/Transport;->senderTransport:Lorg/alljoyn/ns/transport/producer/SenderTransport;

    invoke-virtual {v3}, Lorg/alljoyn/ns/transport/producer/SenderTransport;->startSenderTransport()V
    :try_end_2
    .catch Lorg/alljoyn/ns/NotificationServiceException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    const/4 v3, 0x1

    :try_start_3
    iput-boolean v3, p0, Lorg/alljoyn/ns/transport/Transport;->isSenderTransportCalled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 167
    .end local v0    # "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    .end local v2    # "taskManager":Lorg/alljoyn/ns/transport/TaskManager;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 189
    .restart local v0    # "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    .restart local v2    # "taskManager":Lorg/alljoyn/ns/transport/TaskManager;
    :catch_0
    move-exception v1

    .line 190
    .local v1, "nse":Lorg/alljoyn/ns/NotificationServiceException;
    :try_start_4
    invoke-direct {p0, v0}, Lorg/alljoyn/ns/transport/Transport;->stopSenderTransport(Lorg/alljoyn/ns/commons/GenericLogger;)V

    .line 191
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

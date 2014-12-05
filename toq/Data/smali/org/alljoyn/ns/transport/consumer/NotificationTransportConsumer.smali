.class Lorg/alljoyn/ns/transport/consumer/NotificationTransportConsumer;
.super Ljava/lang/Object;
.source "NotificationTransportConsumer.java"

# interfaces
.implements Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;
.implements Lorg/alljoyn/ns/transport/interfaces/NotificationTransportSuperAgent;


# static fields
.field public static final FROM_PRODUCER_RECEIVER_PATH:Ljava/lang/String; = "/producerReceiver"

.field public static final FROM_SUPERAGENT_RECEIVER_PATH:Ljava/lang/String; = "/superagentReceiver"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private servicePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ioe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ns/transport/consumer/NotificationTransportConsumer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ns/transport/consumer/NotificationTransportConsumer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "objServicePath"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/alljoyn/ns/transport/consumer/NotificationTransportConsumer;->servicePath:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public getServicePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/alljoyn/ns/transport/consumer/NotificationTransportConsumer;->servicePath:Ljava/lang/String;

    return-object v0
.end method

.method public notify(IISLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Ljava/util/Map;[Lorg/alljoyn/ns/transport/TransportNotificationText;)V
    .locals 17
    .param p1, "version"    # I
    .param p2, "msgId"    # I
    .param p3, "messageType"    # S
    .param p4, "deviceId"    # Ljava/lang/String;
    .param p5, "deviceName"    # Ljava/lang/String;
    .param p6, "appId"    # [B
    .param p7, "appName"    # Ljava/lang/String;
    .param p10, "text"    # [Lorg/alljoyn/ns/transport/TransportNotificationText;
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
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    .local p8, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/alljoyn/bus/Variant;>;"
    .local p9, "customAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lorg/alljoyn/ns/transport/Transport;->getInstance()Lorg/alljoyn/ns/transport/Transport;

    move-result-object v16

    .line 79
    .local v16, "transport":Lorg/alljoyn/ns/transport/Transport;
    invoke-virtual/range {v16 .. v16}, Lorg/alljoyn/ns/transport/Transport;->getBusAttachment()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v12

    .line 80
    .local v12, "busAttachment":Lorg/alljoyn/bus/BusAttachment;
    invoke-virtual {v12}, Lorg/alljoyn/bus/BusAttachment;->enableConcurrentCallbacks()V

    .line 84
    :try_start_0
    invoke-static {}, Lorg/alljoyn/ns/commons/NativePlatformFactory;->getPlatformObject()Lorg/alljoyn/ns/commons/NativePlatform;

    move-result-object v1

    invoke-interface {v1}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;
    :try_end_0
    .catch Lorg/alljoyn/ns/commons/NativePlatformFactoryException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v13

    .line 87
    .local v13, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    :try_start_1
    invoke-virtual {v12}, Lorg/alljoyn/bus/BusAttachment;->getMessageContext()Lorg/alljoyn/bus/MessageContext;

    move-result-object v1

    iget-object v3, v1, Lorg/alljoyn/bus/MessageContext;->sender:Ljava/lang/String;

    .line 88
    .local v3, "sender":Ljava/lang/String;
    sget-object v1, Lorg/alljoyn/ns/transport/consumer/NotificationTransportConsumer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received notification from: \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' by \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/alljoyn/ns/transport/consumer/NotificationTransportConsumer;->servicePath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' object, notification id: \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\', handling"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {v16 .. v16}, Lorg/alljoyn/ns/transport/Transport;->getIsSuperAgentFound()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/superagentReceiver"

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/alljoyn/ns/transport/consumer/NotificationTransportConsumer;->servicePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    sget-object v1, Lorg/alljoyn/ns/transport/consumer/NotificationTransportConsumer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The received message id: \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' is the first we received from a SuperAgent, remove producer handling and handle current received message"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lorg/alljoyn/ns/transport/Transport;->onReceivedFirstSuperAgentNotification(Ljava/lang/String;)V

    .line 97
    :cond_0
    sget-object v1, Lorg/alljoyn/ns/transport/consumer/NotificationTransportConsumer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Forwarding the received notification id: \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' to PayloadAdapter"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 98
    invoke-static/range {v1 .. v11}, Lorg/alljoyn/ns/PayloadAdapter;->receivePayload(IILjava/lang/String;SLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Ljava/util/Map;[Lorg/alljoyn/ns/transport/TransportNotificationText;)V
    :try_end_1
    .catch Lorg/alljoyn/ns/NotificationServiceException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/alljoyn/ns/commons/NativePlatformFactoryException; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    .end local v3    # "sender":Ljava/lang/String;
    .end local v13    # "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    :goto_0
    return-void

    .line 99
    .restart local v13    # "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    :catch_0
    move-exception v15

    .line 100
    .local v15, "nse":Lorg/alljoyn/ns/NotificationServiceException;
    :try_start_2
    sget-object v1, Lorg/alljoyn/ns/transport/consumer/NotificationTransportConsumer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read the received notification, Error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Lorg/alljoyn/ns/NotificationServiceException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/alljoyn/ns/commons/NativePlatformFactoryException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 103
    .end local v13    # "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    .end local v15    # "nse":Lorg/alljoyn/ns/NotificationServiceException;
    :catch_1
    move-exception v14

    .line 104
    .local v14, "npfe":Lorg/alljoyn/ns/commons/NativePlatformFactoryException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/alljoyn/ns/transport/consumer/NotificationTransportConsumer;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": Unexpected error occured: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Lorg/alljoyn/ns/commons/NativePlatformFactoryException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

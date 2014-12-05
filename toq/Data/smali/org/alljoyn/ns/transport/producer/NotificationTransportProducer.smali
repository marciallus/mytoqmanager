.class Lorg/alljoyn/ns/transport/producer/NotificationTransportProducer;
.super Ljava/lang/Object;
.source "NotificationTransportProducer.java"

# interfaces
.implements Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;


# static fields
.field private static servicePath:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/alljoyn/ns/NotificationMessageType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/alljoyn/ns/NotificationMessageType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/alljoyn/ns/transport/producer/NotificationTransportProducer;->servicePath:Ljava/util/Map;

    .line 42
    sget-object v0, Lorg/alljoyn/ns/transport/producer/NotificationTransportProducer;->servicePath:Ljava/util/Map;

    sget-object v1, Lorg/alljoyn/ns/NotificationMessageType;->EMERGENCY:Lorg/alljoyn/ns/NotificationMessageType;

    const-string v2, "/emergency"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lorg/alljoyn/ns/transport/producer/NotificationTransportProducer;->servicePath:Ljava/util/Map;

    sget-object v1, Lorg/alljoyn/ns/NotificationMessageType;->WARNING:Lorg/alljoyn/ns/NotificationMessageType;

    const-string v2, "/warning"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lorg/alljoyn/ns/transport/producer/NotificationTransportProducer;->servicePath:Ljava/util/Map;

    sget-object v1, Lorg/alljoyn/ns/NotificationMessageType;->INFO:Lorg/alljoyn/ns/NotificationMessageType;

    const-string v2, "/info"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServicePath()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/alljoyn/ns/NotificationMessageType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    sget-object v0, Lorg/alljoyn/ns/transport/producer/NotificationTransportProducer;->servicePath:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public notify(IISLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Ljava/util/Map;[Lorg/alljoyn/ns/transport/TransportNotificationText;)V
    .locals 0
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
    .line 64
    .local p8, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/alljoyn/bus/Variant;>;"
    .local p9, "customAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

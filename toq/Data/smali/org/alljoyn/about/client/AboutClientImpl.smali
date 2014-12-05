.class public Lorg/alljoyn/about/client/AboutClientImpl;
.super Lorg/alljoyn/services/common/ClientBaseImpl;
.source "AboutClientImpl.java"

# interfaces
.implements Lorg/alljoyn/about/client/AboutClient;


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lorg/alljoyn/about/client/AboutClientImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/about/client/AboutClientImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/alljoyn/bus/BusAttachment;Lorg/alljoyn/services/common/ServiceAvailabilityListener;S)V
    .locals 7

    .prologue
    .line 40
    const-string v4, "/About"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v1, Lorg/alljoyn/about/transport/AboutTransport;

    aput-object v1, v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/alljoyn/services/common/ClientBaseImpl;-><init>(Ljava/lang/String;Lorg/alljoyn/bus/BusAttachment;Lorg/alljoyn/services/common/ServiceAvailabilityListener;Ljava/lang/String;[Ljava/lang/Class;S)V

    .line 41
    return-void
.end method


# virtual methods
.method public connect()Lorg/alljoyn/bus/Status;
    .locals 4

    .prologue
    .line 109
    invoke-static {}, Lorg/alljoyn/about/AboutServiceImpl;->getInstance()Lorg/alljoyn/about/AboutService;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/about/AboutServiceImpl;

    .line 110
    invoke-virtual {v0}, Lorg/alljoyn/about/AboutServiceImpl;->getLogger()Lorg/alljoyn/services/common/utils/GenericLogger;

    move-result-object v0

    sget-object v1, Lorg/alljoyn/about/client/AboutClientImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JoiningSession with peer: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/alljoyn/about/client/AboutClientImpl;->getPeerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/services/common/utils/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-super {p0}, Lorg/alljoyn/services/common/ClientBaseImpl;->connect()Lorg/alljoyn/bus/Status;

    move-result-object v0

    return-object v0
.end method

.method public getAbout(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/alljoyn/about/client/AboutClientImpl;->getProxyObject()Lorg/alljoyn/bus/ProxyBusObject;

    move-result-object v0

    .line 80
    const-class v1, Lorg/alljoyn/about/transport/AboutTransport;

    invoke-virtual {v0, v1}, Lorg/alljoyn/bus/ProxyBusObject;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/about/transport/AboutTransport;

    .line 81
    invoke-interface {v0, p1}, Lorg/alljoyn/about/transport/AboutTransport;->GetAboutData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 82
    invoke-static {v0}, Lorg/alljoyn/services/common/utils/TransportUtil;->fromVariantMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBusObjectDescriptions()[Lorg/alljoyn/services/common/BusObjectDescription;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/alljoyn/about/client/AboutClientImpl;->getProxyObject()Lorg/alljoyn/bus/ProxyBusObject;

    move-result-object v0

    .line 90
    const-class v1, Lorg/alljoyn/about/transport/AboutTransport;

    invoke-virtual {v0, v1}, Lorg/alljoyn/bus/ProxyBusObject;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/about/transport/AboutTransport;

    .line 91
    invoke-interface {v0}, Lorg/alljoyn/about/transport/AboutTransport;->GetObjectDescription()[Lorg/alljoyn/services/common/BusObjectDescription;

    move-result-object v0

    .line 92
    return-object v0
.end method

.method public getDefaultLanguage()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/alljoyn/about/client/AboutClientImpl;->getProxyObject()Lorg/alljoyn/bus/ProxyBusObject;

    move-result-object v0

    .line 68
    const-class v1, Lorg/alljoyn/about/transport/AboutTransport;

    invoke-virtual {v0, v1}, Lorg/alljoyn/bus/ProxyBusObject;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/about/transport/AboutTransport;

    .line 69
    const-string v1, "en"

    invoke-interface {v0, v1}, Lorg/alljoyn/about/transport/AboutTransport;->GetAboutData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lorg/alljoyn/services/common/utils/TransportUtil;->fromVariantMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 71
    const-string v1, "DefaultLanguage"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    return-object v0
.end method

.method public getLanguages()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lorg/alljoyn/about/client/AboutClientImpl;->getProxyObject()Lorg/alljoyn/bus/ProxyBusObject;

    move-result-object v0

    .line 48
    const-class v1, Lorg/alljoyn/about/transport/AboutTransport;

    invoke-virtual {v0, v1}, Lorg/alljoyn/bus/ProxyBusObject;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/about/transport/AboutTransport;

    .line 49
    const-string v1, "en"

    invoke-interface {v0, v1}, Lorg/alljoyn/about/transport/AboutTransport;->GetAboutData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 50
    invoke-static {v0}, Lorg/alljoyn/services/common/utils/TransportUtil;->fromVariantMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 51
    const-string v0, "SupportedLanguages"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 52
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 59
    :goto_0
    return-object v0

    .line 58
    :cond_0
    const-string v0, "DefaultLanguage"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    move-object v0, v1

    goto :goto_0
.end method

.method public getVersion()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/alljoyn/about/client/AboutClientImpl;->getProxyObject()Lorg/alljoyn/bus/ProxyBusObject;

    move-result-object v0

    .line 100
    const-class v1, Lorg/alljoyn/about/transport/AboutTransport;

    invoke-virtual {v0, v1}, Lorg/alljoyn/bus/ProxyBusObject;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/about/transport/AboutTransport;

    .line 101
    invoke-interface {v0}, Lorg/alljoyn/about/transport/AboutTransport;->getVersion()S

    move-result v0

    return v0
.end method

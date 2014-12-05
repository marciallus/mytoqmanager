.class public Lorg/alljoyn/about/icon/AboutIconClientImpl;
.super Lorg/alljoyn/services/common/ClientBaseImpl;
.source "AboutIconClientImpl.java"

# interfaces
.implements Lorg/alljoyn/about/icon/AboutIconClient;


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/alljoyn/about/icon/AboutIconClientImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/about/icon/AboutIconClientImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/alljoyn/bus/BusAttachment;Lorg/alljoyn/services/common/ServiceAvailabilityListener;S)V
    .locals 7

    .prologue
    .line 32
    const-string v4, "/About/DeviceIcon"

    const-class v5, Lorg/alljoyn/about/transport/IconTransport;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/alljoyn/services/common/ClientBaseImpl;-><init>(Ljava/lang/String;Lorg/alljoyn/bus/BusAttachment;Lorg/alljoyn/services/common/ServiceAvailabilityListener;Ljava/lang/String;Ljava/lang/Class;S)V

    .line 33
    return-void
.end method


# virtual methods
.method public GetContent()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/alljoyn/about/icon/AboutIconClientImpl;->getProxyObject()Lorg/alljoyn/bus/ProxyBusObject;

    move-result-object v0

    .line 71
    const-class v1, Lorg/alljoyn/about/transport/IconTransport;

    invoke-virtual {v0, v1}, Lorg/alljoyn/bus/ProxyBusObject;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/about/transport/IconTransport;

    .line 72
    invoke-interface {v0}, Lorg/alljoyn/about/transport/IconTransport;->GetContent()[B

    move-result-object v0

    return-object v0
.end method

.method public GetUrl()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/alljoyn/about/icon/AboutIconClientImpl;->getProxyObject()Lorg/alljoyn/bus/ProxyBusObject;

    move-result-object v0

    .line 63
    const-class v1, Lorg/alljoyn/about/transport/IconTransport;

    invoke-virtual {v0, v1}, Lorg/alljoyn/bus/ProxyBusObject;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/about/transport/IconTransport;

    .line 64
    invoke-interface {v0}, Lorg/alljoyn/about/transport/IconTransport;->GetUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/alljoyn/about/icon/AboutIconClientImpl;->getProxyObject()Lorg/alljoyn/bus/ProxyBusObject;

    move-result-object v0

    .line 47
    const-class v1, Lorg/alljoyn/about/transport/IconTransport;

    invoke-virtual {v0, v1}, Lorg/alljoyn/bus/ProxyBusObject;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/about/transport/IconTransport;

    .line 48
    invoke-interface {v0}, Lorg/alljoyn/about/transport/IconTransport;->getMimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/alljoyn/about/icon/AboutIconClientImpl;->getProxyObject()Lorg/alljoyn/bus/ProxyBusObject;

    move-result-object v0

    .line 55
    const-class v1, Lorg/alljoyn/about/transport/IconTransport;

    invoke-virtual {v0, v1}, Lorg/alljoyn/bus/ProxyBusObject;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/about/transport/IconTransport;

    .line 56
    invoke-interface {v0}, Lorg/alljoyn/about/transport/IconTransport;->getSize()I

    move-result v0

    return v0
.end method

.method public getVersion()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0}, Lorg/alljoyn/about/icon/AboutIconClientImpl;->getProxyObject()Lorg/alljoyn/bus/ProxyBusObject;

    move-result-object v0

    .line 39
    const-class v1, Lorg/alljoyn/about/transport/IconTransport;

    invoke-virtual {v0, v1}, Lorg/alljoyn/bus/ProxyBusObject;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/about/transport/IconTransport;

    .line 40
    invoke-interface {v0}, Lorg/alljoyn/about/transport/IconTransport;->getVersion()S

    move-result v0

    return v0
.end method

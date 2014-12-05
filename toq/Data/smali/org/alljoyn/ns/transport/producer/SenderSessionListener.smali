.class public Lorg/alljoyn/ns/transport/producer/SenderSessionListener;
.super Lorg/alljoyn/bus/SessionPortListener;
.source "SenderSessionListener.java"


# static fields
.field public static final PORT_NUM:S = 0x3f2s

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ioe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ns/transport/producer/SenderSessionListener;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ns/transport/producer/SenderSessionListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/alljoyn/ns/commons/NativePlatform;)V
    .locals 0
    .param p1, "nativePlatform"    # Lorg/alljoyn/ns/commons/NativePlatform;

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/alljoyn/bus/SessionPortListener;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/alljoyn/ns/transport/producer/SenderSessionListener;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    .line 56
    return-void
.end method

.method public static getSessionOpts()Lorg/alljoyn/bus/SessionOpts;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lorg/alljoyn/bus/SessionOpts;

    invoke-direct {v0}, Lorg/alljoyn/bus/SessionOpts;-><init>()V

    .line 133
    .local v0, "sessionOpts":Lorg/alljoyn/bus/SessionOpts;
    const/4 v1, 0x1

    iput-byte v1, v0, Lorg/alljoyn/bus/SessionOpts;->traffic:B

    .line 134
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/alljoyn/bus/SessionOpts;->isMultipoint:Z

    .line 135
    const/4 v1, -0x1

    iput-byte v1, v0, Lorg/alljoyn/bus/SessionOpts;->proximity:B

    .line 136
    const/16 v1, -0x81

    iput-short v1, v0, Lorg/alljoyn/bus/SessionOpts;->transports:S

    .line 137
    return-object v0
.end method


# virtual methods
.method public acceptSessionJoiner(SLjava/lang/String;Lorg/alljoyn/bus/SessionOpts;)Z
    .locals 5
    .param p1, "sessionPort"    # S
    .param p2, "joiner"    # Ljava/lang/String;
    .param p3, "opts"    # Lorg/alljoyn/bus/SessionOpts;

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v2, p0, Lorg/alljoyn/ns/transport/producer/SenderSessionListener;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    if-nez v2, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v1

    .line 104
    :cond_1
    iget-object v2, p0, Lorg/alljoyn/ns/transport/producer/SenderSessionListener;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v2}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v0

    .line 105
    .local v0, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    sget-object v2, Lorg/alljoyn/ns/transport/producer/SenderSessionListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received SessionJoiner request from: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', requested port: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/16 v2, 0x3f2

    if-ne p1, v2, :cond_0

    .line 108
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public clean()V
    .locals 7

    .prologue
    .line 81
    iget-object v3, p0, Lorg/alljoyn/ns/transport/producer/SenderSessionListener;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v3}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v1

    .line 83
    .local v1, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    sget-object v3, Lorg/alljoyn/ns/transport/producer/SenderSessionListener;->TAG:Ljava/lang/String;

    const-string v4, "Cleaning the SenderSessionListener"

    invoke-interface {v1, v3, v4}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lorg/alljoyn/ns/transport/Transport;->getInstance()Lorg/alljoyn/ns/transport/Transport;

    move-result-object v3

    invoke-virtual {v3}, Lorg/alljoyn/ns/transport/Transport;->getBusAttachment()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v0

    .line 85
    .local v0, "bus":Lorg/alljoyn/bus/BusAttachment;
    const/16 v3, 0x3f2

    invoke-virtual {v0, v3}, Lorg/alljoyn/bus/BusAttachment;->unbindSessionPort(S)Lorg/alljoyn/bus/Status;

    move-result-object v2

    .line 87
    .local v2, "status":Lorg/alljoyn/bus/Status;
    sget-object v3, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-eq v2, v3, :cond_0

    .line 88
    iget-object v3, p0, Lorg/alljoyn/ns/transport/producer/SenderSessionListener;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v3}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v3

    sget-object v4, Lorg/alljoyn/ns/transport/producer/SenderSessionListener;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to unbind the port number: \'1010\', Error: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/alljoyn/ns/transport/producer/SenderSessionListener;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    .line 92
    return-void
.end method

.method public init()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {}, Lorg/alljoyn/ns/transport/Transport;->getInstance()Lorg/alljoyn/ns/transport/Transport;

    move-result-object v2

    invoke-virtual {v2}, Lorg/alljoyn/ns/transport/Transport;->getBusAttachment()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v0

    .line 67
    .local v0, "bus":Lorg/alljoyn/bus/BusAttachment;
    new-instance v2, Lorg/alljoyn/bus/Mutable$ShortValue;

    const/16 v3, 0x3f2

    invoke-direct {v2, v3}, Lorg/alljoyn/bus/Mutable$ShortValue;-><init>(S)V

    invoke-static {}, Lorg/alljoyn/ns/transport/producer/SenderSessionListener;->getSessionOpts()Lorg/alljoyn/bus/SessionOpts;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p0}, Lorg/alljoyn/bus/BusAttachment;->bindSessionPort(Lorg/alljoyn/bus/Mutable$ShortValue;Lorg/alljoyn/bus/SessionOpts;Lorg/alljoyn/bus/SessionPortListener;)Lorg/alljoyn/bus/Status;

    move-result-object v1

    .line 69
    .local v1, "status":Lorg/alljoyn/bus/Status;
    iget-object v2, p0, Lorg/alljoyn/ns/transport/producer/SenderSessionListener;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v2}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v2

    sget-object v3, Lorg/alljoyn/ns/transport/producer/SenderSessionListener;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Session port: \'1010\' was bound on the bus: \'"

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

    .line 71
    sget-object v2, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-eq v1, v2, :cond_0

    .line 72
    new-instance v2, Lorg/alljoyn/ns/NotificationServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to bind session port: \'1010\', Error: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_0
    return-void
.end method

.method public sessionJoined(SILjava/lang/String;)V
    .locals 4
    .param p1, "sessionPort"    # S
    .param p2, "id"    # I
    .param p3, "joiner"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v1, p0, Lorg/alljoyn/ns/transport/producer/SenderSessionListener;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    if-nez v1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v1, p0, Lorg/alljoyn/ns/transport/producer/SenderSessionListener;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v1}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v0

    .line 125
    .local v0, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    sget-object v1, Lorg/alljoyn/ns/transport/producer/SenderSessionListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The session was established with: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', SID: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

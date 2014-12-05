.class public abstract Lorg/alljoyn/services/common/ServiceCommonImpl;
.super Ljava/lang/Object;
.source "ServiceCommonImpl.java"

# interfaces
.implements Lorg/alljoyn/services/common/ServiceCommon;


# static fields
.field protected static final DAEMON_NAME_PREFIX:Ljava/lang/String; = "org.alljoyn.BusNode."

.field protected static final DAEMON_QUIET_PREFIX:Ljava/lang/String; = "quiet@"

.field protected static m_port:S


# instance fields
.field protected TAG:Ljava/lang/String;

.field private m_bus:Lorg/alljoyn/bus/BusAttachment;

.field private m_isClientRunning:Z

.field private m_isServerRunning:Z

.field protected m_logger:Lorg/alljoyn/services/common/utils/GenericLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lorg/alljoyn/services/common/ServiceCommonImpl;->TAG:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method protected getBus()Lorg/alljoyn/bus/BusAttachment;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/alljoyn/services/common/ServiceCommonImpl;->m_bus:Lorg/alljoyn/bus/BusAttachment;

    return-object v0
.end method

.method public abstract getBusObjectDescriptions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/services/common/BusObjectDescription;",
            ">;"
        }
    .end annotation
.end method

.method public getLogger()Lorg/alljoyn/services/common/utils/GenericLogger;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/alljoyn/services/common/ServiceCommonImpl;->m_logger:Lorg/alljoyn/services/common/utils/GenericLogger;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lorg/alljoyn/services/common/DefaultGenericLogger;

    invoke-direct {v0}, Lorg/alljoyn/services/common/DefaultGenericLogger;-><init>()V

    iput-object v0, p0, Lorg/alljoyn/services/common/ServiceCommonImpl;->m_logger:Lorg/alljoyn/services/common/utils/GenericLogger;

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/alljoyn/services/common/ServiceCommonImpl;->m_logger:Lorg/alljoyn/services/common/utils/GenericLogger;

    return-object v0
.end method

.method public isClientRunning()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lorg/alljoyn/services/common/ServiceCommonImpl;->m_isClientRunning:Z

    return v0
.end method

.method public isServerRunning()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lorg/alljoyn/services/common/ServiceCommonImpl;->m_isServerRunning:Z

    return v0
.end method

.method protected setBus(Lorg/alljoyn/bus/BusAttachment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/services/common/BusAlreadyExistException;
        }
    .end annotation

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BusAttachment can\'t be NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    invoke-virtual {p1}, Lorg/alljoyn/bus/BusAttachment;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The received BusAttachment wasn\'t connected to the daemon"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    iget-object v0, p0, Lorg/alljoyn/services/common/ServiceCommonImpl;->m_bus:Lorg/alljoyn/bus/BusAttachment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/alljoyn/services/common/ServiceCommonImpl;->m_bus:Lorg/alljoyn/bus/BusAttachment;

    invoke-virtual {v0}, Lorg/alljoyn/bus/BusAttachment;->getUniqueName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/alljoyn/bus/BusAttachment;->getUniqueName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    :cond_2
    iput-object p1, p0, Lorg/alljoyn/services/common/ServiceCommonImpl;->m_bus:Lorg/alljoyn/bus/BusAttachment;

    .line 94
    return-void

    .line 92
    :cond_3
    new-instance v0, Lorg/alljoyn/services/common/BusAlreadyExistException;

    const-string v1, "The object has been set previously with a BusAttachment"

    invoke-direct {v0, v1}, Lorg/alljoyn/services/common/BusAlreadyExistException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLogger(Lorg/alljoyn/services/common/utils/GenericLogger;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lorg/alljoyn/services/common/ServiceCommonImpl;->m_logger:Lorg/alljoyn/services/common/utils/GenericLogger;

    .line 171
    return-void
.end method

.method protected startClient()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/alljoyn/services/common/ServiceCommonImpl;->m_isClientRunning:Z

    .line 110
    return-void
.end method

.method protected startServer()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/alljoyn/services/common/ServiceCommonImpl;->m_isServerRunning:Z

    .line 118
    return-void
.end method

.method protected stopClient()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/alljoyn/services/common/ServiceCommonImpl;->m_isClientRunning:Z

    .line 127
    iget-boolean v0, p0, Lorg/alljoyn/services/common/ServiceCommonImpl;->m_isServerRunning:Z

    if-nez v0, :cond_0

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/alljoyn/services/common/ServiceCommonImpl;->m_bus:Lorg/alljoyn/bus/BusAttachment;

    .line 131
    :cond_0
    return-void
.end method

.method protected stopServer()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/alljoyn/services/common/ServiceCommonImpl;->m_isServerRunning:Z

    .line 140
    iget-boolean v0, p0, Lorg/alljoyn/services/common/ServiceCommonImpl;->m_isClientRunning:Z

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/alljoyn/services/common/ServiceCommonImpl;->m_bus:Lorg/alljoyn/bus/BusAttachment;

    .line 144
    :cond_0
    return-void
.end method

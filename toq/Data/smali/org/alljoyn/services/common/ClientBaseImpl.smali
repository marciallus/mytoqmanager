.class public abstract Lorg/alljoyn/services/common/ClientBaseImpl;
.super Ljava/lang/Object;
.source "ClientBaseImpl.java"

# interfaces
.implements Lorg/alljoyn/services/common/ClientBase;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field protected m_bus:Lorg/alljoyn/bus/BusAttachment;

.field protected m_interfaceClassArr:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected m_isConnected:Z

.field protected m_objectPath:Ljava/lang/String;

.field protected m_peerName:Ljava/lang/String;

.field protected m_pinCode:[C

.field protected m_port:S

.field protected m_propertyStore:Lorg/alljoyn/services/common/PropertyStore;

.field protected m_serviceAvailabilityListener:Lorg/alljoyn/services/common/ServiceAvailabilityListener;

.field protected m_sessionId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/alljoyn/services/common/ClientBaseImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/services/common/ClientBaseImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/alljoyn/bus/BusAttachment;Lorg/alljoyn/services/common/ServiceAvailabilityListener;Ljava/lang/String;Ljava/lang/Class;S)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/alljoyn/bus/BusAttachment;",
            "Lorg/alljoyn/services/common/ServiceAvailabilityListener;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;S)V"
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/alljoyn/services/common/ClientBaseImpl;-><init>(Ljava/lang/String;Lorg/alljoyn/bus/BusAttachment;Lorg/alljoyn/services/common/ServiceAvailabilityListener;Ljava/lang/String;S)V

    .line 101
    if-eqz p5, :cond_0

    .line 102
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    iput-object v0, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_interfaceClassArr:[Ljava/lang/Class;

    .line 107
    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InterfaceClass can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/alljoyn/bus/BusAttachment;Lorg/alljoyn/services/common/ServiceAvailabilityListener;Ljava/lang/String;S)V
    .locals 2

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_isConnected:Z

    .line 151
    if-eqz p1, :cond_0

    .line 152
    iput-object p1, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_peerName:Ljava/lang/String;

    .line 157
    invoke-direct {p0, p2}, Lorg/alljoyn/services/common/ClientBaseImpl;->setBusAttachment(Lorg/alljoyn/bus/BusAttachment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal BusAttachment received"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PeerName can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_1
    if-eqz p4, :cond_2

    .line 162
    iput-object p4, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_objectPath:Ljava/lang/String;

    .line 168
    iput-short p5, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_port:S

    .line 169
    iput-object p3, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_serviceAvailabilityListener:Lorg/alljoyn/services/common/ServiceAvailabilityListener;

    .line 170
    return-void

    .line 165
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ObjectPath can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/alljoyn/bus/BusAttachment;Lorg/alljoyn/services/common/ServiceAvailabilityListener;Ljava/lang/String;[Ljava/lang/Class;S)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/alljoyn/bus/BusAttachment;",
            "Lorg/alljoyn/services/common/ServiceAvailabilityListener;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;S)V"
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/alljoyn/services/common/ClientBaseImpl;-><init>(Ljava/lang/String;Lorg/alljoyn/bus/BusAttachment;Lorg/alljoyn/services/common/ServiceAvailabilityListener;Ljava/lang/String;S)V

    .line 128
    if-eqz p5, :cond_0

    array-length v0, p5

    if-nez v0, :cond_1

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InterfaceClass array can\'t be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    iput-object p5, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_interfaceClassArr:[Ljava/lang/Class;

    .line 134
    return-void
.end method

.method private setBusAttachment(Lorg/alljoyn/bus/BusAttachment;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 379
    if-nez p1, :cond_1

    .line 392
    :cond_0
    :goto_0
    return v0

    .line 383
    :cond_1
    invoke-virtual {p1}, Lorg/alljoyn/bus/BusAttachment;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    iget-object v1, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_bus:Lorg/alljoyn/bus/BusAttachment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_bus:Lorg/alljoyn/bus/BusAttachment;

    invoke-virtual {v1}, Lorg/alljoyn/bus/BusAttachment;->getUniqueName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/alljoyn/bus/BusAttachment;->getUniqueName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    :cond_2
    iput-object p1, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_bus:Lorg/alljoyn/bus/BusAttachment;

    .line 389
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public connect()Lorg/alljoyn/bus/Status;
    .locals 6

    .prologue
    .line 295
    invoke-virtual {p0}, Lorg/alljoyn/services/common/ClientBaseImpl;->createSessionOpts()Lorg/alljoyn/bus/SessionOpts;

    move-result-object v4

    .line 296
    new-instance v3, Lorg/alljoyn/bus/Mutable$IntegerValue;

    invoke-direct {v3}, Lorg/alljoyn/bus/Mutable$IntegerValue;-><init>()V

    .line 298
    iget-object v0, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_bus:Lorg/alljoyn/bus/BusAttachment;

    invoke-virtual {p0}, Lorg/alljoyn/services/common/ClientBaseImpl;->getPeerName()Ljava/lang/String;

    move-result-object v1

    iget-short v2, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_port:S

    new-instance v5, Lorg/alljoyn/services/common/ClientBaseImpl$1;

    invoke-direct {v5, p0}, Lorg/alljoyn/services/common/ClientBaseImpl$1;-><init>(Lorg/alljoyn/services/common/ClientBaseImpl;)V

    invoke-virtual/range {v0 .. v5}, Lorg/alljoyn/bus/BusAttachment;->joinSession(Ljava/lang/String;SLorg/alljoyn/bus/Mutable$IntegerValue;Lorg/alljoyn/bus/SessionOpts;Lorg/alljoyn/bus/SessionListener;)Lorg/alljoyn/bus/Status;

    move-result-object v0

    .line 321
    sget-object v1, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-eq v1, v0, :cond_0

    sget-object v1, Lorg/alljoyn/bus/Status;->ALLJOYN_JOINSESSION_REPLY_ALREADY_JOINED:Lorg/alljoyn/bus/Status;

    if-ne v1, v0, :cond_1

    .line 323
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_isConnected:Z

    .line 324
    iget v1, v3, Lorg/alljoyn/bus/Mutable$IntegerValue;->value:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_sessionId:Ljava/lang/Integer;

    .line 330
    :goto_0
    return-object v0

    .line 327
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_isConnected:Z

    goto :goto_0
.end method

.method public connectionLost()V
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_isConnected:Z

    .line 339
    iget-object v0, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_serviceAvailabilityListener:Lorg/alljoyn/services/common/ServiceAvailabilityListener;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_serviceAvailabilityListener:Lorg/alljoyn/services/common/ServiceAvailabilityListener;

    invoke-interface {v0}, Lorg/alljoyn/services/common/ServiceAvailabilityListener;->connectionLost()V

    .line 343
    :cond_0
    return-void
.end method

.method protected createSessionOpts()Lorg/alljoyn/bus/SessionOpts;
    .locals 2

    .prologue
    .line 360
    new-instance v0, Lorg/alljoyn/bus/SessionOpts;

    invoke-direct {v0}, Lorg/alljoyn/bus/SessionOpts;-><init>()V

    .line 361
    const/4 v1, 0x1

    iput-byte v1, v0, Lorg/alljoyn/bus/SessionOpts;->traffic:B

    .line 362
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/alljoyn/bus/SessionOpts;->isMultipoint:Z

    .line 363
    const/4 v1, -0x1

    iput-byte v1, v0, Lorg/alljoyn/bus/SessionOpts;->proximity:B

    .line 364
    const/16 v1, -0x81

    iput-short v1, v0, Lorg/alljoyn/bus/SessionOpts;->transports:S

    .line 365
    return-object v0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 279
    iget-boolean v0, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_isConnected:Z

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_bus:Lorg/alljoyn/bus/BusAttachment;

    invoke-virtual {p0}, Lorg/alljoyn/services/common/ClientBaseImpl;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/alljoyn/bus/BusAttachment;->leaveSession(I)Lorg/alljoyn/bus/Status;

    move-result-object v0

    .line 282
    sget-object v1, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-ne v0, v1, :cond_0

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_isConnected:Z

    .line 287
    :cond_0
    return-void
.end method

.method public getObjClassArr()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_interfaceClassArr:[Ljava/lang/Class;

    return-object v0
.end method

.method public getObjectClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_interfaceClassArr:[Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_interfaceClassArr:[Ljava/lang/Class;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 259
    :cond_0
    const/4 v0, 0x0

    .line 262
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_interfaceClassArr:[Ljava/lang/Class;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getObjectPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_objectPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_peerName:Ljava/lang/String;

    return-object v0
.end method

.method protected getProxyObject()Lorg/alljoyn/bus/ProxyBusObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 195
    iget-boolean v0, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_isConnected:Z

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Lorg/alljoyn/bus/BusException;

    const-string v1, "Session is not connected, need to check isConnected, and reconnect."

    invoke-direct {v0, v1}, Lorg/alljoyn/bus/BusException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_bus:Lorg/alljoyn/bus/BusAttachment;

    invoke-virtual {p0}, Lorg/alljoyn/services/common/ClientBaseImpl;->getPeerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/alljoyn/services/common/ClientBaseImpl;->getObjectPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/alljoyn/services/common/ClientBaseImpl;->getSessionId()I

    move-result v3

    invoke-virtual {p0}, Lorg/alljoyn/services/common/ClientBaseImpl;->getObjClassArr()[Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/alljoyn/bus/BusAttachment;->getProxyBusObject(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Class;)Lorg/alljoyn/bus/ProxyBusObject;

    move-result-object v0

    .line 203
    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_sessionId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public abstract getVersion()S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

.method public initBus(Lorg/alljoyn/bus/BusAttachment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lorg/alljoyn/services/common/ClientBaseImpl;->setBusAttachment(Lorg/alljoyn/bus/BusAttachment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Illegal BusAttachment received"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_isConnected:Z

    return v0
.end method

.method public setSessionId(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 232
    if-nez p1, :cond_0

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_isConnected:Z

    .line 239
    :goto_0
    iput-object p1, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_sessionId:Ljava/lang/Integer;

    .line 240
    return-void

    .line 236
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/alljoyn/services/common/ClientBaseImpl;->m_isConnected:Z

    goto :goto_0
.end method

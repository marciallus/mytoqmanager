.class public Ljavax/obex/ServerRequestHandler;
.super Ljava/lang/Object;
.source "ServerRequestHandler.java"


# instance fields
.field private connectionID:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljavax/obex/ServerRequestHandler;->connectionID:J

    .line 75
    return-void
.end method


# virtual methods
.method public final createHeaderSet()Ljavax/obex/HeaderSet;
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->createOBEXHeaderSet()Ljavax/obex/HeaderSet;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionID()J
    .locals 2

    .prologue
    .line 114
    iget-wide v0, p0, Ljavax/obex/ServerRequestHandler;->connectionID:J

    return-wide v0
.end method

.method public onAuthenticationFailure([B)V
    .locals 0
    .param p1, "userName"    # [B

    .prologue
    .line 293
    return-void
.end method

.method public onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 1
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 142
    const/16 v0, 0xa0

    return v0
.end method

.method public onDelete(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 1
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 229
    const/16 v0, 0xd1

    return v0
.end method

.method public onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    .locals 0
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 161
    return-void
.end method

.method public onGet(Ljavax/obex/Operation;)I
    .locals 1
    .param p1, "op"    # Ljavax/obex/Operation;

    .prologue
    .line 277
    const/16 v0, 0xd1

    return v0
.end method

.method public onPut(Ljavax/obex/Operation;)I
    .locals 1
    .param p1, "op"    # Ljavax/obex/Operation;

    .prologue
    .line 253
    const/16 v0, 0xd1

    return v0
.end method

.method public onSetPath(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;ZZ)I
    .locals 1
    .param p1, "request"    # Ljavax/obex/HeaderSet;
    .param p2, "reply"    # Ljavax/obex/HeaderSet;
    .param p3, "backup"    # Z
    .param p4, "create"    # Z

    .prologue
    .line 201
    const/16 v0, 0xd1

    return v0
.end method

.method public setConnectionID(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 100
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid connectionID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    iput-wide p1, p0, Ljavax/obex/ServerRequestHandler;->connectionID:J

    .line 104
    return-void
.end method

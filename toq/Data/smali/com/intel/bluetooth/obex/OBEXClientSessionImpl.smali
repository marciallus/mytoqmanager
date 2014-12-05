.class public Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;
.super Lcom/intel/bluetooth/obex/OBEXSessionBase;
.source "OBEXClientSessionImpl.java"

# interfaces
.implements Ljavax/obex/ClientSession;


# static fields
.field private static final FQCN:Ljava/lang/String;

.field private static final fqcnSet:Ljava/util/Vector;


# instance fields
.field protected operation:Lcom/intel/bluetooth/obex/OBEXClientOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    const-class v0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->FQCN:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->fqcnSet:Ljava/util/Vector;

    .line 59
    sget-object v0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->fqcnSet:Ljava/util/Vector;

    sget-object v1, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->FQCN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/io/StreamConnection;Lcom/intel/bluetooth/obex/OBEXConnectionParams;)V
    .locals 2
    .param p1, "conn"    # Ljavax/microedition/io/StreamConnection;
    .param p2, "obexConnectionParams"    # Lcom/intel/bluetooth/obex/OBEXConnectionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Error;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/obex/OBEXSessionBase;-><init>(Ljavax/microedition/io/StreamConnection;Lcom/intel/bluetooth/obex/OBEXConnectionParams;)V

    .line 72
    sget-object v0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->fqcnSet:Ljava/util/Vector;

    invoke-static {v0}, Lcom/intel/bluetooth/Utils;->isLegalAPICall(Ljava/util/Vector;)V

    .line 73
    iput-boolean v1, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->requestSent:Z

    .line 74
    iput-boolean v1, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->isConnected:Z

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXClientOperation;

    .line 76
    return-void
.end method

.method private connectImpl(Ljavax/obex/HeaderSet;Z)Ljavax/obex/HeaderSet;
    .locals 12
    .param p1, "headers"    # Ljavax/obex/HeaderSet;
    .param p2, "retry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x6

    const/4 v8, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 93
    invoke-static {p1}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->validateCreatedHeaderSet(Ljavax/obex/HeaderSet;)V

    .line 94
    iget-boolean v6, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->isConnected:Z

    if-eqz v6, :cond_0

    .line 95
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Session already connected"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 97
    :cond_0
    const/4 v6, 0x4

    new-array v2, v6, [B

    .line 98
    .local v2, "connectRequest":[B
    const/16 v6, 0x10

    aput-byte v6, v2, v9

    .line 99
    aput-byte v9, v2, v10

    .line 100
    const/4 v6, 0x2

    iget-object v7, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->obexConnectionParams:Lcom/intel/bluetooth/obex/OBEXConnectionParams;

    iget v7, v7, Lcom/intel/bluetooth/obex/OBEXConnectionParams;->mtu:I

    invoke-static {v7}, Lcom/intel/bluetooth/obex/OBEXUtils;->hiByte(I)B

    move-result v7

    aput-byte v7, v2, v6

    .line 101
    iget-object v6, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->obexConnectionParams:Lcom/intel/bluetooth/obex/OBEXConnectionParams;

    iget v6, v6, Lcom/intel/bluetooth/obex/OBEXConnectionParams;->mtu:I

    invoke-static {v6}, Lcom/intel/bluetooth/obex/OBEXUtils;->loByte(I)B

    move-result v6

    aput-byte v6, v2, v8

    .line 102
    const/16 v7, 0x80

    move-object v6, p1

    .line 103
    check-cast v6, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    .line 102
    invoke-virtual {p0, v7, v2, v6}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->writePacketWithFlags(I[BLcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 105
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->readPacket()[B

    move-result-object v0

    .line 106
    .local v0, "b":[B
    array-length v6, v0

    if-ge v6, v11, :cond_2

    .line 107
    array-length v6, v0

    if-ne v6, v8, :cond_1

    .line 108
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Invalid response from OBEX server "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    aget-byte v8, v0, v9

    invoke-static {v8}, Lcom/intel/bluetooth/obex/OBEXUtils;->toStringObexResponseCodes(B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 108
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 111
    :cond_1
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Invalid response from OBEX server"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 113
    :cond_2
    const/4 v6, 0x5

    aget-byte v6, v0, v6

    aget-byte v7, v0, v11

    invoke-static {v6, v7}, Lcom/intel/bluetooth/obex/OBEXUtils;->bytesToShort(BB)I

    move-result v5

    .line 114
    .local v5, "serverMTU":I
    const/16 v6, 0xff

    if-ge v5, v6, :cond_3

    .line 115
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Invalid MTU "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 117
    :cond_3
    iget v6, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->mtu:I

    if-ge v5, v6, :cond_4

    .line 118
    iput v5, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->mtu:I

    .line 120
    :cond_4
    const-string v6, "mtu selected"

    iget v7, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->mtu:I

    int-to-long v7, v7

    invoke-static {v6, v7, v8}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    .line 122
    aget-byte v6, v0, v9

    .line 123
    const/4 v7, 0x7

    .line 122
    invoke-static {v6, v0, v7}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->readHeaders(B[BI)Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v4

    .line 126
    .local v4, "responseHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    const/16 v6, 0xcb

    invoke-virtual {v4, v6}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    .line 127
    .local v1, "connID":Ljava/lang/Object;
    if-eqz v1, :cond_5

    .line 128
    check-cast v1, Ljava/lang/Long;

    .end local v1    # "connID":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->connectionID:J

    :cond_5
    move-object v6, p1

    .line 131
    check-cast v6, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    invoke-virtual {p0, v6, v4}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->validateAuthenticationResponse(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 133
    if-nez p2, :cond_7

    .line 134
    invoke-virtual {v4}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->getResponseCode()I

    move-result v6

    const/16 v7, 0xc1

    if-ne v6, v7, :cond_7

    .line 135
    invoke-virtual {v4}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->hasAuthenticationChallenge()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 136
    invoke-static {p1}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->cloneHeaders(Ljavax/obex/HeaderSet;)Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v3

    .local v3, "replyHeaders":Ljavax/obex/HeaderSet;
    move-object v6, v3

    .line 138
    check-cast v6, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    .line 137
    invoke-virtual {p0, v4, v6}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->handleAuthenticationChallenge(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 139
    invoke-direct {p0, v3, v10}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->connectImpl(Ljavax/obex/HeaderSet;Z)Ljavax/obex/HeaderSet;

    move-result-object v4

    .line 145
    .end local v3    # "replyHeaders":Ljavax/obex/HeaderSet;
    .end local v4    # "responseHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    :cond_6
    :goto_0
    return-object v4

    .line 142
    .restart local v4    # "responseHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    :cond_7
    invoke-virtual {v4}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->getResponseCode()I

    move-result v6

    const/16 v7, 0xa0

    if-ne v6, v7, :cond_6

    .line 143
    iput-boolean v10, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->isConnected:Z

    goto :goto_0
.end method

.method private setPathImpl(Ljavax/obex/HeaderSet;ZZZ)Ljavax/obex/HeaderSet;
    .locals 8
    .param p1, "headers"    # Ljavax/obex/HeaderSet;
    .param p2, "backup"    # Z
    .param p3, "create"    # Z
    .param p4, "authentRetry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 196
    new-array v1, v4, [B

    .line 197
    .local v1, "request":[B
    if-eqz p2, :cond_2

    move v6, v7

    :goto_0
    if-eqz p3, :cond_0

    move v4, v5

    :cond_0
    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v1, v5

    .line 198
    aput-byte v5, v1, v7

    .line 200
    const/16 v6, 0x85

    move-object v4, p1

    .line 201
    check-cast v4, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    .line 200
    invoke-virtual {p0, v6, v1, v4}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->writePacketWithFlags(I[BLcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 203
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->readPacket()[B

    move-result-object v0

    .line 204
    .local v0, "b":[B
    aget-byte v4, v0, v5

    .line 205
    const/4 v5, 0x3

    .line 204
    invoke-static {v4, v0, v5}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->readHeaders(B[BI)Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v2

    .local v2, "responseHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    move-object v4, p1

    .line 206
    check-cast v4, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    invoke-virtual {p0, v4, v2}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->validateAuthenticationResponse(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 208
    if-nez p4, :cond_1

    .line 209
    invoke-virtual {v2}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc1

    if-ne v4, v5, :cond_1

    .line 210
    invoke-virtual {v2}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->hasAuthenticationChallenge()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 212
    invoke-static {p1}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->cloneHeaders(Ljavax/obex/HeaderSet;)Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v3

    .line 213
    .local v3, "retryHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    invoke-virtual {p0, v2, v3}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->handleAuthenticationChallenge(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 214
    invoke-direct {p0, v3, p2, p3, v7}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->setPathImpl(Ljavax/obex/HeaderSet;ZZZ)Ljavax/obex/HeaderSet;

    move-result-object v2

    .line 216
    .end local v2    # "responseHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    .end local v3    # "retryHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    :cond_1
    return-object v2

    .end local v0    # "b":[B
    :cond_2
    move v6, v5

    .line 197
    goto :goto_0
.end method


# virtual methods
.method protected canStartOperation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->isConnected:Z

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Session not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXClientOperation;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXClientOperation;

    invoke-virtual {v0}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Client is already in an operation"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXClientOperation;

    .line 185
    :cond_2
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXClientOperation;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXClientOperation;

    invoke-virtual {v0}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->close()V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXClientOperation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :cond_0
    invoke-super {p0}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->close()V

    .line 279
    return-void

    .line 275
    :catchall_0
    move-exception v0

    .line 277
    invoke-super {p0}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->close()V

    .line 278
    throw v0
.end method

.method public connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;
    .locals 1
    .param p1, "headers"    # Ljavax/obex/HeaderSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->connectImpl(Ljavax/obex/HeaderSet;Z)Ljavax/obex/HeaderSet;

    move-result-object v0

    return-object v0
.end method

.method public createHeaderSet()Ljavax/obex/HeaderSet;
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->createOBEXHeaderSet()Ljavax/obex/HeaderSet;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;
    .locals 1
    .param p1, "headers"    # Ljavax/obex/HeaderSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {p1}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->validateCreatedHeaderSet(Ljavax/obex/HeaderSet;)V

    .line 238
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->canStartOperation()V

    .line 239
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->deleteImp(Ljavax/obex/HeaderSet;Z)Ljavax/obex/HeaderSet;

    move-result-object v0

    return-object v0
.end method

.method deleteImp(Ljavax/obex/HeaderSet;Z)Ljavax/obex/HeaderSet;
    .locals 5
    .param p1, "headers"    # Ljavax/obex/HeaderSet;
    .param p2, "authentRetry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    const/16 v4, 0x82

    move-object v3, p1

    check-cast v3, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    invoke-virtual {p0, v4, v3}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->writePacket(ILcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 245
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->readPacket()[B

    move-result-object v0

    .line 246
    .local v0, "b":[B
    const/4 v3, 0x0

    aget-byte v3, v0, v3

    .line 247
    const/4 v4, 0x3

    .line 246
    invoke-static {v3, v0, v4}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->readHeaders(B[BI)Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v1

    .local v1, "responseHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    move-object v3, p1

    .line 248
    check-cast v3, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    invoke-virtual {p0, v3, v1}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->validateAuthenticationResponse(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 250
    if-nez p2, :cond_0

    .line 251
    invoke-virtual {v1}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc1

    if-ne v3, v4, :cond_0

    .line 252
    invoke-virtual {v1}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->hasAuthenticationChallenge()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    invoke-static {p1}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->cloneHeaders(Ljavax/obex/HeaderSet;)Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v2

    .line 255
    .local v2, "retryHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    invoke-virtual {p0, v1, v2}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->handleAuthenticationChallenge(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 256
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->deleteImp(Ljavax/obex/HeaderSet;Z)Ljavax/obex/HeaderSet;

    move-result-object v1

    .line 258
    .end local v1    # "responseHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    .end local v2    # "retryHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    :cond_0
    return-object v1
.end method

.method public disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;
    .locals 3
    .param p1, "headers"    # Ljavax/obex/HeaderSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-static {p1}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->validateCreatedHeaderSet(Ljavax/obex/HeaderSet;)V

    .line 150
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->canStartOperation()V

    .line 151
    iget-boolean v1, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->isConnected:Z

    if-nez v1, :cond_0

    .line 152
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Session not connected"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 154
    :cond_0
    const/16 v1, 0x81

    check-cast p1, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    .end local p1    # "headers":Ljavax/obex/HeaderSet;
    invoke-virtual {p0, v1, p1}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->writePacket(ILcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 155
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->readPacket()[B

    move-result-object v0

    .line 156
    .local v0, "b":[B
    iput-boolean v2, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->isConnected:Z

    .line 157
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXClientOperation;

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXClientOperation;

    invoke-virtual {v1}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->close()V

    .line 159
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXClientOperation;

    .line 161
    :cond_1
    aget-byte v1, v0, v2

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->readHeaders(B[BI)Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic encrypt(JZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->encrypt(JZ)Z

    move-result v0

    return v0
.end method

.method public get(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;
    .locals 1
    .param p1, "headers"    # Ljavax/obex/HeaderSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {p1}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->validateCreatedHeaderSet(Ljavax/obex/HeaderSet;)V

    .line 222
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->canStartOperation()V

    .line 223
    new-instance v0, Lcom/intel/bluetooth/obex/OBEXClientOperationGet;

    .line 224
    check-cast p1, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    .end local p1    # "headers":Ljavax/obex/HeaderSet;
    invoke-direct {v0, p0, p1}, Lcom/intel/bluetooth/obex/OBEXClientOperationGet;-><init>(Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 223
    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXClientOperation;

    .line 225
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXClientOperation;

    return-object v0
.end method

.method public bridge synthetic getBluetoothStack()Lcom/intel/bluetooth/BluetoothStack;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->getBluetoothStack()Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionID()J
    .locals 2

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->connectionID:J

    return-wide v0
.end method

.method public bridge synthetic getRemoteAddress()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-super {p0}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->getRemoteAddress()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getRemoteDevice()Ljavax/bluetooth/RemoteDevice;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->getRemoteDevice()Ljavax/bluetooth/RemoteDevice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecurityOpt()I
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->getSecurityOpt()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isClosed()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->isClosed()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic markAuthenticated()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->markAuthenticated()V

    return-void
.end method

.method public put(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;
    .locals 1
    .param p1, "headers"    # Ljavax/obex/HeaderSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-static {p1}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->validateCreatedHeaderSet(Ljavax/obex/HeaderSet;)V

    .line 230
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->canStartOperation()V

    .line 231
    new-instance v0, Lcom/intel/bluetooth/obex/OBEXClientOperationPut;

    .line 232
    check-cast p1, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    .end local p1    # "headers":Ljavax/obex/HeaderSet;
    invoke-direct {v0, p0, p1}, Lcom/intel/bluetooth/obex/OBEXClientOperationPut;-><init>(Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 231
    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXClientOperation;

    .line 233
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXClientOperation;

    return-object v0
.end method

.method public setAuthenticator(Ljavax/obex/Authenticator;)V
    .locals 2
    .param p1, "auth"    # Ljavax/obex/Authenticator;

    .prologue
    .line 263
    if-nez p1, :cond_0

    .line 264
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "auth is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_0
    iput-object p1, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->authenticator:Ljavax/obex/Authenticator;

    .line 267
    return-void
.end method

.method public setConnectionID(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 165
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 166
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

    .line 168
    :cond_1
    iput-wide p1, p0, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->connectionID:J

    .line 169
    return-void
.end method

.method public setPath(Ljavax/obex/HeaderSet;ZZ)Ljavax/obex/HeaderSet;
    .locals 1
    .param p1, "headers"    # Ljavax/obex/HeaderSet;
    .param p2, "backup"    # Z
    .param p3, "create"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {p1}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->validateCreatedHeaderSet(Ljavax/obex/HeaderSet;)V

    .line 190
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->canStartOperation()V

    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->setPathImpl(Ljavax/obex/HeaderSet;ZZZ)Ljavax/obex/HeaderSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setRemoteDevice(Ljavax/bluetooth/RemoteDevice;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->setRemoteDevice(Ljavax/bluetooth/RemoteDevice;)V

    return-void
.end method

.method public bridge synthetic shutdown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-super {p0}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->shutdown()V

    return-void
.end method

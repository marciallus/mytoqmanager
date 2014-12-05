.class abstract Lcom/intel/bluetooth/obex/OBEXServerOperation;
.super Ljava/lang/Object;
.source "OBEXServerOperation.java"

# interfaces
.implements Lcom/intel/bluetooth/obex/OBEXOperation;
.implements Ljavax/obex/Operation;


# instance fields
.field protected errorReceived:Z

.field protected finalPacketReceived:Z

.field protected incommingDataReceived:Z

.field protected inputStream:Lcom/intel/bluetooth/obex/OBEXOperationInputStream;

.field protected inputStreamOpened:Z

.field protected isAborted:Z

.field protected isClosed:Z

.field protected outputStream:Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;

.field protected outputStreamOpened:Z

.field protected receivedHeaders:Ljavax/obex/HeaderSet;

.field protected requestEnded:Z

.field protected sendHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

.field protected session:Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;


# direct methods
.method protected constructor <init>(Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V
    .locals 2
    .param p1, "session"    # Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;
    .param p2, "receivedHeaders"    # Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->isClosed:Z

    .line 47
    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->isAborted:Z

    .line 49
    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->finalPacketReceived:Z

    .line 51
    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->requestEnded:Z

    .line 53
    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->errorReceived:Z

    .line 55
    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->incommingDataReceived:Z

    .line 59
    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->outputStreamOpened:Z

    .line 63
    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->inputStreamOpened:Z

    .line 67
    iput-object p1, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->session:Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;

    .line 68
    iput-object p2, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->receivedHeaders:Ljavax/obex/HeaderSet;

    .line 69
    invoke-virtual {p2}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->hasAuthenticationChallenge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->createOBEXHeaderSetImpl()Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->sendHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    .line 71
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->session:Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;

    .line 72
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->sendHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    .line 71
    invoke-virtual {v0, p2, v1}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->handleAuthenticationChallenge(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 74
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t abort server operation"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->isClosed:Z

    .line 242
    return-void
.end method

.method exchangeRequestPhasePackets()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->session:Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;

    const/16 v1, 0x90

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->writePacket(ILcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 78
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXServerOperation;->readRequestPacket()Z

    move-result v0

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()J
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    .line 192
    :try_start_0
    iget-object v4, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->receivedHeaders:Ljavax/obex/HeaderSet;

    const/16 v5, 0xc3

    invoke-interface {v4, v5}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .local v1, "len":Ljava/lang/Long;
    if-nez v1, :cond_0

    .line 199
    .end local v1    # "len":Ljava/lang/Long;
    :goto_0
    return-wide v2

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 199
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "len":Ljava/lang/Long;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getReceivedHeaders()Ljavax/obex/HeaderSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->receivedHeaders:Ljavax/obex/HeaderSet;

    invoke-static {v0}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->cloneHeaders(Ljavax/obex/HeaderSet;)Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation object was created by an OBEX server"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->receivedHeaders:Ljavax/obex/HeaderSet;

    const/16 v2, 0x42

    invoke-interface {v1, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-object v1

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->isClosed:Z

    return v0
.end method

.method public isErrorReceived()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->errorReceived:Z

    return v0
.end method

.method public isIncommingDataReceived()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->incommingDataReceived:Z

    return v0
.end method

.method public openDataInputStream()Ljava/io/DataInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXServerOperation;->openInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public openDataOutputStream()Ljava/io/DataOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXServerOperation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method protected processIncommingData(Ljavax/obex/HeaderSet;Z)V
    .locals 4
    .param p1, "dataHeaders"    # Ljavax/obex/HeaderSet;
    .param p2, "eof"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->inputStream:Lcom/intel/bluetooth/obex/OBEXOperationInputStream;

    if-nez v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    const/16 v1, 0x48

    invoke-interface {p1, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v0

    .line 106
    check-cast v0, [B

    .line 108
    .local v0, "data":[B
    if-nez v0, :cond_2

    .line 110
    const/16 v1, 0x49

    invoke-interface {p1, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v0

    .line 109
    .end local v0    # "data":[B
    check-cast v0, [B

    .line 111
    .restart local v0    # "data":[B
    if-eqz v0, :cond_2

    .line 112
    const/4 p2, 0x1

    .line 115
    :cond_2
    if-eqz v0, :cond_3

    .line 116
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->incommingDataReceived:Z

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "server received Data eof: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " len:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    array-length v2, v0

    int-to-long v2, v2

    .line 117
    invoke-static {v1, v2, v3}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    .line 119
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->inputStream:Lcom/intel/bluetooth/obex/OBEXOperationInputStream;

    invoke-virtual {v1, v0, p2}, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->appendData([BZ)V

    goto :goto_0

    .line 120
    :cond_3
    if-eqz p2, :cond_0

    .line 121
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->inputStream:Lcom/intel/bluetooth/obex/OBEXOperationInputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->appendData([BZ)V

    goto :goto_0
.end method

.method protected abstract readRequestPacket()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public sendHeaders(Ljavax/obex/HeaderSet;)V
    .locals 2
    .param p1, "headers"    # Ljavax/obex/HeaderSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 159
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "headers are null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    invoke-static {p1}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->validateCreatedHeaderSet(Ljavax/obex/HeaderSet;)V

    .line 162
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->isClosed:Z

    if-eqz v0, :cond_1

    .line 163
    new-instance v0, Ljava/io/IOException;

    const-string v1, "operation closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->sendHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->sendHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    invoke-static {v0, p1}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->appendHeaders(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 170
    .end local p1    # "headers":Ljavax/obex/HeaderSet;
    :goto_0
    return-void

    .line 168
    .restart local p1    # "headers":Ljavax/obex/HeaderSet;
    :cond_2
    check-cast p1, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    .end local p1    # "headers":Ljavax/obex/HeaderSet;
    iput-object p1, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->sendHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    goto :goto_0
.end method

.method writeResponse(I)V
    .locals 4
    .param p1, "responseCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 84
    const-string v0, "server operation reply final"

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/intel/bluetooth/DebugLog;->debug0x(Ljava/lang/String;J)V

    .line 85
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->session:Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;

    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->sendHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    invoke-virtual {v0, p1, v1}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->writePacket(ILcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 86
    iput-object v3, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->sendHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    .line 87
    const/16 v0, 0xa0

    if-ne p1, v0, :cond_3

    .line 88
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->finalPacketReceived:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->session:Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;

    invoke-virtual {v0}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    :cond_1
    :goto_1
    return-void

    .line 89
    :cond_2
    const-string v0, "server waits to receive final packet"

    invoke-static {v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXServerOperation;->readRequestPacket()Z

    .line 91
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->errorReceived:Z

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->session:Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;

    invoke-virtual {v0, p1, v3}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->writePacket(ILcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    goto :goto_0

    .line 96
    :cond_3
    const-string v0, "sent final reply"

    invoke-static {v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

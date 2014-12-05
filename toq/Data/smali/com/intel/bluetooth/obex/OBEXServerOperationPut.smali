.class Lcom/intel/bluetooth/obex/OBEXServerOperationPut;
.super Lcom/intel/bluetooth/obex/OBEXServerOperation;
.source "OBEXServerOperationPut.java"

# interfaces
.implements Lcom/intel/bluetooth/obex/OBEXOperationDelivery;
.implements Lcom/intel/bluetooth/obex/OBEXOperationReceive;


# direct methods
.method protected constructor <init>(Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;Z)V
    .locals 1
    .param p1, "session"    # Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;
    .param p2, "receivedHeaders"    # Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    .param p3, "finalPacket"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/obex/OBEXServerOperation;-><init>(Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 42
    new-instance v0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;

    invoke-direct {v0, p0}, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;-><init>(Lcom/intel/bluetooth/obex/OBEXOperation;)V

    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->inputStream:Lcom/intel/bluetooth/obex/OBEXOperationInputStream;

    .line 43
    invoke-virtual {p0, p2, p3}, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->processIncommingData(Ljavax/obex/HeaderSet;Z)V

    .line 44
    return-void
.end method

.method private processAbort()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->isAborted:Z

    .line 186
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->session:Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;

    const/16 v1, 0xa0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->writePacket(ILcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 187
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->close()V

    .line 188
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation aborted by client"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 85
    const-string v0, "server close put operation"

    invoke-static {v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->inputStream:Lcom/intel/bluetooth/obex/OBEXOperationInputStream;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->inputStream:Lcom/intel/bluetooth/obex/OBEXOperationInputStream;

    invoke-virtual {v0}, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->close()V

    .line 88
    iput-object v1, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->inputStream:Lcom/intel/bluetooth/obex/OBEXOperationInputStream;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->outputStream:Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->outputStream:Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;

    invoke-virtual {v0}, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->close()V

    .line 92
    iput-object v1, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->outputStream:Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;

    .line 94
    :cond_1
    invoke-super {p0}, Lcom/intel/bluetooth/obex/OBEXServerOperation;->close()V

    .line 95
    return-void
.end method

.method public deliverPacket(Z[B)V
    .locals 5
    .param p1, "finalPacket"    # Z
    .param p2, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v3, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->session:Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;

    iget-boolean v3, v3, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->requestSent:Z

    if-eqz v3, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->readRequestPacket()Z

    .line 163
    iget-object v3, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->session:Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;

    iget-boolean v3, v3, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->requestSent:Z

    if-eqz v3, :cond_0

    .line 164
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Client not requesting data"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 168
    :cond_0
    invoke-static {}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->createOBEXHeaderSetImpl()Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v1

    .line 169
    .local v1, "dataHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    const/16 v2, 0x90

    .line 170
    .local v2, "opcode":I
    const/16 v0, 0x48

    .line 171
    .local v0, "dataHeaderID":I
    if-eqz p1, :cond_1

    .line 173
    const/16 v0, 0x49

    .line 175
    :cond_1
    invoke-virtual {v1, v0, p2}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->setHeader(ILjava/lang/Object;)V

    .line 176
    iget-object v3, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->sendHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    if-eqz v3, :cond_2

    .line 177
    iget-object v3, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->sendHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    invoke-static {v1, v3}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->appendHeaders(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 178
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->sendHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    .line 180
    :cond_2
    iget-object v3, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->session:Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;

    invoke-virtual {v3, v2, v1}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->writePacket(ILcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 181
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->readRequestPacket()Z

    .line 182
    return-void
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->isClosed:Z

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Ljava/io/IOException;

    const-string v1, "operation closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->inputStreamOpened:Z

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Ljava/io/IOException;

    const-string v1, "input stream already open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    const-string v0, "openInputStream"

    invoke-static {v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->inputStreamOpened:Z

    .line 60
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->inputStream:Lcom/intel/bluetooth/obex/OBEXOperationInputStream;

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->isClosed:Z

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/io/IOException;

    const-string v1, "operation closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->outputStream:Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Ljava/io/IOException;

    const-string v1, "output stream already open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    new-instance v0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;

    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->session:Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;

    iget v1, v1, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->mtu:I

    invoke-direct {v0, v1, p0}, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;-><init>(ILcom/intel/bluetooth/obex/OBEXOperationDelivery;)V

    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->outputStream:Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;

    .line 76
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->outputStream:Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;

    return-object v0
.end method

.method protected readRequestPacket()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 98
    iget-object v6, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->session:Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;

    invoke-virtual {v6}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->readPacket()[B

    move-result-object v0

    .line 99
    .local v0, "b":[B
    aget-byte v6, v0, v5

    and-int/lit16 v2, v6, 0xff

    .line 100
    .local v2, "opcode":I
    and-int/lit16 v6, v2, 0x80

    if-eqz v6, :cond_1

    move v1, v4

    .line 101
    .local v1, "finalPacket":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 102
    const-string v6, "server operation got final packet"

    invoke-static {v6}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 103
    iput-boolean v4, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->finalPacketReceived:Z

    .line 105
    :cond_0
    sparse-switch v2, :sswitch_data_0

    .line 123
    iput-boolean v4, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->errorReceived:Z

    .line 124
    const-string v4, "server operation invalid request"

    .line 125
    invoke-static {v2}, Lcom/intel/bluetooth/obex/OBEXUtils;->toStringObexResponseCodes(I)Ljava/lang/String;

    move-result-object v5

    int-to-long v6, v2

    .line 124
    invoke-static {v4, v5, v6, v7}, Lcom/intel/bluetooth/DebugLog;->debug0x(Ljava/lang/String;Ljava/lang/String;J)V

    .line 126
    iget-object v4, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->session:Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;

    const/16 v5, 0xc0

    invoke-virtual {v4, v5, v8}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->writePacket(ILcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 128
    :goto_1
    return v1

    .end local v1    # "finalPacket":Z
    :cond_1
    move v1, v5

    .line 100
    goto :goto_0

    .line 109
    .restart local v1    # "finalPacket":Z
    :sswitch_0
    aget-byte v5, v0, v5

    const/4 v6, 0x3

    .line 108
    invoke-static {v5, v0, v6}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->readHeaders(B[BI)Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v3

    .line 110
    .local v3, "requestHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    iget-object v5, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->session:Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;

    invoke-virtual {v5, v3}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->handleAuthenticationResponse(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 111
    iput-boolean v4, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->errorReceived:Z

    .line 112
    iget-object v4, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->session:Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;

    const/16 v5, 0xc1

    invoke-virtual {v4, v5, v8}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->writePacket(ILcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    goto :goto_1

    .line 114
    :cond_2
    iget-object v4, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->receivedHeaders:Ljavax/obex/HeaderSet;

    invoke-static {v4, v3}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->appendHeaders(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 116
    invoke-virtual {p0, v3, v1}, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->processIncommingData(Ljavax/obex/HeaderSet;Z)V

    goto :goto_1

    .line 120
    .end local v3    # "requestHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    :sswitch_1
    invoke-direct {p0}, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->processAbort()V

    goto :goto_1

    .line 105
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x82 -> :sswitch_0
        0xff -> :sswitch_1
    .end sparse-switch
.end method

.method public receiveData(Lcom/intel/bluetooth/obex/OBEXOperationInputStream;)V
    .locals 4
    .param p1, "is"    # Lcom/intel/bluetooth/obex/OBEXOperationInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 139
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->finalPacketReceived:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->errorReceived:Z

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v3, v0}, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->appendData([BZ)V

    .line 148
    :goto_0
    return-void

    .line 143
    :cond_1
    const-string v0, "server operation reply continue"

    invoke-static {v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->session:Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;

    const/16 v1, 0x90

    .line 145
    iget-object v2, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->sendHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    .line 144
    invoke-virtual {v0, v1, v2}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->writePacket(ILcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 146
    iput-object v3, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->sendHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    .line 147
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;->readRequestPacket()Z

    goto :goto_0
.end method

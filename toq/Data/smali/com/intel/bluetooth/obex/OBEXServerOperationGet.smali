.class Lcom/intel/bluetooth/obex/OBEXServerOperationGet;
.super Lcom/intel/bluetooth/obex/OBEXServerOperation;
.source "OBEXServerOperationGet.java"

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
    const/4 v0, 0x1

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/obex/OBEXServerOperation;-><init>(Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 43
    if-eqz p3, :cond_0

    .line 44
    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->requestEnded:Z

    .line 45
    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->finalPacketReceived:Z

    .line 47
    :cond_0
    new-instance v0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;

    invoke-direct {v0, p0}, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;-><init>(Lcom/intel/bluetooth/obex/OBEXOperation;)V

    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->inputStream:Lcom/intel/bluetooth/obex/OBEXOperationInputStream;

    .line 48
    invoke-virtual {p0, p2, p3}, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->processIncommingData(Ljavax/obex/HeaderSet;Z)V

    .line 49
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
    const/4 v0, 0x1

    .line 188
    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->finalPacketReceived:Z

    .line 189
    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->requestEnded:Z

    .line 190
    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->isAborted:Z

    .line 191
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->session:Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;

    const/16 v1, 0xa0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->writePacket(ILcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 192
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Operation aborted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->outputStream:Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->outputStream:Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;

    invoke-virtual {v0}, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->close()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->outputStream:Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->inputStream:Lcom/intel/bluetooth/obex/OBEXOperationInputStream;

    invoke-virtual {v0}, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->close()V

    .line 98
    invoke-super {p0}, Lcom/intel/bluetooth/obex/OBEXServerOperation;->close()V

    .line 99
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
    .line 161
    iget-object v3, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->session:Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;

    iget-boolean v3, v3, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->requestSent:Z

    if-eqz v3, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->readRequestPacket()Z

    .line 165
    iget-object v3, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->session:Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;

    iget-boolean v3, v3, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->requestSent:Z

    if-eqz v3, :cond_0

    .line 166
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Client not requesting data"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 170
    :cond_0
    invoke-static {}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->createOBEXHeaderSetImpl()Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v1

    .line 171
    .local v1, "dataHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    const/16 v2, 0x90

    .line 172
    .local v2, "opcode":I
    const/16 v0, 0x48

    .line 173
    .local v0, "dataHeaderID":I
    if-eqz p1, :cond_1

    .line 175
    const/16 v0, 0x49

    .line 177
    :cond_1
    invoke-virtual {v1, v0, p2}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->setHeader(ILjava/lang/Object;)V

    .line 178
    iget-object v3, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->sendHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    if-eqz v3, :cond_2

    .line 179
    iget-object v3, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->sendHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    invoke-static {v1, v3}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->appendHeaders(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 180
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->sendHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    .line 182
    :cond_2
    iget-object v3, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->session:Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;

    invoke-virtual {v3, v2, v1}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->writePacket(ILcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 183
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->readRequestPacket()Z

    .line 184
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
    .line 57
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->isClosed:Z

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Ljava/io/IOException;

    const-string v1, "operation closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->inputStreamOpened:Z

    if-eqz v0, :cond_1

    .line 61
    new-instance v0, Ljava/io/IOException;

    const-string v1, "input stream already open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->inputStreamOpened:Z

    .line 64
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->inputStream:Lcom/intel/bluetooth/obex/OBEXOperationInputStream;

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->isClosed:Z

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/io/IOException;

    const-string v1, "operation closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->outputStream:Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;

    if-eqz v0, :cond_1

    .line 77
    new-instance v0, Ljava/io/IOException;

    const-string v1, "output stream already open"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->requestEnded:Z

    .line 80
    new-instance v0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;

    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->session:Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;

    iget v1, v1, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->mtu:I

    invoke-direct {v0, v1, p0}, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;-><init>(ILcom/intel/bluetooth/obex/OBEXOperationDelivery;)V

    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->outputStream:Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;

    .line 81
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->session:Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;

    const/16 v1, 0x90

    .line 82
    iget-object v2, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->sendHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    .line 81
    invoke-virtual {v0, v1, v2}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->writePacket(ILcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->sendHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    .line 84
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->outputStream:Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;

    return-object v0
.end method

.method protected readRequestPacket()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 102
    iget-object v6, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->session:Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;

    invoke-virtual {v6}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->readPacket()[B

    move-result-object v0

    .line 103
    .local v0, "b":[B
    aget-byte v6, v0, v5

    and-int/lit16 v2, v6, 0xff

    .line 104
    .local v2, "opcode":I
    and-int/lit16 v6, v2, 0x80

    if-eqz v6, :cond_1

    move v1, v4

    .line 105
    .local v1, "finalPacket":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 106
    const-string v6, "server operation got final packet"

    invoke-static {v6}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 107
    iput-boolean v4, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->finalPacketReceived:Z

    .line 109
    :cond_0
    sparse-switch v2, :sswitch_data_0

    .line 125
    iput-boolean v4, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->errorReceived:Z

    .line 126
    const-string v4, "server operation invalid request"

    .line 127
    invoke-static {v2}, Lcom/intel/bluetooth/obex/OBEXUtils;->toStringObexResponseCodes(I)Ljava/lang/String;

    move-result-object v5

    int-to-long v6, v2

    .line 126
    invoke-static {v4, v5, v6, v7}, Lcom/intel/bluetooth/DebugLog;->debug0x(Ljava/lang/String;Ljava/lang/String;J)V

    .line 128
    iget-object v4, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->session:Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;

    const/16 v5, 0xc0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->writePacket(ILcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 130
    :goto_1
    return v1

    .end local v1    # "finalPacket":Z
    :cond_1
    move v1, v5

    .line 104
    goto :goto_0

    .line 112
    .restart local v1    # "finalPacket":Z
    :sswitch_0
    if-eqz v1, :cond_2

    .line 113
    iput-boolean v4, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->requestEnded:Z

    .line 116
    :cond_2
    aget-byte v4, v0, v5

    const/4 v5, 0x3

    invoke-static {v4, v0, v5}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->readHeaders(B[BI)Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v3

    .line 117
    .local v3, "requestHeaders":Ljavax/obex/HeaderSet;
    iget-object v4, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->receivedHeaders:Ljavax/obex/HeaderSet;

    invoke-static {v4, v3}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->appendHeaders(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 119
    invoke-virtual {p0, v3, v1}, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->processIncommingData(Ljavax/obex/HeaderSet;Z)V

    goto :goto_1

    .line 122
    .end local v3    # "requestHeaders":Ljavax/obex/HeaderSet;
    :sswitch_1
    invoke-direct {p0}, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->processAbort()V

    goto :goto_1

    .line 109
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x83 -> :sswitch_0
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

    .line 141
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->requestEnded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->errorReceived:Z

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->inputStream:Lcom/intel/bluetooth/obex/OBEXOperationInputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->appendData([BZ)V

    .line 150
    :goto_0
    return-void

    .line 145
    :cond_1
    const-string v0, "server operation reply continue"

    invoke-static {v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->session:Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;

    const/16 v1, 0x90

    .line 147
    iget-object v2, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->sendHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    .line 146
    invoke-virtual {v0, v1, v2}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->writePacket(ILcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 148
    iput-object v3, p0, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->sendHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    .line 149
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;->readRequestPacket()Z

    goto :goto_0
.end method

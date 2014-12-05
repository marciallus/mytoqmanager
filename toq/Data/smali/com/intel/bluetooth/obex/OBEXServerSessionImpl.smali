.class Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;
.super Lcom/intel/bluetooth/obex/OBEXSessionBase;
.source "OBEXServerSessionImpl.java"

# interfaces
.implements Lcom/intel/bluetooth/BluetoothServerConnection;
.implements Ljava/lang/Runnable;


# static fields
.field static errorCount:I

.field private static threadNumber:I


# instance fields
.field private canCloseEvent:Ljava/lang/Object;

.field private closeRequested:Z

.field private volatile delayClose:Z

.field private handler:Ljavax/obex/ServerRequestHandler;

.field private handlerThread:Ljava/lang/Thread;

.field private operation:Lcom/intel/bluetooth/obex/OBEXServerOperation;

.field private stackID:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput v0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->errorCount:I

    .line 40
    return-void
.end method

.method constructor <init>(Ljavax/microedition/io/StreamConnection;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;Lcom/intel/bluetooth/obex/OBEXConnectionParams;)V
    .locals 3
    .param p1, "connection"    # Ljavax/microedition/io/StreamConnection;
    .param p2, "handler"    # Ljavax/obex/ServerRequestHandler;
    .param p3, "authenticator"    # Ljavax/obex/Authenticator;
    .param p4, "obexConnectionParams"    # Lcom/intel/bluetooth/obex/OBEXConnectionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p4}, Lcom/intel/bluetooth/obex/OBEXSessionBase;-><init>(Ljavax/microedition/io/StreamConnection;Lcom/intel/bluetooth/obex/OBEXConnectionParams;)V

    .line 47
    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->closeRequested:Z

    .line 49
    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->delayClose:Z

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->canCloseEvent:Ljava/lang/Object;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->requestSent:Z

    .line 70
    iput-object p2, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->handler:Ljavax/obex/ServerRequestHandler;

    .line 71
    iput-object p3, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->authenticator:Ljavax/obex/Authenticator;

    .line 72
    invoke-static {}, Lcom/intel/bluetooth/BlueCoveImpl;->getCurrentThreadBluetoothStackID()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->stackID:Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OBEXServerSessionThread-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->nextThreadNum()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 73
    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->handlerThread:Ljava/lang/Thread;

    .line 75
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->handlerThread:Ljava/lang/Thread;

    invoke-static {v0}, Lcom/intel/bluetooth/UtilsJavaSE;->threadSetDaemon(Ljava/lang/Thread;)V

    .line 76
    return-void
.end method

.method private handleRequest()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 138
    const-string v6, "OBEXServerSession handleRequest"

    invoke-static {v6}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 139
    iput-boolean v5, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->delayClose:Z

    .line 142
    :try_start_0
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->readPacket()[B
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 151
    .local v0, "b":[B
    iput-boolean v4, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->delayClose:Z

    .line 153
    const/4 v6, 0x0

    :try_start_1
    aget-byte v6, v0, v6

    and-int/lit16 v3, v6, 0xff

    .line 154
    .local v3, "opcode":I
    and-int/lit16 v6, v3, 0x80

    if-eqz v6, :cond_2

    move v2, v4

    .line 155
    .local v2, "finalPacket":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 156
    const-string v6, "OBEXServerSession got operation finalPacket"

    invoke-static {v6}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 158
    :cond_0
    sparse-switch v3, :sswitch_data_0

    .line 181
    const/16 v6, 0xd1

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->writePacket(ILcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    :goto_1
    iput-boolean v5, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->delayClose:Z

    .line 186
    iget-object v5, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->canCloseEvent:Ljava/lang/Object;

    monitor-enter v5

    .line 187
    :try_start_2
    iget-object v6, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->canCloseEvent:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 186
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 189
    .end local v0    # "b":[B
    .end local v2    # "finalPacket":Z
    .end local v3    # "opcode":I
    :goto_2
    return v4

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/io/EOFException;
    iget-boolean v4, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->isConnected:Z

    if-eqz v4, :cond_1

    .line 145
    throw v1

    .line 147
    :cond_1
    const-string v4, "OBEXServerSession got EOF"

    invoke-static {v4}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->close()V

    move v4, v5

    .line 149
    goto :goto_2

    .end local v1    # "e":Ljava/io/EOFException;
    .restart local v0    # "b":[B
    .restart local v3    # "opcode":I
    :cond_2
    move v2, v5

    .line 154
    goto :goto_0

    .line 160
    .restart local v2    # "finalPacket":Z
    :sswitch_0
    :try_start_3
    invoke-direct {p0, v0}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->processConnect([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 183
    .end local v2    # "finalPacket":Z
    .end local v3    # "opcode":I
    :catchall_0
    move-exception v4

    .line 184
    iput-boolean v5, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->delayClose:Z

    .line 185
    throw v4

    .line 163
    .restart local v2    # "finalPacket":Z
    .restart local v3    # "opcode":I
    :sswitch_1
    :try_start_4
    invoke-direct {p0, v0}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->processDisconnect([B)V

    goto :goto_1

    .line 167
    :sswitch_2
    invoke-direct {p0, v0, v2}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->processPut([BZ)V

    goto :goto_1

    .line 171
    :sswitch_3
    invoke-direct {p0, v0, v2}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->processSetPath([BZ)V

    goto :goto_1

    .line 174
    :sswitch_4
    invoke-direct {p0}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->processAbort()V

    goto :goto_1

    .line 178
    :sswitch_5
    invoke-direct {p0, v0, v2}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->processGet([BZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 186
    :catchall_1
    move-exception v4

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .line 158
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_5
        0x5 -> :sswitch_3
        0x80 -> :sswitch_0
        0x81 -> :sswitch_1
        0x82 -> :sswitch_2
        0x83 -> :sswitch_5
        0x85 -> :sswitch_3
        0xff -> :sswitch_4
    .end sparse-switch
.end method

.method private static declared-synchronized nextThreadNum()I
    .locals 3

    .prologue
    .line 60
    const-class v1, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->threadNumber:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->threadNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private processAbort()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 364
    const-string v0, "Abort operation"

    invoke-static {v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 365
    invoke-direct {p0}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->validateConnection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXServerOperation;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXServerOperation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/intel/bluetooth/obex/OBEXServerOperation;->isAborted:Z

    .line 370
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXServerOperation;

    invoke-virtual {v0}, Lcom/intel/bluetooth/obex/OBEXServerOperation;->close()V

    .line 371
    iput-object v2, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXServerOperation;

    .line 372
    const/16 v0, 0xa0

    invoke-virtual {p0, v0, v2}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->writePacket(ILcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    goto :goto_0

    .line 374
    :cond_1
    const/16 v0, 0xc0

    invoke-virtual {p0, v0, v2}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->writePacket(ILcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    goto :goto_0
.end method

.method private processConnect([B)V
    .locals 14
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x10

    const/4 v12, 0x7

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x3

    .line 193
    const-string v6, "Connect operation"

    invoke-static {v6}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 194
    aget-byte v6, p1, v9

    if-eq v6, v13, :cond_0

    .line 195
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unsupported client OBEX version "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v8, p1, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 197
    :cond_0
    array-length v6, p1

    if-ge v6, v12, :cond_1

    .line 198
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Corrupted OBEX data"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 200
    :cond_1
    const/4 v6, 0x5

    aget-byte v6, p1, v6

    const/4 v7, 0x6

    aget-byte v7, p1, v7

    invoke-static {v6, v7}, Lcom/intel/bluetooth/obex/OBEXUtils;->bytesToShort(BB)I

    move-result v5

    .line 201
    .local v5, "requestedMTU":I
    const/16 v6, 0xff

    if-ge v5, v6, :cond_2

    .line 202
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

    .line 204
    :cond_2
    iput v5, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->mtu:I

    .line 205
    const-string v6, "mtu selected"

    iget v7, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->mtu:I

    int-to-long v7, v7

    invoke-static {v6, v7, v8}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    .line 208
    invoke-static {}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->createOBEXHeaderSetImpl()Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v3

    .line 209
    .local v3, "replyHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    invoke-static {p1, v12}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->readHeaders([BI)Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v4

    .line 210
    .local v4, "requestHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    invoke-virtual {p0, v4}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->handleAuthenticationResponse(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 211
    const/16 v2, 0xc1

    .line 222
    .local v2, "rc":I
    :goto_0
    const/4 v6, 0x4

    new-array v0, v6, [B

    .line 223
    .local v0, "connectResponse":[B
    aput-byte v13, v0, v10

    .line 224
    aput-byte v10, v0, v11

    .line 225
    const/4 v6, 0x2

    iget-object v7, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->obexConnectionParams:Lcom/intel/bluetooth/obex/OBEXConnectionParams;

    iget v7, v7, Lcom/intel/bluetooth/obex/OBEXConnectionParams;->mtu:I

    invoke-static {v7}, Lcom/intel/bluetooth/obex/OBEXUtils;->hiByte(I)B

    move-result v7

    aput-byte v7, v0, v6

    .line 226
    iget-object v6, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->obexConnectionParams:Lcom/intel/bluetooth/obex/OBEXConnectionParams;

    iget v6, v6, Lcom/intel/bluetooth/obex/OBEXConnectionParams;->mtu:I

    invoke-static {v6}, Lcom/intel/bluetooth/obex/OBEXUtils;->loByte(I)B

    move-result v6

    aput-byte v6, v0, v9

    .line 227
    invoke-virtual {p0, v2, v0, v3}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->writePacketWithFlags(I[BLcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 228
    const/16 v6, 0xa0

    if-ne v2, v6, :cond_3

    .line 229
    iput-boolean v11, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->isConnected:Z

    .line 231
    :cond_3
    return-void

    .line 213
    .end local v0    # "connectResponse":[B
    .end local v2    # "rc":I
    :cond_4
    invoke-virtual {p0, v4, v3}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->handleAuthenticationChallenge(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 215
    const/16 v2, 0xd0

    .line 217
    .restart local v2    # "rc":I
    :try_start_0
    iget-object v6, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->handler:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v6, v4, v3}, Ljavax/obex/ServerRequestHandler;->onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 218
    :catch_0
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/Throwable;
    const-string v6, "onConnect"

    invoke-static {v6, v1}, Lcom/intel/bluetooth/DebugLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private processDelete(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V
    .locals 4
    .param p1, "requestHeaders"    # Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    const-string v3, "Delete operation"

    invoke-static {v3}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->createOBEXHeaderSetImpl()Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v2

    .line 268
    .local v2, "replyHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    invoke-virtual {p0, p1, v2}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->handleAuthenticationChallenge(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 269
    const/16 v1, 0xa0

    .line 271
    .local v1, "rc":I
    :try_start_0
    iget-object v3, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->handler:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v3, p1, v2}, Ljavax/obex/ServerRequestHandler;->onDelete(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 276
    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->writePacket(ILcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 277
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Throwable;
    const/16 v1, 0xd3

    .line 274
    const-string v3, "onDelete"

    invoke-static {v3, v0}, Lcom/intel/bluetooth/DebugLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private processDisconnect([B)V
    .locals 5
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    const-string v4, "Disconnect operation"

    invoke-static {v4}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->validateConnection()Z

    move-result v4

    if-nez v4, :cond_0

    .line 262
    :goto_0
    return-void

    .line 251
    :cond_0
    const/4 v4, 0x3

    invoke-static {p1, v4}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->readHeaders([BI)Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v3

    .line 252
    .local v3, "requestHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    invoke-static {}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->createOBEXHeaderSetImpl()Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v2

    .line 253
    .local v2, "replyHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    const/16 v1, 0xa0

    .line 255
    .local v1, "rc":I
    :try_start_0
    iget-object v4, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->handler:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {v4, v3, v2}, Ljavax/obex/ServerRequestHandler;->onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->isConnected:Z

    .line 261
    invoke-virtual {p0, v1, v2}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->writePacket(ILcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Throwable;
    const/16 v1, 0xd3

    .line 258
    const-string v4, "onDisconnect"

    invoke-static {v4, v0}, Lcom/intel/bluetooth/DebugLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private processGet([BZ)V
    .locals 6
    .param p1, "b"    # [B
    .param p2, "finalPacket"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 325
    const-string v3, "Get operation"

    invoke-static {v3}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 326
    invoke-direct {p0}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->validateConnection()Z

    move-result v3

    if-nez v3, :cond_0

    .line 361
    :goto_0
    return-void

    .line 329
    :cond_0
    const/4 v3, 0x3

    invoke-static {p1, v3}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->readHeaders([BI)Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v2

    .line 331
    .local v2, "requestHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    iget-object v3, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->handler:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {p0, v2, v3}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->handleAuthenticationResponse(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;Ljavax/obex/ServerRequestHandler;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 332
    const/16 v3, 0xc1

    invoke-virtual {p0, v3, v5}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->writePacket(ILcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    goto :goto_0

    .line 336
    :cond_1
    new-instance v3, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;

    .line 337
    invoke-direct {v3, p0, v2, p2}, Lcom/intel/bluetooth/obex/OBEXServerOperationGet;-><init>(Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;Z)V

    .line 336
    iput-object v3, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXServerOperation;

    .line 347
    const/16 v1, 0xa0

    .line 349
    .local v1, "rc":I
    :try_start_0
    iget-object v3, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->handler:Ljavax/obex/ServerRequestHandler;

    iget-object v4, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXServerOperation;

    invoke-virtual {v3, v4}, Ljavax/obex/ServerRequestHandler;->onGet(Ljavax/obex/Operation;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 354
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXServerOperation;

    iget-boolean v3, v3, Lcom/intel/bluetooth/obex/OBEXServerOperation;->isAborted:Z

    if-nez v3, :cond_2

    .line 355
    iget-object v3, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXServerOperation;

    invoke-virtual {v3, v1}, Lcom/intel/bluetooth/obex/OBEXServerOperation;->writeResponse(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    :cond_2
    iget-object v3, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXServerOperation;

    invoke-virtual {v3}, Lcom/intel/bluetooth/obex/OBEXServerOperation;->close()V

    .line 359
    iput-object v5, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXServerOperation;

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Throwable;
    const/16 v1, 0xd3

    .line 352
    :try_start_2
    const-string v3, "onGet"

    invoke-static {v3, v0}, Lcom/intel/bluetooth/DebugLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 357
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    .line 358
    iget-object v4, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXServerOperation;

    invoke-virtual {v4}, Lcom/intel/bluetooth/obex/OBEXServerOperation;->close()V

    .line 359
    iput-object v5, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXServerOperation;

    .line 360
    throw v3
.end method

.method private processPut([BZ)V
    .locals 6
    .param p1, "b"    # [B
    .param p2, "finalPacket"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 280
    const-string v3, "Put/Delete operation"

    invoke-static {v3}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 281
    invoke-direct {p0}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->validateConnection()Z

    move-result v3

    if-nez v3, :cond_0

    .line 322
    :goto_0
    return-void

    .line 284
    :cond_0
    const/4 v3, 0x3

    invoke-static {p1, v3}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->readHeaders([BI)Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v2

    .line 294
    .local v2, "requestHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    iget-object v3, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->handler:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {p0, v2, v3}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->handleAuthenticationResponse(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;Ljavax/obex/ServerRequestHandler;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 295
    const/16 v3, 0xc1

    invoke-virtual {p0, v3, v5}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->writePacket(ILcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    goto :goto_0

    .line 300
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v2}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->hasIncommingData()Z

    move-result v3

    if-nez v3, :cond_2

    .line 301
    invoke-direct {p0, v2}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->processDelete(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    goto :goto_0

    .line 304
    :cond_2
    const-string v3, "Put operation"

    invoke-static {v3}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 305
    new-instance v3, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;

    .line 306
    invoke-direct {v3, p0, v2, p2}, Lcom/intel/bluetooth/obex/OBEXServerOperationPut;-><init>(Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;Z)V

    .line 305
    iput-object v3, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXServerOperation;

    .line 308
    const/16 v1, 0xa0

    .line 310
    .local v1, "rc":I
    :try_start_0
    iget-object v3, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->handler:Ljavax/obex/ServerRequestHandler;

    iget-object v4, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXServerOperation;

    invoke-virtual {v3, v4}, Ljavax/obex/ServerRequestHandler;->onPut(Ljavax/obex/Operation;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 315
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXServerOperation;

    iget-boolean v3, v3, Lcom/intel/bluetooth/obex/OBEXServerOperation;->isAborted:Z

    if-nez v3, :cond_3

    .line 316
    iget-object v3, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXServerOperation;

    invoke-virtual {v3, v1}, Lcom/intel/bluetooth/obex/OBEXServerOperation;->writeResponse(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    :cond_3
    iget-object v3, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXServerOperation;

    invoke-virtual {v3}, Lcom/intel/bluetooth/obex/OBEXServerOperation;->close()V

    .line 320
    iput-object v5, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXServerOperation;

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Throwable;
    const/16 v1, 0xd3

    .line 313
    :try_start_2
    const-string v3, "onPut"

    invoke-static {v3, v0}, Lcom/intel/bluetooth/DebugLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 318
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    .line 319
    iget-object v4, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXServerOperation;

    invoke-virtual {v4}, Lcom/intel/bluetooth/obex/OBEXServerOperation;->close()V

    .line 320
    iput-object v5, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXServerOperation;

    .line 321
    throw v3
.end method

.method private processSetPath([BZ)V
    .locals 11
    .param p1, "b"    # [B
    .param p2, "finalPacket"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 380
    const-string v8, "SetPath operation"

    invoke-static {v8}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 381
    invoke-direct {p0}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->validateConnection()Z

    move-result v8

    if-nez v8, :cond_0

    .line 411
    :goto_0
    return-void

    .line 384
    :cond_0
    array-length v8, p1

    if-ge v8, v10, :cond_1

    .line 385
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Corrupted OBEX data"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 387
    :cond_1
    invoke-static {p1, v10}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->readHeaders([BI)Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v5

    .line 390
    .local v5, "requestHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    aget-byte v8, p1, v9

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    move v0, v6

    .line 391
    .local v0, "backup":Z
    :goto_1
    aget-byte v8, p1, v9

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_3

    move v1, v6

    .line 392
    .local v1, "create":Z
    :goto_2
    const-string v6, "setPath backup"

    invoke-static {v6, v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Z)V

    .line 393
    const-string v6, "setPath create"

    invoke-static {v6, v1}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Z)V

    .line 395
    iget-object v6, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->handler:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {p0, v5, v6}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->handleAuthenticationResponse(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;Ljavax/obex/ServerRequestHandler;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 396
    const/16 v6, 0xc1

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->writePacket(ILcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    goto :goto_0

    .end local v0    # "backup":Z
    .end local v1    # "create":Z
    :cond_2
    move v0, v7

    .line 390
    goto :goto_1

    .restart local v0    # "backup":Z
    :cond_3
    move v1, v7

    .line 391
    goto :goto_2

    .line 400
    .restart local v1    # "create":Z
    :cond_4
    invoke-static {}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->createOBEXHeaderSetImpl()Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v4

    .line 401
    .local v4, "replyHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    invoke-virtual {p0, v5, v4}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->handleAuthenticationChallenge(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 402
    const/16 v3, 0xa0

    .line 404
    .local v3, "rc":I
    :try_start_0
    iget-object v6, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->handler:Ljavax/obex/ServerRequestHandler;

    .line 405
    invoke-virtual {v6, v5, v4, v0, v1}, Ljavax/obex/ServerRequestHandler;->onSetPath(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;ZZ)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 410
    :goto_3
    invoke-virtual {p0, v3, v4}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->writePacket(ILcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    goto :goto_0

    .line 406
    :catch_0
    move-exception v2

    .line 407
    .local v2, "e":Ljava/lang/Throwable;
    const/16 v3, 0xd3

    .line 408
    const-string v6, "onSetPath"

    invoke-static {v6, v2}, Lcom/intel/bluetooth/DebugLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private validateConnection()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->isConnected:Z

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x1

    .line 243
    :goto_0
    return v0

    .line 242
    :cond_0
    const/16 v0, 0xc0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->writePacket(ILcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 243
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->closeRequested:Z

    .line 115
    :goto_0
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->delayClose:Z

    if-nez v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const-string v0, "OBEXServerSession close"

    invoke-static {v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXServerOperation;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXServerOperation;

    invoke-virtual {v0}, Lcom/intel/bluetooth/obex/OBEXServerOperation;->close()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->operation:Lcom/intel/bluetooth/obex/OBEXServerOperation;

    .line 134
    :cond_0
    invoke-super {p0}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->close()V

    .line 135
    return-void

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->canCloseEvent:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->delayClose:Z

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->canCloseEvent:Ljava/lang/Object;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :cond_2
    :goto_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->delayClose:Z

    .line 116
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 121
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method handleAuthenticationResponse(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)Z
    .locals 1
    .param p1, "incomingHeaders"    # Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->handler:Ljavax/obex/ServerRequestHandler;

    invoke-virtual {p0, p1, v0}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->handleAuthenticationResponse(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;Ljavax/obex/ServerRequestHandler;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 84
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->stackID:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->stackID:Ljava/lang/Object;

    invoke-static {v1}, Lcom/intel/bluetooth/BlueCoveImpl;->setThreadBluetoothStackID(Ljava/lang/Object;)V

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->closeRequested:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    .line 104
    :cond_1
    const-string v1, "OBEXServerSession ends"

    invoke-static {v1}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 106
    :try_start_1
    invoke-super {p0}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 111
    :goto_0
    return-void

    .line 90
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->handleRequest()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-nez v1, :cond_0

    .line 104
    const-string v1, "OBEXServerSession ends"

    invoke-static {v1}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 106
    :try_start_3
    invoke-super {p0}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "OBEXServerSession close error"

    invoke-static {v1, v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 94
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_4
    const-class v2, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 96
    :try_start_5
    sget v1, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->errorCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->errorCount:I

    .line 95
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 98
    :try_start_6
    iget-boolean v1, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->isConnected:Z

    if-eqz v1, :cond_3

    .line 99
    const-string v1, "OBEXServerSession error"

    invoke-static {v1, v0}, Lcom/intel/bluetooth/DebugLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 104
    :goto_1
    const-string v1, "OBEXServerSession ends"

    invoke-static {v1}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 106
    :try_start_7
    invoke-super {p0}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 107
    :catch_2
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "OBEXServerSession close error"

    invoke-static {v1, v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 95
    .local v0, "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 103
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v1

    .line 104
    const-string v2, "OBEXServerSession ends"

    invoke-static {v2}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 106
    :try_start_a
    invoke-super {p0}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 110
    :goto_2
    throw v1

    .line 101
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    :try_start_b
    const-string v1, "OBEXServerSession error"

    invoke-static {v1, v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_1

    .line 107
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    .line 108
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "OBEXServerSession close error"

    invoke-static {v2, v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 107
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 108
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "OBEXServerSession close error"

    invoke-static {v1, v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method startSessionHandlerThread()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->handlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 80
    return-void
.end method

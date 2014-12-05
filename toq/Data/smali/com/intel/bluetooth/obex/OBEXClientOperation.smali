.class abstract Lcom/intel/bluetooth/obex/OBEXClientOperation;
.super Ljava/lang/Object;
.source "OBEXClientOperation.java"

# interfaces
.implements Lcom/intel/bluetooth/obex/OBEXOperation;
.implements Lcom/intel/bluetooth/obex/OBEXOperationDelivery;
.implements Lcom/intel/bluetooth/obex/OBEXOperationReceive;
.implements Ljavax/obex/Operation;


# static fields
.field static final SHORT_REQUEST_PHASE:Z = true


# instance fields
.field private authenticationResponseCreated:Z

.field protected errorReceived:Z

.field protected finalBodyReceived:Z

.field protected inputStream:Lcom/intel/bluetooth/obex/OBEXOperationInputStream;

.field protected inputStreamOpened:Z

.field protected isClosed:Z

.field protected lock:Ljava/lang/Object;

.field protected operationId:C

.field protected operationInContinue:Z

.field protected operationInProgress:Z

.field protected outputStream:Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;

.field protected outputStreamOpened:Z

.field protected replyHeaders:Ljavax/obex/HeaderSet;

.field protected requestEnded:Z

.field protected session:Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;

.field protected startOperationHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;


# direct methods
.method constructor <init>(Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;CLcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V
    .locals 2
    .param p1, "session"    # Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;
    .param p2, "operationId"    # C
    .param p3, "sendHeaders"    # Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v1, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->outputStreamOpened:Z

    .line 67
    iput-boolean v1, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->inputStreamOpened:Z

    .line 69
    iput-boolean v1, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->errorReceived:Z

    .line 71
    iput-boolean v1, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->requestEnded:Z

    .line 73
    iput-boolean v1, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->finalBodyReceived:Z

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->startOperationHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    .line 77
    iput-boolean v1, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->authenticationResponseCreated:Z

    .line 83
    iput-object p1, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->session:Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;

    .line 84
    iput-char p2, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->operationId:C

    .line 85
    iput-boolean v1, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->isClosed:Z

    .line 86
    iput-boolean v1, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->operationInProgress:Z

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->lock:Ljava/lang/Object;

    .line 88
    new-instance v0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;

    invoke-direct {v0, p0}, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;-><init>(Lcom/intel/bluetooth/obex/OBEXOperation;)V

    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->inputStream:Lcom/intel/bluetooth/obex/OBEXOperationInputStream;

    .line 89
    invoke-virtual {p0, p3}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->startOperation(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 90
    return-void
.end method

.method private closeOutputStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->outputStream:Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;

    if-eqz v0, :cond_1

    .line 332
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->outputStream:Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->outputStream:Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;

    invoke-virtual {v0}, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->close()V

    .line 336
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->outputStream:Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;

    .line 332
    monitor-exit v1

    .line 339
    :cond_1
    return-void

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private closeStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 315
    :try_start_0
    invoke-direct {p0}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->receiveOperationEnd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    iput-boolean v1, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->operationInProgress:Z

    .line 318
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->inputStream:Lcom/intel/bluetooth/obex/OBEXOperationInputStream;

    invoke-virtual {v0}, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->close()V

    .line 319
    invoke-direct {p0}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->closeOutputStream()V

    .line 321
    return-void

    .line 316
    :catchall_0
    move-exception v0

    .line 317
    iput-boolean v1, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->operationInProgress:Z

    .line 318
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->inputStream:Lcom/intel/bluetooth/obex/OBEXOperationInputStream;

    invoke-virtual {v1}, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->close()V

    .line 319
    invoke-direct {p0}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->closeOutputStream()V

    .line 320
    throw v0
.end method

.method private exchangePacket(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V
    .locals 10
    .param p1, "headers"    # Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 168
    const/4 v4, 0x0

    .line 170
    .local v4, "success":Z
    :try_start_0
    iget-object v5, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->session:Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;

    iget-char v6, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->operationId:C

    invoke-virtual {v5, v6, p1}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->writePacket(ILcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 171
    iget-object v5, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->session:Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;

    invoke-virtual {v5}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->readPacket()[B

    move-result-object v0

    .line 172
    .local v0, "b":[B
    const/4 v5, 0x0

    aget-byte v5, v0, v5

    .line 173
    const/4 v6, 0x3

    .line 172
    invoke-static {v5, v0, v6}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->readHeaders(B[BI)Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v1

    .line 174
    .local v1, "dataHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    iget-object v5, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->session:Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->handleAuthenticationResponse(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;Ljavax/obex/ServerRequestHandler;)Z

    .line 175
    invoke-virtual {v1}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->getResponseCode()I

    move-result v2

    .line 176
    .local v2, "responseCode":I
    const-string v5, "client operation got reply"

    .line 177
    invoke-static {v2}, Lcom/intel/bluetooth/obex/OBEXUtils;->toStringObexResponseCodes(I)Ljava/lang/String;

    move-result-object v6

    .line 178
    int-to-long v7, v2

    .line 176
    invoke-static {v5, v6, v7, v8}, Lcom/intel/bluetooth/DebugLog;->debug0x(Ljava/lang/String;Ljava/lang/String;J)V

    .line 179
    sparse-switch v2, :sswitch_data_0

    .line 222
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->errorReceived:Z

    .line 223
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->operationInContinue:Z

    .line 225
    invoke-virtual {p0, v1}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->processIncommingHeaders(Ljavax/obex/HeaderSet;)V

    .line 226
    const/4 v5, 0x1

    invoke-virtual {p0, v1, v5}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->processIncommingData(Ljavax/obex/HeaderSet;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :goto_0
    const/4 v4, 0x1

    .line 239
    if-nez v4, :cond_0

    .line 240
    iput-boolean v9, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->errorReceived:Z

    .line 243
    :cond_0
    return-void

    .line 181
    :sswitch_0
    :try_start_1
    iget-boolean v5, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->authenticationResponseCreated:Z

    if-nez v5, :cond_2

    .line 182
    invoke-virtual {v1}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->hasAuthenticationChallenge()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 183
    const-string v5, "client resend request with auth response"

    invoke-static {v5}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 186
    invoke-static {p1}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->cloneHeaders(Ljavax/obex/HeaderSet;)Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v3

    .line 187
    .local v3, "retryHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    iget-object v5, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->session:Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;

    invoke-virtual {v5, v1, v3}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->handleAuthenticationChallenge(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 189
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->authenticationResponseCreated:Z

    .line 190
    invoke-direct {p0, v3}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->exchangePacket(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 238
    .end local v0    # "b":[B
    .end local v1    # "dataHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    .end local v2    # "responseCode":I
    .end local v3    # "retryHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    :catchall_0
    move-exception v5

    .line 239
    if-nez v4, :cond_1

    .line 240
    iput-boolean v9, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->errorReceived:Z

    .line 242
    :cond_1
    throw v5

    .line 192
    .restart local v0    # "b":[B
    .restart local v1    # "dataHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    .restart local v2    # "responseCode":I
    :cond_2
    const/4 v5, 0x1

    :try_start_2
    iput-boolean v5, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->errorReceived:Z

    .line 193
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->operationInContinue:Z

    .line 194
    invoke-virtual {p0, v1}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->processIncommingHeaders(Ljavax/obex/HeaderSet;)V

    .line 195
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Authentication Failure"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 199
    :sswitch_1
    invoke-virtual {p0, v1}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->processIncommingHeaders(Ljavax/obex/HeaderSet;)V

    .line 200
    const/4 v5, 0x1

    invoke-virtual {p0, v1, v5}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->processIncommingData(Ljavax/obex/HeaderSet;Z)V

    .line 201
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->operationInProgress:Z

    .line 202
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->operationInContinue:Z

    goto :goto_0

    .line 205
    :sswitch_2
    invoke-virtual {p0, v1}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->processIncommingHeaders(Ljavax/obex/HeaderSet;)V

    .line 206
    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->processIncommingData(Ljavax/obex/HeaderSet;Z)V

    .line 207
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->operationInContinue:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 179
    :sswitch_data_0
    .sparse-switch
        0x90 -> :sswitch_2
        0xa0 -> :sswitch_1
        0xc1 -> :sswitch_0
    .end sparse-switch
.end method

.method static isShortRequestPhase()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method private receiveOperationEnd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    :goto_0
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->operationInContinue:Z

    if-nez v0, :cond_1

    .line 328
    :cond_0
    return-void

    .line 325
    :cond_1
    const-string v0, "operation expects operation end"

    invoke-static {v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->inputStream:Lcom/intel/bluetooth/obex/OBEXOperationInputStream;

    invoke-virtual {p0, v0}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->receiveData(Lcom/intel/bluetooth/obex/OBEXOperationInputStream;)V

    goto :goto_0
.end method

.method private writeAbort()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 298
    :try_start_0
    iget-object v2, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->session:Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;

    const/16 v3, 0xff

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->writePacket(ILcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 299
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->requestEnded:Z

    .line 300
    iget-object v2, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->session:Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;

    invoke-virtual {v2}, Lcom/intel/bluetooth/obex/OBEXClientSessionImpl;->readPacket()[B

    move-result-object v0

    .line 301
    .local v0, "b":[B
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    const/4 v3, 0x3

    invoke-static {v2, v0, v3}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->readHeaders(B[BI)Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v1

    .line 302
    .local v1, "dataHeaders":Ljavax/obex/HeaderSet;
    invoke-interface {v1}, Ljavax/obex/HeaderSet;->getResponseCode()I

    move-result v2

    const/16 v3, 0xa0

    if-eq v2, v3, :cond_0

    .line 303
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fails to abort operation, received "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-interface {v1}, Ljavax/obex/HeaderSet;->getResponseCode()I

    move-result v4

    .line 304
    invoke-static {v4}, Lcom/intel/bluetooth/obex/OBEXUtils;->toStringObexResponseCodes(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 303
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    .end local v0    # "b":[B
    .end local v1    # "dataHeaders":Ljavax/obex/HeaderSet;
    :catchall_0
    move-exception v2

    .line 308
    iput-boolean v5, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->isClosed:Z

    .line 309
    invoke-direct {p0}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->closeStream()V

    .line 310
    throw v2

    .line 308
    .restart local v0    # "b":[B
    .restart local v1    # "dataHeaders":Ljavax/obex/HeaderSet;
    :cond_0
    iput-boolean v5, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->isClosed:Z

    .line 309
    invoke-direct {p0}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->closeStream()V

    .line 311
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
    .line 283
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->validateOperationIsOpen()V

    .line 284
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->operationInProgress:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->operationInContinue:Z

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Ljava/io/IOException;

    const-string v1, "the transaction has already ended"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->outputStream:Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->outputStream:Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;

    invoke-virtual {v0}, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->abort()V

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->inputStream:Lcom/intel/bluetooth/obex/OBEXOperationInputStream;

    invoke-virtual {v0}, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->close()V

    .line 287
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    invoke-direct {p0}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->writeAbort()V

    .line 294
    return-void

    .line 287
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 450
    :try_start_0
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->endRequestPhase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    invoke-direct {p0}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->closeStream()V

    .line 453
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->isClosed:Z

    if-nez v0, :cond_0

    .line 454
    iput-boolean v2, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->isClosed:Z

    .line 455
    const-string v0, "client operation closed"

    invoke-static {v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 458
    :cond_0
    return-void

    .line 451
    :catchall_0
    move-exception v0

    .line 452
    invoke-direct {p0}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->closeStream()V

    .line 453
    iget-boolean v1, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->isClosed:Z

    if-nez v1, :cond_1

    .line 454
    iput-boolean v2, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->isClosed:Z

    .line 455
    const-string v1, "client operation closed"

    invoke-static {v1}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 457
    :cond_1
    throw v0
.end method

.method public deliverPacket(Z[B)V
    .locals 3
    .param p1, "finalPacket"    # Z
    .param p2, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    iget-boolean v2, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->requestEnded:Z

    if-eqz v2, :cond_0

    .line 149
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->startOperationHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    if-eqz v2, :cond_1

    .line 135
    iget-object v2, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->startOperationHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    invoke-direct {p0, v2}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->exchangePacket(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 136
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->startOperationHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    .line 138
    :cond_1
    const/16 v0, 0x48

    .line 139
    .local v0, "dataHeaderID":I
    if-eqz p1, :cond_2

    .line 140
    iget-char v2, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->operationId:C

    or-int/lit16 v2, v2, 0x80

    int-to-char v2, v2

    iput-char v2, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->operationId:C

    .line 141
    const/16 v0, 0x49

    .line 142
    const-string v2, "client Request Phase ended"

    invoke-static {v2}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 143
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->requestEnded:Z

    .line 146
    :cond_2
    invoke-static {}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->createOBEXHeaderSetImpl()Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v1

    .line 147
    .local v1, "dataHeaders":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    invoke-virtual {v1, v0, p2}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->setHeader(ILjava/lang/Object;)V

    .line 148
    invoke-direct {p0, v1}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->exchangePacket(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    goto :goto_0
.end method

.method protected endRequestPhase()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->requestEnded:Z

    if-eqz v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 155
    :cond_0
    const-string v0, "client ends Request Phase"

    invoke-static {v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->operationInProgress:Z

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->requestEnded:Z

    .line 158
    iget-char v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->operationId:C

    or-int/lit16 v0, v0, 0x80

    int-to-char v0, v0

    iput-char v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->operationId:C

    .line 160
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->startOperationHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    invoke-direct {p0, v0}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->exchangePacket(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->startOperationHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    goto :goto_0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()J
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    .line 410
    :try_start_0
    iget-object v4, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->replyHeaders:Ljavax/obex/HeaderSet;

    const/16 v5, 0xc3

    invoke-interface {v4, v5}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    .local v1, "len":Ljava/lang/Long;
    if-nez v1, :cond_0

    .line 417
    .end local v1    # "len":Ljava/lang/Long;
    :goto_0
    return-wide v2

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 417
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
    .line 353
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->validateOperationIsOpen()V

    .line 354
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->endRequestPhase()V

    .line 355
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->replyHeaders:Ljavax/obex/HeaderSet;

    invoke-static {v0}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->cloneHeaders(Ljavax/obex/HeaderSet;)Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->validateOperationIsOpen()V

    .line 368
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->endRequestPhase()V

    .line 369
    invoke-direct {p0}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->closeOutputStream()V

    .line 370
    invoke-direct {p0}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->receiveOperationEnd()V

    .line 371
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->replyHeaders:Ljavax/obex/HeaderSet;

    invoke-interface {v0}, Ljavax/obex/HeaderSet;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 429
    :try_start_0
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->replyHeaders:Ljavax/obex/HeaderSet;

    const/16 v2, 0x42

    invoke-interface {v1, v2}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :goto_0
    return-object v1

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 461
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->isClosed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->errorReceived:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public openDataInputStream()Ljava/io/DataInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->openInputStream()Ljava/io/InputStream;

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
    .line 440
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->openOutputStream()Ljava/io/OutputStream;

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
    .line 258
    .line 259
    const/16 v1, 0x48

    invoke-interface {p1, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v0

    .line 258
    check-cast v0, [B

    .line 260
    .local v0, "data":[B
    if-nez v0, :cond_0

    .line 262
    const/16 v1, 0x49

    invoke-interface {p1, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v0

    .line 261
    .end local v0    # "data":[B
    check-cast v0, [B

    .line 263
    .restart local v0    # "data":[B
    if-eqz v0, :cond_0

    .line 264
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->finalBodyReceived:Z

    .line 265
    const/4 p2, 0x1

    .line 268
    :cond_0
    if-eqz v0, :cond_2

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "client received Data eof: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    array-length v2, v0

    int-to-long v2, v2

    .line 269
    invoke-static {v1, v2, v3}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    .line 271
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->inputStream:Lcom/intel/bluetooth/obex/OBEXOperationInputStream;

    invoke-virtual {v1, v0, p2}, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->appendData([BZ)V

    .line 275
    :cond_1
    :goto_0
    return-void

    .line 272
    :cond_2
    if-eqz p2, :cond_1

    .line 273
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->inputStream:Lcom/intel/bluetooth/obex/OBEXOperationInputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->appendData([BZ)V

    goto :goto_0
.end method

.method protected processIncommingHeaders(Ljavax/obex/HeaderSet;)V
    .locals 1
    .param p1, "dataHeaders"    # Ljavax/obex/HeaderSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->replyHeaders:Ljavax/obex/HeaderSet;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->replyHeaders:Ljavax/obex/HeaderSet;

    invoke-static {p1, v0}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->appendHeaders(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 253
    :cond_0
    iput-object p1, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->replyHeaders:Ljavax/obex/HeaderSet;

    .line 254
    return-void
.end method

.method public receiveData(Lcom/intel/bluetooth/obex/OBEXOperationInputStream;)V
    .locals 1
    .param p1, "is"    # Lcom/intel/bluetooth/obex/OBEXOperationInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->startOperationHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    invoke-direct {p0, v0}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->exchangePacket(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->startOperationHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    .line 120
    return-void
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
    .line 375
    if-nez p1, :cond_0

    .line 376
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "headers are null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_0
    invoke-static {p1}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->validateCreatedHeaderSet(Ljavax/obex/HeaderSet;)V

    .line 379
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->validateOperationIsOpen()V

    .line 380
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->requestEnded:Z

    if-eqz v0, :cond_1

    .line 381
    new-instance v0, Ljava/io/IOException;

    const-string v1, "the request phase has already ended"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->startOperationHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    if-eqz v0, :cond_2

    .line 384
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->startOperationHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    invoke-direct {p0, v0}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->exchangePacket(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->startOperationHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    .line 387
    :cond_2
    check-cast p1, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    .end local p1    # "headers":Ljavax/obex/HeaderSet;
    invoke-direct {p0, p1}, Lcom/intel/bluetooth/obex/OBEXClientOperation;->exchangePacket(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 388
    return-void
.end method

.method protected startOperation(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V
    .locals 0
    .param p1, "sendHeaders"    # Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    iput-object p1, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->startOperationHeaders:Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    .line 104
    return-void
.end method

.method protected validateOperationIsOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXClientOperation;->isClosed:Z

    if-eqz v0, :cond_0

    .line 343
    new-instance v0, Ljava/io/IOException;

    const-string v1, "operation closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    return-void
.end method

.class Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;
.super Ljava/lang/Thread;
.source "TCPConnectionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectedThread"
.end annotation


# instance fields
.field private isRunning:Z

.field private mmInStream:Ljava/io/InputStream;

.field private mmOutStream:Ljava/io/OutputStream;

.field private mmSocket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;Ljava/net/Socket;)V
    .locals 3
    .param p2, "socket"    # Ljava/net/Socket;

    .prologue
    const/4 v1, 0x0

    .line 278
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 274
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    .line 275
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->mmOutStream:Ljava/io/OutputStream;

    .line 276
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->isRunning:Z

    .line 279
    const-string v1, "TCPConnectionListener"

    const-string v2, "create ConnectedThread"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->mmSocket:Ljava/net/Socket;

    .line 283
    if-eqz p2, :cond_0

    .line 284
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->mmSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    .line 285
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->mmSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->mmOutStream:Ljava/io/OutputStream;

    .line 296
    :goto_0
    return-void

    .line 288
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "ConnectedThread(): socket is null"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 293
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->cancel()V

    .line 294
    # invokes: Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->connectionFailed()V
    invoke-static {p1}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->access$000(Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 395
    :try_start_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->closeInputStream()V

    .line 396
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->closeOutputStream()V

    .line 397
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->closeTCPSocket()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_0
    return-void

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TCPConnectionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to close() socket during connection failure"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized closeInputStream()V
    .locals 2

    .prologue
    .line 408
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 410
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->mmInStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 408
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized closeOutputStream()V
    .locals 2

    .prologue
    .line 420
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->mmOutStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->mmOutStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 422
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->mmOutStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 420
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized closeTCPSocket()V
    .locals 2

    .prologue
    .line 432
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->mmSocket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->mmSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 434
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->mmSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 432
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    .line 299
    const-string v8, "TCPConnectionListener"

    const-string v9, "BEGIN mConnectedThread"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :goto_0
    iget-boolean v8, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->isRunning:Z

    if-eqz v8, :cond_0

    .line 303
    const-string v8, "TCPConnectionListener"

    const-string v9, "Reading WD Device byte data"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const/4 v8, 0x6

    new-array v4, v8, [B

    .line 306
    .local v4, "paramBytes":[B
    new-array v2, v11, [B

    .line 307
    .local v2, "messageLenBytes":[B
    new-array v6, v11, [B

    .line 309
    .local v6, "transactionID":[B
    :try_start_0
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    if-nez v8, :cond_1

    .line 310
    const-string v8, "TCPConnectionListener"

    const-string v9, "ConnectedThread: run() 1: mmInStream is null"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    new-instance v8, Ljava/io/IOException;

    const-string v9, "ConnectedThread: run() 1: mmInStream is null"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "TCPConnectionListener"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WD disconnected: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 365
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;

    # invokes: Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->connectionFailed()V
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->access$000(Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;)V

    .line 366
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->access$300(Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;)Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 367
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;

    const/4 v9, 0x0

    # setter for: Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;
    invoke-static {v8, v9}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->access$302(Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;)Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    .line 372
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "messageLenBytes":[B
    .end local v4    # "paramBytes":[B
    .end local v6    # "transactionID":[B
    :cond_0
    return-void

    .line 316
    .restart local v2    # "messageLenBytes":[B
    .restart local v4    # "paramBytes":[B
    .restart local v6    # "transactionID":[B
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    invoke-virtual {v8, v4}, Ljava/io/InputStream;->read([B)I

    .line 318
    const-string v8, "TCPConnectionListener"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WD src in listener:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-byte v10, v4, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v8, "TCPConnectionListener"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WD dest in listener:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-byte v10, v4, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const/4 v8, 0x0

    const/4 v9, 0x2

    aget-byte v9, v4, v9

    aput-byte v9, v2, v8

    .line 322
    const/4 v8, 0x1

    const/4 v9, 0x3

    aget-byte v9, v4, v9

    aput-byte v9, v2, v8

    .line 323
    invoke-static {v2}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v3

    .line 324
    .local v3, "msgLen":I
    const-string v8, "TCPConnectionListener"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WD sent payload length: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const/4 v8, 0x0

    const/4 v9, 0x4

    aget-byte v9, v4, v9

    aput-byte v9, v6, v8

    .line 327
    const/4 v8, 0x1

    const/4 v9, 0x5

    aget-byte v9, v4, v9

    aput-byte v9, v6, v8

    .line 328
    invoke-static {v6}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v7

    .line 329
    .local v7, "transactionId":I
    const-string v8, "TCPConnectionListener"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WD transaction ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    if-eqz v3, :cond_3

    .line 332
    new-array v5, v3, [B

    .line 334
    .local v5, "payloadBytes":[B
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    if-nez v8, :cond_2

    .line 335
    const-string v8, "TCPConnectionListener"

    const-string v9, "ConnectedThread: run() 2: mmInStream is null"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v8, Ljava/io/IOException;

    const-string v9, "ConnectedThread: run() 2: mmInStream is null"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 339
    :cond_2
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->mmInStream:Ljava/io/InputStream;

    invoke-virtual {v8, v5}, Ljava/io/InputStream;->read([B)I

    .line 341
    array-length v8, v4

    add-int/2addr v8, v3

    new-array v1, v8, [B

    .line 343
    .local v1, "messageBytes":[B
    const/4 v8, 0x0

    const/4 v9, 0x0

    array-length v10, v4

    invoke-static {v4, v8, v1, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    const/4 v8, 0x0

    array-length v9, v4

    array-length v10, v5

    invoke-static {v5, v8, v1, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 353
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;

    invoke-virtual {v8, v1}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->read([B)V

    goto/16 :goto_0

    .line 356
    .end local v1    # "messageBytes":[B
    .end local v5    # "payloadBytes":[B
    :cond_3
    const-string v8, "TCPConnectionListener"

    const-string v9, "ConnectedThread: payload length is 0"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public stopConnectedThread()V
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->isRunning:Z

    .line 391
    return-void
.end method

.method public write([B)V
    .locals 4
    .param p1, "buffer"    # [B

    .prologue
    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->mmOutStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->mmOutStream:Ljava/io/OutputStream;

    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TCPConnectionListener"

    const-string v2, "IO during write"

    invoke-static {v1, v2, v0}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 382
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;

    # invokes: Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->connectionFailed()V
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->access$000(Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;)V

    .line 383
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;

    # getter for: Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->access$300(Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;)Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->this$0:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;

    const/4 v2, 0x0

    # setter for: Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->access$302(Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;)Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    goto :goto_0
.end method

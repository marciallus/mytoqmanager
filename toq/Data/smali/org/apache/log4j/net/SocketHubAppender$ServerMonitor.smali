.class Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;
.super Ljava/lang/Object;
.source "SocketHubAppender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/net/SocketHubAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerMonitor"
.end annotation


# instance fields
.field private keepRunning:Z

.field private monitorThread:Ljava/lang/Thread;

.field private oosList:Ljava/util/Vector;

.field private port:I

.field private final this$0:Lorg/apache/log4j/net/SocketHubAppender;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/net/SocketHubAppender;ILjava/util/Vector;)V
    .locals 3
    .param p2, "_port"    # I
    .param p3, "_oosList"    # Ljava/util/Vector;

    .prologue
    const/4 v1, 0x1

    .line 382
    iput-object p1, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->this$0:Lorg/apache/log4j/net/SocketHubAppender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput p2, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->port:I

    .line 384
    iput-object p3, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->oosList:Ljava/util/Vector;

    .line 385
    iput-boolean v1, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z

    .line 386
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->monitorThread:Ljava/lang/Thread;

    .line 387
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->monitorThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 388
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->monitorThread:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "SocketHubAppender-Monitor-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->monitorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 390
    return-void
.end method

.method private sendCachedEvents(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    iget-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->this$0:Lorg/apache/log4j/net/SocketHubAppender;

    invoke-static {v1}, Lorg/apache/log4j/net/SocketHubAppender;->access$100(Lorg/apache/log4j/net/SocketHubAppender;)Lorg/apache/log4j/helpers/CyclicBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 423
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->this$0:Lorg/apache/log4j/net/SocketHubAppender;

    invoke-static {v1}, Lorg/apache/log4j/net/SocketHubAppender;->access$100(Lorg/apache/log4j/net/SocketHubAppender;)Lorg/apache/log4j/helpers/CyclicBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/log4j/helpers/CyclicBuffer;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 424
    iget-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->this$0:Lorg/apache/log4j/net/SocketHubAppender;

    invoke-static {v1}, Lorg/apache/log4j/net/SocketHubAppender;->access$100(Lorg/apache/log4j/net/SocketHubAppender;)Lorg/apache/log4j/helpers/CyclicBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/log4j/helpers/CyclicBuffer;->get(I)Lorg/apache/log4j/spi/LoggingEvent;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 427
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->reset()V

    .line 429
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 436
    iget-object v4, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->this$0:Lorg/apache/log4j/net/SocketHubAppender;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/log4j/net/SocketHubAppender;->access$002(Lorg/apache/log4j/net/SocketHubAppender;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    .line 438
    :try_start_0
    iget-object v4, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->this$0:Lorg/apache/log4j/net/SocketHubAppender;

    iget-object v5, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->this$0:Lorg/apache/log4j/net/SocketHubAppender;

    iget v6, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->port:I

    invoke-virtual {v5, v6}, Lorg/apache/log4j/net/SocketHubAppender;->createServerSocket(I)Ljava/net/ServerSocket;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/log4j/net/SocketHubAppender;->access$002(Lorg/apache/log4j/net/SocketHubAppender;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    .line 439
    iget-object v4, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->this$0:Lorg/apache/log4j/net/SocketHubAppender;

    invoke-static {v4}, Lorg/apache/log4j/net/SocketHubAppender;->access$000(Lorg/apache/log4j/net/SocketHubAppender;)Ljava/net/ServerSocket;

    move-result-object v4

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Ljava/net/ServerSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 452
    :try_start_1
    iget-object v4, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->this$0:Lorg/apache/log4j/net/SocketHubAppender;

    invoke-static {v4}, Lorg/apache/log4j/net/SocketHubAppender;->access$000(Lorg/apache/log4j/net/SocketHubAppender;)Ljava/net/ServerSocket;

    move-result-object v4

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Ljava/net/ServerSocket;->setSoTimeout(I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 459
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v4, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_5

    .line 460
    const/4 v3, 0x0

    .line 462
    .local v3, "socket":Ljava/net/Socket;
    :try_start_3
    iget-object v4, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->this$0:Lorg/apache/log4j/net/SocketHubAppender;

    invoke-static {v4}, Lorg/apache/log4j/net/SocketHubAppender;->access$000(Lorg/apache/log4j/net/SocketHubAppender;)Ljava/net/ServerSocket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 476
    :goto_1
    if-eqz v3, :cond_0

    .line 478
    :try_start_4
    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 479
    .local v2, "remoteAddress":Ljava/net/InetAddress;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "accepting connection from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 483
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 484
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    iget-object v4, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->this$0:Lorg/apache/log4j/net/SocketHubAppender;

    invoke-static {v4}, Lorg/apache/log4j/net/SocketHubAppender;->access$100(Lorg/apache/log4j/net/SocketHubAppender;)Lorg/apache/log4j/helpers/CyclicBuffer;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->this$0:Lorg/apache/log4j/net/SocketHubAppender;

    invoke-static {v4}, Lorg/apache/log4j/net/SocketHubAppender;->access$100(Lorg/apache/log4j/net/SocketHubAppender;)Lorg/apache/log4j/helpers/CyclicBuffer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/log4j/helpers/CyclicBuffer;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 485
    invoke-direct {p0, v1}, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->sendCachedEvents(Ljava/io/ObjectOutputStream;)V

    .line 489
    :cond_1
    iget-object v4, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->oosList:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 490
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .end local v2    # "remoteAddress":Ljava/net/InetAddress;
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    instance-of v4, v0, Ljava/io/InterruptedIOException;

    if-eqz v4, :cond_2

    .line 492
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 494
    :cond_2
    const-string v4, "exception creating output stream on socket."

    invoke-static {v4, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 501
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "socket":Ljava/net/Socket;
    :catchall_0
    move-exception v4

    .line 502
    :try_start_6
    iget-object v5, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->this$0:Lorg/apache/log4j/net/SocketHubAppender;

    invoke-static {v5}, Lorg/apache/log4j/net/SocketHubAppender;->access$000(Lorg/apache/log4j/net/SocketHubAppender;)Ljava/net/ServerSocket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/ServerSocket;->close()V
    :try_end_6
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 507
    :goto_2
    throw v4

    .line 441
    :catch_1
    move-exception v0

    .line 442
    .local v0, "e":Ljava/lang/Exception;
    instance-of v4, v0, Ljava/io/InterruptedIOException;

    if-nez v4, :cond_3

    instance-of v4, v0, Ljava/lang/InterruptedException;

    if-eqz v4, :cond_4

    .line 443
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 445
    :cond_4
    const-string v4, "exception setting timeout, shutting down server socket."

    invoke-static {v4, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 446
    iput-boolean v7, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z

    .line 509
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    .line 454
    :catch_2
    move-exception v0

    .line 455
    .local v0, "e":Ljava/net/SocketException;
    :try_start_7
    const-string v4, "exception setting timeout, shutting down server socket."

    invoke-static {v4, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 502
    :try_start_8
    iget-object v4, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->this$0:Lorg/apache/log4j/net/SocketHubAppender;

    invoke-static {v4}, Lorg/apache/log4j/net/SocketHubAppender;->access$000(Lorg/apache/log4j/net/SocketHubAppender;)Ljava/net/ServerSocket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_8
    .catch Ljava/io/InterruptedIOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    goto :goto_3

    .line 503
    :catch_3
    move-exception v0

    .line 504
    .local v0, "e":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3

    .line 467
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    .restart local v3    # "socket":Ljava/net/Socket;
    :catch_4
    move-exception v0

    .line 468
    .local v0, "e":Ljava/net/SocketException;
    :try_start_9
    const-string v4, "exception accepting socket, shutting down server socket."

    invoke-static {v4, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 469
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z

    goto/16 :goto_1

    .line 471
    .end local v0    # "e":Ljava/net/SocketException;
    :catch_5
    move-exception v0

    .line 472
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "exception accepting socket."

    invoke-static {v4, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 502
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "socket":Ljava/net/Socket;
    :cond_5
    :try_start_a
    iget-object v4, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->this$0:Lorg/apache/log4j/net/SocketHubAppender;

    invoke-static {v4}, Lorg/apache/log4j/net/SocketHubAppender;->access$000(Lorg/apache/log4j/net/SocketHubAppender;)Ljava/net/ServerSocket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/ServerSocket;->close()V
    :try_end_a
    .catch Ljava/io/InterruptedIOException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    goto :goto_3

    .line 503
    :catch_6
    move-exception v0

    .line 504
    .local v0, "e":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3

    .line 503
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :catch_7
    move-exception v0

    .line 504
    .restart local v0    # "e":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 505
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :catch_8
    move-exception v5

    goto :goto_2

    :catch_9
    move-exception v4

    goto :goto_3

    .line 464
    .restart local v3    # "socket":Ljava/net/Socket;
    :catch_a
    move-exception v4

    goto/16 :goto_1

    .line 505
    .end local v3    # "socket":Ljava/net/Socket;
    .local v0, "e":Ljava/net/SocketException;
    :catch_b
    move-exception v4

    goto :goto_3
.end method

.method public declared-synchronized stopMonitor()V
    .locals 3

    .prologue
    .line 396
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z

    if-eqz v1, :cond_1

    .line 397
    const-string v1, "server monitor thread shutting down"

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 398
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->keepRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    :try_start_1
    iget-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->this$0:Lorg/apache/log4j/net/SocketHubAppender;

    invoke-static {v1}, Lorg/apache/log4j/net/SocketHubAppender;->access$000(Lorg/apache/log4j/net/SocketHubAppender;)Ljava/net/ServerSocket;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 401
    iget-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->this$0:Lorg/apache/log4j/net/SocketHubAppender;

    invoke-static {v1}, Lorg/apache/log4j/net/SocketHubAppender;->access$000(Lorg/apache/log4j/net/SocketHubAppender;)Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 402
    iget-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->this$0:Lorg/apache/log4j/net/SocketHubAppender;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/log4j/net/SocketHubAppender;->access$002(Lorg/apache/log4j/net/SocketHubAppender;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->monitorThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 415
    :goto_1
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->monitorThread:Ljava/lang/Thread;

    .line 416
    const-string v1, "server monitor thread shut down"

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 418
    :cond_1
    monitor-exit p0

    return-void

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 396
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 404
    :catch_1
    move-exception v1

    goto :goto_0
.end method

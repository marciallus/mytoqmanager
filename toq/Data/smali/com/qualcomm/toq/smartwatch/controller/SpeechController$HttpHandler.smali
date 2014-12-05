.class Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;
.super Landroid/os/Handler;
.source "SpeechController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/controller/SpeechController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpHandler"
.end annotation


# static fields
.field public static final CLOSE_CONNECTION:I = 0x1

.field public static final OPEN_CONNECTION:I = 0x0

.field public static final RECOGNIZE_SPEECH:I = 0x3

.field public static final WRITE_AUDIO:I = 0x2


# instance fields
.field private audioStream:Ljava/io/DataOutputStream;

.field private connectionResult:I

.field private httpConnection:Ljavax/net/ssl/HttpsURLConnection;

.field private sendResponse:Z

.field private shutdownTimer:Ljava/util/Timer;

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/controller/SpeechController;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/smartwatch/controller/SpeechController;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v1, 0x0

    .line 347
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->this$0:Lcom/qualcomm/toq/smartwatch/controller/SpeechController;

    .line 348
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 344
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->connectionResult:I

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->sendResponse:Z

    .line 349
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->audioStream:Ljava/io/DataOutputStream;

    .line 350
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->httpConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 351
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->shutdownTimer:Ljava/util/Timer;

    .line 352
    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/controller/SpeechController;Landroid/os/Looper;Lcom/qualcomm/toq/smartwatch/controller/SpeechController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/SpeechController;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/qualcomm/toq/smartwatch/controller/SpeechController$1;

    .prologue
    .line 334
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;-><init>(Lcom/qualcomm/toq/smartwatch/controller/SpeechController;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->shutdown()V

    return-void
.end method

.method private clearShutdownTimer()V
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->shutdownTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->shutdownTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 635
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->shutdownTimer:Ljava/util/Timer;

    .line 636
    return-void
.end method

.method private declared-synchronized closeAudioStream()V
    .locals 3

    .prologue
    .line 479
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->audioStream:Ljava/io/DataOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 481
    :try_start_1
    const-string v1, "SpeechController"

    const-string v2, "Closing audio stream"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->audioStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 483
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->audioStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 484
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->audioStream:Ljava/io/DataOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    :goto_0
    monitor-exit p0

    return-void

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string v1, "SpeechController"

    invoke-static {v1, v0}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 488
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->audioStream:Ljava/io/DataOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 479
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 491
    :cond_0
    :try_start_3
    const-string v1, "SpeechController"

    const-string v2, "Closing audio stream: ALREADY CLOSED"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized closeHttpConnection()V
    .locals 2

    .prologue
    .line 453
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->closeAudioStream()V

    .line 455
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->httpConnection:Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_0

    .line 456
    const-string v0, "SpeechController"

    const-string v1, "Closing HTTP Connection"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->httpConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 458
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->httpConnection:Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    :cond_0
    monitor-exit p0

    return-void

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private doSpeechRecognition()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 496
    const/4 v10, 0x0

    .line 497
    .local v10, "text":Ljava/lang/String;
    const/4 v9, 0x5

    .line 500
    .local v9, "status":I
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->clearShutdownTimer()V

    .line 503
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->connectionResult:I

    if-eqz v0, :cond_2

    .line 504
    iget v9, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->connectionResult:I

    .line 534
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->closeHttpConnection()V

    .line 536
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 538
    .local v4, "jsonString":Lorg/json/JSONObject;
    :try_start_0
    const-string v0, "text"

    invoke-virtual {v4, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 539
    const-string v0, "status"

    invoke-virtual {v4, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 545
    :goto_1
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->sendResponse:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->this$0:Lcom/qualcomm/toq/smartwatch/controller/SpeechController;

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    const/16 v2, 0x1c

    const/16 v3, 0x1d

    const v5, 0x8000

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 559
    const-string v0, "SpeechController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending SpeechConvertedInd to WD. Status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :cond_1
    const-string v0, "SpeechController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->sendResponse:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->shutdown()V

    .line 563
    return-void

    .line 506
    .end local v4    # "jsonString":Lorg/json/JSONObject;
    :cond_2
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 507
    const/4 v9, 0x2

    goto/16 :goto_0

    .line 512
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->getHttpResponse()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v10

    .line 530
    :goto_2
    if-eqz v10, :cond_0

    .line 531
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 514
    :catch_0
    move-exception v7

    .line 516
    .local v7, "e":Ljava/io/EOFException;
    :try_start_2
    const-string v0, "SpeechController"

    const-string v1, "Failed to get http response. Reattempting getting the response."

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->getHttpResponse()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v10

    goto :goto_2

    .line 519
    :catch_1
    move-exception v8

    .line 520
    .local v8, "e1":Ljava/lang/Exception;
    const-string v0, "SpeechController"

    invoke-static {v0, v8}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 521
    const/4 v9, 0x6

    goto :goto_2

    .line 524
    .end local v7    # "e":Ljava/io/EOFException;
    .end local v8    # "e1":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 525
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "SpeechController"

    invoke-static {v0, v7}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 526
    const/4 v9, 0x6

    goto :goto_2

    .line 541
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "jsonString":Lorg/json/JSONObject;
    :catch_3
    move-exception v7

    .line 542
    .local v7, "e":Lorg/json/JSONException;
    const-string v0, "SpeechController"

    invoke-static {v0, v7}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1
.end method

.method private declared-synchronized getHttpResponse()Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 566
    monitor-enter p0

    const/4 v10, 0x0

    .line 567
    .local v10, "text":Ljava/lang/String;
    :try_start_0
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->httpConnection:Ljavax/net/ssl/HttpsURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_2

    .line 570
    :try_start_1
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->closeAudioStream()V

    .line 573
    const-string v11, "SpeechController"

    const-string v12, "Start read"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->httpConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v11}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 575
    .local v5, "is":Ljava/io/InputStream;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 577
    .local v7, "rd":Ljava/io/BufferedReader;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 578
    .local v9, "response":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 579
    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 589
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "rd":Ljava/io/BufferedReader;
    .end local v9    # "response":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/io/EOFException;
    :try_start_2
    const-string v11, "SpeechController"

    invoke-static {v11, v0}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 591
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 566
    .end local v0    # "e":Ljava/io/EOFException;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 581
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "rd":Ljava/io/BufferedReader;
    .restart local v9    # "response":Ljava/lang/StringBuffer;
    :cond_0
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 582
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->httpConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v11}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v8

    .line 583
    .local v8, "respHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v8, :cond_1

    .line 584
    const-string v11, "SpeechController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Response Header: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :cond_1
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "\\*new_line"

    const-string v13, "\n"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 587
    const-string v11, "SpeechController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Response Body: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 626
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "rd":Ljava/io/BufferedReader;
    .end local v8    # "respHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v9    # "response":Ljava/lang/StringBuffer;
    :cond_2
    monitor-exit p0

    return-object v10

    .line 592
    :catch_1
    move-exception v0

    .line 593
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v3, 0x0

    .line 594
    .local v3, "errCode":I
    :try_start_4
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->httpConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v11}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    .line 595
    .local v2, "er":Ljava/io/InputStream;
    if-eqz v2, :cond_4

    .line 596
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 598
    .restart local v7    # "rd":Ljava/io/BufferedReader;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 600
    .restart local v9    # "response":Ljava/lang/StringBuffer;
    :try_start_5
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->httpConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v11}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v3

    .line 601
    const-string v11, "SpeechController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error Code: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->httpConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v11}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    .line 603
    .local v4, "errHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v4, :cond_3

    .line 604
    const-string v11, "SpeechController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error Header: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_3
    :goto_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "line":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 607
    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 612
    .end local v4    # "errHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v6    # "line":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 613
    .local v1, "e1":Ljava/io/IOException;
    :try_start_6
    const-string v11, "SpeechController"

    invoke-static {v11, v1}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 616
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v7    # "rd":Ljava/io/BufferedReader;
    .end local v9    # "response":Ljava/lang/StringBuffer;
    :cond_4
    :goto_2
    const-string v11, "SpeechController"

    invoke-static {v11, v0}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 617
    const/4 v10, 0x0

    .line 618
    const/16 v11, 0x1f4

    if-eq v3, v11, :cond_2

    .line 619
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 609
    .restart local v4    # "errHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "rd":Ljava/io/BufferedReader;
    .restart local v9    # "response":Ljava/lang/StringBuffer;
    :cond_5
    :try_start_7
    const-string v11, "SpeechController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ErrorStream: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 621
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "er":Ljava/io/InputStream;
    .end local v3    # "errCode":I
    .end local v4    # "errHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "rd":Ljava/io/BufferedReader;
    .end local v9    # "response":Ljava/lang/StringBuffer;
    :catch_3
    move-exception v0

    .line 622
    .local v0, "e":Ljava/lang/Exception;
    :try_start_8
    const-string v11, "SpeechController"

    invoke-static {v11, v0}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 623
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method private declared-synchronized openHttpConnection()I
    .locals 17

    .prologue
    .line 382
    monitor-enter p0

    const/4 v13, 0x0

    .line 385
    .local v13, "status":I
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->closeHttpConnection()V

    .line 388
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->clearShutdownTimer()V

    .line 390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->shutdownTimer:Ljava/util/Timer;

    new-instance v2, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler$1;-><init>(Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;)V

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    :try_start_1
    const-string v1, "SFRUUF9OTURQUFJPRFVDVElPTl9RdWFsY29tbV9Ub3FfV2F0Y2hfQXBwXzIwMTQwMjE0MDQ0MTU1"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    .line 400
    .local v7, "aiBytes":[B
    const-string v1, "NjU4NzA1ZWM3OGI1ODZmNzc4ZDhkNGI4NzZkMTAxM2JhNTFkODc0MWFmZWMzM2VjNjJiM2Y3NjIyYWQ1NTc5MDVjNWM3Y2Q0MTEwMmNiOGFkYWEwNDI1MDcxNDM4YjE2NjExMzU4MTBmZjhiZmQ2MTNlZjRjMzY5YzkxYWY5MjY="

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    .line 402
    .local v8, "akBytes":[B
    new-instance v9, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v9, v7, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 403
    .local v9, "appid":Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v10, v8, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 406
    .local v10, "appkey":Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 407
    .local v12, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "appId"

    invoke-direct {v1, v2, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "appKey"

    invoke-direct {v1, v2, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->this$0:Lcom/qualcomm/toq/smartwatch/controller/SpeechController;

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->nId:Ljava/lang/String;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->access$200(Lcom/qualcomm/toq/smartwatch/controller/SpeechController;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    const-string v1, "https"

    const-string v2, "dictation.nuancemobility.net"

    const/16 v3, 0x1bb

    const-string v4, "/NMDPAsrCmdServlet/dictation"

    const-string v5, "UTF-8"

    invoke-static {v12, v5}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v15

    .line 411
    .local v15, "uri":Ljava/net/URI;
    invoke-virtual {v15}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v16

    .line 412
    .local v16, "url":Ljava/net/URL;
    const-string v1, "SpeechController"

    const-string v2, "Establishing HTTP Connection"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->httpConnection:Ljavax/net/ssl/HttpsURLConnection;

    .line 416
    const-string v1, "SpeechController"

    const-string v2, "HTTP Connection - Opened"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->httpConnection:Ljavax/net/ssl/HttpsURLConnection;

    const/16 v2, 0xfa0

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setChunkedStreamingMode(I)V

    .line 419
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->httpConnection:Ljavax/net/ssl/HttpsURLConnection;

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->httpConnection:Ljavax/net/ssl/HttpsURLConnection;

    const-string v2, "Content-Type"

    const-string v3, "audio/x-wav;codec=pcm;bit=16;rate=8000"

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->httpConnection:Ljavax/net/ssl/HttpsURLConnection;

    const-string v2, "Accept"

    const-string v3, "text/plain"

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->httpConnection:Ljavax/net/ssl/HttpsURLConnection;

    const-string v2, "Accept-Language"

    const-string v3, "fr_FR"

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->httpConnection:Ljavax/net/ssl/HttpsURLConnection;

    const-string v2, "Accept-Topic"

    const-string v3, "Dictation"

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->httpConnection:Ljavax/net/ssl/HttpsURLConnection;

    const-string v2, "X-Dictation-NBestListSize"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->httpConnection:Ljavax/net/ssl/HttpsURLConnection;

    const-string v2, "X-Dictation-EscapeNewLine"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->httpConnection:Ljavax/net/ssl/HttpsURLConnection;

    const-string v2, "Connection"

    const-string v3, "close"

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->httpConnection:Ljavax/net/ssl/HttpsURLConnection;

    const/16 v2, 0x1f40

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->httpConnection:Ljavax/net/ssl/HttpsURLConnection;

    const/16 v2, 0x1f40

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 429
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->httpConnection:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 430
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->httpConnection:Ljavax/net/ssl/HttpsURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 431
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->httpConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 433
    const-string v1, "SpeechController"

    const-string v2, "HTTP Connection - Connected"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    new-instance v1, Ljava/io/DataOutputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->httpConnection:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->audioStream:Ljava/io/DataOutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    :try_start_2
    const-string v1, "SpeechController"

    const-string v2, "HTTP Connection - SUCCESS!!"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v14, v13

    .line 448
    .end local v7    # "aiBytes":[B
    .end local v8    # "akBytes":[B
    .end local v9    # "appid":Ljava/lang/String;
    .end local v10    # "appkey":Ljava/lang/String;
    .end local v12    # "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v13    # "status":I
    .end local v15    # "uri":Ljava/net/URI;
    .end local v16    # "url":Ljava/net/URL;
    .local v14, "status":I
    :goto_0
    monitor-exit p0

    return v14

    .line 438
    .end local v14    # "status":I
    .restart local v13    # "status":I
    :catch_0
    move-exception v11

    .line 439
    .local v11, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "SpeechController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Establishing HTTP Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v1, "SpeechController"

    invoke-static {v1, v11}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 441
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->clearShutdownTimer()V

    .line 442
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->closeHttpConnection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 443
    const/4 v13, 0x6

    move v14, v13

    .line 444
    .end local v13    # "status":I
    .restart local v14    # "status":I
    goto :goto_0

    .line 382
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v14    # "status":I
    .restart local v13    # "status":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private shutdown()V
    .locals 3

    .prologue
    .line 642
    const-string v1, "SpeechController"

    const-string v2, "Shutting down Http Handler"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->sendResponse:Z

    .line 648
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->closeHttpConnection()V

    .line 651
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 652
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 653
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 654
    const/4 v0, 0x0

    .line 656
    :cond_0
    return-void
.end method

.method private declared-synchronized writeToAudioStream([BIII)V
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "seqNum"    # I

    .prologue
    .line 463
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->audioStream:Ljava/io/DataOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 465
    :try_start_1
    const-string v1, "SpeechController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing to audio stream - Chunk "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->audioStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    :goto_0
    monitor-exit p0

    return-void

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->clearShutdownTimer()V

    .line 470
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->closeHttpConnection()V

    .line 471
    const-string v1, "SpeechController"

    invoke-static {v1, v0}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 463
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 474
    :cond_0
    :try_start_3
    const-string v1, "SpeechController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing to audio stream FAILED: Audio Stream Closed - Chunk "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 356
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 379
    :goto_0
    return-void

    .line 359
    :pswitch_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->openHttpConnection()I

    move-result v5

    iput v5, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->connectionResult:I

    goto :goto_0

    .line 363
    :pswitch_1
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->closeHttpConnection()V

    goto :goto_0

    .line 367
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 368
    .local v2, "data":Landroid/os/Bundle;
    const-string v5, "audio"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 369
    .local v0, "audio":[B
    const-string v5, "offset"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 370
    .local v3, "offset":I
    const-string v5, "count"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 371
    .local v1, "count":I
    const-string v5, "seqNum"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 372
    .local v4, "seqNum":I
    invoke-direct {p0, v0, v3, v1, v4}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->writeToAudioStream([BIII)V

    goto :goto_0

    .line 376
    .end local v0    # "audio":[B
    .end local v1    # "count":I
    .end local v2    # "data":Landroid/os/Bundle;
    .end local v3    # "offset":I
    .end local v4    # "seqNum":I
    :pswitch_3
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->doSpeechRecognition()V

    goto :goto_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

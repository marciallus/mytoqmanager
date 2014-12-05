.class public Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;
.super Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;
.source "UsageToqLoggerImpl.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final USAGE_CURRENT_FILE_NAME_START:Ljava/lang/String; = "UsageLog"

.field private static USAGE_LOG_FILE_LAYOUT_PATTERN:Ljava/lang/String; = null

.field private static USAGE_LOG_FILE_NAME:Ljava/lang/String; = null

.field private static final USAGE_LOG_FILE_NAME_START:Ljava/lang/String; = "Usage_Log_A"

.field private static USAGE_LOG_MAX_BACKUP_FILES:I = 0x0

.field private static USAGE_LOG_MAX_FILE_SIZE:J = 0x0L

.field private static final USAGE_LOG_POSTING_URI:Ljava/lang/String; = "https://toq-logger.qualcomm.com/ToqLogger/rest/admin/login?username=toqApp&password=thalivar1729"

.field private static final USAGE_LOG_POSTING_URI_PASSWORD:Ljava/lang/String; = "thalivar1729"

.field private static final USAGE_LOG_POSTING_URI_USERNAME:Ljava/lang/String; = "toqApp"

.field private static final USAGE_LOG_SERVICE_URL_DEVELOPER:Ljava/lang/String; = "https://toq-logger.qualcomm.com/ToqLogger/rest/toqUsageLogUpload/saveUsageLogFile/dev/"

.field private static final USAGE_LOG_SERVICE_URL_RELEASE:Ljava/lang/String; = "https://toq-logger.qualcomm.com/ToqLogger/rest/toqUsageLogUpload/saveUsageLogFile/"

.field private static USAGE_LOG_UPLOADER_INITIAL_DELAY:I

.field private static USAGE_LOG_UPLOADER_NORMAL_PERIOD:I

.field private static USAGE_LOG_UPLOADER_RESET_PERIOD:I


# instance fields
.field private DEFAULT_VALUE:J

.field private mUsageLogUploadTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private timeUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const-string v0, "UsageToqLoggerImpl"

    sput-object v0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    .line 42
    const-string v0, "UsageLog.txt"

    sput-object v0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_FILE_NAME:Ljava/lang/String;

    .line 43
    const-string v0, "%d{yyyy-MM-dd HH:mm:ss,SSS Z} %m%n"

    sput-object v0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_FILE_LAYOUT_PATTERN:Ljava/lang/String;

    .line 53
    const/4 v0, 0x5

    sput v0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_MAX_BACKUP_FILES:I

    .line 54
    const-wide/32 v0, 0x32000

    sput-wide v0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_MAX_FILE_SIZE:J

    .line 65
    const/16 v0, 0x5a0

    sput v0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_UPLOADER_NORMAL_PERIOD:I

    .line 66
    const/16 v0, 0xf0

    sput v0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_UPLOADER_RESET_PERIOD:I

    .line 67
    const/16 v0, 0x168

    sput v0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_UPLOADER_INITIAL_DELAY:I

    .line 80
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->getInstance()Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;

    move-result-object v0

    const-string v1, "usage_log"

    new-instance v2, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;

    invoke-direct {v2}, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->registerLogger(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;)V

    .line 82
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->mUsageLogUploadTask:Ljava/util/concurrent/Future;

    .line 72
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 74
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->DEFAULT_VALUE:J

    .line 84
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->upload()V

    return-void
.end method

.method private createUsageLogUploadTask(II)Ljava/util/concurrent/Future;
    .locals 8
    .param p1, "initialDelay"    # I
    .param p2, "period"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/RejectedExecutionException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 437
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->getScheduledLoogerExecuterService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl$1;-><init>(Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;)V

    int-to-long v2, p1

    int-to-long v4, p2

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v7

    .line 453
    .local v7, "task":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    return-object v7
.end method

.method private postUsageLogs(Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 613
    const/4 v8, 0x0

    .line 615
    .local v8, "inputStream":Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 618
    .local v12, "result":Ljava/lang/String;
    :try_start_0
    sget-object v14, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    const-string v15, "Attempting usage log auto-upload"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    const-string v14, "https://toq-logger.qualcomm.com/ToqLogger/rest/admin/login?username=toqApp&password=thalivar1729"

    invoke-direct {v10, v14}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 621
    .local v10, "post":Lorg/apache/http/client/methods/HttpPost;
    new-instance v5, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v5}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 623
    .local v5, "httpParams":Lorg/apache/http/params/HttpParams;
    const-string v14, "username"

    const-string v15, "toqApp"

    invoke-interface {v5, v14, v15}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 624
    const-string v14, "password"

    const-string v15, "thalivar1729"

    invoke-interface {v5, v14, v15}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 626
    invoke-virtual {v10, v5}, Lorg/apache/http/client/methods/HttpPost;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 627
    const-string v14, "Content-type"

    const-string v15, "application/json"

    invoke-virtual {v10, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 630
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    invoke-interface {v1, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 631
    .local v11, "response":Lorg/apache/http/HttpResponse;
    new-instance v9, Lorg/json/JSONObject;

    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->convertInputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 634
    .local v9, "jsonObject":Lorg/json/JSONObject;
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 635
    .local v4, "httpClient":Lorg/apache/http/client/HttpClient;
    const-string v14, "Usage_Log_A"

    const-string v15, "UsageLog"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->getLoggerFileInputStreamEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/entity/InputStreamEntity;

    move-result-object v3

    .line 638
    .local v3, "entityBuilder":Lorg/apache/http/entity/InputStreamEntity;
    const-string v14, "Usage_Log_A"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->getNewLoggerMergeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 640
    .local v13, "usageUploadfileName":Ljava/lang/String;
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "?fileName="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v14}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 642
    .local v6, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v6, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 644
    const-string v14, "ENCTYPE"

    const-string v15, "multipart/form-data"

    invoke-virtual {v6, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string v14, "X-Auth-Token"

    const-string v15, "loginTokenId"

    invoke-virtual {v9, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v14, "Content-type"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "multipart/form-data; boundary="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-interface {v4, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 656
    .local v7, "httpResponse":Lorg/apache/http/HttpResponse;
    sget-object v14, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "HTTP Response : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 658
    if-eqz v8, :cond_1

    .line 659
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->convertInputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v12

    .line 660
    sget-object v14, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    const-string v15, "Usage log auto-upload success"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    :goto_0
    if-eqz v8, :cond_0

    .line 675
    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 676
    const/4 v8, 0x0

    .line 684
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v3    # "entityBuilder":Lorg/apache/http/entity/InputStreamEntity;
    .end local v4    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v5    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v6    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v7    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v10    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    .end local v13    # "usageUploadfileName":Ljava/lang/String;
    :cond_0
    :goto_1
    sget-object v14, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Result for HTTP_REQUEST: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    return-object v12

    .line 663
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v3    # "entityBuilder":Lorg/apache/http/entity/InputStreamEntity;
    .restart local v4    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "httpParams":Lorg/apache/http/params/HttpParams;
    .restart local v6    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v7    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    .restart local v10    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    .restart local v13    # "usageUploadfileName":Ljava/lang/String;
    :cond_1
    :try_start_2
    const-string v12, "Failed"

    .line 664
    sget-object v14, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    const-string v15, "Usage log auto-upload failed"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 667
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v3    # "entityBuilder":Lorg/apache/http/entity/InputStreamEntity;
    .end local v4    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v5    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v6    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v7    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v10    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    .end local v13    # "usageUploadfileName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 668
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 669
    sget-object v14, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    const-string v15, "!!! Exception while uploading usage logs !!!"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    sget-object v14, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    const-string v15, "Usage log auto-upload exception"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 673
    if-eqz v8, :cond_0

    .line 675
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 676
    const/4 v8, 0x0

    goto :goto_1

    .line 678
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v3    # "entityBuilder":Lorg/apache/http/entity/InputStreamEntity;
    .restart local v4    # "httpClient":Lorg/apache/http/client/HttpClient;
    .restart local v5    # "httpParams":Lorg/apache/http/params/HttpParams;
    .restart local v6    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v7    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    .restart local v10    # "post":Lorg/apache/http/client/methods/HttpPost;
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    .restart local v13    # "usageUploadfileName":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 679
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 678
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v3    # "entityBuilder":Lorg/apache/http/entity/InputStreamEntity;
    .end local v4    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v5    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v6    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v7    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .end local v10    # "post":Lorg/apache/http/client/methods/HttpPost;
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    .end local v13    # "usageUploadfileName":Ljava/lang/String;
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 679
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 673
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    if-eqz v8, :cond_2

    .line 675
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 676
    const/4 v8, 0x0

    .line 680
    :cond_2
    :goto_2
    throw v14

    .line 678
    :catch_3
    move-exception v2

    .line 679
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private upload()V
    .locals 7

    .prologue
    .line 464
    :try_start_0
    sget-object v4, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    const-string v5, " Start UsageLog Upload "

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const/4 v3, 0x0

    .line 470
    .local v3, "response":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/toq/base/utils/Utils;->isWIFIConnectivityAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 472
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getAPKVariant()Ljava/lang/String;

    move-result-object v4

    const-string v5, "release"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 477
    const-string v4, "https://toq-logger.qualcomm.com/ToqLogger/rest/toqUsageLogUpload/saveUsageLogFile/"

    invoke-direct {p0, v4}, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->postUsageLogs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 489
    :goto_0
    if-nez v3, :cond_2

    .line 490
    sget-object v4, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Result is null: Cancelling the task and recreating the task with the time to delay first execution: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_UPLOADER_RESET_PERIOD:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " the period between successive executions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_UPLOADER_RESET_PERIOD:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->mUsageLogUploadTask:Ljava/util/concurrent/Future;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 502
    sget v4, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_UPLOADER_RESET_PERIOD:I

    sget v5, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_UPLOADER_RESET_PERIOD:I

    invoke-direct {p0, v4, v5}, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->createUsageLogUploadTask(II)Ljava/util/concurrent/Future;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->mUsageLogUploadTask:Ljava/util/concurrent/Future;

    .line 505
    sget-object v4, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Result is null: Cancelling the task and recreating the task with the time to delay first execution: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_UPLOADER_RESET_PERIOD:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " the period between successive executions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_UPLOADER_RESET_PERIOD:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getPhubPreference(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v2

    .line 515
    .local v2, "phubPref":Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
    const-string v4, "usage_log_last_upload_time"

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->putLong(Ljava/lang/String;J)V

    .line 517
    const-string v4, "usage_log_last_upload_status"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->putBoolean(Ljava/lang/String;Z)V

    .line 521
    const-string v4, "usage_log_delay"

    sget v5, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_UPLOADER_RESET_PERIOD:I

    invoke-virtual {v2, v4, v5}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->putInt(Ljava/lang/String;I)V

    .line 603
    .end local v2    # "phubPref":Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
    .end local v3    # "response":Ljava/lang/String;
    :goto_1
    return-void

    .line 480
    .restart local v3    # "response":Ljava/lang/String;
    :cond_0
    const-string v4, "https://toq-logger.qualcomm.com/ToqLogger/rest/toqUsageLogUpload/saveUsageLogFile/dev/"

    invoke-direct {p0, v4}, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->postUsageLogs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 485
    :cond_1
    sget-object v4, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    const-string v5, "WiFi unavailable, Usage logs not posted"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_0

    .line 574
    .end local v3    # "response":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 576
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    sget-object v4, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in startAutoUploadLog4jLogs(): The task cannot be scheduled for execution "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    goto :goto_1

    .line 529
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    .restart local v3    # "response":Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-object v4, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Result is not null: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getPhubPreference(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v2

    .line 532
    .restart local v2    # "phubPref":Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
    const-string v4, "usage_log_last_upload_status"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 535
    .local v1, "lastUploadStatus":Z
    if-nez v1, :cond_3

    .line 537
    sget-object v4, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reseting timer to normal upload. Cancelling the task and recreating the task with the time to delay first execution: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_UPLOADER_NORMAL_PERIOD:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " the period between successive executions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_UPLOADER_NORMAL_PERIOD:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    sget-object v4, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reseting timer to normal upload. Cancelling the task and recreating the task with the time to delay first execution: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_UPLOADER_NORMAL_PERIOD:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " the period between successive executions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_UPLOADER_NORMAL_PERIOD:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->mUsageLogUploadTask:Ljava/util/concurrent/Future;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 558
    sget v4, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_UPLOADER_NORMAL_PERIOD:I

    sget v5, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_UPLOADER_NORMAL_PERIOD:I

    invoke-direct {p0, v4, v5}, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->createUsageLogUploadTask(II)Ljava/util/concurrent/Future;

    move-result-object v4

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->mUsageLogUploadTask:Ljava/util/concurrent/Future;

    .line 562
    :cond_3
    const-string v4, "usage_log_last_upload_time"

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->putLong(Ljava/lang/String;J)V

    .line 564
    const-string v4, "usage_log_last_upload_status"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->putBoolean(Ljava/lang/String;Z)V

    .line 568
    const-string v4, "usage_log_delay"

    sget v5, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_UPLOADER_NORMAL_PERIOD:I

    invoke-virtual {v2, v4, v5}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_1

    .line 582
    .end local v1    # "lastUploadStatus":Z
    .end local v2    # "phubPref":Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
    .end local v3    # "response":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 584
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v4, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in startAutoUploadLog4jLogs(): Runnable might be NULL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_1

    .line 590
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in startAutoUploadLog4jLogs(): Period (delayInHours) less than or equal to zero  ||  If corePoolSize < 0  in newScheduledThreadPool"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_1

    .line 598
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 599
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in startAutoUploadLog4jLogs(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method


# virtual methods
.method public autoUploadLogs()V
    .locals 6

    .prologue
    .line 363
    sget-object v3, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    const-string v4, "Starting auto upload of usage logs"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->stopLoggerExecutorService()V

    .line 371
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getPhubPreference(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v2

    .line 373
    .local v2, "phubPref":Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
    const-string v3, "usage_log_delay"

    sget v4, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_UPLOADER_RESET_PERIOD:I

    invoke-virtual {v2, v3, v4}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 376
    .local v0, "delay":I
    sget v3, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_UPLOADER_NORMAL_PERIOD:I

    invoke-direct {p0, v0, v3}, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->createUsageLogUploadTask(II)Ljava/util/concurrent/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->mUsageLogUploadTask:Ljava/util/concurrent/Future;

    .line 379
    sget-object v3, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Usage Log Upload task created with the time to delay first execution: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " the period between successive executions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_UPLOADER_NORMAL_PERIOD:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    sget-object v3, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Usage Log Upload task created with the time to delay first execution: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " the period between successive executions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_UPLOADER_NORMAL_PERIOD:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 421
    .end local v0    # "delay":I
    .end local v2    # "phubPref":Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v1

    .line 393
    .local v1, "e":Ljava/util/concurrent/RejectedExecutionException;
    sget-object v3, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in startAutoUploadLog4jLogs(): The task cannot be scheduled for execution "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/concurrent/RejectedExecutionException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {v1}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    goto :goto_0

    .line 399
    .end local v1    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :catch_1
    move-exception v1

    .line 401
    .local v1, "e":Ljava/lang/NullPointerException;
    sget-object v3, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in startAutoUploadLog4jLogs(): Runnable might be NULL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 407
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v1

    .line 409
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in startAutoUploadLog4jLogs(): Period (delayInHours) less than or equal to zero  ||  If corePoolSize < 0  in newScheduledThreadPool"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 415
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 416
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in startAutoUploadLog4jLogs(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public configure()V
    .locals 6

    .prologue
    .line 202
    new-instance v2, Lorg/apache/log4j/RollingFileAppender;

    invoke-direct {v2}, Lorg/apache/log4j/RollingFileAppender;-><init>()V

    .line 205
    .local v2, "rollingFileAppender":Lorg/apache/log4j/RollingFileAppender;
    sget-object v3, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_FILE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->getLoggerFullFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "log4jFilePath":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 211
    :try_start_0
    const-string v3, "usagelog_appender"

    invoke-virtual {v2, v3}, Lorg/apache/log4j/RollingFileAppender;->setName(Ljava/lang/String;)V

    .line 215
    sget v3, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_MAX_BACKUP_FILES:I

    invoke-virtual {v2, v3}, Lorg/apache/log4j/RollingFileAppender;->setMaxBackupIndex(I)V

    .line 218
    sget-wide v3, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_MAX_FILE_SIZE:J

    invoke-virtual {v2, v3, v4}, Lorg/apache/log4j/RollingFileAppender;->setMaximumFileSize(J)V

    .line 222
    invoke-virtual {v2, v1}, Lorg/apache/log4j/RollingFileAppender;->setFile(Ljava/lang/String;)V

    .line 226
    new-instance v3, Lorg/apache/log4j/PatternLayout;

    sget-object v4, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_FILE_LAYOUT_PATTERN:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/apache/log4j/PatternLayout;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/apache/log4j/RollingFileAppender;->setLayout(Lorg/apache/log4j/Layout;)V

    .line 230
    sget-object v3, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    invoke-virtual {v2, v3}, Lorg/apache/log4j/RollingFileAppender;->setThreshold(Lorg/apache/log4j/Priority;)V

    .line 234
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/log4j/RollingFileAppender;->setAppend(Z)V

    .line 235
    invoke-virtual {v2}, Lorg/apache/log4j/RollingFileAppender;->activateOptions()V

    .line 237
    :cond_0
    invoke-static {}, Lorg/apache/log4j/Logger;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/log4j/Logger;->addAppender(Lorg/apache/log4j/Appender;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 243
    sget-object v3, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while configuring the log4j for usage logs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disableAutoUploadLogs()V
    .locals 2

    .prologue
    .line 690
    sget-object v0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    const-string v1, "Disable auto upload of usage logs"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    sget-object v0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    const-string v1, "Disable usage log auto-upload"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->stopLoggerExecutorService()V

    .line 694
    return-void
.end method

.method public init()V
    .locals 22

    .prologue
    .line 88
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getPhubPreference(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v16

    .line 90
    .local v16, "phubPref":Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
    const-string v17, "usage_log_last_upload_time"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->DEFAULT_VALUE:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v16 .. v19}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 93
    .local v12, "lastUploadTime":J
    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v17}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 94
    .local v2, "currentTimeinMillis":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->DEFAULT_VALUE:J

    move-wide/from16 v17, v0

    cmp-long v17, v12, v17

    if-nez v17, :cond_0

    .line 95
    sget-object v17, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    const-string v18, "Last Upload Time is not set ie first time auto upload usage log feature is used"

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v17, "usage_log_last_upload_time"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->putLong(Ljava/lang/String;J)V

    .line 100
    const-string v17, "usage_log_last_upload_status"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    const-string v17, "usage_log_delay"

    sget v18, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_UPLOADER_INITIAL_DELAY:I

    invoke-virtual/range {v16 .. v18}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->putInt(Ljava/lang/String;I)V

    .line 183
    :goto_0
    return-void

    .line 122
    :cond_0
    const-string v17, "usage_log_last_upload_status"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 125
    .local v11, "lastUploadStatus":Z
    const-string v17, "usage_log_last_upload_time"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->DEFAULT_VALUE:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v16 .. v19}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 128
    .local v14, "lastUploadtime":J
    const-string v17, "usage_log_delay"

    sget v18, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_UPLOADER_RESET_PERIOD:I

    invoke-virtual/range {v16 .. v18}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 131
    .local v8, "lastUploadDelay":I
    sget-object v17, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Last Upload Time is set "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, v19

    invoke-direct {v0, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Last Upload Status "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Current Time "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " Last Upload Delay "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    int-to-long v0, v8

    move-wide/from16 v17, v0

    const-wide/32 v19, 0xea60

    mul-long v9, v17, v19

    .line 150
    .local v9, "lastUploadDelayinMillis":J
    add-long v17, v14, v9

    cmp-long v17, v2, v17

    if-gtz v17, :cond_1

    cmp-long v17, v2, v12

    if-gez v17, :cond_2

    .line 152
    :cond_1
    sget-object v17, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Current time "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is greater than last scheduled upload time "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    new-instance v19, Ljava/util/Date;

    add-long v20, v14, v9

    invoke-direct/range {v19 .. v21}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " OR less than last upload time "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, v19

    invoke-direct {v0, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v17, "usage_log_delay"

    sget v18, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_UPLOADER_RESET_PERIOD:I

    invoke-virtual/range {v16 .. v18}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 165
    :cond_2
    add-long v17, v14, v9

    sub-long v4, v17, v2

    .line 168
    .local v4, "delay":J
    const-wide/32 v17, 0xea60

    div-long v6, v4, v17

    .line 170
    .local v6, "delayInMin":J
    sget-object v17, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Current time "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " is lesser than last scheduled upload time "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    new-instance v19, Ljava/util/Date;

    add-long v20, v14, v9

    invoke-direct/range {v19 .. v21}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " next upload will happen after delay "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v17, "usage_log_delay"

    long-to-int v0, v6

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public sendLogs()V
    .locals 13

    .prologue
    const v10, 0x7f0a0023

    const/4 v12, 0x0

    .line 255
    sget-object v8, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->USAGE_LOG_FILE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->getLoggerFullFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, "logFileLocation":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 259
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v3, "logFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 263
    const-string v8, "Usage_Log_A"

    invoke-virtual {p0, v8}, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->deleteExistingMergedFile(Ljava/lang/String;)V

    .line 265
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .local v2, "emailIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getAPKVariant()Ljava/lang/String;

    move-result-object v8

    const-string v9, "release"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 275
    const-string v8, "android.intent.extra.SUBJECT"

    const-string v9, "Toq app log"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    :goto_0
    const/4 v1, 0x0

    .line 288
    .local v1, "emailAddress":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getAPKVariant()Ljava/lang/String;

    move-result-object v8

    const-string v9, "release"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 292
    const-string v1, "toq.support@qce.qualcomm.com"

    .line 299
    :goto_1
    sget-object v8, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ProjectConfig.getProjectConfig().getIssueLoggerDefaultEmail()"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v8, "text/plain"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const-string v8, "android.intent.extra.EMAIL"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    aput-object v1, v9, v12

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->getLoggerDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "Usage_Log_A"

    invoke-virtual {p0, v9}, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->getNewLoggerMergeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 311
    .local v5, "newFile":Ljava/io/File;
    const-string v8, "UsageLog"

    invoke-virtual {p0, v5, v8}, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->mergeFiles(Ljava/io/File;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 313
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 315
    .local v6, "u":Landroid/net/Uri;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v7, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 323
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "Email usage logs:"

    invoke-static {v2, v9}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v9

    const/high16 v10, 0x10000000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .end local v1    # "emailAddress":Ljava/lang/String;
    .end local v2    # "emailIntent":Landroid/content/Intent;
    .end local v3    # "logFile":Ljava/io/File;
    .end local v5    # "newFile":Ljava/io/File;
    .end local v6    # "u":Landroid/net/Uri;
    .end local v7    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :goto_2
    return-void

    .line 279
    .restart local v2    # "emailIntent":Landroid/content/Intent;
    .restart local v3    # "logFile":Ljava/io/File;
    :cond_0
    const-string v8, "android.intent.extra.SUBJECT"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Toq app log: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/qualcomm/toq/base/utils/Constants;->LOG_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 296
    .restart local v1    # "emailAddress":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getIssueLoggerDefaultEmail()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 328
    .restart local v5    # "newFile":Ljava/io/File;
    .restart local v6    # "u":Landroid/net/Uri;
    .restart local v7    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "Sorry No email Application was found"

    invoke-static {v8, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 335
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v6    # "u":Landroid/net/Uri;
    .end local v7    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_2
    sget-object v8, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;

    const-string v9, "Usage_Log copy and rename failed"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 339
    .end local v1    # "emailAddress":Ljava/lang/String;
    .end local v2    # "emailIntent":Landroid/content/Intent;
    .end local v5    # "newFile":Ljava/io/File;
    :cond_3
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 348
    .end local v3    # "logFile":Ljava/io/File;
    :cond_4
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

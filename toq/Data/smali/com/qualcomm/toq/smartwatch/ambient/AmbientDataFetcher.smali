.class public Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;
.super Ljava/lang/Object;
.source "AmbientDataFetcher.java"


# static fields
.field private static inst:Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;->inst:Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;

    if-nez v0, :cond_1

    .line 31
    const-class v1, Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;->inst:Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;->inst:Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;->inst:Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public processAmbientDataFetchRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "ambientUrl"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x1388

    .line 47
    const-string v7, "Ambient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AmbientDataFetcher-processAmbientDataFetchRequest ambient URL="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v5, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v5}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 52
    .local v5, "httpParams":Lorg/apache/http/params/HttpParams;
    invoke-static {v5, v10}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 54
    invoke-static {v5, v10}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 56
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 58
    .local v2, "defaultHTTPClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    const/4 v1, 0x0

    .line 60
    .local v1, "dataStream":Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 62
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 64
    .local v4, "httpGetObject":Lorg/apache/http/client/methods/HttpGet;
    const-string v7, "https://api.etrade.com"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 65
    const-string v7, "ConsumerKey"

    const-string v8, "f9269f0dbe43320e8143305cd0afdcfa"

    invoke-virtual {v4, v7, v8}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    new-instance v6, Lorg/apache/http/impl/client/BasicResponseHandler;

    invoke-direct {v6}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    .line 71
    .local v6, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 72
    if-eqz v4, :cond_1

    .line 73
    if-eqz v6, :cond_1

    .line 74
    :try_start_0
    invoke-virtual {v2, v4, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 77
    const-string v7, "Ambient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AmbientDataFetcher-processAmbientDataFetchRequest Response:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 107
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 116
    .end local v4    # "httpGetObject":Lorg/apache/http/client/methods/HttpGet;
    .end local v6    # "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    return-object v1

    .line 84
    .restart local v4    # "httpGetObject":Lorg/apache/http/client/methods/HttpGet;
    .restart local v6    # "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 85
    .local v3, "e":Lorg/apache/http/client/ClientProtocolException;
    :try_start_1
    const-string v7, "Ambient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!!!AmbientDataFetcher-processAmbientDataFetchRequest Unble to fetch data ClientProtocolException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 107
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    .line 90
    .end local v3    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v3

    .line 91
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    const-string v7, "Ambient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!!!AmbientDataFetcher-processAmbientDataFetchRequest Unble to fetch data IOException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 107
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    .line 96
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 97
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v7, "Ambient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!!!AmbientDataFetcher-processAmbientDataFetchRequest Unble to fetch data Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 107
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    .line 105
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 107
    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :cond_3
    throw v7

    .line 112
    .end local v4    # "httpGetObject":Lorg/apache/http/client/methods/HttpGet;
    .end local v6    # "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    :cond_4
    const-string v7, "Ambient"

    const-string v8, "!!!AmbientDataFetcher-processAmbientDataFetchRequest! Unble to fetch data URL is null"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.class public Lcom/qualcomm/toq/smartwatch/utils/DataServer;
.super Ljava/lang/Object;
.source "DataServer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field mConn:Ljava/net/HttpURLConnection;

.field private mQueryUrl:Ljava/lang/String;

.field mResponseData:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "mQueryUrl"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "DataServer"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/DataServer;->TAG:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/DataServer;->mQueryUrl:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/DataServer;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 33
    const/4 v2, 0x0

    .line 36
    .local v2, "in":Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/utils/DataServer;->mQueryUrl:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 38
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    iput-object v7, p0, Lcom/qualcomm/toq/smartwatch/utils/DataServer;->mConn:Ljava/net/HttpURLConnection;

    .line 39
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/utils/DataServer;->mConn:Ljava/net/HttpURLConnection;

    const v9, 0x13880

    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 40
    const-string v7, "DataServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/utils/DataServer;->mQueryUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/utils/DataServer;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .end local v2    # "in":Ljava/io/InputStreamReader;
    .local v3, "in":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v5, "responseData":Ljava/lang/StringBuilder;
    const/16 v7, 0x400

    new-array v0, v7, [C

    .line 52
    .local v0, "buff":[C
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    .local v4, "read":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_2

    .line 53
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 60
    .end local v0    # "buff":[C
    .end local v4    # "read":I
    .end local v5    # "responseData":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 61
    .end local v3    # "in":Ljava/io/InputStreamReader;
    .end local v6    # "url":Ljava/net/URL;
    .local v1, "e":Ljava/net/MalformedURLException;
    .restart local v2    # "in":Ljava/io/InputStreamReader;
    :goto_1
    :try_start_2
    const-string v7, "DataServer"

    const-string v9, "Error processing Stock API URL"

    invoke-static {v7, v9, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/utils/DataServer;->mConn:Ljava/net/HttpURLConnection;

    if-eqz v7, :cond_0

    .line 77
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/utils/DataServer;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 78
    iput-object v8, p0, Lcom/qualcomm/toq/smartwatch/utils/DataServer;->mConn:Ljava/net/HttpURLConnection;

    .line 80
    :cond_0
    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 82
    const/4 v2, 0x0

    :cond_1
    move-object v7, v8

    .end local v1    # "e":Ljava/net/MalformedURLException;
    :goto_2
    return-object v7

    .line 55
    .end local v2    # "in":Ljava/io/InputStreamReader;
    .restart local v0    # "buff":[C
    .restart local v3    # "in":Ljava/io/InputStreamReader;
    .restart local v4    # "read":I
    .restart local v5    # "responseData":Ljava/lang/StringBuilder;
    .restart local v6    # "url":Ljava/net/URL;
    :cond_2
    :try_start_3
    const-string v7, "DataServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "responseData:  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v7

    .line 76
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/utils/DataServer;->mConn:Ljava/net/HttpURLConnection;

    if-eqz v9, :cond_3

    .line 77
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/utils/DataServer;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 78
    iput-object v8, p0, Lcom/qualcomm/toq/smartwatch/utils/DataServer;->mConn:Ljava/net/HttpURLConnection;

    .line 80
    :cond_3
    if-eqz v3, :cond_c

    .line 81
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 82
    const/4 v2, 0x0

    .end local v3    # "in":Ljava/io/InputStreamReader;
    .restart local v2    # "in":Ljava/io/InputStreamReader;
    goto :goto_2

    .line 64
    .end local v0    # "buff":[C
    .end local v4    # "read":I
    .end local v5    # "responseData":Ljava/lang/StringBuilder;
    .end local v6    # "url":Ljava/net/URL;
    :catch_1
    move-exception v1

    .line 65
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    const-string v7, "DataServer"

    const-string v9, "Not able to retreive file through Stock API"

    invoke-static {v7, v9, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 76
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/utils/DataServer;->mConn:Ljava/net/HttpURLConnection;

    if-eqz v7, :cond_4

    .line 77
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/utils/DataServer;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 78
    iput-object v8, p0, Lcom/qualcomm/toq/smartwatch/utils/DataServer;->mConn:Ljava/net/HttpURLConnection;

    .line 80
    :cond_4
    if-eqz v2, :cond_5

    .line 81
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 82
    const/4 v2, 0x0

    :cond_5
    move-object v7, v8

    goto :goto_2

    .line 68
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 69
    .local v1, "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string v7, "DataServer"

    const-string v9, "Error connecting to Stock API"

    invoke-static {v7, v9, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 76
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/utils/DataServer;->mConn:Ljava/net/HttpURLConnection;

    if-eqz v7, :cond_6

    .line 77
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/utils/DataServer;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 78
    iput-object v8, p0, Lcom/qualcomm/toq/smartwatch/utils/DataServer;->mConn:Ljava/net/HttpURLConnection;

    .line 80
    :cond_6
    if-eqz v2, :cond_7

    .line 81
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 82
    const/4 v2, 0x0

    :cond_7
    move-object v7, v8

    goto :goto_2

    .line 72
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    :goto_5
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/utils/DataServer;->mConn:Ljava/net/HttpURLConnection;

    if-eqz v7, :cond_8

    .line 77
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/utils/DataServer;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 78
    iput-object v8, p0, Lcom/qualcomm/toq/smartwatch/utils/DataServer;->mConn:Ljava/net/HttpURLConnection;

    .line 80
    :cond_8
    if-eqz v2, :cond_9

    .line 81
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 82
    const/4 v2, 0x0

    :cond_9
    move-object v7, v8

    goto :goto_2

    .line 76
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_6
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/utils/DataServer;->mConn:Ljava/net/HttpURLConnection;

    if-eqz v9, :cond_a

    .line 77
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/utils/DataServer;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 78
    iput-object v8, p0, Lcom/qualcomm/toq/smartwatch/utils/DataServer;->mConn:Ljava/net/HttpURLConnection;

    .line 80
    :cond_a
    if-eqz v2, :cond_b

    .line 81
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 82
    const/4 v2, 0x0

    :cond_b
    throw v7

    .line 76
    .end local v2    # "in":Ljava/io/InputStreamReader;
    .restart local v3    # "in":Ljava/io/InputStreamReader;
    .restart local v6    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStreamReader;
    .restart local v2    # "in":Ljava/io/InputStreamReader;
    goto :goto_6

    .line 72
    .end local v2    # "in":Ljava/io/InputStreamReader;
    .restart local v3    # "in":Ljava/io/InputStreamReader;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStreamReader;
    .restart local v2    # "in":Ljava/io/InputStreamReader;
    goto :goto_5

    .line 68
    .end local v2    # "in":Ljava/io/InputStreamReader;
    .restart local v3    # "in":Ljava/io/InputStreamReader;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStreamReader;
    .restart local v2    # "in":Ljava/io/InputStreamReader;
    goto :goto_4

    .line 64
    .end local v2    # "in":Ljava/io/InputStreamReader;
    .restart local v3    # "in":Ljava/io/InputStreamReader;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStreamReader;
    .restart local v2    # "in":Ljava/io/InputStreamReader;
    goto :goto_3

    .line 60
    .end local v6    # "url":Ljava/net/URL;
    :catch_7
    move-exception v1

    goto/16 :goto_1

    .end local v2    # "in":Ljava/io/InputStreamReader;
    .restart local v0    # "buff":[C
    .restart local v3    # "in":Ljava/io/InputStreamReader;
    .restart local v4    # "read":I
    .restart local v5    # "responseData":Ljava/lang/StringBuilder;
    .restart local v6    # "url":Ljava/net/URL;
    :cond_c
    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStreamReader;
    .restart local v2    # "in":Ljava/io/InputStreamReader;
    goto/16 :goto_2
.end method

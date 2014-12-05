.class public Lcom/qualcomm/toq/smartwatch/ambient/FetchAmbientData;
.super Ljava/lang/Object;
.source "FetchAmbientData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DemoFetchAmbientData"


# instance fields
.field private mAmbientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/toq/smartwatch/ambient/FetchAmbientData;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ambient/FetchAmbientData;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/ambient/FetchAmbientData;-><init>()V

    return-object v0
.end method

.method private processRequest(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/lang/String;)V
    .locals 8
    .param p1, "ambientUrl"    # Ljava/lang/String;
    .param p2, "display"    # Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;
    .param p3, "defaultHTTPClient"    # Lorg/apache/http/impl/client/DefaultHttpClient;
    .param p4, "queryType"    # Ljava/lang/String;

    .prologue
    .line 137
    const-string v5, "DemoFetchAmbientData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "URL->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v1, 0x0

    .line 141
    .local v1, "dataStream":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 143
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 145
    .local v3, "httpGetObject":Lorg/apache/http/client/methods/HttpGet;
    const-string v5, "https://api.etrade.com"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 146
    const-string v5, "ConsumerKey"

    const-string v6, "f9269f0dbe43320e8143305cd0afdcfa"

    invoke-virtual {v3, v5, v6}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    new-instance v4, Lorg/apache/http/impl/client/BasicResponseHandler;

    invoke-direct {v4}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    .line 152
    .local v4, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    if-eqz p3, :cond_1

    .line 153
    if-eqz v3, :cond_1

    .line 154
    if-eqz v4, :cond_1

    .line 155
    :try_start_0
    invoke-virtual {p3, v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 158
    const-string v5, "DemoFetchAmbientData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Response"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 180
    .end local v3    # "httpGetObject":Lorg/apache/http/client/methods/HttpGet;
    .end local v4    # "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 181
    invoke-direct {p0, p2, v1, p4}, Lcom/qualcomm/toq/smartwatch/ambient/FetchAmbientData;->updateAmbientDisplay(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;Ljava/lang/String;Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;

    move-result-object v5

    iput-object v5, p0, Lcom/qualcomm/toq/smartwatch/ambient/FetchAmbientData;->mAmbientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;

    .line 188
    :goto_1
    return-void

    .line 163
    .restart local v3    # "httpGetObject":Lorg/apache/http/client/methods/HttpGet;
    .restart local v4    # "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 164
    .local v2, "e":Lorg/apache/http/client/ClientProtocolException;
    const-string v5, "DemoFetchAmbientData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClientProtocolException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ambient/FetchAmbientData;->setDataErrorIndication()V

    goto :goto_0

    .line 167
    .end local v2    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v2

    .line 168
    .local v2, "e":Ljava/io/IOException;
    const-string v5, "DemoFetchAmbientData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ambient/FetchAmbientData;->setDataErrorIndication()V

    goto :goto_0

    .line 171
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 172
    .local v2, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ambient/FetchAmbientData;->setDataErrorIndication()V

    goto :goto_0

    .line 176
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "httpGetObject":Lorg/apache/http/client/methods/HttpGet;
    .end local v4    # "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    :cond_2
    const-string v5, "DemoFetchAmbientData"

    const-string v6, "URL is null"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_3
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ambient/FetchAmbientData;->setDataErrorIndication()V

    goto :goto_1
.end method

.method private setDataErrorIndication()V
    .locals 5

    .prologue
    .line 191
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ambient/FetchAmbientData;->mAmbientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;

    if-eqz v4, :cond_0

    .line 192
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ambient/FetchAmbientData;->mAmbientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;

    instance-of v4, v4, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;

    if-eqz v4, :cond_1

    .line 193
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ambient/FetchAmbientData;->mAmbientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;

    check-cast v2, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;

    .line 194
    .local v2, "weatherAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->getAmbientInfo()Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 195
    .local v3, "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    const-string v4, "push_data_error_image"

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    .line 204
    .end local v2    # "weatherAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;
    .end local v3    # "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ambient/FetchAmbientData;->mAmbientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;

    instance-of v4, v4, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;

    if-eqz v4, :cond_0

    .line 198
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/FetchAmbientData;->mAmbientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;

    .line 199
    .local v0, "stockAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->getAmbientInfo()Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    .line 200
    .local v1, "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    const-string v4, "push_data_error_image"

    invoke-virtual {v1, v4}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateAmbientDisplay(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;Ljava/lang/String;Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;
    .locals 3
    .param p1, "ambientDisplay"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;
    .param p2, "dataStream"    # Ljava/lang/String;
    .param p3, "queryType"    # Ljava/lang/String;

    .prologue
    .line 56
    instance-of v2, p1, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 57
    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;

    .line 58
    .local v0, "stockambientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->getAmbientInfo()Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;

    move-result-object v2

    invoke-virtual {v0, p2, v2, p3}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->retreiveDataFromStream(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    invoke-virtual {v0, v2}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->setAmbientInfo(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)V

    .line 70
    .end local v0    # "stockambientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;
    :goto_0
    return-object v0

    .line 63
    :cond_0
    instance-of v2, p1, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 64
    check-cast v1, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;

    .line 65
    .local v1, "weatherAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->getAmbientInfo()Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;

    move-result-object v2

    invoke-virtual {v1, p2, v2, p3}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->retreiveDataFromStream(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->setAmbientInfo(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)V

    move-object v0, v1

    .line 68
    goto :goto_0

    .line 70
    .end local v1    # "weatherAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getUpdatedAmbientDisplay(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;)Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;
    .locals 6
    .param p1, "ambientDisplay"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v5, 0x1388

    .line 83
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/FetchAmbientData;->mAmbientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "ambientUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ambient/FetchAmbientData;->mAmbientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;

    check-cast v2, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;

    .line 87
    .local v2, "display":Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/toq/base/utils/Utils;->isNetworkConnectivityAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 90
    .local v3, "httpParams":Lorg/apache/http/params/HttpParams;
    invoke-static {v3, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 92
    invoke-static {v3, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 94
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 96
    .local v1, "defaultHTTPClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ambient/FetchAmbientData;->mAmbientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;

    instance-of v4, v4, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;

    if-eqz v4, :cond_2

    .line 97
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 98
    const-string v4, "GOOG_STOCK_TYPE"

    invoke-direct {p0, v0, v2, v1, v4}, Lcom/qualcomm/toq/smartwatch/ambient/FetchAmbientData;->processRequest(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/lang/String;)V

    .line 117
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 119
    .end local v1    # "defaultHTTPClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3    # "httpParams":Lorg/apache/http/params/HttpParams;
    :cond_1
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ambient/FetchAmbientData;->mAmbientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;

    return-object v4

    .line 103
    .restart local v1    # "defaultHTTPClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v3    # "httpParams":Lorg/apache/http/params/HttpParams;
    :cond_2
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ambient/FetchAmbientData;->mAmbientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;

    instance-of v4, v4, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;

    if-eqz v4, :cond_0

    .line 104
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 105
    const-string v4, "WEATHER_HOUR_TEMPARATURE"

    invoke-direct {p0, v0, v2, v1, v4}, Lcom/qualcomm/toq/smartwatch/ambient/FetchAmbientData;->processRequest(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/lang/String;)V

    move-object v4, v2

    .line 109
    check-cast v4, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->getForecastUrl()Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v4, "WEATHER_MIN_MAX_TEMPARATURE"

    invoke-direct {p0, v0, v2, v1, v4}, Lcom/qualcomm/toq/smartwatch/ambient/FetchAmbientData;->processRequest(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;Lorg/apache/http/impl/client/DefaultHttpClient;Ljava/lang/String;)V

    goto :goto_0
.end method

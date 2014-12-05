.class public Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;
.super Ljava/lang/Object;
.source "AmbientAppUpgradeUtils.java"


# static fields
.field public static final DEFAULT_NAME:Ljava/lang/String; = "--"

.field public static final TIMER_RETRY:Ljava/lang/String; = "ambient_app_upgrade_utils_timer_retry"

.field public static final UPDATE_SUCCESS:Ljava/lang/String; = "ambient_app_upgrade_utils_update_success"

.field public static final UPDATE_TRY_THRESHOLD:I = 0xa

.field public static isWeatherScreenActive:Z

.field private static mInstance:Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;


# instance fields
.field private final TAG:Ljava/lang/String;

.field public final TIMER_INTERVAL:I

.field private mCityNameUpdaterTimer:Ljava/util/Timer;

.field private mCityUpdater:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->mInstance:Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->isWeatherScreenActive:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->mCityNameUpdaterTimer:Ljava/util/Timer;

    .line 43
    const-string v0, "AmbientAppUpgradeUtils"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->TAG:Ljava/lang/String;

    .line 45
    const v0, 0x1d4c0

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->TIMER_INTERVAL:I

    .line 327
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils$1;-><init>(Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->mCityUpdater:Ljava/util/TimerTask;

    .line 53
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->initUpgradeTimer()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->mCityNameUpdaterTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->mCityNameUpdaterTimer:Ljava/util/Timer;

    return-object p1
.end method

.method public static getAmbientAppUpgradeUtilsPref()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 377
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 378
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "qualcommtoq_ambient_upgrade_file"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCityResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "queryString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 386
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 387
    .local v7, "url":Ljava/net/URL;
    const/4 v3, 0x0

    .line 388
    .local v3, "in":Ljava/io/InputStreamReader;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 392
    .local v1, "conn":Ljava/net/HttpURLConnection;
    const v9, 0x13880

    :try_start_0
    invoke-virtual {v1, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 394
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    .end local v3    # "in":Ljava/io/InputStreamReader;
    .local v4, "in":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    .local v6, "responseData":Ljava/lang/StringBuilder;
    const/16 v9, 0x400

    new-array v0, v9, [C

    .line 404
    .local v0, "buff":[C
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v5

    .local v5, "read":I
    const/4 v9, -0x1

    if-eq v5, v9, :cond_2

    .line 405
    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 413
    .end local v0    # "buff":[C
    .end local v5    # "read":I
    .end local v6    # "responseData":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 414
    .end local v4    # "in":Ljava/io/InputStreamReader;
    .local v2, "e":Ljava/net/MalformedURLException;
    .restart local v3    # "in":Ljava/io/InputStreamReader;
    :goto_1
    :try_start_2
    const-string v9, "AmbientAppUpgradeUtils"

    const-string v10, "Error processing Stock API URL"

    invoke-static {v9, v10, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 429
    if-eqz v1, :cond_0

    .line 430
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 432
    :cond_0
    if-eqz v3, :cond_1

    .line 433
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 434
    const/4 v3, 0x0

    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_1
    :goto_2
    return-object v8

    .line 407
    .end local v3    # "in":Ljava/io/InputStreamReader;
    .restart local v0    # "buff":[C
    .restart local v4    # "in":Ljava/io/InputStreamReader;
    .restart local v5    # "read":I
    .restart local v6    # "responseData":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_3
    const-string v9, "AmbientAppUpgradeUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "responseData:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 409
    const/4 v3, 0x0

    .line 410
    .end local v4    # "in":Ljava/io/InputStreamReader;
    .restart local v3    # "in":Ljava/io/InputStreamReader;
    :try_start_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v8

    .line 429
    if-eqz v1, :cond_3

    .line 430
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 432
    :cond_3
    if-eqz v3, :cond_1

    .line 433
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 434
    const/4 v3, 0x0

    goto :goto_2

    .line 417
    .end local v0    # "buff":[C
    .end local v5    # "read":I
    .end local v6    # "responseData":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v2

    .line 418
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    const-string v9, "AmbientAppUpgradeUtils"

    const-string v10, "Not able to retreive file through Stock API"

    invoke-static {v9, v10, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 429
    if-eqz v1, :cond_4

    .line 430
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 432
    :cond_4
    if-eqz v3, :cond_1

    .line 433
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 434
    const/4 v3, 0x0

    goto :goto_2

    .line 421
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 422
    .local v2, "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v9, "AmbientAppUpgradeUtils"

    const-string v10, "Error connecting to Stock API"

    invoke-static {v9, v10, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 429
    if-eqz v1, :cond_5

    .line 430
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 432
    :cond_5
    if-eqz v3, :cond_1

    .line 433
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 434
    const/4 v3, 0x0

    goto :goto_2

    .line 425
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 429
    .local v2, "e":Ljava/lang/Exception;
    :goto_5
    if-eqz v1, :cond_6

    .line 430
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 432
    :cond_6
    if-eqz v3, :cond_1

    .line 433
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 434
    const/4 v3, 0x0

    goto :goto_2

    .line 429
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_6
    if-eqz v1, :cond_7

    .line 430
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 432
    :cond_7
    if-eqz v3, :cond_8

    .line 433
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 434
    const/4 v3, 0x0

    :cond_8
    throw v8

    .line 429
    .end local v3    # "in":Ljava/io/InputStreamReader;
    .restart local v4    # "in":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStreamReader;
    .restart local v3    # "in":Ljava/io/InputStreamReader;
    goto :goto_6

    .line 425
    .end local v3    # "in":Ljava/io/InputStreamReader;
    .restart local v4    # "in":Ljava/io/InputStreamReader;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStreamReader;
    .restart local v3    # "in":Ljava/io/InputStreamReader;
    goto :goto_5

    .line 421
    .end local v3    # "in":Ljava/io/InputStreamReader;
    .restart local v4    # "in":Ljava/io/InputStreamReader;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStreamReader;
    .restart local v3    # "in":Ljava/io/InputStreamReader;
    goto :goto_4

    .line 417
    .end local v3    # "in":Ljava/io/InputStreamReader;
    .restart local v4    # "in":Ljava/io/InputStreamReader;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStreamReader;
    .restart local v3    # "in":Ljava/io/InputStreamReader;
    goto :goto_3

    .line 413
    :catch_7
    move-exception v2

    goto/16 :goto_1
.end method

.method public static getInstance()Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->mInstance:Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->mInstance:Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;

    .line 60
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->mInstance:Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;

    return-object v0
.end method

.method private initUpgradeTimer()V
    .locals 6

    .prologue
    const-wide/32 v2, 0x1d4c0

    .line 72
    const-string v0, "AmbientAppUpgradeUtils"

    const-string v1, "Initializing timer"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->mCityNameUpdaterTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->mCityNameUpdaterTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->mCityNameUpdaterTimer:Ljava/util/Timer;

    .line 78
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->mCityNameUpdaterTimer:Ljava/util/Timer;

    .line 79
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->mCityNameUpdaterTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->mCityUpdater:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 83
    return-void
.end method

.method public static isAlive()Z
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->mInstance:Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private putDefaultState(Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;)V
    .locals 3
    .param p1, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .prologue
    .line 320
    const-string v0, "--"

    invoke-virtual {p1, v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setCountryName(Ljava/lang/String;)V

    .line 321
    const-string v0, "--"

    invoke-virtual {p1, v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setStateName(Ljava/lang/String;)V

    .line 322
    const-string v0, "AmbientAppUpgradeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting Default names  for city: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method private updateWeatherInfo(Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;Landroid/content/Context;Ljava/lang/String;)V
    .locals 21
    .param p1, "weatherAmbientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "adminArea"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v5

    .line 208
    .local v5, "cityName":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 209
    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 210
    .local v16, "splitArray":[Ljava/lang/String;
    const-string v18, "AmbientAppUpgradeUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Updating data for : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/16 v18, 0x0

    aget-object v18, v16, v18

    if-eqz v18, :cond_5

    .line 213
    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, "city":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setCityName(Ljava/lang/String;)V

    .line 217
    invoke-static/range {p2 .. p2}, Lcom/qualcomm/toq/base/utils/Utils;->isNetworkConnectivityAvailable(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 219
    const/4 v14, 0x0

    .line 221
    .local v14, "responseData":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a004c

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 224
    .local v10, "formattedString":Ljava/lang/String;
    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 225
    .local v9, "encodedData":Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v9, v18, v19

    const/16 v19, 0x1

    const-string v20, "9fc4b35acecc407e95143c14579a2d84"

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v10, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 228
    .local v17, "weatherURL":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->getCityResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 229
    if-eqz v14, :cond_8

    .line 230
    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15, v14}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 231
    .local v15, "responseJsonArray":Lorg/json/JSONArray;
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v18

    if-nez v18, :cond_0

    .line 232
    const-string v18, "push_data_error_image"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    .line 234
    :cond_0
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_5

    .line 235
    invoke-virtual {v15, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 236
    .local v12, "jsonObject":Lorg/json/JSONObject;
    if-eqz v12, :cond_7

    .line 238
    const/4 v3, 0x0

    .line 240
    .local v3, "administrativeAreaLocalizedName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 241
    .local v6, "countryName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 242
    .local v13, "key":Ljava/lang/String;
    const-string v18, "Key"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 244
    const-string v18, "AdministrativeArea"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 245
    .local v2, "adminObject":Lorg/json/JSONObject;
    const-string v18, "Country"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    .line 246
    .local v7, "countryObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 248
    const-string v18, "LocalizedName"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 249
    const-string v18, "AmbientAppUpgradeUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "State Name: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_1
    if-eqz v7, :cond_2

    .line 255
    const-string v18, "LocalizedName"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 256
    const-string v18, "AmbientAppUpgradeUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "CountryName: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_2
    if-eqz v13, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getKey()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 261
    if-eqz v3, :cond_4

    .line 262
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setStateName(Ljava/lang/String;)V

    .line 267
    :goto_1
    if-eqz v6, :cond_6

    .line 268
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setCountryName(Ljava/lang/String;)V

    .line 234
    .end local v2    # "adminObject":Lorg/json/JSONObject;
    .end local v3    # "administrativeAreaLocalizedName":Ljava/lang/String;
    .end local v6    # "countryName":Ljava/lang/String;
    .end local v7    # "countryObject":Lorg/json/JSONObject;
    .end local v13    # "key":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 265
    .restart local v2    # "adminObject":Lorg/json/JSONObject;
    .restart local v3    # "administrativeAreaLocalizedName":Ljava/lang/String;
    .restart local v6    # "countryName":Ljava/lang/String;
    .restart local v7    # "countryObject":Lorg/json/JSONObject;
    .restart local v13    # "key":Ljava/lang/String;
    :cond_4
    const-string v18, "--"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setStateName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 288
    .end local v2    # "adminObject":Lorg/json/JSONObject;
    .end local v3    # "administrativeAreaLocalizedName":Ljava/lang/String;
    .end local v6    # "countryName":Ljava/lang/String;
    .end local v7    # "countryObject":Lorg/json/JSONObject;
    .end local v9    # "encodedData":Ljava/lang/String;
    .end local v10    # "formattedString":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "responseJsonArray":Lorg/json/JSONArray;
    .end local v17    # "weatherURL":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 289
    .local v8, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v18, "AmbientAppUpgradeUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "InterruptedException in default sync "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-direct/range {p0 .. p1}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->putDefaultState(Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    .end local v4    # "city":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/InterruptedException;
    .end local v14    # "responseData":Ljava/lang/String;
    .end local v16    # "splitArray":[Ljava/lang/String;
    :cond_5
    :goto_3
    return-void

    .line 272
    .restart local v2    # "adminObject":Lorg/json/JSONObject;
    .restart local v3    # "administrativeAreaLocalizedName":Ljava/lang/String;
    .restart local v4    # "city":Ljava/lang/String;
    .restart local v6    # "countryName":Ljava/lang/String;
    .restart local v7    # "countryObject":Lorg/json/JSONObject;
    .restart local v9    # "encodedData":Ljava/lang/String;
    .restart local v10    # "formattedString":Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v12    # "jsonObject":Lorg/json/JSONObject;
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "responseData":Ljava/lang/String;
    .restart local v15    # "responseJsonArray":Lorg/json/JSONArray;
    .restart local v16    # "splitArray":[Ljava/lang/String;
    .restart local v17    # "weatherURL":Ljava/lang/String;
    :cond_6
    :try_start_2
    const-string v18, "--"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setCountryName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 295
    .end local v2    # "adminObject":Lorg/json/JSONObject;
    .end local v3    # "administrativeAreaLocalizedName":Ljava/lang/String;
    .end local v6    # "countryName":Ljava/lang/String;
    .end local v7    # "countryObject":Lorg/json/JSONObject;
    .end local v9    # "encodedData":Ljava/lang/String;
    .end local v10    # "formattedString":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "responseJsonArray":Lorg/json/JSONArray;
    .end local v17    # "weatherURL":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 296
    .local v8, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_3
    const-string v18, "AmbientAppUpgradeUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ExecutionException in default Sync "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Ljava/util/concurrent/ExecutionException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-direct/range {p0 .. p1}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->putDefaultState(Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 308
    .end local v8    # "e":Ljava/util/concurrent/ExecutionException;
    :catchall_0
    move-exception v18

    throw v18

    .line 279
    .restart local v9    # "encodedData":Ljava/lang/String;
    .restart local v10    # "formattedString":Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v12    # "jsonObject":Lorg/json/JSONObject;
    .restart local v15    # "responseJsonArray":Lorg/json/JSONArray;
    .restart local v17    # "weatherURL":Ljava/lang/String;
    :cond_7
    :try_start_4
    invoke-direct/range {p0 .. p1}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->putDefaultState(Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 302
    .end local v9    # "encodedData":Ljava/lang/String;
    .end local v10    # "formattedString":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "jsonObject":Lorg/json/JSONObject;
    .end local v15    # "responseJsonArray":Lorg/json/JSONArray;
    .end local v17    # "weatherURL":Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 303
    .local v8, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v18, "AmbientAppUpgradeUtils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ExecutionException in default Sync "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-direct/range {p0 .. p1}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->putDefaultState(Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 284
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v9    # "encodedData":Ljava/lang/String;
    .restart local v10    # "formattedString":Ljava/lang/String;
    .restart local v17    # "weatherURL":Ljava/lang/String;
    :cond_8
    :try_start_6
    invoke-direct/range {p0 .. p1}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->putDefaultState(Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 313
    .end local v9    # "encodedData":Ljava/lang/String;
    .end local v10    # "formattedString":Ljava/lang/String;
    .end local v14    # "responseData":Ljava/lang/String;
    .end local v17    # "weatherURL":Ljava/lang/String;
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->putDefaultState(Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;)V

    goto :goto_3
.end method


# virtual methods
.method public deletAmbientFolders(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 358
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, "state":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 362
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "AMBIENT_IMAGES"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 364
    .local v0, "ambientDirectory":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    invoke-static {v0}, Lcom/qualcomm/toq/base/utils/Utils;->deleteFiles(Ljava/io/File;)V

    .line 370
    .end local v0    # "ambientDirectory":Ljava/io/File;
    :cond_0
    const-string v2, "stock"

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->resetAmbientLastFetchTimeStamp()V

    .line 372
    const-string v2, "weather"

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->resetAmbientLastFetchTimeStamp()V

    .line 374
    return-void
.end method

.method public updateOldVersionCity(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 126
    const-string v9, "ambient__pref"

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 130
    .local v6, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    const-string v9, "WeatherCities"

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 134
    .local v1, "currentWeatherList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    const-string v9, "AmbientAppUpgradeUtils"

    const-string v10, "Updating Old Version City"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const/4 v7, 0x0

    .line 136
    .local v7, "timerRetry":I
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->getAmbientAppUpgradeUtilsPref()Landroid/content/SharedPreferences;

    move-result-object v8

    .line 137
    .local v8, "upgradePref":Landroid/content/SharedPreferences;
    const/4 v5, 0x0

    .line 139
    .local v5, "isUpdateSuccessfull":Z
    if-eqz v8, :cond_0

    .line 141
    const-string v9, "ambient_app_upgrade_utils_timer_retry"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 142
    invoke-static {p1}, Lcom/qualcomm/toq/base/utils/Utils;->isNetworkConnectivityAvailable(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 145
    add-int/lit8 v7, v7, 0x1

    .line 150
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_4

    .line 151
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 152
    .local v0, "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    const/4 v5, 0x1

    .line 153
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getStateName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    const-string v9, "--"

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getStateName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCountryName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    const-string v9, "--"

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCountryName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_1
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getKey()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 159
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v0, v9, v10}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->updateWeatherInfo(Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getStateName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    const-string v9, "--"

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getStateName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCountryName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    const-string v9, "--"

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCountryName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 166
    :cond_2
    const/4 v5, 0x0

    .line 150
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    :cond_4
    if-eqz v8, :cond_5

    .line 174
    const-string v9, "AmbientAppUpgradeUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Retry   value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 176
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v9, "ambient_app_upgrade_utils_timer_retry"

    invoke-interface {v3, v9, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 177
    const-string v9, "ambient_app_upgrade_utils_update_success"

    invoke-interface {v3, v9, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 181
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 183
    .restart local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v9, "WeatherCities"

    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    .end local v1    # "currentWeatherList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "i":I
    .end local v5    # "isUpdateSuccessfull":Z
    .end local v7    # "timerRetry":I
    .end local v8    # "upgradePref":Landroid/content/SharedPreferences;
    :goto_1
    return-void

    .line 187
    :catch_0
    move-exception v2

    .line 189
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 191
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 193
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public updateSharedPreferenceForIconNumber()V
    .locals 8

    .prologue
    .line 93
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 94
    .local v1, "context":Landroid/content/Context;
    const-string v6, "ambient__pref"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 98
    .local v5, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    const-string v6, "WeatherCities"

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 102
    .local v2, "currentWeatherList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 104
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 105
    .local v0, "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setIconNumber(I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 102
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v2    # "currentWeatherList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 111
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 117
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_1
    return-void

    .line 113
    :catch_1
    move-exception v3

    .line 114
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

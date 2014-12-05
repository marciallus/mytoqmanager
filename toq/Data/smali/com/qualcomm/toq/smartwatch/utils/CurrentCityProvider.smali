.class public Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;
.super Ljava/lang/Object;
.source "CurrentCityProvider.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static sInstance:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mLocParseTimer:Ljava/util/Timer;

.field private mLocalUpdateFlag:Z

.field private mLocationHandler:Landroid/os/Handler;

.field private mLocationLooper:Landroid/os/Looper;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "CurrentCityProvider"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->TAG:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mLocalUpdateFlag:Z

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v1, "CurrentCityProvider"

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->TAG:Ljava/lang/String;

    .line 45
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mLocalUpdateFlag:Z

    .line 52
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CurrentCityProvider"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 55
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mLocationLooper:Landroid/os/Looper;

    .line 56
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mLocationLooper:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mLocationHandler:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mLocalUpdateFlag:Z

    return p1
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mLocParseTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mLocParseTimer:Ljava/util/Timer;

    return-object p1
.end method

.method private getCityNameFromLocation(Landroid/location/Location;)[Ljava/lang/String;
    .locals 24
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 338
    const-string v20, "CurrentCityProvider"

    const-string v21, "getCityNameFromLocation() called"

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    .line 340
    .local v9, "executorService":Ljava/util/concurrent/ExecutorService;
    const/16 v16, 0x0

    .line 342
    .local v16, "responseData":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v20, "##.##"

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 343
    .local v7, "df":Ljava/text/DecimalFormat;
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 344
    .local v12, "lat":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v7, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 345
    .local v14, "lon":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a004f

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 347
    .local v10, "formattedString":Ljava/lang/String;
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "9fc4b35acecc407e95143c14579a2d84"

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-static {v10, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 351
    .local v19, "url":Ljava/lang/String;
    const-string v20, "CurrentCityProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Query Url :  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    new-instance v20, Lcom/qualcomm/toq/smartwatch/utils/DataServer;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/DataServer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v20

    const-wide/16 v21, 0x5

    sget-object v23, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v20 .. v23}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Ljava/lang/String;

    move-object/from16 v16, v0

    .line 355
    if-eqz v16, :cond_2

    .line 356
    new-instance v17, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 357
    .local v17, "responseJsonObject":Lorg/json/JSONObject;
    const-string v20, "CurrentCityProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Local city, JSON data: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    if-eqz v17, :cond_3

    .line 360
    const-string v20, "Key"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 361
    .local v11, "key":Ljava/lang/String;
    const-string v20, "EnglishName"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 362
    .local v4, "cityName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 363
    .local v5, "countryName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 364
    .local v2, "adminAreaName":Ljava/lang/String;
    const-string v20, "Country"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 365
    .local v6, "countryObject":Lorg/json/JSONObject;
    if-eqz v6, :cond_0

    .line 366
    const-string v20, "LocalizedName"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 368
    :cond_0
    const-string v20, "AdministrativeArea"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 369
    .local v3, "adminObject":Lorg/json/JSONObject;
    if-eqz v3, :cond_1

    .line 370
    const-string v20, "EnglishName"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 373
    :cond_1
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    aput-object v11, v18, v20

    const/16 v20, 0x1

    aput-object v4, v18, v20

    const/16 v20, 0x2

    aput-object v2, v18, v20

    const/16 v20, 0x3

    aput-object v5, v18, v20

    .line 375
    .local v18, "result":[Ljava/lang/String;
    const-string v20, "CurrentCityProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " Current City Data :  Key: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  city: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  Country:   "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "Admin Area: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    invoke-interface {v9}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 393
    .end local v2    # "adminAreaName":Ljava/lang/String;
    .end local v3    # "adminObject":Lorg/json/JSONObject;
    .end local v4    # "cityName":Ljava/lang/String;
    .end local v5    # "countryName":Ljava/lang/String;
    .end local v6    # "countryObject":Lorg/json/JSONObject;
    .end local v7    # "df":Ljava/text/DecimalFormat;
    .end local v10    # "formattedString":Ljava/lang/String;
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "lat":D
    .end local v14    # "lon":D
    .end local v17    # "responseJsonObject":Lorg/json/JSONObject;
    .end local v18    # "result":[Ljava/lang/String;
    .end local v19    # "url":Ljava/lang/String;
    :goto_0
    return-object v18

    .line 382
    .restart local v7    # "df":Ljava/text/DecimalFormat;
    .restart local v10    # "formattedString":Ljava/lang/String;
    .restart local v12    # "lat":D
    .restart local v14    # "lon":D
    .restart local v19    # "url":Ljava/lang/String;
    :cond_2
    const/16 v18, 0x0

    .line 391
    invoke-interface {v9}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_0

    .restart local v17    # "responseJsonObject":Lorg/json/JSONObject;
    :cond_3
    invoke-interface {v9}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 393
    .end local v7    # "df":Ljava/text/DecimalFormat;
    .end local v10    # "formattedString":Ljava/lang/String;
    .end local v12    # "lat":D
    .end local v14    # "lon":D
    .end local v17    # "responseJsonObject":Lorg/json/JSONObject;
    .end local v19    # "url":Ljava/lang/String;
    :goto_1
    const/16 v18, 0x0

    goto :goto_0

    .line 386
    :catch_0
    move-exception v8

    .line 387
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 391
    invoke-interface {v9}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v20

    invoke-interface {v9}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v20
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    new-instance v0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->sInstance:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    .line 70
    sget-object v0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->sInstance:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    return-object v0
.end method


# virtual methods
.method public getCurrentCityName()V
    .locals 3

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mLocationLooper:Landroid/os/Looper;

    if-eqz v1, :cond_0

    .line 92
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mLocationLooper:Landroid/os/Looper;

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mLocationHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mLocationHandler:Landroid/os/Handler;

    new-instance v2, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;-><init>(Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 240
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 244
    :catch_1
    move-exception v0

    .line 245
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getLocationManger()Landroid/location/LocationManager;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mLocationManager:Landroid/location/LocationManager;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 9
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 253
    if-eqz p1, :cond_5

    .line 254
    const-string v2, "CurrentCityProvider"

    const-string v3, "onLocationChanged called"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mLocalUpdateFlag:Z

    if-eqz v2, :cond_4

    .line 256
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->getCityNameFromLocation(Landroid/location/Location;)[Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "cityParams":[Ljava/lang/String;
    if-eqz v0, :cond_3

    array-length v2, v0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 259
    aget-object v2, v0, v4

    if-eqz v2, :cond_2

    aget-object v2, v0, v5

    if-eqz v2, :cond_2

    aget-object v2, v0, v6

    if-eqz v2, :cond_2

    aget-object v2, v0, v7

    if-eqz v2, :cond_2

    .line 261
    iput-boolean v4, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mLocalUpdateFlag:Z

    .line 263
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->getLocationManger()Landroid/location/LocationManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 264
    const-string v2, "weather"

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;

    .line 267
    .local v1, "controller":Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;
    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v0, v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->onCurrencityNameReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v2, "CurrentCityProvider"

    const-string v3, " Before Canceling Timer"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mTimer:Ljava/util/Timer;

    if-eqz v2, :cond_0

    .line 276
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 277
    iput-object v8, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mTimer:Ljava/util/Timer;

    .line 279
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mLocParseTimer:Ljava/util/Timer;

    if-eqz v2, :cond_1

    .line 280
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mLocParseTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 281
    iput-object v8, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mLocParseTimer:Ljava/util/Timer;

    .line 322
    .end local v0    # "cityParams":[Ljava/lang/String;
    .end local v1    # "controller":Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;
    :cond_1
    :goto_0
    return-void

    .line 286
    .restart local v0    # "cityParams":[Ljava/lang/String;
    :cond_2
    const-string v2, "CurrentCityProvider"

    const-string v3, "onLocationChanged cityParams elements == null"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 312
    :cond_3
    const-string v2, "CurrentCityProvider"

    const-string v3, "onLocationChanged cityParams == null"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 316
    .end local v0    # "cityParams":[Ljava/lang/String;
    :cond_4
    const-string v2, "CurrentCityProvider"

    const-string v3, "onLocationChanged mLocalUpdateFlag == false"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_5
    const-string v2, "CurrentCityProvider"

    const-string v3, "onLocationChanged location == null"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 327
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 331
    const-string v0, "CurrentCityProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider enabled :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 335
    return-void
.end method

.class public Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;
.super Landroid/app/IntentService;
.source "AmbientIntentService.java"


# static fields
.field private static final DARK_IMAGE:I = 0x1

.field private static final IMAGE_TAG:Ljava/lang/String; = "images"

.field public static final TASK_CLOCK:Ljava/lang/String; = "generate_world_clock_file"

.field public static final TASK_IMAGE_SHARE:Ljava/lang/String; = "share_image_to_wd"

.field public static final TASK_STOCK_IMAGE_CREATE:Ljava/lang/String; = "stock_image_create_task"

.field public static final TASK_STOCK_POLLING:Ljava/lang/String; = "stock_polling_task"

.field public static final TASK_STOCK_RESYNC:Ljava/lang/String; = "stock_resync_images_to_wd"

.field public static final TASK_STOCK_SYNC:Ljava/lang/String; = "sync_stock_data_to_wd"

.field public static final TASK_WEATHER_CURRENT_CITY_SYNC:Ljava/lang/String; = "currentcity_weather_polling_task"

.field public static final TASK_WEATHER_POLLING:Ljava/lang/String; = "weather_polling_task"

.field public static final TASK_WEATHER_RESYNC:Ljava/lang/String; = "weather_resync_images_to_wd"

.field public static final TASK_WEATHER_SYNC:Ljava/lang/String; = "sync_weather_data_to_wd"

.field private static final WHITE_IMAGE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    const-string v0, "AmbientIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method private createClockWorldzipFileAndSyncToWD(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1396
    :try_start_0
    const-string v4, "Ambient"

    const-string v5, "AmbientIntentService createClockWorldzipFile "

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    const-string v4, "WorldClock"

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1400
    .local v2, "worldClockParentFile":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 1402
    const-string v4, "Ambient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AmbientIntentService worldClockParentFile.exists() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ClockWorld.zip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1408
    .local v3, "zipDestinationLocation":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1409
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 1416
    :goto_0
    const-string v4, "Ambient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AmbientIntentService  ClockWorld ZIp Destination Location : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1421
    .local v1, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->generateSourceFileList(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    .line 1424
    const-string v4, "Ambient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AmbientIntentService ClockWorld List of files"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->createWorldClockZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1430
    const-string v4, "World Time"

    invoke-direct {p0, v4, p1}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->syncWorldClockToWD(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    .end local v1    # "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "worldClockParentFile":Ljava/io/File;
    .end local v3    # "zipDestinationLocation":Ljava/io/File;
    :cond_0
    :goto_1
    return-void

    .line 1412
    .restart local v2    # "worldClockParentFile":Ljava/io/File;
    .restart local v3    # "zipDestinationLocation":Ljava/io/File;
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1413
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1433
    .end local v2    # "worldClockParentFile":Ljava/io/File;
    .end local v3    # "zipDestinationLocation":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1434
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private createDATFile(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p2, "clockType"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 1207
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1208
    .local v0, "clockFile":Ljava/io/File;
    const-string v1, "World Time"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1210
    const-string v1, "WorldClock"

    invoke-direct {p0, v1, p1, p3}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->getClocksDatFile(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1220
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1221
    const-string v1, "Ambient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AmbientIntentService clockFile == null  for clock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    :cond_1
    return-object v0

    .line 1214
    :cond_2
    const-string v1, "Degrees"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1216
    const-string v1, "DegreesClock"

    invoke-direct {p0, v1, p1, p3}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->getClocksDatFile(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method private createWorldClockImagesFromAmbientInfo(Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;)V
    .locals 9
    .param p1, "worldClockAmbientDisplay"    # Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 1270
    const-string v0, "Ambient"

    const-string v1, "AmbientIntentService createWorldClockImagesFromAmbientInfo"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->getAmbientInfo()Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 1275
    .local v4, "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    invoke-virtual {p1, v4}, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->createWorldClockBitmaps(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;

    move-result-object v6

    .line 1277
    .local v6, "worldClockImageRepo":Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherConditionImage()[Landroid/graphics/Bitmap;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v7, :cond_1

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherHourTempImage()[Landroid/graphics/Bitmap;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v7, :cond_1

    .line 1280
    const-string v0, "Ambient"

    const-string v1, "AmbientIntentService Repo got created for worldClockImageRepo Ambient Info"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    const/4 v2, 0x0

    .line 1283
    .local v2, "temparatureBitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 1286
    .local v3, "weatherConditionBitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_1

    .line 1287
    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherHourTempImage()[Landroid/graphics/Bitmap;

    move-result-object v0

    aget-object v2, v0, v5

    .line 1288
    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherConditionImage()[Landroid/graphics/Bitmap;

    move-result-object v0

    aget-object v3, v0, v5

    .line 1289
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    move-object v0, p0

    move-object v1, p1

    .line 1291
    invoke-virtual/range {v0 .. v5}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->createWorldClockBitmapSourceLocation(Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;I)V

    .line 1297
    :cond_0
    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherHourTempImage()[Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v8, v0, v5

    .line 1298
    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherConditionImage()[Landroid/graphics/Bitmap;

    move-result-object v0

    aput-object v8, v0, v5

    .line 1286
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1302
    .end local v2    # "temparatureBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "weatherConditionBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "i":I
    :cond_1
    const-string v0, "Ambient"

    const-string v1, "AmbientIntentService world clock img creating END "

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    return-void
.end method

.method private deleteClockEntriesFromWD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "clockName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 1602
    const-string v8, "/packages/%s/app.zip"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1604
    .local v0, "appZipLocation":Ljava/lang/String;
    const/4 v6, -0x1

    .line 1607
    .local v6, "ret":I
    const-string v8, "World Time"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1608
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v8

    const-string v9, "/packages/com.qualcomm.qce.worldclock/ClockWorld.zip"

    invoke-virtual {v8, v11, v9}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsRemoveFile(ILjava/lang/String;)I

    move-result v6

    .line 1612
    const-string v8, "Ambient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AmbientIntentService clockworld.zip delete status from WD :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v8

    invoke-virtual {v8, v11, v0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsRemoveFile(ILjava/lang/String;)I

    move-result v6

    .line 1620
    const-string v8, "Ambient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AmbientIntentService world clock apps.zip delete status from WD:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    :cond_0
    :goto_0
    return-void

    .line 1624
    :cond_1
    const-string v8, "Degrees"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1625
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v8

    const-string v9, "/packages/com.qualcomm.qce.degreesclock/temperature.dat"

    invoke-virtual {v8, v11, v9}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsRemoveFile(ILjava/lang/String;)I

    move-result v6

    .line 1629
    const-string v8, "Ambient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AmbientIntentService degrees temperature.dat delete status from WD :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v8

    invoke-virtual {v8, v11, v0}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsRemoveFile(ILjava/lang/String;)I

    move-result v6

    .line 1639
    const-string v8, "Ambient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AmbientIntentService degrees apps.zip delete status from WD:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1643
    :cond_2
    const-string v8, "Weather Grid"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1644
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v8

    const-string v9, "/res/apps/ClockThree.zip"

    invoke-virtual {v8, v11, v9}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsRemoveFile(ILjava/lang/String;)I

    move-result v6

    .line 1648
    const-string v8, "Ambient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AmbientIntentService-deleteClockEntriesFromWD CLOCK_WEATHER_GRID FMS del return code :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1652
    :cond_3
    const-string v8, "Stocks"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1655
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "ambient__pref"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1658
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v8, "StockSymbolsBackGround"

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1661
    .local v7, "stockAmbientInfosBack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    if-eqz v7, :cond_0

    .line 1662
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    if-ge v3, v8, :cond_0

    .line 1664
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/ad/stock/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_A"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".img"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1668
    .local v4, "lightImageDestPath":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/ad/stock/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_B"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".img"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1673
    .local v1, "darkImageDestPath":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v4}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsRemoveFile(ILjava/lang/String;)I

    move-result v6

    .line 1675
    const-string v8, "Ambient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AmbientIntentService-deleteClockEntriesFromWD lightImageDestPath: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " FMS delete return code:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v1}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsRemoveFile(ILjava/lang/String;)I

    move-result v6

    .line 1683
    const-string v8, "Ambient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AmbientIntentService-deleteClockEntriesFromWD darkImageDestPath: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " FMS delete return code:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1662
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1690
    .end local v1    # "darkImageDestPath":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "lightImageDestPath":Ljava/lang/String;
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    .end local v7    # "stockAmbientInfosBack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :catch_0
    move-exception v2

    .line 1691
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "Ambient"

    const-string v9, "!!!AmbientIntentService-deleteClockEntriesFromWD exception!!!"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getClocksDatFile(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/io/File;
    .locals 11
    .param p1, "clockType"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 1230
    .local p2, "dataArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/io/File;

    invoke-static {p1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-direct {v2, v7, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1232
    .local v2, "clockFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 1233
    .local v0, "bw":Ljava/io/BufferedWriter;
    const/4 v4, 0x0

    .line 1236
    .local v4, "fw":Ljava/io/FileWriter;
    :try_start_0
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1237
    .end local v4    # "fw":Ljava/io/FileWriter;
    .local v5, "fw":Ljava/io/FileWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1238
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 1239
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1238
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1249
    :cond_0
    if-eqz v1, :cond_1

    .line 1250
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 1253
    :cond_1
    if-eqz v5, :cond_2

    .line 1254
    invoke-virtual {v5}, Ljava/io/FileWriter;->flush()V

    .line 1255
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    move-object v4, v5

    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    move-object v0, v1

    .line 1265
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .end local v6    # "i":I
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :cond_3
    :goto_1
    return-object v2

    .line 1258
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "i":I
    :catch_0
    move-exception v3

    .line 1259
    .local v3, "e":Ljava/io/IOException;
    const-string v7, "Ambient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AmbientIntentService Exception while closing streams : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    move-object v0, v1

    .line 1263
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_1

    .line 1242
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "i":I
    :catch_1
    move-exception v3

    .line 1243
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v7, "Ambient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AmbientIntentService !!! Exception while  writing dat :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1249
    if-eqz v0, :cond_4

    .line 1250
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 1253
    :cond_4
    if-eqz v4, :cond_3

    .line 1254
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V

    .line 1255
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 1258
    :catch_2
    move-exception v3

    .line 1259
    const-string v7, "Ambient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AmbientIntentService Exception while closing streams : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1248
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 1249
    :goto_3
    if-eqz v0, :cond_5

    .line 1250
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 1253
    :cond_5
    if-eqz v4, :cond_6

    .line 1254
    invoke-virtual {v4}, Ljava/io/FileWriter;->flush()V

    .line 1255
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1262
    :cond_6
    :goto_4
    throw v7

    .line 1258
    :catch_3
    move-exception v3

    .line 1259
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v8, "Ambient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AmbientIntentService Exception while closing streams : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1248
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    goto :goto_3

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "i":I
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 1242
    .end local v4    # "fw":Ljava/io/FileWriter;
    .end local v6    # "i":I
    .restart local v5    # "fw":Ljava/io/FileWriter;
    :catch_4
    move-exception v3

    move-object v4, v5

    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    goto/16 :goto_2

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v4    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "i":I
    :catch_5
    move-exception v3

    move-object v4, v5

    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "fw":Ljava/io/FileWriter;
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto/16 :goto_2
.end method

.method private isClockSelected(Ljava/lang/String;)Z
    .locals 6
    .param p1, "clockName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1526
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clock_settings_pref"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1530
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 1531
    const-string v3, "clock_settings_types"

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1534
    .local v0, "clockHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1536
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1537
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1549
    .end local v0    # "clockHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_0
    :goto_0
    return v2

    .line 1540
    .restart local v0    # "clockHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_1
    const-string v3, "Ambient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AmbientIntentService "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not selected"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private pushStockImagesToWd()V
    .locals 28

    .prologue
    .line 1748
    const-string v24, "stock"

    invoke-static/range {v24 .. v24}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v6

    check-cast v6, Lcom/qualcomm/toq/smartwatch/ambient/StockController;

    .line 1749
    .local v6, "controller":Lcom/qualcomm/toq/smartwatch/ambient/StockController;
    if-nez v6, :cond_1

    .line 1750
    const-string v24, "Ambient"

    const-string v25, "!!!AmbientIntentService-pushStockImagesToWd Invalid controller=NULL!!!"

    invoke-static/range {v24 .. v25}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    :cond_0
    :goto_0
    return-void

    .line 1755
    :cond_1
    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->getAmbientData()Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;->getAmbientInfoList()Ljava/util/ArrayList;

    move-result-object v5

    .line 1757
    .local v5, "ambientInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->getPreferenceAmbientInfoList()Ljava/util/ArrayList;

    move-result-object v21

    .line 1758
    .local v21, "prefStocksAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_d

    .line 1760
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v24

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    .line 1761
    const-string v24, "Ambient"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "AmbientIntentService-pushStockImagesToWd stock count ="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " pref stock count="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    const-string v24, "Ambient"

    const-string v25, "!!!AmbientIntentService-pushStockImagesToWd Invalid count"

    invoke-static/range {v24 .. v25}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1770
    :cond_2
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v24

    const-string v25, "ambient__pref"

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 1773
    .local v22, "prefs":Landroid/content/SharedPreferences;
    const-string v24, "stock_last_update_time"

    const-wide/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-wide/from16 v2, v25

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    .line 1775
    .local v18, "lastFetchStock":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 1776
    .local v7, "currentTime":Ljava/util/Calendar;
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 1777
    .local v8, "currentTimeMilli":J
    const/16 v16, 0x1

    .line 1778
    .local v16, "isPollingSuccess":Z
    const/16 v17, 0x0

    .line 1780
    .local v17, "isTimeStampPush":Z
    :try_start_0
    const-string v24, "stock"

    invoke-static/range {v24 .. v24}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v24

    check-cast v24, Lcom/qualcomm/toq/smartwatch/ambient/StockController;

    invoke-virtual/range {v24 .. v24}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->getImageCreator()Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;

    move-result-object v15

    .line 1781
    .local v15, "imageCreator":Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v14, v0, :cond_6

    .line 1783
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    .line 1784
    .local v4, "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    .line 1786
    .local v20, "prefAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    if-eqz v4, :cond_3

    .line 1788
    const-string v24, "push_online_image"

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 1789
    invoke-virtual {v15, v4}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;->createAmbientImageAndUpdateImagePaths(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)I

    .line 1790
    if-eqz v4, :cond_4

    if-eqz v20, :cond_4

    const-string v24, "stock"

    move-object/from16 v0, v24

    invoke-virtual {v6, v4, v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->isAmbientImageCreationSuccessful(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 1795
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v6, v0, v4}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->updateSharedPreference(Landroid/content/Context;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Z

    .line 1797
    const-string v24, "stock"

    move-object/from16 v0, v24

    invoke-virtual {v6, v4, v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->syncImages(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;Ljava/lang/String;)V

    .line 1799
    const/16 v17, 0x1

    .line 1781
    :cond_3
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1802
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v20, :cond_5

    .line 1804
    const-string v24, "Ambient"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "!!!StockController-pushStockImagesToWd Either new fetch Ambient Info or  saved Ambient info in preference is null !!!"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    :cond_5
    const-string v24, "stock"

    move-object/from16 v0, v24

    invoke-virtual {v6, v4, v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->isAmbientImageCreationSuccessful(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 1809
    const-string v24, "Ambient"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "!!!StockController-pushStockImagesToWd  Invalid Ambinet image files !!!"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanySymbol()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1856
    .end local v4    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    .end local v14    # "i":I
    .end local v15    # "imageCreator":Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;
    .end local v20    # "prefAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :catch_0
    move-exception v11

    .line 1857
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 1862
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_6
    if-eqz v17, :cond_7

    .line 1863
    const-string v24, "stock"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->pushTimeStampImage(Ljava/lang/String;)V

    .line 1866
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_c

    .line 1867
    if-eqz v16, :cond_8

    .line 1868
    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 1869
    .local v12, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v24, "stock_last_update_time"

    move-object/from16 v0, v24

    invoke-interface {v12, v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1871
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1873
    .end local v12    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_8
    const-string v24, "Ambient"

    const-string v25, "StockController-pushStockImagesToWd Pushing Timestamp Image to WD for Stock"

    invoke-static/range {v24 .. v25}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1816
    .restart local v4    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    .restart local v14    # "i":I
    .restart local v15    # "imageCreator":Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;
    .restart local v20    # "prefAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :cond_9
    const/16 v16, 0x0

    .line 1824
    const-wide/16 v24, 0x0

    cmp-long v24, v18, v24

    if-eqz v24, :cond_a

    sub-long v24, v8, v18

    const-wide/32 v26, 0x36ee80

    cmp-long v24, v24, v26

    if-gez v24, :cond_a

    :try_start_1
    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->isTimerPolling()Z

    move-result v24

    if-nez v24, :cond_b

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getAppImageSourceLocation()Ljava/lang/String;

    move-result-object v24

    if-nez v24, :cond_b

    .line 1827
    :cond_a
    if-eqz v4, :cond_3

    if-eqz v20, :cond_3

    .line 1829
    invoke-virtual {v15, v4}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;->createAmbientImageAndUpdateImagePaths(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)I

    .line 1830
    const-string v24, "Ambient"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "StockController-pushStockImagesToWd Sending _-- images for stock: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanyName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " @"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    new-instance v26, Ljava/util/Date;

    invoke-direct/range {v26 .. v26}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v6, v0, v4}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->updateSharedPreference(Landroid/content/Context;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Z

    .line 1837
    const-string v24, "stock"

    move-object/from16 v0, v24

    invoke-virtual {v6, v4, v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->syncImages(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;Ljava/lang/String;)V

    .line 1839
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 1843
    :cond_b
    const-string v24, "Ambient"

    const-string v25, "!!!StockController-pushStockImagesToWd Either  last fetch and current time diff < 1 hr or lastFetchTime = 0 or manual polling enabled and dest and source location is null"

    invoke-static/range {v24 .. v25}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    const-string v24, "Ambient"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "!!!StockController-pushStockImagesToWd Current Time "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    new-instance v26, Ljava/util/Date;

    move-object/from16 v0, v26

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "Last Fetch Stock Time "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "TimerPolling"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->isTimerPolling()Z

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 1880
    .end local v4    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    .end local v14    # "i":I
    .end local v15    # "imageCreator":Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;
    .end local v20    # "prefAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :cond_c
    const-string v10, "/apps/stock/99.img"

    .line 1882
    .local v10, "destPath":Ljava/lang/String;
    const-string v24, "stock"

    invoke-static/range {v24 .. v24}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientAppImageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v23

    .line 1883
    .local v23, "rootDirectory":Ljava/io/File;
    const/4 v13, 0x0

    .line 1884
    .local v13, "errorFile":Ljava/io/File;
    new-instance v13, Ljava/io/File;

    .end local v13    # "errorFile":Ljava/io/File;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "time_Stamp"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".img"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1887
    .restart local v13    # "errorFile":Ljava/io/File;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 1888
    const-string v24, "Ambient"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "StockController-pushStockImagesToWd deleting time stamp file"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 1892
    const-string v24, "Ambient"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "StockController-pushStockImagesToWd removing time stamp file"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    invoke-virtual {v6, v10}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->removeFile(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1900
    .end local v7    # "currentTime":Ljava/util/Calendar;
    .end local v8    # "currentTimeMilli":J
    .end local v10    # "destPath":Ljava/lang/String;
    .end local v13    # "errorFile":Ljava/io/File;
    .end local v16    # "isPollingSuccess":Z
    .end local v17    # "isTimeStampPush":Z
    .end local v18    # "lastFetchStock":J
    .end local v22    # "prefs":Landroid/content/SharedPreferences;
    .end local v23    # "rootDirectory":Ljava/io/File;
    :cond_d
    const-string v24, "Ambient"

    const-string v25, "!!! AmbientIntentService-pushStockImagesToWd empty ambinetInfo object!!!"

    invoke-static/range {v24 .. v25}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private pushWeatherImagesToWd(Z)V
    .locals 32
    .param p1, "timeStampPush"    # Z

    .prologue
    .line 1906
    const-string v25, "Ambient"

    const-string v26, "AmbientIntentService-pushWeatherImagesToWd"

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1908
    const-string v25, "weather"

    invoke-static/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v6

    check-cast v6, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;

    .line 1909
    .local v6, "controller":Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;
    if-nez v6, :cond_1

    .line 1910
    const-string v25, "Ambient"

    const-string v26, "!!!AmbientIntentService-pushWeatherImagesToWd Invalid controller=NULL!!!"

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    :cond_0
    :goto_0
    return-void

    .line 1915
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v25

    const-string v26, "ambient__pref"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 1918
    .local v22, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 1919
    .local v7, "currentTime":Ljava/util/Calendar;
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 1921
    .local v8, "currentTimeMilli":J
    if-eqz v22, :cond_0

    .line 1923
    const-string v25, "weather_last_update_time"

    const-wide/16 v26, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    .line 1926
    .local v18, "lastFetchWeather":J
    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->getAmbientData()Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;->getAmbientInfoList()Ljava/util/ArrayList;

    move-result-object v5

    .line 1928
    .local v5, "ambientInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->getPreferenceAmbientInfoList()Ljava/util/ArrayList;

    move-result-object v21

    .line 1930
    .local v21, "prefWeatherAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v26, 0x5

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_0

    .line 1933
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v25

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_2

    .line 1934
    const-string v25, "Ambient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " Weather count ="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " pref Weather count="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    const-string v25, "Ambient"

    const-string v26, "!!!AmbientIntentService-pushWeatherImagesToWd Invalid count"

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1943
    :cond_2
    :try_start_0
    const-string v25, "weather"

    invoke-static/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v25

    check-cast v25, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;

    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->getImageCreator()Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;

    move-result-object v14

    .line 1945
    .local v14, "imageCreator":Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;
    const/16 v17, 0x1

    .line 1946
    .local v17, "isWeatherPollSuccessful":Z
    const/16 v16, 0x0

    .line 1947
    .local v16, "isTimeStampPush":Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v13, v0, :cond_c

    .line 1949
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 1950
    .local v4, "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 1952
    .local v20, "prefAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    if-eqz v4, :cond_3

    .line 1954
    const-string v25, "Ambient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "AmbientIntentService-pushWeather img type="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " city="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    const-string v25, "push_online_image"

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 1962
    invoke-virtual {v14, v4}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;->createAmbientImageAndUpdateImagePaths(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)I

    .line 1963
    if-eqz v4, :cond_4

    if-eqz v20, :cond_4

    const-string v25, "weather"

    move-object/from16 v0, v25

    invoke-virtual {v6, v4, v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->isAmbientImageCreationSuccessful(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 1969
    const-string v25, "Ambient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "AmbientIntentService-pushWeatherImagesToWd cityName after fetch "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
    const-string v25, "Ambient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "AmbientIntentService-pushWeatherImagesToWd Shared City name "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " Retreive City Name"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " END"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    const-string v25, "Ambient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "AmbientIntentService-pushWeatherImagesToWd Shared State name "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getStateName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " Retreive State Name"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getStateName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " END"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    const-string v25, "Ambient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "AmbientIntentService-pushWeatherImagesToWd Shared Hour temp  "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getHourTemp()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " Retreive Hour temp"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getHourTemp()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " END"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    const-string v25, "Ambient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "AmbientIntentService-pushWeatherImagesToWd Shared Max temp  "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getMaxTemp()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " Retreive Max temp"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getMaxTemp()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " END"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    const-string v25, "Ambient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "AmbientIntentService-pushWeatherImagesToWd Shared Min temp  "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getMinTemp()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " Retreive Min temp"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getMinTemp()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " END"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    const-string v25, "Ambient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "AmbientIntentService-pushWeatherImagesToWd Shared WeatherCondition  "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getWeatherCondition()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " Retreive WeatherCondition"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getWeatherCondition()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "END"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    const-string v25, "Ambient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "AmbientIntentService-pushWeatherImagesToWd Shared Destination Location "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " Retreive Destination Location"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "END"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v6, v0, v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->updateSharedPreference(Landroid/content/Context;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Z

    .line 2017
    const-string v25, "weather"

    move-object/from16 v0, v25

    invoke-virtual {v6, v4, v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->syncImages(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;Ljava/lang/String;)V

    .line 2021
    const/16 v16, 0x1

    .line 2022
    const-string v25, "Ambient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "AmbientIntentService-pushWeather online ImagesToWd sync city="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1947
    :cond_3
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 2027
    :cond_4
    const-string v25, "Ambient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "AmbientIntentService-pushWeatherImagesToWd !!! Either new fetch Ambient Info or  saved Ambient info in preference is null !!!"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    if-eqz v4, :cond_5

    if-eqz v20, :cond_5

    .line 2033
    const-string v25, "Ambient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "AmbientIntentService-pushWeatherImagesToWd!!!WeatherController-pushStockImagesToWd Either new fetch Ambient Info or  saved Ambient info in preference is null !!!"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    :cond_5
    const-string v25, "weather"

    move-object/from16 v0, v25

    invoke-virtual {v6, v4, v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->isAmbientImageCreationSuccessful(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 2038
    const-string v25, "Ambient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "AmbientIntentService-pushWeatherImagesToWd!!!WeatherController-pushStockImagesToWd  Invalid Ambinet image files !!!"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2186
    .end local v4    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v13    # "i":I
    .end local v14    # "imageCreator":Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;
    .end local v16    # "isTimeStampPush":Z
    .end local v17    # "isWeatherPollSuccessful":Z
    .end local v20    # "prefAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    :catch_0
    move-exception v11

    .line 2187
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 2188
    const-string v25, "Ambient"

    const-string v26, "!!! Error in creating weather image"

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2046
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v4    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .restart local v13    # "i":I
    .restart local v14    # "imageCreator":Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;
    .restart local v16    # "isTimeStampPush":Z
    .restart local v17    # "isWeatherPollSuccessful":Z
    .restart local v20    # "prefAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    :cond_6
    :try_start_1
    const-string v25, "Ambient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "lastFetchWeather"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    const-string v26, "Ambient"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " threshold="

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sub-long v28, v8, v18

    const-wide/32 v30, 0x1499700

    cmp-long v25, v28, v30

    if-ltz v25, :cond_8

    const/16 v25, 0x1

    :goto_3
    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    const-string v25, "Ambient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "controller.isTimerPolling()="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->isTimerPolling()Z

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    const-string v25, "Ambient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "pref app img dest="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    const-string v25, "Ambient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "pref app imng src="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageSourceLocation()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2060
    const/16 v17, 0x0

    .line 2063
    const-wide/16 v25, 0x0

    cmp-long v25, v18, v25

    if-eqz v25, :cond_7

    if-eqz p1, :cond_7

    sub-long v25, v8, v18

    const-wide/32 v27, 0x1499700

    cmp-long v25, v25, v27

    if-gez v25, :cond_7

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->isTimerPolling()Z

    move-result v25

    if-nez v25, :cond_9

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageSourceLocation()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v25

    if-nez v25, :cond_9

    .line 2067
    :cond_7
    if-eqz v4, :cond_3

    .line 2070
    :try_start_2
    invoke-virtual {v14, v4}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;->createAmbientImageAndUpdateImagePaths(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)I

    .line 2072
    const-string v25, "Ambient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "AmbientIntentService-pushWeatherImagesToWd Sending images for city: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " @"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    new-instance v27, Ljava/util/Date;

    invoke-direct/range {v27 .. v27}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v6, v0, v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->updateSharedPreference(Landroid/content/Context;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Z

    .line 2078
    const-string v25, "weather"

    move-object/from16 v0, v25

    invoke-virtual {v6, v4, v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->syncImages(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2080
    const/16 v16, 0x1

    goto/16 :goto_2

    .line 2048
    :cond_8
    const/16 v25, 0x0

    goto/16 :goto_3

    .line 2082
    :catch_1
    move-exception v11

    .line 2083
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v25, "Ambient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "!!! Error in creating weather image city="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2093
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_9
    const-string v25, "Ambient"

    const-string v26, "else"

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    const-string v25, "push_online_image"

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    const-string v25, "push_offline_image"

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_a

    const-string v25, "push_data_error_image"

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    :cond_a
    if-eqz v22, :cond_b

    const-string v25, "weather_cities_temp_unit_changed"

    const/16 v26, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v25

    if-eqz v25, :cond_b

    .line 2100
    :try_start_4
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;->createAmbientImageAndUpdateImagePaths(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)I

    .line 2101
    const-string v25, "Ambient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "AmbientIntentService-pushWeatherImagesToWd Sending _-- images for city: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " @"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    new-instance v27, Ljava/util/Date;

    invoke-direct/range {v27 .. v27}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->updateSharedPreference(Landroid/content/Context;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Z

    .line 2107
    const-string v25, "weather"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->syncImages(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 2109
    const/16 v16, 0x1

    goto/16 :goto_2

    .line 2111
    :catch_2
    move-exception v11

    .line 2112
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v25, "Ambient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "!!! Error in creating weather image city="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2119
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_b
    const-string v25, "Ambient"

    const-string v26, "AmbientIntentService-pushWeatherImagesToWd Error in pushing the images"

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2127
    .end local v4    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v20    # "prefAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    :cond_c
    if-eqz v16, :cond_d

    if-eqz p1, :cond_d

    .line 2128
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->updateWeatherAppTimeStamp(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 2132
    :cond_d
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-lez v25, :cond_f

    .line 2133
    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v24

    .line 2134
    .local v24, "timerIntervalEditor":Landroid/content/SharedPreferences$Editor;
    if-eqz v17, :cond_e

    .line 2135
    const-string v25, "AmbientController"

    const-string v26, "Weather Polling successful. Polling interval set to 2700000"

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2138
    move-object/from16 v0, v22

    invoke-virtual {v6, v0, v8, v9}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->updateLastFetchWeather(Landroid/content/SharedPreferences;J)V

    .line 2140
    const-string v25, "weather_timer_interval"

    const-wide/32 v26, 0x2932e0

    invoke-interface/range {v24 .. v27}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2152
    :goto_4
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2153
    const-string v25, "Ambient"

    const-string v26, "AmbientIntentService-pushWeatherImagesToWd Pushing Timestamp Image to WD for Weather"

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2144
    :cond_e
    const-string v25, "AmbientController"

    const-string v26, "Weather Polling unsuccessful. Polling interval set to 900000"

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-virtual {v6, v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->updateLastFetchWeather(Landroid/content/SharedPreferences;J)V

    .line 2149
    const-string v25, "weather_timer_interval"

    const-wide/32 v26, 0xdbba0

    invoke-interface/range {v24 .. v27}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 2158
    .end local v24    # "timerIntervalEditor":Landroid/content/SharedPreferences$Editor;
    :cond_f
    const-string v25, "WeatherCurrentCityUpdate"

    const/16 v26, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 2160
    .local v15, "isCurrentCityUpdateEnabled":Z
    if-nez v15, :cond_10

    .line 2161
    const-string v10, "/apps/weather/99.img"

    .line 2163
    .local v10, "destPath":Ljava/lang/String;
    const-string v25, "weather"

    invoke-static/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientAppImageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v23

    .line 2164
    .local v23, "rootDirectory":Ljava/io/File;
    const/4 v12, 0x0

    .line 2165
    .local v12, "errorFile":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    .end local v12    # "errorFile":Ljava/io/File;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "time_Stamp"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ".img"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2169
    .restart local v12    # "errorFile":Ljava/io/File;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 2170
    const-string v25, "Ambient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "AmbientIntentService-pushWeatherImagesToWd delete time stamp file"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2173
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 2174
    const-string v25, "Ambient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "AmbientIntentService-pushWeatherImagesToWd removing time stamp file"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    invoke-virtual {v6, v10}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->removeFile(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2181
    .end local v10    # "destPath":Ljava/lang/String;
    .end local v12    # "errorFile":Ljava/io/File;
    .end local v23    # "rootDirectory":Ljava/io/File;
    :cond_10
    const-string v25, "Ambient"

    const-string v26, "AmbientIntentService-pushWeatherImagesToWd current city enabled time stamp pushd later."

    invoke-static/range {v25 .. v26}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method private syncWorldClockToWD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "clockType"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1440
    const-string v8, "Ambient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AmbientIntentService sync clock file to WD clockType:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    const-string v8, "World Time"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1446
    const-string v8, "/packages/%s/app.zip"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1448
    .local v0, "appZipLocation":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->pushWorldClockAppsZipToWD(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1450
    .local v1, "appszip_staus":Z
    const-string v8, "Ambient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AmbientIntentService world clock app.zip push status="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    const-string v8, "WorldClock"

    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 1456
    .local v5, "worldClockParentFile":Ljava/io/File;
    if-eqz v5, :cond_0

    .line 1457
    const-string v8, "Ambient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AmbientIntentService worldClockParentFile : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    const-string v8, "Ambient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AmbientIntentService worldClockParentFile.exists() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    if-eqz v5, :cond_0

    .line 1465
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ClockWorld.zip"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1468
    .local v6, "worldClockZipLocation":Ljava/lang/String;
    const-string v8, "Ambient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AmbientIntentService worldClockZipLocation : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v8

    const/4 v9, 0x1

    const-string v10, "/packages/com.qualcomm.qce.worldclock/ClockWorld.zip"

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v6, v10, v11}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsSyncFile(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 1477
    .local v7, "zipTransferStatus":I
    const-string v8, "Ambient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AmbientIntentService Status for world Clock Zip File Sync "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    .end local v0    # "appZipLocation":Ljava/lang/String;
    .end local v1    # "appszip_staus":Z
    .end local v5    # "worldClockParentFile":Ljava/io/File;
    .end local v6    # "worldClockZipLocation":Ljava/lang/String;
    .end local v7    # "zipTransferStatus":I
    :cond_0
    :goto_0
    return-void

    .line 1484
    :cond_1
    const-string v8, "Degrees"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1486
    const-string v8, "/packages/%s/app.zip"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1488
    .restart local v0    # "appZipLocation":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->pushWorldClockAppsZipToWD(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1490
    .restart local v1    # "appszip_staus":Z
    const-string v8, "Ambient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AmbientIntentService DEGREES clock app.zip push status="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    const-string v8, "DegreesClock"

    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 1496
    .local v3, "degreeClockParentFile":Ljava/io/File;
    if-eqz v3, :cond_0

    .line 1497
    const-string v8, "Ambient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AmbientIntentService degreeClockParentFile : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    const-string v8, "Ambient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AmbientIntentService degreeClockParentFile.exists() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "temperature.dat"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1506
    .local v4, "degreedatLocation":Ljava/lang/String;
    const-string v8, "Ambient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AmbientIntentService degreedatLocation : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v8

    const/4 v9, 0x1

    const-string v10, "/packages/com.qualcomm.qce.degreesclock/temperature.dat"

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v4, v10, v11}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsSyncFile(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 1515
    .local v2, "datFileTransferStatus":I
    const-string v8, "Ambient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AmbientIntentService Status for temperature.dat File Sync "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updateWeatherAmbientKey(Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;Lcom/qualcomm/toq/smartwatch/ambient/WeatherDataParser;)I
    .locals 12
    .param p1, "newWeatherAmbientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .param p2, "parser"    # Lcom/qualcomm/toq/smartwatch/ambient/WeatherDataParser;

    .prologue
    .line 1699
    const-string v9, "Ambient"

    const-string v10, "AmbientIntentService-updateWeatherAmbientKey"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    const/4 v5, -0x1

    .line 1702
    .local v5, "ret_val":I
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getKey()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    .line 1703
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a004c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1705
    .local v4, "formattedString":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v1

    .line 1708
    .local v1, "cityName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1709
    :try_start_0
    const-string v9, ","

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1710
    .local v6, "splitArray":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1712
    .local v0, "city":Ljava/lang/String;
    const-string v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1713
    .local v3, "encodedData":Ljava/lang/String;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    const-string v11, "9fc4b35acecc407e95143c14579a2d84"

    aput-object v11, v9, v10

    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1717
    .local v8, "weatherURL":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;->getInstance()Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;->processAmbientDataFetchRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1719
    .local v7, "weatherKeyJson":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 1720
    invoke-virtual {p2, v7, p1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherDataParser;->parseWeatherKey(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;)I

    move-result v5

    .line 1743
    .end local v0    # "city":Ljava/lang/String;
    .end local v1    # "cityName":Ljava/lang/String;
    .end local v3    # "encodedData":Ljava/lang/String;
    .end local v4    # "formattedString":Ljava/lang/String;
    .end local v6    # "splitArray":[Ljava/lang/String;
    .end local v7    # "weatherKeyJson":Ljava/lang/String;
    .end local v8    # "weatherURL":Ljava/lang/String;
    :goto_0
    return v5

    .line 1724
    .restart local v0    # "city":Ljava/lang/String;
    .restart local v1    # "cityName":Ljava/lang/String;
    .restart local v3    # "encodedData":Ljava/lang/String;
    .restart local v4    # "formattedString":Ljava/lang/String;
    .restart local v6    # "splitArray":[Ljava/lang/String;
    .restart local v7    # "weatherKeyJson":Ljava/lang/String;
    .restart local v8    # "weatherURL":Ljava/lang/String;
    :cond_0
    const-string v9, "push_data_error_image"

    invoke-virtual {p1, v9}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1733
    .end local v0    # "city":Ljava/lang/String;
    .end local v3    # "encodedData":Ljava/lang/String;
    .end local v6    # "splitArray":[Ljava/lang/String;
    .end local v7    # "weatherKeyJson":Ljava/lang/String;
    .end local v8    # "weatherURL":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1734
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1735
    const-string v9, "Ambient"

    const-string v10, "!!! AmbientIntentService-updateWeatherAmbientKey Exception in encodeing"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1729
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    const-string v9, "push_data_error_image"

    invoke-virtual {p1, v9}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1730
    const/4 v5, -0x1

    goto :goto_0

    .line 1741
    .end local v1    # "cityName":Ljava/lang/String;
    .end local v4    # "formattedString":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createWorldClockBitmapSourceLocation(Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;I)V
    .locals 14
    .param p1, "display"    # Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;
    .param p2, "currentTempBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "weatherConditionBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    .param p5, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1322
    move-object/from16 v6, p4

    check-cast v6, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 1324
    .local v6, "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getStateName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCountryName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->generateUniqueCityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1327
    .local v1, "city":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1328
    .local v4, "tempFileSuffix":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1329
    .local v9, "weatherFileSuffix":Ljava/lang/String;
    add-int/lit8 v11, p5, 0x1

    packed-switch v11, :pswitch_data_0

    .line 1339
    :goto_0
    const/4 v10, 0x0

    .line 1340
    .local v10, "worldClockImagesPath":Ljava/io/File;
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {p1, v0, v11}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBitmapinIMGFormat(Landroid/graphics/Bitmap;Z)[B

    move-result-object v5

    .line 1342
    .local v5, "tempOutArray":[B
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-virtual {p1, v0, v11}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBitmapinIMGFormat(Landroid/graphics/Bitmap;Z)[B

    move-result-object v8

    .line 1345
    .local v8, "weatherCondOutArray":[B
    const-string v11, "WorldClock"

    invoke-static {v11}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1346
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_3

    .line 1347
    new-instance v10, Ljava/io/File;

    .end local v10    # "worldClockImagesPath":Ljava/io/File;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "images"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v2, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1349
    .restart local v10    # "worldClockImagesPath":Ljava/io/File;
    const-string v11, "Ambient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AmbientIntentService WORLD_CLOCK_TYPE img path="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1353
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1354
    const-string v11, "Ambient"

    const-string v12, "AmbientIntentService Error Creating WORLD_CLOCK WeatherPath folder"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    :cond_0
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setWorldClockCityFolderPath(Ljava/lang/String;)V

    .line 1361
    new-instance v3, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1363
    .local v3, "tempFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1364
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1366
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 1368
    new-instance v7, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1371
    .local v7, "weatherCondFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1372
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1374
    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 1376
    invoke-virtual {v6, v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setWorldClockTempImgPath(Ljava/lang/String;)V

    .line 1377
    invoke-virtual {v6, v9}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setWorldClockWeatherImgPath(Ljava/lang/String;)V

    .line 1379
    invoke-virtual {p1, v5, v3}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBytesToFile([BLjava/io/File;)V

    .line 1380
    invoke-virtual {p1, v8, v7}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBytesToFile([BLjava/io/File;)V

    .line 1382
    const-string v11, "Ambient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AmbientIntentService  WORLD_CLOCK_ File written "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Weath Cond file"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    .end local v3    # "tempFile":Ljava/io/File;
    .end local v7    # "weatherCondFile":Ljava/io/File;
    :goto_1
    return-void

    .line 1331
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "tempOutArray":[B
    .end local v8    # "weatherCondOutArray":[B
    .end local v10    # "worldClockImagesPath":Ljava/io/File;
    :pswitch_0
    const-string v4, "temp_A.img"

    .line 1332
    const-string v9, "icon_A.img"

    .line 1333
    goto/16 :goto_0

    .line 1335
    :pswitch_1
    const-string v4, "temp_B.img"

    .line 1336
    const-string v9, "icon_B.img"

    goto/16 :goto_0

    .line 1388
    .restart local v2    # "file":Ljava/io/File;
    .restart local v5    # "tempOutArray":[B
    .restart local v8    # "weatherCondOutArray":[B
    .restart local v10    # "worldClockImagesPath":Ljava/io/File;
    :cond_3
    const-string v11, "Ambient"

    const-string v12, "AmbientIntentService  world clock parent directory returned as null"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1329
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method deleteFiles(Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "parentDirectoryPath"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1171
    .local p2, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 1174
    .local v2, "list":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    .line 1175
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 1176
    const-string v3, "Ambient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AmbientIntentService file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1180
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1182
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1183
    const-string v3, "Ambient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AmbientIntentService Deleting File: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1175
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1189
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1190
    invoke-virtual {p0, v0, p2}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->deleteFiles(Ljava/io/File;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1195
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 91
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService inside onHandleIntent call "

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-eqz p1, :cond_1

    .line 87
    const-string v87, "service_task"

    move-object/from16 v0, p1

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v72

    .line 88
    .local v72, "task":Ljava/lang/String;
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService task= "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v87, "AmbientController"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService task="

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v87, "stock_polling_task"

    move-object/from16 v0, v87

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v87

    if-eqz v87, :cond_8

    .line 98
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService-TASK_STOCK_POLLING"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/16 v60, -0x1

    .line 101
    .local v60, "retVal":I
    const-string v87, "stock"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v21

    .line 104
    .local v21, "controller":Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v9, "ambientInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :try_start_0
    check-cast v21, Lcom/qualcomm/toq/smartwatch/ambient/StockController;

    .end local v21    # "controller":Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
    invoke-virtual/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->getPreferenceAmbientInfoList()Ljava/util/ArrayList;

    move-result-object v58

    .line 109
    .local v58, "prefStocksAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    if-eqz v58, :cond_0

    invoke-virtual/range {v58 .. v58}, Ljava/util/ArrayList;->size()I

    move-result v87

    if-nez v87, :cond_2

    .line 111
    :cond_0
    const-string v87, "Ambient"

    const-string v88, "!!!AmbientIntentService-TASK_STOCK_POLLING ERROR in rading preference ambient info list"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v87, "AmbientController"

    const-string v88, "!!!AmbientIntentService-TASK_STOCK_POLLING ERROR in rading preference ambient info list"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v87, "stock"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v87

    check-cast v87, Lcom/qualcomm/toq/smartwatch/ambient/StockController;

    const/16 v88, -0x2

    move-object/from16 v0, v87

    move/from16 v1, v88

    invoke-virtual {v0, v1, v9}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->onAmbientInfoUpdated(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    const-string v87, "stock"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v87

    check-cast v87, Lcom/qualcomm/toq/smartwatch/ambient/StockController;

    move-object/from16 v0, v87

    move/from16 v1, v60

    invoke-virtual {v0, v1, v9}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->onAmbientInfoUpdated(ILjava/util/ArrayList;)V

    .line 1163
    .end local v9    # "ambientInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .end local v58    # "prefStocksAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .end local v60    # "retVal":I
    .end local v72    # "task":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 121
    .restart local v9    # "ambientInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .restart local v58    # "prefStocksAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .restart local v60    # "retVal":I
    .restart local v72    # "task":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v69, Lcom/qualcomm/toq/smartwatch/ambient/StockDataParser;

    invoke-direct/range {v69 .. v69}, Lcom/qualcomm/toq/smartwatch/ambient/StockDataParser;-><init>()V

    .line 123
    .local v69, "stockParser":Lcom/qualcomm/toq/smartwatch/ambient/StockDataParser;
    const/16 v44, 0x0

    .local v44, "index":I
    :goto_1
    invoke-virtual/range {v58 .. v58}, Ljava/util/ArrayList;->size()I

    move-result v87

    move/from16 v0, v44

    move/from16 v1, v87

    if-ge v0, v1, :cond_7

    .line 124
    move-object/from16 v0, v58

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    .line 125
    .local v57, "prefStockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    new-instance v52, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    invoke-direct/range {v52 .. v52}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;-><init>()V

    .line 126
    .local v52, "newAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    invoke-virtual/range {v57 .. v57}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanySymbol()Ljava/lang/String;

    move-result-object v19

    .line 127
    .local v19, "companySymbol":Ljava/lang/String;
    invoke-virtual/range {v57 .. v57}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanyName()Ljava/lang/String;

    move-result-object v87

    move-object/from16 v0, v52

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setCompanyName(Ljava/lang/String;)V

    .line 128
    move-object/from16 v0, v52

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setCompanySymbol(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v87

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/base/utils/Utils;->isNetworkConnectivityAvailable(Landroid/content/Context;)Z

    move-result v87

    if-eqz v87, :cond_5

    .line 130
    const-string v87, "push_online_image"

    move-object/from16 v0, v52

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    .line 137
    :goto_2
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v88

    const v89, 0x7f0a0049

    invoke-virtual/range {v88 .. v89}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v57 .. v57}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanySymbol()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const-string v88, ".json"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    .line 142
    .local v70, "stockUrl":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v87

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/base/utils/Utils;->isNetworkConnectivityAvailable(Landroid/content/Context;)Z

    move-result v87

    if-eqz v87, :cond_3

    .line 143
    const-string v87, "push_online_image"

    move-object/from16 v0, v52

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;->getInstance()Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;

    move-result-object v87

    move-object/from16 v0, v87

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;->processAmbientDataFetchRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    .line 147
    .local v68, "stockJson":Ljava/lang/String;
    move-object/from16 v0, v69

    move-object/from16 v1, v68

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/ambient/StockDataParser;->parseStockDataStream(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)I

    move-result v60

    .line 152
    .end local v68    # "stockJson":Ljava/lang/String;
    :cond_3
    if-eqz v60, :cond_4

    .line 155
    const-string v87, "push_data_error_image"

    move-object/from16 v0, v52

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    .line 158
    :cond_4
    move-object/from16 v0, v52

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_1

    .line 133
    .end local v70    # "stockUrl":Ljava/lang/String;
    :cond_5
    const-string v87, "push_offline_image"

    move-object/from16 v0, v52

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setPushImageType(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 161
    .end local v19    # "companySymbol":Ljava/lang/String;
    .end local v44    # "index":I
    .end local v52    # "newAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    .end local v57    # "prefStockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    .end local v58    # "prefStocksAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .end local v69    # "stockParser":Lcom/qualcomm/toq/smartwatch/ambient/StockDataParser;
    :catch_0
    move-exception v36

    .line 162
    .local v36, "e":Ljava/lang/Exception;
    const/16 v60, -0x2

    .line 163
    :try_start_2
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    const-string v87, "stock"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v87

    check-cast v87, Lcom/qualcomm/toq/smartwatch/ambient/StockController;

    move-object/from16 v0, v87

    move/from16 v1, v60

    invoke-virtual {v0, v1, v9}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->onAmbientInfoUpdated(ILjava/util/ArrayList;)V

    .line 1160
    .end local v9    # "ambientInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .end local v36    # "e":Ljava/lang/Exception;
    .end local v60    # "retVal":I
    :cond_6
    :goto_3
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService task ="

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " Complted"

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 166
    .restart local v9    # "ambientInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .restart local v44    # "index":I
    .restart local v58    # "prefStocksAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .restart local v60    # "retVal":I
    .restart local v69    # "stockParser":Lcom/qualcomm/toq/smartwatch/ambient/StockDataParser;
    :cond_7
    const-string v87, "stock"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v87

    check-cast v87, Lcom/qualcomm/toq/smartwatch/ambient/StockController;

    move-object/from16 v0, v87

    move/from16 v1, v60

    invoke-virtual {v0, v1, v9}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->onAmbientInfoUpdated(ILjava/util/ArrayList;)V

    goto :goto_3

    .end local v44    # "index":I
    .end local v58    # "prefStocksAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .end local v69    # "stockParser":Lcom/qualcomm/toq/smartwatch/ambient/StockDataParser;
    :catchall_0
    move-exception v87

    move-object/from16 v88, v87

    const-string v87, "stock"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v87

    check-cast v87, Lcom/qualcomm/toq/smartwatch/ambient/StockController;

    move-object/from16 v0, v87

    move/from16 v1, v60

    invoke-virtual {v0, v1, v9}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->onAmbientInfoUpdated(ILjava/util/ArrayList;)V

    throw v88

    .line 174
    .end local v9    # "ambientInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .end local v60    # "retVal":I
    :cond_8
    const-string v87, "sync_stock_data_to_wd"

    move-object/from16 v0, v87

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v87

    if-eqz v87, :cond_9

    .line 175
    const/16 v62, 0x0

    .line 177
    .local v62, "ret_val":I
    :try_start_3
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService-TASK_STOCK_SYNC"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->pushStockImagesToWd()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 186
    const-string v87, "stock"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v87

    check-cast v87, Lcom/qualcomm/toq/smartwatch/ambient/StockController;

    move-object/from16 v0, v87

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->onAmbientImageSyncComplete(I)V

    goto :goto_3

    .line 181
    :catch_1
    move-exception v36

    .line 182
    .restart local v36    # "e":Ljava/lang/Exception;
    const/16 v62, -0x2

    .line 183
    :try_start_4
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 186
    const-string v87, "stock"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v87

    check-cast v87, Lcom/qualcomm/toq/smartwatch/ambient/StockController;

    move-object/from16 v0, v87

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->onAmbientImageSyncComplete(I)V

    goto/16 :goto_3

    .end local v36    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v87

    move-object/from16 v88, v87

    const-string v87, "stock"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v87

    check-cast v87, Lcom/qualcomm/toq/smartwatch/ambient/StockController;

    move-object/from16 v0, v87

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->onAmbientImageSyncComplete(I)V

    throw v88

    .line 193
    .end local v62    # "ret_val":I
    :cond_9
    const-string v87, "weather_polling_task"

    move-object/from16 v0, v87

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v87

    if-eqz v87, :cond_10

    .line 195
    const/16 v62, -0x1

    .line 196
    .restart local v62    # "ret_val":I
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService-TASK_WEATHER_POLLING "

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v87, "weather"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v21

    .line 202
    .restart local v21    # "controller":Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .restart local v9    # "ambientInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :try_start_5
    check-cast v21, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;

    .end local v21    # "controller":Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
    invoke-virtual/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->getPreferenceAmbientInfoList()Ljava/util/ArrayList;

    move-result-object v76

    .line 207
    .local v76, "weatherAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    if-eqz v76, :cond_f

    invoke-virtual/range {v76 .. v76}, Ljava/util/ArrayList;->size()I

    move-result v87

    const/16 v88, 0x5

    move/from16 v0, v87

    move/from16 v1, v88

    if-gt v0, v1, :cond_f

    .line 210
    new-instance v78, Lcom/qualcomm/toq/smartwatch/ambient/WeatherDataParser;

    invoke-direct/range {v78 .. v78}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherDataParser;-><init>()V

    .line 212
    .local v78, "weatherParser":Lcom/qualcomm/toq/smartwatch/ambient/WeatherDataParser;
    const/16 v44, 0x0

    .restart local v44    # "index":I
    :goto_4
    invoke-virtual/range {v76 .. v76}, Ljava/util/ArrayList;->size()I

    move-result v87

    move/from16 v0, v44

    move/from16 v1, v87

    if-ge v0, v1, :cond_f

    .line 213
    move-object/from16 v0, v76

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v75

    check-cast v75, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 214
    .local v75, "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    invoke-virtual/range {v75 .. v75}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getKey()Ljava/lang/String;

    move-result-object v48

    .line 215
    .local v48, "key":Ljava/lang/String;
    invoke-virtual/range {v75 .. v75}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v14

    .line 216
    .local v14, "cityName":Ljava/lang/String;
    invoke-virtual/range {v75 .. v75}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getStateName()Ljava/lang/String;

    move-result-object v65

    .line 217
    .local v65, "stateName":Ljava/lang/String;
    invoke-virtual/range {v75 .. v75}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCountryName()Ljava/lang/String;

    move-result-object v22

    .line 218
    .local v22, "countryName":Ljava/lang/String;
    new-instance v53, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    invoke-direct/range {v53 .. v53}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;-><init>()V

    .line 219
    .local v53, "newWeatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    move-object/from16 v0, v53

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setKey(Ljava/lang/String;)V

    .line 220
    move-object/from16 v0, v53

    invoke-virtual {v0, v14}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setCityName(Ljava/lang/String;)V

    .line 221
    move-object/from16 v0, v53

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setCountryName(Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, v53

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setStateName(Ljava/lang/String;)V

    .line 223
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService-TASK_WEATHER_POLLING Key from shared preference "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v87

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/base/utils/Utils;->isNetworkConnectivityAvailable(Landroid/content/Context;)Z

    move-result v87

    if-eqz v87, :cond_e

    .line 228
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService-TASK_WEATHER_POLLING network available"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v78

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->updateWeatherAmbientKey(Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;Lcom/qualcomm/toq/smartwatch/ambient/WeatherDataParser;)I

    move-result v62

    .line 232
    if-nez v62, :cond_d

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v87

    const v88, 0x7f0a004a

    invoke-virtual/range {v87 .. v88}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v87

    const/16 v88, 0x2

    move/from16 v0, v88

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v88, v0

    const/16 v89, 0x0

    aput-object v48, v88, v89

    const/16 v89, 0x1

    const-string v90, "9fc4b35acecc407e95143c14579a2d84"

    aput-object v90, v88, v89

    invoke-static/range {v87 .. v88}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .line 238
    .local v27, "currentConditionsUrl":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v87

    const v88, 0x7f0a004b

    invoke-virtual/range {v87 .. v88}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v87

    const/16 v88, 0x2

    move/from16 v0, v88

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v88, v0

    const/16 v89, 0x0

    aput-object v48, v88, v89

    const/16 v89, 0x1

    const-string v90, "9fc4b35acecc407e95143c14579a2d84"

    aput-object v90, v88, v89

    invoke-static/range {v87 .. v88}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v77

    .line 243
    .local v77, "weatherForecastUrl":Ljava/lang/String;
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService-TASK_WEATHER_POLLING Weather current condition URL:"

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService-TASK_WEATHER_POLLING Weather forecast URL:"

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService-TASK_WEATHER_POLLING weather key available"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v87, "push_online_image"

    move-object/from16 v0, v53

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    .line 254
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;->getInstance()Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;

    move-result-object v87

    move-object/from16 v0, v87

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;->processAmbientDataFetchRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 256
    .local v26, "currentConditionJson":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;->getInstance()Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;

    move-result-object v87

    move-object/from16 v0, v87

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;->processAmbientDataFetchRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 259
    .local v41, "forecastJson":Ljava/lang/String;
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService-TASK_WEATHER_POLLING Accuweather Hourly response:"

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    move-object/from16 v0, v78

    move-object/from16 v1, v26

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherDataParser;->parserWeatherHourTemparatureData(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)I

    move-result v62

    .line 265
    if-eqz v62, :cond_a

    .line 268
    const-string v87, "push_data_error_image"

    move-object/from16 v0, v53

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    .line 271
    :cond_a
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService-TASK_WEATHER_POLLING Accuweather forecast responseL:"

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    move-object/from16 v0, v78

    move-object/from16 v1, v41

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherDataParser;->parserWeatherMinMaxData(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)I

    move-result v62

    .line 276
    if-eqz v62, :cond_b

    .line 279
    const-string v87, "push_data_error_image"

    move-object/from16 v0, v53

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    .line 296
    .end local v26    # "currentConditionJson":Ljava/lang/String;
    .end local v27    # "currentConditionsUrl":Ljava/lang/String;
    .end local v41    # "forecastJson":Ljava/lang/String;
    .end local v77    # "weatherForecastUrl":Ljava/lang/String;
    :cond_b
    :goto_5
    if-eqz v62, :cond_c

    .line 297
    const-string v87, "push_offline_image"

    move-object/from16 v0, v53

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    .line 300
    :cond_c
    move-object/from16 v0, v53

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_4

    .line 284
    :cond_d
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService-TASK_WEATHER_POLLING NO weather key"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v87, "push_data_error_image"

    move-object/from16 v0, v53

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    .line 304
    .end local v14    # "cityName":Ljava/lang/String;
    .end local v22    # "countryName":Ljava/lang/String;
    .end local v44    # "index":I
    .end local v48    # "key":Ljava/lang/String;
    .end local v53    # "newWeatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v65    # "stateName":Ljava/lang/String;
    .end local v75    # "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v76    # "weatherAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .end local v78    # "weatherParser":Lcom/qualcomm/toq/smartwatch/ambient/WeatherDataParser;
    :catch_2
    move-exception v36

    .line 305
    .restart local v36    # "e":Ljava/lang/Exception;
    const/16 v62, -0x2

    .line 306
    :try_start_6
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 309
    const-string v87, "weather"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v87

    check-cast v87, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;

    move-object/from16 v0, v87

    move/from16 v1, v62

    invoke-virtual {v0, v1, v9}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->onAmbientInfoUpdated(ILjava/util/ArrayList;)V

    goto/16 :goto_3

    .line 291
    .end local v36    # "e":Ljava/lang/Exception;
    .restart local v14    # "cityName":Ljava/lang/String;
    .restart local v22    # "countryName":Ljava/lang/String;
    .restart local v44    # "index":I
    .restart local v48    # "key":Ljava/lang/String;
    .restart local v53    # "newWeatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .restart local v65    # "stateName":Ljava/lang/String;
    .restart local v75    # "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .restart local v76    # "weatherAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .restart local v78    # "weatherParser":Lcom/qualcomm/toq/smartwatch/ambient/WeatherDataParser;
    :cond_e
    :try_start_7
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService-TASK_WEATHER_POLLING NO network available"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v87, "push_offline_image"

    move-object/from16 v0, v53

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_5

    .line 309
    .end local v14    # "cityName":Ljava/lang/String;
    .end local v22    # "countryName":Ljava/lang/String;
    .end local v44    # "index":I
    .end local v48    # "key":Ljava/lang/String;
    .end local v53    # "newWeatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v65    # "stateName":Ljava/lang/String;
    .end local v75    # "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v76    # "weatherAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .end local v78    # "weatherParser":Lcom/qualcomm/toq/smartwatch/ambient/WeatherDataParser;
    :catchall_2
    move-exception v87

    move-object/from16 v88, v87

    const-string v87, "weather"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v87

    check-cast v87, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;

    move-object/from16 v0, v87

    move/from16 v1, v62

    invoke-virtual {v0, v1, v9}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->onAmbientInfoUpdated(ILjava/util/ArrayList;)V

    throw v88

    .restart local v76    # "weatherAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :cond_f
    const-string v87, "weather"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v87

    check-cast v87, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;

    move-object/from16 v0, v87

    move/from16 v1, v62

    invoke-virtual {v0, v1, v9}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->onAmbientInfoUpdated(ILjava/util/ArrayList;)V

    goto/16 :goto_3

    .line 318
    .end local v9    # "ambientInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .end local v62    # "ret_val":I
    .end local v76    # "weatherAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :cond_10
    const-string v87, "sync_weather_data_to_wd"

    move-object/from16 v0, v87

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v87

    if-eqz v87, :cond_11

    .line 319
    const/16 v61, 0x0

    .line 321
    .local v61, "ret_code":I
    :try_start_8
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService-TASK_WEATHER_SYNC "

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const/16 v87, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v87

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->pushWeatherImagesToWd(Z)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 332
    const-string v87, "weather"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v87

    check-cast v87, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;

    move-object/from16 v0, v87

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->onAmbientImageSyncComplete(I)V

    goto/16 :goto_3

    .line 327
    :catch_3
    move-exception v36

    .line 328
    .restart local v36    # "e":Ljava/lang/Exception;
    const/16 v61, -0x2

    .line 329
    :try_start_9
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 332
    const-string v87, "weather"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v87

    check-cast v87, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;

    move-object/from16 v0, v87

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->onAmbientImageSyncComplete(I)V

    goto/16 :goto_3

    .end local v36    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v87

    move-object/from16 v88, v87

    const-string v87, "weather"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v87

    check-cast v87, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;

    move-object/from16 v0, v87

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->onAmbientImageSyncComplete(I)V

    throw v88

    .line 339
    .end local v61    # "ret_code":I
    :cond_11
    const-string v87, "currentcity_weather_polling_task"

    move-object/from16 v0, v87

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v87

    if-eqz v87, :cond_21

    .line 340
    const-string v87, "city_key"

    move-object/from16 v0, p1

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 341
    .restart local v48    # "key":Ljava/lang/String;
    const-string v87, "city_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 342
    .restart local v14    # "cityName":Ljava/lang/String;
    const-string v87, "city_area"

    move-object/from16 v0, p1

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 344
    .local v7, "adminArea":Ljava/lang/String;
    if-nez v14, :cond_12

    .line 345
    const-string v87, "Ambient"

    const-string v88, "!!! AmbientIntentService-TASK_WEATHER_CURRENT_CITY_SYNC Invalid city=NULL"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_12
    const-string v87, ","

    move-object/from16 v0, v87

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 350
    .local v23, "countryParams":[Ljava/lang/String;
    new-instance v53, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    invoke-direct/range {v53 .. v53}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;-><init>()V

    .line 351
    .restart local v53    # "newWeatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    move-object/from16 v0, v53

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setKey(Ljava/lang/String;)V

    .line 352
    move-object/from16 v0, v53

    invoke-virtual {v0, v14}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setCityName(Ljava/lang/String;)V

    .line 353
    const/16 v87, 0x0

    aget-object v87, v23, v87

    move-object/from16 v0, v53

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setStateName(Ljava/lang/String;)V

    .line 354
    const/16 v87, 0x1

    aget-object v87, v23, v87

    move-object/from16 v0, v53

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setCountryName(Ljava/lang/String;)V

    .line 355
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService-TASK_WEATHER_CURRENT_CITY_SYNC Key from shared preference "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v87, "Local City"

    const-string v88, "Local City"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v87

    if-eqz v87, :cond_18

    const-string v87, "Default Admin,Default Country"

    move-object/from16 v0, v87

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v87

    if-eqz v87, :cond_18

    .line 361
    const-string v87, "push_data_error_image"

    move-object/from16 v0, v53

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    .line 372
    :goto_6
    const/16 v62, -0x1

    .line 373
    .restart local v62    # "ret_val":I
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v87

    const-string v88, "ambient__pref"

    const/16 v89, 0x0

    invoke-virtual/range {v87 .. v89}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v59

    .line 378
    .local v59, "prefs":Landroid/content/SharedPreferences;
    :try_start_a
    const-string v87, "WeatherCurrentCity"

    new-instance v88, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    invoke-direct/range {v88 .. v88}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;-><init>()V

    invoke-static/range {v88 .. v88}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v88

    move-object/from16 v0, v59

    move-object/from16 v1, v87

    move-object/from16 v2, v88

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v87

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 381
    .local v56, "prefCurrentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v29

    .line 382
    .local v29, "currentTime":Ljava/util/Calendar;
    invoke-virtual/range {v29 .. v29}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v30

    .line 383
    .local v30, "currentTimeMilli":J
    const-string v87, "current_city_last_update_time"

    const-wide/16 v88, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v87

    move-wide/from16 v2, v88

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v49

    .line 385
    .local v49, "lastFetchCurrentCity":J
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService-TASK_WEATHER_CURRENT_CITY_SYNC Current time : "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    new-instance v89, Ljava/util/Date;

    move-object/from16 v0, v89

    move-wide/from16 v1, v30

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, "~~~~~~~~~  CC last Fetch: "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    new-instance v89, Ljava/util/Date;

    move-object/from16 v0, v89

    move-wide/from16 v1, v49

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v87

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/base/utils/Utils;->isNetworkConnectivityAvailable(Landroid/content/Context;)Z

    move-result v87

    if-eqz v87, :cond_1b

    .line 392
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService-TASK_WEATHER_CURRENT_CITY_SYNC network available"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    new-instance v78, Lcom/qualcomm/toq/smartwatch/ambient/WeatherDataParser;

    invoke-direct/range {v78 .. v78}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherDataParser;-><init>()V

    .line 395
    .restart local v78    # "weatherParser":Lcom/qualcomm/toq/smartwatch/ambient/WeatherDataParser;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v78

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->updateWeatherAmbientKey(Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;Lcom/qualcomm/toq/smartwatch/ambient/WeatherDataParser;)I

    move-result v62

    .line 397
    if-nez v62, :cond_1a

    .line 399
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v87

    const v88, 0x7f0a004a

    invoke-virtual/range {v87 .. v88}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v87

    const/16 v88, 0x2

    move/from16 v0, v88

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v88, v0

    const/16 v89, 0x0

    aput-object v48, v88, v89

    const/16 v89, 0x1

    const-string v90, "9fc4b35acecc407e95143c14579a2d84"

    aput-object v90, v88, v89

    invoke-static/range {v87 .. v88}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .line 403
    .restart local v27    # "currentConditionsUrl":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v87

    const v88, 0x7f0a004b

    invoke-virtual/range {v87 .. v88}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v87

    const/16 v88, 0x2

    move/from16 v0, v88

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v88, v0

    const/16 v89, 0x0

    aput-object v48, v88, v89

    const/16 v89, 0x1

    const-string v90, "9fc4b35acecc407e95143c14579a2d84"

    aput-object v90, v88, v89

    invoke-static/range {v87 .. v88}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v77

    .line 408
    .restart local v77    # "weatherForecastUrl":Ljava/lang/String;
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService-TASK_WEATHER_CURRENT_CITY_SYNC Weather current condition URL:"

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService-TASK_WEATHER_CURRENT_CITY_SYNC Weather forecast URL:"

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService-TASK_WEATHER_CURRENT_CITY_SYNC weather key available"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v87, "push_online_image"

    move-object/from16 v0, v53

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    .line 419
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;->getInstance()Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;

    move-result-object v87

    move-object/from16 v0, v87

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;->processAmbientDataFetchRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 421
    .restart local v26    # "currentConditionJson":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;->getInstance()Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;

    move-result-object v87

    move-object/from16 v0, v87

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFetcher;->processAmbientDataFetchRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 424
    .restart local v41    # "forecastJson":Ljava/lang/String;
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService-currentcity_weather_polling_task Accuweather Hourly response:"

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    move-object/from16 v0, v78

    move-object/from16 v1, v26

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherDataParser;->parserWeatherHourTemparatureData(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)I

    move-result v62

    .line 430
    if-eqz v62, :cond_13

    .line 433
    const-string v87, "push_data_error_image"

    move-object/from16 v0, v53

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    .line 436
    :cond_13
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService-currentcity_weather_polling_task Accuweather forecast responseL:"

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    move-object/from16 v0, v78

    move-object/from16 v1, v41

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherDataParser;->parserWeatherMinMaxData(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)I

    move-result v62

    .line 441
    if-eqz v62, :cond_14

    .line 444
    const-string v87, "push_data_error_image"

    move-object/from16 v0, v53

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    .line 461
    .end local v26    # "currentConditionJson":Ljava/lang/String;
    .end local v27    # "currentConditionsUrl":Ljava/lang/String;
    .end local v41    # "forecastJson":Ljava/lang/String;
    .end local v77    # "weatherForecastUrl":Ljava/lang/String;
    .end local v78    # "weatherParser":Lcom/qualcomm/toq/smartwatch/ambient/WeatherDataParser;
    :cond_14
    :goto_7
    if-eqz v62, :cond_15

    .line 462
    const-string v87, "push_offline_image"

    move-object/from16 v0, v53

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    .line 467
    :cond_15
    const-string v87, "weather"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v21

    check-cast v21, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;

    .line 468
    .local v21, "controller":Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;
    invoke-virtual/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->getImageCreator()Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;

    move-result-object v43

    .line 470
    .local v43, "imageCreator":Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;
    if-eqz v53, :cond_20

    move-object/from16 v0, v53

    instance-of v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    move/from16 v87, v0

    if-eqz v87, :cond_20

    .line 473
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService-currentcity_weather_polling_task "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " Ambient Info is Fetched"

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService-currentcity_weather_polling_task "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " push img type="

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v53 .. v53}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v87, "push_online_image"

    invoke-virtual/range {v53 .. v53}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v87

    if-eqz v87, :cond_1c

    .line 483
    invoke-interface/range {v59 .. v59}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v37

    .line 484
    .local v37, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v87, "current_city_last_update_time"

    move-object/from16 v0, v37

    move-object/from16 v1, v87

    move-wide/from16 v2, v30

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 493
    const-string v87, "cc_weather_timer_interval"

    const-wide/32 v88, 0x2932e0

    move-object/from16 v0, v37

    move-object/from16 v1, v87

    move-wide/from16 v2, v88

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 495
    invoke-interface/range {v37 .. v37}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 496
    move-object/from16 v0, v43

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;->createAmbientImageAndUpdateImagePaths(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)I

    move-result v62

    .line 497
    if-eqz v62, :cond_16

    .line 498
    const-string v87, "push_offline_image"

    move-object/from16 v0, v53

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    .line 503
    :cond_16
    const/16 v87, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v53

    move/from16 v2, v87

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->sendCurrentCityWeatherImage(Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 554
    .end local v37    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_17
    :goto_8
    const-string v87, "weather"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v87

    check-cast v87, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;

    const/16 v88, 0x0

    invoke-virtual/range {v87 .. v88}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->onAmbientCurrentCitySyncCompleted(I)V

    goto/16 :goto_3

    .line 364
    .end local v21    # "controller":Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;
    .end local v29    # "currentTime":Ljava/util/Calendar;
    .end local v30    # "currentTimeMilli":J
    .end local v43    # "imageCreator":Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;
    .end local v49    # "lastFetchCurrentCity":J
    .end local v56    # "prefCurrentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v59    # "prefs":Landroid/content/SharedPreferences;
    .end local v62    # "ret_val":I
    :cond_18
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v87

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/base/utils/Utils;->isNetworkConnectivityAvailable(Landroid/content/Context;)Z

    move-result v87

    if-eqz v87, :cond_19

    .line 365
    const-string v87, "push_online_image"

    move-object/from16 v0, v53

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 368
    :cond_19
    const-string v87, "push_offline_image"

    move-object/from16 v0, v53

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 449
    .restart local v29    # "currentTime":Ljava/util/Calendar;
    .restart local v30    # "currentTimeMilli":J
    .restart local v49    # "lastFetchCurrentCity":J
    .restart local v56    # "prefCurrentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .restart local v59    # "prefs":Landroid/content/SharedPreferences;
    .restart local v62    # "ret_val":I
    .restart local v78    # "weatherParser":Lcom/qualcomm/toq/smartwatch/ambient/WeatherDataParser;
    :cond_1a
    :try_start_b
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService-currentcity_weather_polling_task NO weather key"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v87, "push_data_error_image"

    move-object/from16 v0, v53

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto/16 :goto_7

    .line 548
    .end local v29    # "currentTime":Ljava/util/Calendar;
    .end local v30    # "currentTimeMilli":J
    .end local v49    # "lastFetchCurrentCity":J
    .end local v56    # "prefCurrentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v78    # "weatherParser":Lcom/qualcomm/toq/smartwatch/ambient/WeatherDataParser;
    :catch_4
    move-exception v36

    .line 549
    .restart local v36    # "e":Ljava/lang/Exception;
    :try_start_c
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->printStackTrace()V

    .line 550
    const-string v87, "Ambient"

    const-string v88, "!!! AmbientIntentService-currentcity_weather_polling_task Exception in current city polling"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 554
    const-string v87, "weather"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v87

    check-cast v87, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;

    const/16 v88, 0x0

    invoke-virtual/range {v87 .. v88}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->onAmbientCurrentCitySyncCompleted(I)V

    goto/16 :goto_3

    .line 456
    .end local v36    # "e":Ljava/lang/Exception;
    .restart local v29    # "currentTime":Ljava/util/Calendar;
    .restart local v30    # "currentTimeMilli":J
    .restart local v49    # "lastFetchCurrentCity":J
    .restart local v56    # "prefCurrentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    :cond_1b
    :try_start_d
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService-currentcity_weather_polling_task NO network available"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v87, "push_offline_image"

    move-object/from16 v0, v53

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto/16 :goto_7

    .line 554
    .end local v29    # "currentTime":Ljava/util/Calendar;
    .end local v30    # "currentTimeMilli":J
    .end local v49    # "lastFetchCurrentCity":J
    .end local v56    # "prefCurrentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    :catchall_4
    move-exception v87

    move-object/from16 v88, v87

    const-string v87, "weather"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v87

    check-cast v87, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;

    const/16 v89, 0x0

    move-object/from16 v0, v87

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->onAmbientCurrentCitySyncCompleted(I)V

    throw v88

    .line 507
    .restart local v21    # "controller":Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;
    .restart local v29    # "currentTime":Ljava/util/Calendar;
    .restart local v30    # "currentTimeMilli":J
    .restart local v43    # "imageCreator":Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;
    .restart local v49    # "lastFetchCurrentCity":J
    .restart local v56    # "prefCurrentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    :cond_1c
    :try_start_e
    invoke-interface/range {v59 .. v59}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v74

    .line 508
    .local v74, "timerIntervalEditor":Landroid/content/SharedPreferences$Editor;
    const-string v87, "cc_weather_timer_interval"

    const-wide/32 v88, 0xdbba0

    move-object/from16 v0, v74

    move-object/from16 v1, v87

    move-wide/from16 v2, v88

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 510
    invoke-interface/range {v74 .. v74}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 511
    const-wide/16 v87, 0x0

    cmp-long v87, v49, v87

    if-eqz v87, :cond_1d

    sub-long v87, v30, v49

    const-wide/32 v89, 0x1499700

    cmp-long v87, v87, v89

    if-gez v87, :cond_1d

    invoke-virtual/range {v56 .. v56}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v87

    if-nez v87, :cond_1e

    invoke-virtual/range {v56 .. v56}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageSourceLocation()Ljava/lang/String;

    move-result-object v87

    if-nez v87, :cond_1e

    .line 514
    :cond_1d
    move-object/from16 v0, v43

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;->createAmbientImageAndUpdateImagePaths(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)I

    .line 515
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService-currentcity_weather_polling_task  pushing prefambientInfo"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const/16 v87, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v53

    move/from16 v2, v87

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->sendCurrentCityWeatherImage(Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;Z)V

    goto/16 :goto_8

    .line 524
    :cond_1e
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService-currentcity_weather_polling_task  else part"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const-string v87, "push_online_image"

    invoke-virtual/range {v56 .. v56}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v87

    if-eqz v87, :cond_17

    const-string v87, "push_offline_image"

    invoke-virtual/range {v53 .. v53}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v87

    if-nez v87, :cond_1f

    const-string v87, "push_data_error_image"

    invoke-virtual/range {v53 .. v53}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v87

    if-eqz v87, :cond_17

    :cond_1f
    if-eqz v59, :cond_17

    const-string v87, "current_city_temp_unit_changed"

    const/16 v88, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v87

    move/from16 v2, v88

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v87

    if-eqz v87, :cond_17

    .line 531
    move-object/from16 v0, v43

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;->createAmbientImageAndUpdateImagePaths(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)I

    .line 532
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService-currentcity_weather_polling_task  else after check "

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const/16 v87, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v56

    move/from16 v2, v87

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->sendCurrentCityWeatherImage(Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;Z)V

    goto/16 :goto_8

    .line 541
    .end local v74    # "timerIntervalEditor":Landroid/content/SharedPreferences$Editor;
    :cond_20
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "!!! AmbientIntentService-currentcity_weather_polling_task Default Ambient Display fetch for default city !!!"

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v56 .. v56}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " is null"

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto/16 :goto_8

    .line 558
    .end local v7    # "adminArea":Ljava/lang/String;
    .end local v14    # "cityName":Ljava/lang/String;
    .end local v21    # "controller":Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;
    .end local v23    # "countryParams":[Ljava/lang/String;
    .end local v29    # "currentTime":Ljava/util/Calendar;
    .end local v30    # "currentTimeMilli":J
    .end local v43    # "imageCreator":Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;
    .end local v48    # "key":Ljava/lang/String;
    .end local v49    # "lastFetchCurrentCity":J
    .end local v53    # "newWeatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v56    # "prefCurrentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v59    # "prefs":Landroid/content/SharedPreferences;
    .end local v62    # "ret_val":I
    :cond_21
    const-string v87, "weather_resync_images_to_wd"

    move-object/from16 v0, v87

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v87

    if-eqz v87, :cond_26

    .line 559
    const-string v87, "ambient__pref"

    const/16 v88, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v59

    .line 563
    .restart local v59    # "prefs":Landroid/content/SharedPreferences;
    :try_start_f
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getWDState()I

    move-result v87

    const/16 v88, 0x3

    move/from16 v0, v87

    move/from16 v1, v88

    if-ne v0, v1, :cond_25

    .line 565
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService-TASK_WEATHER_RESYNC req_code:"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const/16 v87, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v87

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->pushWeatherImagesToWd(Z)V

    .line 570
    const-string v87, "WeatherCurrentCityUpdate"

    const/16 v88, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v87

    move/from16 v2, v88

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 572
    .local v25, "currentCityUpdateEnabled":Z
    if-eqz v25, :cond_24

    const-string v87, "current_city_temp_unit_changed"

    const/16 v88, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v87

    move/from16 v2, v88

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v87

    if-eqz v87, :cond_24

    .line 576
    const-string v87, "WeatherCurrentCity"

    new-instance v88, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    invoke-direct/range {v88 .. v88}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;-><init>()V

    invoke-static/range {v88 .. v88}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v88

    move-object/from16 v0, v59

    move-object/from16 v1, v87

    move-object/from16 v2, v88

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v87

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 579
    .restart local v56    # "prefCurrentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    const-string v87, "weather"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v21

    check-cast v21, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;

    .line 580
    .restart local v21    # "controller":Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;
    invoke-virtual/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->getImageCreator()Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;

    move-result-object v43

    .line 582
    .restart local v43    # "imageCreator":Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;
    if-eqz v56, :cond_23

    move-object/from16 v0, v56

    instance-of v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    move/from16 v87, v0

    if-eqz v87, :cond_23

    .line 585
    move-object/from16 v0, v43

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;->createAmbientImageAndUpdateImagePaths(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)I

    move-result v62

    .line 586
    .restart local v62    # "ret_val":I
    if-eqz v62, :cond_22

    .line 587
    const-string v87, "push_offline_image"

    move-object/from16 v0, v56

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    .line 592
    :cond_22
    const/16 v87, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v56

    move/from16 v2, v87

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->sendCurrentCityWeatherImage(Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 619
    .end local v21    # "controller":Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;
    .end local v25    # "currentCityUpdateEnabled":Z
    .end local v43    # "imageCreator":Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;
    .end local v56    # "prefCurrentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v62    # "ret_val":I
    :goto_9
    const-string v87, "weather"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v87

    check-cast v87, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;

    const/16 v88, 0x0

    invoke-virtual/range {v87 .. v88}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->onAmbientImageReSyncComplete(I)V

    goto/16 :goto_3

    .line 597
    .restart local v21    # "controller":Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;
    .restart local v25    # "currentCityUpdateEnabled":Z
    .restart local v43    # "imageCreator":Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;
    .restart local v56    # "prefCurrentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    :cond_23
    :try_start_10
    const-string v87, "Ambient"

    const-string v88, "!!! AmbientIntentService-TASK_WEATHER_RESYNC invlaid current city object"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_9

    .line 613
    .end local v21    # "controller":Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;
    .end local v25    # "currentCityUpdateEnabled":Z
    .end local v43    # "imageCreator":Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;
    .end local v56    # "prefCurrentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    :catch_5
    move-exception v36

    .line 614
    .restart local v36    # "e":Ljava/lang/Exception;
    :try_start_11
    const-string v87, "Ambient"

    const-string v88, "!!! AmbientIntentService-TASK_WEATHER_RESYNC Exception in Ambient  Sync !!!"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 619
    const-string v87, "weather"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v87

    check-cast v87, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;

    const/16 v88, 0x0

    invoke-virtual/range {v87 .. v88}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->onAmbientImageReSyncComplete(I)V

    goto/16 :goto_3

    .line 603
    .end local v36    # "e":Ljava/lang/Exception;
    .restart local v25    # "currentCityUpdateEnabled":Z
    :cond_24
    :try_start_12
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService-TASK_WEATHER_RESYNC no change in currenct city UNITS"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    goto :goto_9

    .line 619
    .end local v25    # "currentCityUpdateEnabled":Z
    :catchall_5
    move-exception v87

    move-object/from16 v88, v87

    const-string v87, "weather"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v87

    check-cast v87, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;

    const/16 v89, 0x0

    move-object/from16 v0, v87

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->onAmbientImageReSyncComplete(I)V

    throw v88

    .line 609
    :cond_25
    :try_start_13
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService-TASK_WEATHER_RESYNC WD and Phone not connected"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    goto :goto_9

    .line 622
    .end local v59    # "prefs":Landroid/content/SharedPreferences;
    :cond_26
    const-string v87, "stock_resync_images_to_wd"

    move-object/from16 v0, v87

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v87

    if-eqz v87, :cond_2b

    .line 623
    const-string v87, "ambient__pref"

    const/16 v88, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v59

    .line 627
    .restart local v59    # "prefs":Landroid/content/SharedPreferences;
    :try_start_14
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getWDState()I

    move-result v87

    const/16 v88, 0x3

    move/from16 v0, v87

    move/from16 v1, v88

    if-ne v0, v1, :cond_29

    .line 628
    const-string v87, "StockSymbolsBackGround"

    new-instance v88, Ljava/util/ArrayList;

    invoke-direct/range {v88 .. v88}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v88 .. v88}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v88

    move-object/from16 v0, v59

    move-object/from16 v1, v87

    move-object/from16 v2, v88

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v87

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Ljava/util/ArrayList;

    .line 632
    .local v71, "stocksAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    if-eqz v71, :cond_2a

    invoke-virtual/range {v71 .. v71}, Ljava/util/ArrayList;->size()I

    move-result v87

    const/16 v88, 0x5

    move/from16 v0, v87

    move/from16 v1, v88

    if-gt v0, v1, :cond_2a

    .line 634
    const-string v87, "stock"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v5

    .line 635
    .local v5, "Controller":Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
    const/16 v42, 0x0

    .local v42, "i":I
    :goto_a
    invoke-virtual/range {v71 .. v71}, Ljava/util/ArrayList;->size()I

    move-result v87

    move/from16 v0, v42

    move/from16 v1, v87

    if-ge v0, v1, :cond_2a

    .line 636
    move-object/from16 v0, v71

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    .line 637
    .local v8, "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v16

    .line 638
    .local v16, "clockImageDestinationLocation":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDarkImageDestinationLocation()Ljava/lang/String;

    move-result-object v33

    .line 639
    .local v33, "darkImageDestinationLocation":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v11

    .line 640
    .local v11, "appImageDestinationLocation":Ljava/lang/String;
    if-eqz v16, :cond_28

    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getSourceLocation()Ljava/lang/String;

    move-result-object v87

    if-eqz v87, :cond_28

    if-eqz v11, :cond_28

    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getAppImageSourceLocation()Ljava/lang/String;

    move-result-object v87

    if-eqz v87, :cond_28

    if-eqz v33, :cond_28

    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDarkImageSourceLocation()Ljava/lang/String;

    move-result-object v87

    if-eqz v87, :cond_28

    .line 647
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService-TASK_STOCK_RESYNC Synching "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanySymbol()Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " DestPath "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, "\n"

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDarkImageDestinationLocation()Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->getClockSettingsController()Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;

    move-result-object v87

    const-string v88, "Stocks"

    invoke-virtual/range {v87 .. v88}, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->isClockSelected(Ljava/lang/String;)Z

    move-result v87

    if-eqz v87, :cond_27

    .line 658
    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDarkImageSourceLocation()Ljava/lang/String;

    move-result-object v87

    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDarkImageDestinationLocation()Ljava/lang/String;

    move-result-object v88

    move-object/from16 v0, v87

    move-object/from16 v1, v88

    invoke-virtual {v5, v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->syncFileToWd(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getSourceLocation()Ljava/lang/String;

    move-result-object v87

    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v88

    move-object/from16 v0, v87

    move-object/from16 v1, v88

    invoke-virtual {v5, v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->syncFileToWd(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :cond_27
    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getAppImageSourceLocation()Ljava/lang/String;

    move-result-object v87

    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v88

    move-object/from16 v0, v87

    move-object/from16 v1, v88

    invoke-virtual {v5, v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->syncFileToWd(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    :cond_28
    add-int/lit8 v42, v42, 0x1

    goto/16 :goto_a

    .line 672
    .end local v5    # "Controller":Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
    .end local v8    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    .end local v11    # "appImageDestinationLocation":Ljava/lang/String;
    .end local v16    # "clockImageDestinationLocation":Ljava/lang/String;
    .end local v33    # "darkImageDestinationLocation":Ljava/lang/String;
    .end local v42    # "i":I
    .end local v71    # "stocksAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :cond_29
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService-TASK_STOCK_RESYNC WD and Phone not connected"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 682
    :cond_2a
    const-string v87, "stock"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v87

    check-cast v87, Lcom/qualcomm/toq/smartwatch/ambient/StockController;

    const/16 v88, 0x0

    invoke-virtual/range {v87 .. v88}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->onAmbientImageReSyncComplete(I)V

    goto/16 :goto_3

    .line 676
    :catch_6
    move-exception v36

    .line 677
    .restart local v36    # "e":Ljava/lang/Exception;
    :try_start_15
    const-string v87, "Ambient"

    const-string v88, "!!!AmbientIntentService-TASK_STOCK_RESYNC Exception in Ambient Sync!!!"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 682
    const-string v87, "stock"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v87

    check-cast v87, Lcom/qualcomm/toq/smartwatch/ambient/StockController;

    const/16 v88, 0x0

    invoke-virtual/range {v87 .. v88}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->onAmbientImageReSyncComplete(I)V

    goto/16 :goto_3

    .end local v36    # "e":Ljava/lang/Exception;
    :catchall_6
    move-exception v87

    move-object/from16 v88, v87

    const-string v87, "stock"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v87

    check-cast v87, Lcom/qualcomm/toq/smartwatch/ambient/StockController;

    const/16 v89, 0x0

    move-object/from16 v0, v87

    move/from16 v1, v89

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->onAmbientImageReSyncComplete(I)V

    throw v88

    .line 690
    .end local v59    # "prefs":Landroid/content/SharedPreferences;
    :cond_2b
    const-string v87, "share_image_to_wd"

    move-object/from16 v0, v87

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v87

    if-eqz v87, :cond_2f

    .line 691
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService-share_image_to_wd"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string v87, "dithering"

    const/16 v88, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v87

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v46

    .line 694
    .local v46, "isDithering":Z
    const-string v87, "file_path"

    move-object/from16 v0, p1

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 695
    .local v55, "path":Ljava/lang/String;
    const-string v87, "/"

    move-object/from16 v0, v55

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v87

    add-int/lit8 v87, v87, 0x1

    const-string v88, "."

    move-object/from16 v0, v55

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v88

    move-object/from16 v0, v55

    move/from16 v1, v87

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v40

    .line 697
    .local v40, "fileName":Ljava/lang/String;
    const-string v87, "."

    move-object/from16 v0, v55

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v87

    invoke-virtual/range {v55 .. v55}, Ljava/lang/String;->length()I

    move-result v88

    move-object/from16 v0, v55

    move/from16 v1, v87

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v39

    .line 700
    .local v39, "fileExtension":Ljava/lang/String;
    if-nez v40, :cond_2c

    .line 701
    const-string v40, "SharedPic1234"

    .line 702
    const-string v39, ".img"

    .line 705
    :cond_2c
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService dest filename="

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " fileExtension="

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService share_image_to_wd : dithering="

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " Path="

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v87, "image_data"

    move-object/from16 v0, p1

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v13

    .line 714
    .local v13, "byteArray":[B
    const/16 v87, 0x0

    array-length v0, v13

    move/from16 v88, v0

    move/from16 v0, v87

    move/from16 v1, v88

    invoke-static {v13, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 718
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v20

    .line 720
    .local v20, "context":Landroid/content/Context;
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService share_image_to_wd : bmp="

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v35, "/album/shared_pics/SharedPic1234.img"

    .line 724
    .local v35, "destPath":Ljava/lang/String;
    if-eqz v20, :cond_6

    if-eqz v12, :cond_6

    .line 726
    const/16 v54, 0x0

    .line 727
    .local v54, "outArray":[B
    new-instance v10, Lcom/qualcomm/toq/smartwatch/ambient/AmbientNotificationDisplay;

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientNotificationDisplay;-><init>(Landroid/content/Context;)V

    .line 729
    .local v10, "ambientNotificationDisplay":Lcom/qualcomm/toq/smartwatch/ambient/AmbientNotificationDisplay;
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    const-string v88, "/album/shared_pics/"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    move-object/from16 v0, v87

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const-string v88, ".img"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 731
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v87

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v88

    sget-object v89, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v87 .. v89}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v51

    .line 735
    .local v51, "mMainImageCopy":Landroid/graphics/Bitmap;
    const/16 v87, 0x1

    move/from16 v0, v46

    move/from16 v1, v87

    if-ne v0, v1, :cond_2e

    .line 737
    move-object/from16 v0, v51

    invoke-virtual {v10, v12, v0}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientNotificationDisplay;->convertImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 740
    const/16 v87, 0x1

    move-object/from16 v0, v51

    move/from16 v1, v87

    invoke-virtual {v10, v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientNotificationDisplay;->writeBitmapinIMGFormat(Landroid/graphics/Bitmap;Z)[B

    move-result-object v54

    .line 750
    :goto_b
    const/4 v12, 0x0

    .line 752
    const-string v87, "weather"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v63

    .line 753
    .local v63, "rootDirectory":Ljava/io/File;
    if-eqz v63, :cond_6

    .line 754
    const/16 v73, 0x0

    .line 755
    .local v73, "timeStampFile":Ljava/io/File;
    new-instance v73, Ljava/io/File;

    .end local v73    # "timeStampFile":Ljava/io/File;
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v87

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v87

    sget-object v88, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const-string v88, "sample_push_image"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const-string v88, ".img"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v87

    move-object/from16 v0, v73

    move-object/from16 v1, v87

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 758
    .restart local v73    # "timeStampFile":Ljava/io/File;
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService Source File Location for Time Stamp"

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v73 .. v73}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    :try_start_16
    invoke-virtual/range {v73 .. v73}, Ljava/io/File;->exists()Z

    move-result v87

    if-eqz v87, :cond_2d

    .line 763
    invoke-virtual/range {v73 .. v73}, Ljava/io/File;->delete()Z

    .line 765
    :cond_2d
    invoke-virtual/range {v73 .. v73}, Ljava/io/File;->createNewFile()Z

    .line 767
    move-object/from16 v0, v54

    move-object/from16 v1, v73

    invoke-virtual {v10, v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientNotificationDisplay;->writeBytesToFile([BLjava/io/File;)V

    .line 770
    if-eqz v35, :cond_6

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v87

    if-eqz v87, :cond_6

    .line 772
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v87

    const/16 v88, 0x1

    invoke-virtual/range {v73 .. v73}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v89

    const/16 v90, -0x1

    move-object/from16 v0, v87

    move/from16 v1, v88

    move-object/from16 v2, v89

    move-object/from16 v3, v35

    move/from16 v4, v90

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsSyncFile(ILjava/lang/String;Ljava/lang/String;I)I
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7

    goto/16 :goto_3

    .line 780
    :catch_7
    move-exception v36

    .line 781
    .local v36, "e":Ljava/io/IOException;
    invoke-virtual/range {v36 .. v36}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 744
    .end local v36    # "e":Ljava/io/IOException;
    .end local v63    # "rootDirectory":Ljava/io/File;
    .end local v73    # "timeStampFile":Ljava/io/File;
    :cond_2e
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService isDithering = false using orginal image"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const/16 v87, 0x1

    move/from16 v0, v87

    invoke-virtual {v10, v12, v0}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientNotificationDisplay;->writeBitmapinIMGFormat(Landroid/graphics/Bitmap;Z)[B

    move-result-object v54

    goto/16 :goto_b

    .line 787
    .end local v10    # "ambientNotificationDisplay":Lcom/qualcomm/toq/smartwatch/ambient/AmbientNotificationDisplay;
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "byteArray":[B
    .end local v20    # "context":Landroid/content/Context;
    .end local v35    # "destPath":Ljava/lang/String;
    .end local v39    # "fileExtension":Ljava/lang/String;
    .end local v40    # "fileName":Ljava/lang/String;
    .end local v46    # "isDithering":Z
    .end local v51    # "mMainImageCopy":Landroid/graphics/Bitmap;
    .end local v54    # "outArray":[B
    .end local v55    # "path":Ljava/lang/String;
    :cond_2f
    const-string v87, "generate_world_clock_file"

    move-object/from16 v0, v87

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v87

    if-eqz v87, :cond_6

    .line 788
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService intent service task for GENERATE_CLOCK_FILE called"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const-string v87, "clock_type"

    move-object/from16 v0, p1

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 792
    .local v18, "clockType":Ljava/lang/String;
    const-string v87, "clock_package_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 794
    .local v17, "clockPackageName":Ljava/lang/String;
    const-string v87, "World Time"

    move-object/from16 v0, v18

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v87

    if-eqz v87, :cond_3a

    .line 797
    :try_start_17
    const-string v87, "World Time"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->isClockSelected(Ljava/lang/String;)Z

    move-result v87

    if-nez v87, :cond_30

    .line 798
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService World time clock not selected. Delete World clock related files from WD"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-string v87, "World Time"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->deleteClockEntriesFromWD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_17} :catch_8
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_9

    goto/16 :goto_0

    .line 936
    :catch_8
    move-exception v36

    .line 938
    .local v36, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual/range {v36 .. v36}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    .line 804
    .end local v36    # "e":Ljava/lang/ClassNotFoundException;
    :cond_30
    :try_start_18
    const-string v87, "ambient__pref"

    const/16 v88, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v59

    .line 806
    .restart local v59    # "prefs":Landroid/content/SharedPreferences;
    new-instance v64, Ljava/lang/StringBuilder;

    const-string v87, ""

    move-object/from16 v0, v64

    move-object/from16 v1, v87

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 807
    .local v64, "sb":Ljava/lang/StringBuilder;
    new-instance v79, Ljava/lang/StringBuilder;

    const-string v87, "worldCities { \n"

    move-object/from16 v0, v79

    move-object/from16 v1, v87

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 808
    .local v79, "weathercities":Ljava/lang/StringBuilder;
    const-string v87, "WeatherCurrentCityUpdate"

    const/16 v88, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v87

    move/from16 v2, v88

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v45

    .line 811
    .local v45, "isCurrentCityUpdateEnabled":Z
    new-instance v81, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;

    invoke-direct/range {v81 .. v81}, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;-><init>()V

    .line 812
    .local v81, "worldClockAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->getBaseContext()Landroid/content/Context;

    move-result-object v87

    move-object/from16 v0, v81

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->setContext(Landroid/content/Context;)V

    .line 814
    const-string v87, "WeatherCitiesBackGround"

    new-instance v88, Ljava/util/ArrayList;

    invoke-direct/range {v88 .. v88}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v88 .. v88}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v88

    move-object/from16 v0, v59

    move-object/from16 v1, v87

    move-object/from16 v2, v88

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v87

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v76

    check-cast v76, Ljava/util/ArrayList;

    .line 817
    .restart local v76    # "weatherAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    invoke-virtual/range {v76 .. v76}, Ljava/util/ArrayList;->size()I

    move-result v87

    if-lez v87, :cond_37

    .line 818
    if-eqz v45, :cond_31

    .line 821
    const-string v87, "WeatherCurrentCity"

    new-instance v88, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    invoke-direct/range {v88 .. v88}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;-><init>()V

    invoke-static/range {v88 .. v88}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v88

    move-object/from16 v0, v59

    move-object/from16 v1, v87

    move-object/from16 v2, v88

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v87

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 824
    .local v24, "currentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    if-eqz v24, :cond_33

    invoke-virtual/range {v24 .. v24}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v87

    if-eqz v87, :cond_33

    .line 826
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    const-string v88, "currentCity { \""

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v24 .. v24}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const-string v88, "\" } \n"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v87

    move-object/from16 v0, v64

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    const-string v88, "{ name = \""

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v24 .. v24}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const-string v88, "\", "

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v87

    move-object/from16 v0, v79

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    const-string v88, "folderName=\""

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v24 .. v24}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v24 .. v24}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getStateName()Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v24 .. v24}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCountryName()Ljava/lang/String;

    move-result-object v90

    invoke-static/range {v88 .. v90}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->generateUniqueCityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const-string v88, "\", "

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v87

    move-object/from16 v0, v79

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    const-string v88, "gmtOffset = \""

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v24 .. v24}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getGmtOffset()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const-string v88, "\" }, \n"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v87

    move-object/from16 v0, v79

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    :goto_c
    move-object/from16 v0, v81

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->setAmbientInfo(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)V

    .line 848
    move-object/from16 v0, p0

    move-object/from16 v1, v81

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->createWorldClockImagesFromAmbientInfo(Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;)V

    .line 851
    .end local v24    # "currentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    :cond_31
    const/16 v47, 0x0

    .local v47, "j":I
    :goto_d
    invoke-virtual/range {v76 .. v76}, Ljava/util/ArrayList;->size()I

    move-result v87

    move/from16 v0, v47

    move/from16 v1, v87

    if-ge v0, v1, :cond_35

    .line 852
    move-object/from16 v0, v76

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 853
    .local v6, "actualInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    if-eqz v6, :cond_32

    .line 854
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    const-string v88, "{ name = \""

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const-string v88, "\", "

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v87

    move-object/from16 v0, v79

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    const-string v88, "folderName=\""

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v88

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getStateName()Ljava/lang/String;

    move-result-object v89

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCountryName()Ljava/lang/String;

    move-result-object v90

    invoke-static/range {v88 .. v90}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->generateUniqueCityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const-string v88, "\", "

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v87

    move-object/from16 v0, v79

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    invoke-virtual/range {v76 .. v76}, Ljava/util/ArrayList;->size()I

    move-result v87

    add-int/lit8 v87, v87, -0x1

    move/from16 v0, v47

    move/from16 v1, v87

    if-ne v0, v1, :cond_34

    .line 863
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    const-string v88, "gmtOffset = \""

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getGmtOffset()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const-string v88, "\" }\n"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v87

    move-object/from16 v0, v79

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    :goto_e
    move-object/from16 v0, v81

    invoke-virtual {v0, v6}, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->setAmbientInfo(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)V

    .line 873
    move-object/from16 v0, p0

    move-object/from16 v1, v81

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->createWorldClockImagesFromAmbientInfo(Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;)V

    .line 851
    :cond_32
    add-int/lit8 v47, v47, 0x1

    goto/16 :goto_d

    .line 844
    .end local v6    # "actualInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v47    # "j":I
    .restart local v24    # "currentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    :cond_33
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService  current city name = NULL"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_18} :catch_8
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_9

    goto/16 :goto_c

    .line 940
    .end local v24    # "currentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v45    # "isCurrentCityUpdateEnabled":Z
    .end local v59    # "prefs":Landroid/content/SharedPreferences;
    .end local v64    # "sb":Ljava/lang/StringBuilder;
    .end local v76    # "weatherAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .end local v79    # "weathercities":Ljava/lang/StringBuilder;
    .end local v81    # "worldClockAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;
    :catch_9
    move-exception v36

    .line 942
    .local v36, "e":Ljava/io/IOException;
    invoke-virtual/range {v36 .. v36}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 868
    .end local v36    # "e":Ljava/io/IOException;
    .restart local v6    # "actualInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .restart local v45    # "isCurrentCityUpdateEnabled":Z
    .restart local v47    # "j":I
    .restart local v59    # "prefs":Landroid/content/SharedPreferences;
    .restart local v64    # "sb":Ljava/lang/StringBuilder;
    .restart local v76    # "weatherAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .restart local v79    # "weathercities":Ljava/lang/StringBuilder;
    .restart local v81    # "worldClockAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;
    :cond_34
    :try_start_19
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    const-string v88, "gmtOffset = \""

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getGmtOffset()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const-string v88, "\" }, \n"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v87

    move-object/from16 v0, v79

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 877
    .end local v6    # "actualInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    :cond_35
    const-string v87, "}"

    move-object/from16 v0, v79

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService Lua   Content :  "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, "\n "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    new-instance v80, Ljava/util/ArrayList;

    invoke-direct/range {v80 .. v80}, Ljava/util/ArrayList;-><init>()V

    .line 883
    .local v80, "worlClockData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v87

    move-object/from16 v0, v80

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v87

    move-object/from16 v0, v80

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    const-string v87, "World Time"

    const-string v88, "cities.dat"

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    move-object/from16 v2, v87

    move-object/from16 v3, v88

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->createDATFile(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v38

    .line 889
    .local v38, "file":Ljava/io/File;
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService before call createClockWorldzipFileAndSyncToWD"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->createClockWorldzipFileAndSyncToWD(Ljava/lang/String;)V

    .line 892
    const-string v87, "WorldClock"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v84

    .line 893
    .local v84, "world_clockDir":Ljava/io/File;
    if-eqz v38, :cond_36

    .line 894
    invoke-static/range {v84 .. v84}, Lcom/qualcomm/toq/base/utils/Utils;->deleteFiles(Ljava/io/File;)V

    .line 897
    :cond_36
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService after call createClockWorldzipFileAndSyncToWD"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService Dat  file  path : "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 906
    .end local v38    # "file":Ljava/io/File;
    .end local v47    # "j":I
    .end local v80    # "worlClockData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v84    # "world_clockDir":Ljava/io/File;
    :cond_37
    new-instance v82, Ljava/io/File;

    const-string v87, "WorldClock"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v87

    const-string v88, "cities.dat"

    move-object/from16 v0, v82

    move-object/from16 v1, v87

    move-object/from16 v2, v88

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 908
    .local v82, "worldClockFile":Ljava/io/File;
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->exists()Z

    move-result v87

    if-eqz v87, :cond_38

    .line 909
    invoke-virtual/range {v82 .. v82}, Ljava/io/File;->delete()Z

    .line 912
    :cond_38
    const-string v87, "WorldClock"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v83

    .line 913
    .local v83, "worldClockParentFile":Ljava/io/File;
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService worldClockParentFile : "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService worldClockParentFile.exists() : "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v83 .. v83}, Ljava/io/File;->exists()Z

    move-result v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    if-eqz v83, :cond_39

    .line 922
    new-instance v85, Ljava/io/File;

    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v87

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v87

    sget-object v88, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const-string v88, "ClockWorld.zip"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v87

    move-object/from16 v0, v85

    move-object/from16 v1, v87

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 925
    .local v85, "zipDestinationLocation":Ljava/io/File;
    invoke-virtual/range {v85 .. v85}, Ljava/io/File;->exists()Z

    move-result v87

    if-eqz v87, :cond_39

    .line 926
    invoke-virtual/range {v85 .. v85}, Ljava/io/File;->delete()Z

    .line 931
    .end local v85    # "zipDestinationLocation":Ljava/io/File;
    :cond_39
    const-string v87, "World Time"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->deleteClockEntriesFromWD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_19} :catch_8
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_9

    goto/16 :goto_3

    .line 945
    .end local v45    # "isCurrentCityUpdateEnabled":Z
    .end local v59    # "prefs":Landroid/content/SharedPreferences;
    .end local v64    # "sb":Ljava/lang/StringBuilder;
    .end local v76    # "weatherAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .end local v79    # "weathercities":Ljava/lang/StringBuilder;
    .end local v81    # "worldClockAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;
    .end local v82    # "worldClockFile":Ljava/io/File;
    .end local v83    # "worldClockParentFile":Ljava/io/File;
    :cond_3a
    const-string v87, "Degrees"

    move-object/from16 v0, v18

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v87

    if-eqz v87, :cond_40

    .line 948
    :try_start_1a
    const-string v87, "Degrees"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->isClockSelected(Ljava/lang/String;)Z

    move-result v87

    if-nez v87, :cond_3b

    .line 949
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService Degree clock not selected. Delete degree related files from WD"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    const-string v87, "Degrees"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->deleteClockEntriesFromWD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1a .. :try_end_1a} :catch_a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_b

    goto/16 :goto_0

    .line 1019
    :catch_a
    move-exception v36

    .line 1020
    .local v36, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual/range {v36 .. v36}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    .line 956
    .end local v36    # "e":Ljava/lang/ClassNotFoundException;
    :cond_3b
    :try_start_1b
    const-string v87, "ambient__pref"

    const/16 v88, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v59

    .line 959
    .restart local v59    # "prefs":Landroid/content/SharedPreferences;
    const-string v87, "WeatherCurrentCityUpdate"

    const/16 v88, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v87

    move/from16 v2, v88

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v45

    .line 962
    .restart local v45    # "isCurrentCityUpdateEnabled":Z
    if-eqz v45, :cond_3e

    .line 965
    const-string v87, "WeatherCurrentCity"

    new-instance v88, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    invoke-direct/range {v88 .. v88}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;-><init>()V

    invoke-static/range {v88 .. v88}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v88

    move-object/from16 v0, v59

    move-object/from16 v1, v87

    move-object/from16 v2, v88

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v87

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 968
    .restart local v24    # "currentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    if-eqz v24, :cond_6

    .line 969
    const-string v28, "currentTemp="

    .line 972
    .local v28, "currentTemp":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getHourTemp()I

    move-result v87

    const/16 v88, -0x3e8

    move/from16 v0, v87

    move/from16 v1, v88

    if-eq v0, v1, :cond_3d

    .line 974
    const-string v87, "push_online_image"

    invoke-virtual/range {v24 .. v24}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v87

    if-eqz v87, :cond_3c

    .line 975
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v87

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v24 .. v24}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getHourTemp()I

    move-result v88

    invoke-static/range {v88 .. v88}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getWeatherTemperatureBasedOnUnit(I)I

    move-result v88

    invoke-static/range {v88 .. v88}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 988
    :goto_f
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService  degree clock currentTemp="

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 992
    .local v15, "clockData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 994
    const-string v87, "Degrees"

    const-string v88, "temperature.dat"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move-object/from16 v2, v88

    invoke-direct {v0, v15, v1, v2}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->createDATFile(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v38

    .line 997
    .restart local v38    # "file":Ljava/io/File;
    if-eqz v38, :cond_6

    .line 998
    const-string v87, "Degrees"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->syncWorldClockToWD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1b .. :try_end_1b} :catch_a
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_b

    goto/16 :goto_3

    .line 1022
    .end local v15    # "clockData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v24    # "currentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v28    # "currentTemp":Ljava/lang/String;
    .end local v38    # "file":Ljava/io/File;
    .end local v45    # "isCurrentCityUpdateEnabled":Z
    .end local v59    # "prefs":Landroid/content/SharedPreferences;
    :catch_b
    move-exception v36

    .line 1023
    .local v36, "e":Ljava/io/IOException;
    invoke-virtual/range {v36 .. v36}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 978
    .end local v36    # "e":Ljava/io/IOException;
    .restart local v24    # "currentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .restart local v28    # "currentTemp":Ljava/lang/String;
    .restart local v45    # "isCurrentCityUpdateEnabled":Z
    .restart local v59    # "prefs":Landroid/content/SharedPreferences;
    :cond_3c
    :try_start_1c
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v87

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const-string v88, "nil"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 979
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService degree clock data error currentTemp="

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 986
    :cond_3d
    new-instance v87, Ljava/lang/StringBuilder;

    invoke-direct/range {v87 .. v87}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v87

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    const-string v88, "nil"

    invoke-virtual/range {v87 .. v88}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v87

    invoke-virtual/range {v87 .. v87}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_f

    .line 1008
    .end local v24    # "currentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v28    # "currentTemp":Ljava/lang/String;
    :cond_3e
    new-instance v34, Ljava/io/File;

    const-string v87, "DegreesClock"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v87

    const-string v88, "temperature.dat"

    move-object/from16 v0, v34

    move-object/from16 v1, v87

    move-object/from16 v2, v88

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1010
    .local v34, "degreeClockFile":Ljava/io/File;
    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->exists()Z

    move-result v87

    if-eqz v87, :cond_3f

    .line 1011
    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->delete()Z

    .line 1015
    :cond_3f
    const-string v87, "Degrees"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->deleteClockEntriesFromWD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_1c} :catch_a
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_b

    goto/16 :goto_3

    .line 1026
    .end local v34    # "degreeClockFile":Ljava/io/File;
    .end local v45    # "isCurrentCityUpdateEnabled":Z
    .end local v59    # "prefs":Landroid/content/SharedPreferences;
    :cond_40
    const-string v87, "Weather Grid"

    move-object/from16 v0, v18

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v87

    if-eqz v87, :cond_45

    .line 1029
    :try_start_1d
    const-string v87, "weather"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v21

    check-cast v21, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;

    .line 1031
    .restart local v21    # "controller":Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;
    const-string v87, "ambient__pref"

    const/16 v88, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v59

    .line 1033
    .restart local v59    # "prefs":Landroid/content/SharedPreferences;
    const-string v87, "WeatherCurrentCity"

    new-instance v88, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    invoke-direct/range {v88 .. v88}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;-><init>()V

    invoke-static/range {v88 .. v88}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v88

    move-object/from16 v0, v59

    move-object/from16 v1, v87

    move-object/from16 v2, v88

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v87

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 1036
    .restart local v24    # "currentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    const-string v87, "WeatherCurrentCityUpdate"

    const/16 v88, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, v87

    move/from16 v2, v88

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v45

    .line 1038
    .restart local v45    # "isCurrentCityUpdateEnabled":Z
    const-string v87, "Weather Grid"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->isClockSelected(Ljava/lang/String;)Z

    move-result v87

    if-eqz v87, :cond_41

    if-eqz v45, :cond_41

    if-nez v24, :cond_42

    .line 1042
    :cond_41
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService CLOCK_WEATHER_GRID  not not selected."

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_c

    goto/16 :goto_0

    .line 1087
    .end local v21    # "controller":Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;
    .end local v24    # "currentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v45    # "isCurrentCityUpdateEnabled":Z
    .end local v59    # "prefs":Landroid/content/SharedPreferences;
    :catch_c
    move-exception v36

    .line 1088
    .local v36, "e":Ljava/lang/Exception;
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService Exception in task ="

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1050
    .end local v36    # "e":Ljava/lang/Exception;
    .restart local v21    # "controller":Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;
    .restart local v24    # "currentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .restart local v45    # "isCurrentCityUpdateEnabled":Z
    .restart local v59    # "prefs":Landroid/content/SharedPreferences;
    :cond_42
    :try_start_1e
    move-object/from16 v0, v24

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    move-object/from16 v87, v0

    invoke-virtual/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->getClockZipSourceLocation()Ljava/lang/String;

    move-result-object v86

    .line 1051
    .local v86, "zipSourcePath":Ljava/lang/String;
    if-eqz v86, :cond_6

    const-string v87, ".zip"

    invoke-virtual/range {v86 .. v87}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v87

    if-eqz v87, :cond_6

    .line 1053
    const-string v87, "push_online_image"

    invoke-virtual/range {v24 .. v24}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v88

    invoke-virtual/range {v87 .. v88}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v87

    if-eqz v87, :cond_44

    .line 1055
    move-object/from16 v0, v24

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    move-object/from16 v87, v0

    invoke-virtual/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->getClockZipSourceLocation()Ljava/lang/String;

    move-result-object v87

    if-eqz v87, :cond_43

    move-object/from16 v0, v24

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    move-object/from16 v87, v0

    invoke-virtual/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->getClockZipDestinationLocation()Ljava/lang/String;

    move-result-object v87

    if-eqz v87, :cond_43

    .line 1057
    move-object/from16 v0, v24

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    move-object/from16 v87, v0

    invoke-virtual/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->getClockZipSourceLocation()Ljava/lang/String;

    move-result-object v87

    check-cast v24, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    .end local v24    # "currentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    invoke-virtual/range {v24 .. v24}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->getClockZipDestinationLocation()Ljava/lang/String;

    move-result-object v88

    move-object/from16 v0, v21

    move-object/from16 v1, v87

    move-object/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->syncFileToWd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService CLOCK_WEATHER_GRID ClockThree FMS sync completed"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1064
    .restart local v24    # "currentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    :cond_43
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService CLOCK_WEATHER_GRID src and dest path is NULL not pusing the ClockThree.zip"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1069
    :cond_44
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService CLOCK_WEATHER_GRID file for Clock Three.zipin condition "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v24 .. v24}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    new-instance v38, Ljava/io/File;

    move-object/from16 v0, v38

    move-object/from16 v1, v86

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1074
    .restart local v38    # "file":Ljava/io/File;
    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->exists()Z

    move-result v87

    if-eqz v87, :cond_6

    .line 1075
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientSyncer- deleting zip file for Clock Three.zip"

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, "in condition "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v24 .. v24}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    invoke-virtual/range {v38 .. v38}, Ljava/io/File;->delete()Z

    .line 1082
    check-cast v24, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    .end local v24    # "currentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    invoke-virtual/range {v24 .. v24}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->getClockZipDestinationLocation()Ljava/lang/String;

    move-result-object v87

    move-object/from16 v0, v21

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->removeFile(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_c

    goto/16 :goto_3

    .line 1093
    .end local v21    # "controller":Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;
    .end local v38    # "file":Ljava/io/File;
    .end local v45    # "isCurrentCityUpdateEnabled":Z
    .end local v59    # "prefs":Landroid/content/SharedPreferences;
    .end local v86    # "zipSourcePath":Ljava/lang/String;
    :cond_45
    const-string v87, "Stocks"

    move-object/from16 v0, v18

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v87

    if-eqz v87, :cond_6

    .line 1096
    :try_start_1f
    const-string v87, "weather"

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v21

    check-cast v21, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;

    .line 1097
    .restart local v21    # "controller":Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v87

    const-string v88, "ambient__pref"

    const/16 v89, 0x0

    invoke-virtual/range {v87 .. v89}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v59

    .line 1100
    .restart local v59    # "prefs":Landroid/content/SharedPreferences;
    const-string v87, "StockSymbolsBackGround"

    new-instance v88, Ljava/util/ArrayList;

    invoke-direct/range {v88 .. v88}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v88 .. v88}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v88

    move-object/from16 v0, v59

    move-object/from16 v1, v87

    move-object/from16 v2, v88

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v87

    invoke-static/range {v87 .. v87}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Ljava/util/ArrayList;

    .line 1103
    .local v67, "stockAmbientInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    const-string v87, "Stocks"

    move-object/from16 v0, p0

    move-object/from16 v1, v87

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;->isClockSelected(Ljava/lang/String;)Z

    move-result v87

    if-nez v87, :cond_46

    if-eqz v67, :cond_46

    .line 1106
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService CLOCK_STOCK  not not selected."

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_d

    goto/16 :goto_0

    .line 1153
    .end local v21    # "controller":Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;
    .end local v59    # "prefs":Landroid/content/SharedPreferences;
    .end local v67    # "stockAmbientInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :catch_d
    move-exception v36

    .line 1154
    .restart local v36    # "e":Ljava/lang/Exception;
    const-string v87, "Ambient"

    const-string v88, "!!!AmbientIntentService CLOCK_STOCK exception while pushing the images"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1115
    .end local v36    # "e":Ljava/lang/Exception;
    .restart local v21    # "controller":Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;
    .restart local v59    # "prefs":Landroid/content/SharedPreferences;
    .restart local v67    # "stockAmbientInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :cond_46
    const/16 v42, 0x0

    .restart local v42    # "i":I
    :goto_10
    :try_start_20
    invoke-virtual/range {v67 .. v67}, Ljava/util/ArrayList;->size()I

    move-result v87

    move/from16 v0, v42

    move/from16 v1, v87

    if-ge v0, v1, :cond_6

    .line 1116
    move-object/from16 v0, v67

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    .line 1117
    .local v66, "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    if-eqz v66, :cond_48

    .line 1118
    invoke-virtual/range {v66 .. v66}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getSourceLocation()Ljava/lang/String;

    move-result-object v55

    .line 1119
    .restart local v55    # "path":Ljava/lang/String;
    invoke-virtual/range {v66 .. v66}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDarkImageSourceLocation()Ljava/lang/String;

    move-result-object v32

    .line 1120
    .local v32, "darkClockPath":Ljava/lang/String;
    if-eqz v55, :cond_47

    const-string v87, ".img"

    move-object/from16 v0, v55

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v87

    if-eqz v87, :cond_47

    if-eqz v32, :cond_47

    const-string v87, ".img"

    move-object/from16 v0, v32

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v87

    if-eqz v87, :cond_47

    .line 1125
    const-string v87, "Ambient"

    new-instance v88, Ljava/lang/StringBuilder;

    invoke-direct/range {v88 .. v88}, Ljava/lang/StringBuilder;-><init>()V

    const-string v89, "AmbientIntentService CLOCK_STOCK Stock file name getting pushed = "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v66 .. v66}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanySymbol()Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, ".img"

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " SrcPath "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    move-object/from16 v0, v88

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    const-string v89, " DestPath  "

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v66 .. v66}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v89

    invoke-virtual/range {v88 .. v89}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v88

    invoke-virtual/range {v88 .. v88}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v88

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    invoke-virtual/range {v66 .. v66}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDarkImageDestinationLocation()Ljava/lang/String;

    move-result-object v87

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    move-object/from16 v2, v87

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->syncFileToWd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    invoke-virtual/range {v66 .. v66}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v87

    move-object/from16 v0, v21

    move-object/from16 v1, v55

    move-object/from16 v2, v87

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->syncFileToWd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService CLOCK_STOCK sync completed "

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    .end local v32    # "darkClockPath":Ljava/lang/String;
    .end local v55    # "path":Ljava/lang/String;
    :goto_11
    add-int/lit8 v42, v42, 0x1

    goto/16 :goto_10

    .line 1141
    .restart local v32    # "darkClockPath":Ljava/lang/String;
    .restart local v55    # "path":Ljava/lang/String;
    :cond_47
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService CLOCK_STOCK sync error invalid image path "

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 1147
    .end local v32    # "darkClockPath":Ljava/lang/String;
    .end local v55    # "path":Ljava/lang/String;
    :cond_48
    const-string v87, "Ambient"

    const-string v88, "AmbientIntentService CLOCK_STOCK invalid stockAmbientInfo"

    invoke-static/range {v87 .. v88}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_d

    goto :goto_11
.end method

.method public pushWorldClockAppsZipToWD(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "clockName"    # Ljava/lang/String;
    .param p2, "appZipLocation"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 1557
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockUtils()Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;

    move-result-object v1

    .line 1559
    .local v1, "clockUtilsInstance":Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;
    const-string v7, "assetFileName"

    invoke-virtual {v1, p1, v7}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1561
    .local v3, "fileName":Ljava/lang/String;
    const-string v7, "appZipName"

    invoke-virtual {v1, p1, v7}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1564
    .local v0, "appZipName":Ljava/lang/String;
    invoke-virtual {v1, v3, v0}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockAppInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 1567
    .local v4, "inputStream":Ljava/io/InputStream;
    if-eqz v4, :cond_0

    .line 1568
    :try_start_0
    const-string v7, "Ambient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AmbientIntentService Asset file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    if-eqz v3, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1571
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v4, p2, v9}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsSyncFile(ILjava/io/InputStream;Ljava/lang/String;I)I

    move-result v5

    .line 1577
    .local v5, "ret":I
    const-string v7, "Ambient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AmbientIntentService clock app.zip push status of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockUtils()Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->deleteClockAppZip(Ljava/lang/String;)V

    .line 1596
    .end local v5    # "ret":I
    :goto_0
    return v6

    .line 1587
    :cond_0
    const-string v6, "Ambient"

    const-string v7, "AmbientIntentService pushWorldClockAppsZipToWD : InputStream is NULL"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1596
    :cond_1
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 1591
    :catch_0
    move-exception v2

    .line 1592
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "Ambient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AmbientIntentService Failed to copy asset file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " details: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

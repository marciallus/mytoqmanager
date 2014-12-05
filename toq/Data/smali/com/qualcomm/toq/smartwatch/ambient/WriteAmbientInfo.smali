.class public Lcom/qualcomm/toq/smartwatch/ambient/WriteAmbientInfo;
.super Ljava/lang/Object;
.source "WriteAmbientInfo.java"


# static fields
.field private static final APP_IMAGE:I = 0x6

.field private static final BLUE_IMAGE:I = 0x0

.field private static final CLOCK_IMAGE_DARK:I = 0x5

.field private static final CLOCK_IMAGE_WHITE:I = 0x4

.field private static final DARK_IMAGE:I = 0x1

.field private static final IMAGE_TAG:Ljava/lang/String; = "images"

.field private static final TAG:Ljava/lang/String; = "WriteAmbientInfo"

.field private static final WHITE_IMAGE:I = 0x2


# instance fields
.field private ambientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;)V
    .locals 0
    .param p1, "ambientDisplay"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/WriteAmbientInfo;->ambientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;

    .line 39
    return-void
.end method

.method private generateZipEntry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "sourcePath"    # Ljava/lang/String;

    .prologue
    .line 541
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createAmbientImageFromInfo()Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    const/16 v20, 0x0

    .line 44
    .local v20, "bitmap":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 45
    .local v7, "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WriteAmbientInfo;->ambientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;

    check-cast v4, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;

    .line 47
    .local v4, "display":Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/WriteAmbientInfo;->ambientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;

    instance-of v3, v3, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;

    if-eqz v3, :cond_7

    .line 49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WriteAmbientInfo;->ambientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;

    move-object/from16 v25, v0

    check-cast v25, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;

    .line 50
    .local v25, "stockAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;
    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->getAmbientInfo()Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;

    move-result-object v7

    .line 51
    const/4 v3, 0x2

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v3}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->writeClockDataOntoBitmap(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;I)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 53
    const/4 v5, 0x0

    .line 55
    .local v5, "outArray":[B
    if-eqz v20, :cond_1

    .line 56
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v3}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBitmapinIMGFormat(Landroid/graphics/Bitmap;Z)[B

    move-result-object v5

    .line 62
    const-string v3, "stock"

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 63
    .local v6, "stockPath":Ljava/io/File;
    if-eqz v6, :cond_2

    .line 65
    const/4 v8, 0x4

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/qualcomm/toq/smartwatch/ambient/WriteAmbientInfo;->writeFileForSourceLocation(Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;[BLjava/io/File;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;I)V

    .line 76
    const/16 v20, 0x0

    .line 77
    const/4 v5, 0x0

    .line 78
    const/4 v6, 0x0

    .line 79
    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v3}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->writeClockDataOntoBitmap(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;I)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 81
    const-string v3, "WriteAmbientInfo"

    const-string v8, "Clock Image is created successfully"

    invoke-static {v3, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    if-eqz v20, :cond_3

    .line 83
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v3}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBitmapinIMGFormat(Landroid/graphics/Bitmap;Z)[B

    move-result-object v5

    .line 89
    const-string v3, "stock"

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 90
    if-eqz v6, :cond_4

    .line 92
    const/4 v8, 0x5

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/qualcomm/toq/smartwatch/ambient/WriteAmbientInfo;->writeFileForSourceLocation(Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;[BLjava/io/File;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;I)V

    .line 102
    const/16 v20, 0x0

    .line 103
    const/4 v5, 0x0

    .line 104
    const/4 v6, 0x0

    .line 105
    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->writeDataOntoBitmap(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 106
    const-string v3, "WriteAmbientInfo"

    const-string v8, "Clock Image is created successfully"

    invoke-static {v3, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    if-eqz v20, :cond_5

    .line 108
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v3}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBitmapinIMGFormat(Landroid/graphics/Bitmap;Z)[B

    move-result-object v5

    .line 114
    const-string v3, "stock"

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientAppImageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 115
    if-eqz v6, :cond_6

    .line 117
    const/4 v8, 0x6

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/qualcomm/toq/smartwatch/ambient/WriteAmbientInfo;->writeFileForSourceLocation(Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;[BLjava/io/File;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;I)V

    .line 277
    .end local v5    # "outArray":[B
    .end local v6    # "stockPath":Ljava/io/File;
    .end local v25    # "stockAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/WriteAmbientInfo;->ambientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;

    :goto_1
    return-object v3

    .line 59
    .restart local v5    # "outArray":[B
    .restart local v25    # "stockAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;
    :cond_1
    const-string v3, "WriteAmbientInfo"

    const-string v8, "Returning Bitmap is null File not written"

    invoke-static {v3, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v3, 0x0

    goto :goto_1

    .line 72
    .restart local v6    # "stockPath":Ljava/io/File;
    :cond_2
    const-string v3, "WriteAmbientInfo"

    const-string v8, "Can not write File on Sd Card ,Media not mounted"

    invoke-static {v3, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v3, 0x0

    goto :goto_1

    .line 86
    :cond_3
    const-string v3, "WriteAmbientInfo"

    const-string v8, "Returning Bitmap is null File not written"

    invoke-static {v3, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v3, 0x0

    goto :goto_1

    .line 99
    :cond_4
    const-string v3, "WriteAmbientInfo"

    const-string v8, "Can not write File on Sd Card ,Media not mounted"

    invoke-static {v3, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/4 v3, 0x0

    goto :goto_1

    .line 111
    :cond_5
    const-string v3, "WriteAmbientInfo"

    const-string v8, "Returning Bitmap is null File not written"

    invoke-static {v3, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v3, 0x0

    goto :goto_1

    .line 124
    :cond_6
    const-string v3, "WriteAmbientInfo"

    const-string v8, "Can not write File on Sd Card ,Media not mounted"

    invoke-static {v3, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v3, 0x0

    goto :goto_1

    .line 129
    .end local v5    # "outArray":[B
    .end local v6    # "stockPath":Ljava/io/File;
    .end local v25    # "stockAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/WriteAmbientInfo;->ambientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;

    instance-of v3, v3, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;

    if-eqz v3, :cond_0

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 132
    .local v26, "t1":J
    const-string v3, "Timer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "timer start"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    move-wide/from16 v0, v26

    invoke-direct {v9, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WriteAmbientInfo;->ambientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;

    move-object/from16 v28, v0

    check-cast v28, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;

    .line 135
    .local v28, "weatherAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;
    invoke-virtual/range {v28 .. v28}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->getAmbientInfo()Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;

    move-result-object v7

    .line 137
    instance-of v3, v7, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    if-eqz v3, :cond_a

    .line 138
    const-string v8, "push_online_image"

    move-object v3, v7

    check-cast v3, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 139
    const-string v3, "WriteAmbientInfo"

    const-string v8, "Processing CurrentCityAmbientInfo Images"

    invoke-static {v3, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->writeCurrentCityDataOntoBitmap(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;

    move-result-object v21

    .line 141
    .local v21, "cityClockImageRepo":Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;
    if-eqz v21, :cond_a

    invoke-virtual/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherConditionImage()[Landroid/graphics/Bitmap;

    move-result-object v3

    array-length v3, v3

    const/4 v8, 0x3

    if-ne v3, v8, :cond_a

    invoke-virtual/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherHourTempImage()[Landroid/graphics/Bitmap;

    move-result-object v3

    array-length v3, v3

    const/4 v8, 0x3

    if-ne v3, v8, :cond_a

    .line 144
    const-string v3, "WriteAmbientInfo"

    const-string v8, "Repo got created for CurrentCity Ambient Info"

    invoke-static {v3, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/4 v10, 0x0

    .line 147
    .local v10, "currentTempBitmap":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 151
    .local v11, "weatherConditionBitmap":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    const/4 v3, 0x3

    if-ge v13, v3, :cond_9

    .line 153
    invoke-virtual/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherHourTempImage()[Landroid/graphics/Bitmap;

    move-result-object v3

    aget-object v10, v3, v13

    .line 154
    invoke-virtual/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherConditionImage()[Landroid/graphics/Bitmap;

    move-result-object v3

    aget-object v11, v3, v13

    .line 155
    if-eqz v10, :cond_8

    if-eqz v11, :cond_8

    move-object/from16 v8, p0

    move-object v9, v4

    move-object v12, v7

    .line 157
    invoke-virtual/range {v8 .. v13}, Lcom/qualcomm/toq/smartwatch/ambient/WriteAmbientInfo;->createBitmapSourceLocation(Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;I)V

    .line 163
    :cond_8
    invoke-virtual/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherHourTempImage()[Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v8, 0x0

    aput-object v8, v3, v13

    .line 164
    invoke-virtual/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherConditionImage()[Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v8, 0x0

    aput-object v8, v3, v13

    .line 151
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 167
    :cond_9
    const-string v3, "weather"

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v22

    .line 168
    .local v22, "currentCityParentFile":Ljava/io/File;
    if-eqz v22, :cond_a

    .line 169
    new-instance v23, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "CurrentCityWeather"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v23, "currentCitySourcePath":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 174
    new-instance v29, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "ClockThree.zip"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v29, "zipDestinationLocation":Ljava/io/File;
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_b

    .line 178
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->createNewFile()Z

    .line 185
    :goto_3
    const-string v3, "WriteAmbientInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ZIp Destination Location : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v24, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v3, v2}, Lcom/qualcomm/toq/smartwatch/ambient/WriteAmbientInfo;->generateSourceFileList(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    .line 193
    const-string v3, "WriteAmbientInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "List of files"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v8, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WriteAmbientInfo;->createClockZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object v3, v7

    .line 198
    check-cast v3, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->setClockZipSourceLocation(Ljava/lang/String;)V

    .line 225
    .end local v10    # "currentTempBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "weatherConditionBitmap":Landroid/graphics/Bitmap;
    .end local v13    # "i":I
    .end local v21    # "cityClockImageRepo":Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;
    .end local v22    # "currentCityParentFile":Ljava/io/File;
    .end local v23    # "currentCitySourcePath":Ljava/io/File;
    .end local v24    # "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v29    # "zipDestinationLocation":Ljava/io/File;
    :cond_a
    :goto_4
    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->writeClockDataOntoBitmap(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 226
    const/4 v5, 0x0

    .line 228
    .restart local v5    # "outArray":[B
    if-eqz v20, :cond_d

    .line 229
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v3}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBitmapinIMGFormat(Landroid/graphics/Bitmap;Z)[B

    move-result-object v5

    .line 237
    const-string v3, "weather"

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    .line 238
    .local v17, "weatherPath":Ljava/io/File;
    if-eqz v17, :cond_e

    .line 239
    const/16 v19, 0x4

    move-object/from16 v14, p0

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v7

    invoke-virtual/range {v14 .. v19}, Lcom/qualcomm/toq/smartwatch/ambient/WriteAmbientInfo;->writeFileForSourceLocation(Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;[BLjava/io/File;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;I)V

    .line 250
    const/16 v20, 0x0

    .line 251
    const/4 v5, 0x0

    .line 252
    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->writeDataOntoBitmap(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 253
    if-eqz v20, :cond_f

    .line 254
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v3}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBitmapinIMGFormat(Landroid/graphics/Bitmap;Z)[B

    move-result-object v5

    .line 261
    const/16 v17, 0x0

    .line 262
    const-string v3, "weather"

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientAppImageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    .line 263
    if-eqz v17, :cond_10

    .line 264
    const/16 v19, 0x6

    move-object/from16 v14, p0

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v18, v7

    invoke-virtual/range {v14 .. v19}, Lcom/qualcomm/toq/smartwatch/ambient/WriteAmbientInfo;->writeFileForSourceLocation(Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;[BLjava/io/File;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;I)V

    goto/16 :goto_0

    .line 181
    .end local v5    # "outArray":[B
    .end local v17    # "weatherPath":Ljava/io/File;
    .restart local v10    # "currentTempBitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "weatherConditionBitmap":Landroid/graphics/Bitmap;
    .restart local v13    # "i":I
    .restart local v21    # "cityClockImageRepo":Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;
    .restart local v22    # "currentCityParentFile":Ljava/io/File;
    .restart local v23    # "currentCitySourcePath":Ljava/io/File;
    .restart local v29    # "zipDestinationLocation":Ljava/io/File;
    :cond_b
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->delete()Z

    .line 182
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->createNewFile()Z

    goto/16 :goto_3

    .line 212
    .end local v10    # "currentTempBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "weatherConditionBitmap":Landroid/graphics/Bitmap;
    .end local v13    # "i":I
    .end local v21    # "cityClockImageRepo":Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;
    .end local v22    # "currentCityParentFile":Ljava/io/File;
    .end local v23    # "currentCitySourcePath":Ljava/io/File;
    .end local v29    # "zipDestinationLocation":Ljava/io/File;
    :cond_c
    const-string v3, "weather"

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v22

    .line 213
    .restart local v22    # "currentCityParentFile":Ljava/io/File;
    if-eqz v22, :cond_a

    .line 214
    new-instance v30, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "ClockThree.zip"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v30, "zipFileLocation":Ljava/io/File;
    if-eqz v30, :cond_a

    move-object v3, v7

    .line 218
    check-cast v3, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->setClockZipSourceLocation(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 233
    .end local v22    # "currentCityParentFile":Ljava/io/File;
    .end local v30    # "zipFileLocation":Ljava/io/File;
    .restart local v5    # "outArray":[B
    :cond_d
    const-string v3, "WriteAmbientInfo"

    const-string v8, "Returning Bitmap is null File not written"

    invoke-static {v3, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 246
    .restart local v17    # "weatherPath":Ljava/io/File;
    :cond_e
    const-string v3, "WriteAmbientInfo"

    const-string v8, "Can not write File on Sd Card ,Media not mounted"

    invoke-static {v3, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 258
    :cond_f
    const-string v3, "WriteAmbientInfo"

    const-string v8, "Returning Bitmap is null File not written"

    invoke-static {v3, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 271
    :cond_10
    const-string v3, "WriteAmbientInfo"

    const-string v8, "Can not write File on Sd Card ,Media not mounted"

    invoke-static {v3, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method public createBitmapSourceLocation(Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;I)V
    .locals 14
    .param p1, "display"    # Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;
    .param p2, "currentTempBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "weatherConditionBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    .param p5, "index"    # I

    .prologue
    .line 381
    const/4 v4, 0x0

    .line 382
    .local v4, "tempFileSuffix":Ljava/lang/String;
    const/4 v10, 0x0

    .line 383
    .local v10, "weatherFileSuffix":Ljava/lang/String;
    packed-switch p5, :pswitch_data_0

    .line 397
    :goto_0
    const/4 v1, 0x0

    .line 398
    .local v1, "currentCityWeatherPath":Ljava/io/File;
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {p1, v0, v11}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBitmapinIMGFormat(Landroid/graphics/Bitmap;Z)[B

    move-result-object v5

    .line 400
    .local v5, "tempOutArray":[B
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-virtual {p1, v0, v11}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBitmapinIMGFormat(Landroid/graphics/Bitmap;Z)[B

    move-result-object v9

    .line 403
    .local v9, "weatherCondOutArray":[B
    const-string v11, "weather"

    invoke-static {v11}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 404
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_1

    .line 405
    new-instance v1, Ljava/io/File;

    .end local v1    # "currentCityWeatherPath":Ljava/io/File;
    const-string v11, "CurrentCityWeather/images"

    invoke-direct {v1, v2, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 408
    .restart local v1    # "currentCityWeatherPath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 409
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v11

    if-nez v11, :cond_0

    .line 410
    const-string v11, "WriteAmbientInfo"

    const-string v12, "Error Creating currentCityWeatherPath folder on SD Card"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v6, p1

    .line 415
    check-cast v6, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;

    .local v6, "weatherAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;
    move-object/from16 v7, p4

    .line 416
    check-cast v7, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 418
    .local v7, "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    new-instance v3, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".img"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 422
    .local v3, "tempFile":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".img"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 427
    .local v8, "weatherCondFile":Ljava/io/File;
    invoke-virtual {p1, v5, v3}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBytesToFile([BLjava/io/File;)V

    .line 428
    invoke-virtual {p1, v9, v8}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBytesToFile([BLjava/io/File;)V

    .line 429
    invoke-virtual {v6, v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->setAmbientInfo(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)V

    .line 430
    const-string v11, "WriteAmbientInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "File written "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Weath Cond file"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .end local v3    # "tempFile":Ljava/io/File;
    .end local v6    # "weatherAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;
    .end local v7    # "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v8    # "weatherCondFile":Ljava/io/File;
    :goto_1
    return-void

    .line 385
    .end local v1    # "currentCityWeatherPath":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "tempOutArray":[B
    .end local v9    # "weatherCondOutArray":[B
    :pswitch_0
    const-string v4, "blue_temperature"

    .line 386
    const-string v10, "blue_graphic"

    .line 387
    goto/16 :goto_0

    .line 389
    :pswitch_1
    const-string v4, "dark_temperature"

    .line 390
    const-string v10, "dark_graphic"

    .line 391
    goto/16 :goto_0

    .line 393
    :pswitch_2
    const-string v4, "white_temperature"

    .line 394
    const-string v10, "white_graphic"

    goto/16 :goto_0

    .line 434
    .restart local v1    # "currentCityWeatherPath":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v5    # "tempOutArray":[B
    .restart local v9    # "weatherCondOutArray":[B
    :cond_1
    const-string v11, "WriteAmbientInfo"

    const-string v12, "parent directory returned as null"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 383
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public createClockZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 17
    .param p1, "zipFile"    # Ljava/lang/String;
    .param p2, "sourcePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 450
    .local p3, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v14, 0x400

    new-array v1, v14, [B

    .line 451
    .local v1, "buffer":[B
    const/4 v5, 0x0

    .line 452
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    .line 453
    .local v12, "zos":Ljava/util/zip/ZipOutputStream;
    const/4 v8, 0x0

    .line 456
    .local v8, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v13, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v13, v6}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 459
    .end local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    .local v13, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    move-object v9, v8

    .end local v8    # "in":Ljava/io/FileInputStream;
    .local v9, "in":Ljava/lang/Object;
    :goto_0
    :try_start_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 461
    .local v4, "file":Ljava/lang/String;
    const-string v14, "WriteAmbientInfo"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "File Added : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    new-instance v11, Ljava/util/zip/ZipEntry;

    invoke-direct {v11, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 463
    .local v11, "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {v13, v11}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 465
    new-instance v8, Ljava/io/FileInputStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 468
    .end local v9    # "in":Ljava/lang/Object;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    :goto_1
    :try_start_4
    invoke-virtual {v8, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    .local v10, "len":I
    if-lez v10, :cond_2

    .line 469
    const/4 v14, 0x0

    invoke-virtual {v13, v1, v14, v10}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 481
    .end local v4    # "file":Ljava/lang/String;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v10    # "len":I
    .end local v11    # "ze":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v3

    move-object v12, v13

    .end local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    move-object v5, v6

    .line 482
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v3, "ex":Ljava/io/IOException;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 488
    if-eqz v12, :cond_0

    .line 489
    :try_start_6
    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 490
    const/4 v12, 0x0

    .line 492
    :cond_0
    if-eqz v8, :cond_1

    .line 493
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 494
    const/4 v8, 0x0

    .line 503
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v8    # "in":Ljava/io/FileInputStream;
    :cond_1
    :goto_3
    return-void

    .line 472
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v4    # "file":Ljava/lang/String;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "len":I
    .restart local v11    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    :cond_2
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 473
    const/4 v8, 0x0

    .line 474
    invoke-virtual {v13}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 475
    invoke-virtual {v13}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v9, v8

    .line 477
    .restart local v9    # "in":Ljava/lang/Object;
    goto :goto_0

    .line 479
    .end local v4    # "file":Ljava/lang/String;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .end local v10    # "len":I
    .end local v11    # "ze":Ljava/util/zip/ZipEntry;
    :cond_3
    :try_start_8
    const-string v14, "WriteAmbientInfo"

    const-string v15, "Zipping Done"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 488
    if-eqz v13, :cond_7

    .line 489
    :try_start_9
    invoke-virtual {v13}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 490
    const/4 v12, 0x0

    .line 492
    .end local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    :goto_4
    if-eqz v9, :cond_6

    .line 493
    :try_start_a
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 494
    const/4 v8, 0x0

    .end local v9    # "in":Ljava/lang/Object;
    :goto_5
    move-object v5, v6

    .line 500
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 497
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "in":Ljava/lang/Object;
    .restart local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    :catch_1
    move-exception v2

    move-object v12, v13

    .line 499
    .end local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    :goto_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v8, v9

    .restart local v8    # "in":Ljava/io/FileInputStream;
    move-object v5, v6

    .line 502
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 497
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "in":Ljava/lang/Object;
    .restart local v3    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 499
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 486
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 488
    :goto_7
    if-eqz v12, :cond_4

    .line 489
    :try_start_b
    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 490
    const/4 v12, 0x0

    .line 492
    :cond_4
    if-eqz v8, :cond_5

    .line 493
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 494
    const/4 v8, 0x0

    .line 500
    :cond_5
    :goto_8
    throw v14

    .line 497
    :catch_3
    move-exception v2

    .line 499
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 486
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v14

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_7

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_2
    move-exception v14

    move-object v12, v13

    .end local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_7

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .end local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v9    # "in":Ljava/lang/Object;
    .restart local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_3
    move-exception v14

    move-object v8, v9

    .restart local v8    # "in":Ljava/io/FileInputStream;
    move-object v12, v13

    .end local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 481
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "in":Ljava/lang/Object;
    :catch_4
    move-exception v3

    goto :goto_2

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v3

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .end local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v9    # "in":Ljava/lang/Object;
    .restart local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    :catch_6
    move-exception v3

    move-object v8, v9

    .restart local v8    # "in":Ljava/io/FileInputStream;
    move-object v12, v13

    .end local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 497
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v2

    goto :goto_6

    :cond_6
    move-object v8, v9

    .end local v9    # "in":Ljava/lang/Object;
    .local v8, "in":Ljava/lang/Object;
    goto :goto_5

    .end local v8    # "in":Ljava/lang/Object;
    .end local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v9    # "in":Ljava/lang/Object;
    .restart local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    :cond_7
    move-object v12, v13

    .end local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    goto :goto_4
.end method

.method public generateSourceFileList(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .param p1, "node"    # Ljava/io/File;
    .param p2, "sourcePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 516
    .local p3, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 517
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lcom/qualcomm/toq/smartwatch/ambient/WriteAmbientInfo;->generateZipEntry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 522
    const-string v5, "WriteAmbientInfo"

    const-string v6, "Insise a directory"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 524
    .local v4, "subNote":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 525
    .local v1, "filename":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v5, p2, p3}, Lcom/qualcomm/toq/smartwatch/ambient/WriteAmbientInfo;->generateSourceFileList(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    .line 524
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 531
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "subNote":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public writeFileForSourceLocation(Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;[BLjava/io/File;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;I)V
    .locals 14
    .param p1, "display"    # Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;
    .param p2, "outArray"    # [B
    .param p3, "directoryPath"    # Ljava/io/File;
    .param p4, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    .param p5, "type"    # I

    .prologue
    .line 285
    instance-of v11, p1, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;

    if-eqz v11, :cond_5

    .line 286
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ambient/WriteAmbientInfo;->ambientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;

    check-cast v7, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;

    .local v7, "stockAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;
    move-object/from16 v8, p4

    .line 287
    check-cast v8, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    .line 289
    .local v8, "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanySymbol()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "companySymbol":Ljava/lang/String;
    const-string v11, "[%*!@$^()?,.;=/ ]"

    const-string v12, ""

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "changedSymbol":Ljava/lang/String;
    const/4 v4, 0x0

    .line 295
    .local v4, "file":Ljava/io/File;
    const/4 v11, 0x4

    move/from16 v0, p5

    if-ne v0, v11, :cond_3

    .line 296
    new-instance v4, Ljava/io/File;

    .end local v4    # "file":Ljava/io/File;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "WHITE_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".img"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    .restart local v4    # "file":Ljava/io/File;
    move-object/from16 v0, p2

    invoke-virtual {p1, v0, v4}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBytesToFile([BLjava/io/File;)V

    .line 300
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setSourceLocation(Ljava/lang/String;)V

    .line 316
    :cond_0
    :goto_0
    invoke-virtual {v7, v8}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->setAmbientInfo(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)V

    .line 317
    if-eqz v4, :cond_1

    .line 318
    const-string v11, "WriteAmbientInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "File written "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_1
    const-string v11, "WriteAmbientInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Android Path "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getSourceLocation()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v11, "WriteAmbientInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WD Path "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .end local v2    # "changedSymbol":Ljava/lang/String;
    .end local v3    # "companySymbol":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "stockAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;
    .end local v8    # "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :cond_2
    :goto_1
    return-void

    .line 302
    .restart local v2    # "changedSymbol":Ljava/lang/String;
    .restart local v3    # "companySymbol":Ljava/lang/String;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "stockAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;
    .restart local v8    # "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :cond_3
    const/4 v11, 0x5

    move/from16 v0, p5

    if-ne v0, v11, :cond_4

    .line 303
    new-instance v4, Ljava/io/File;

    .end local v4    # "file":Ljava/io/File;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "DARK_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".img"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    .restart local v4    # "file":Ljava/io/File;
    move-object/from16 v0, p2

    invoke-virtual {p1, v0, v4}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBytesToFile([BLjava/io/File;)V

    .line 307
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setDarkImageSourceLocation(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 309
    :cond_4
    const/4 v11, 0x6

    move/from16 v0, p5

    if-ne v0, v11, :cond_0

    .line 310
    new-instance v4, Ljava/io/File;

    .end local v4    # "file":Ljava/io/File;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".img"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    .restart local v4    # "file":Ljava/io/File;
    move-object/from16 v0, p2

    invoke-virtual {p1, v0, v4}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBytesToFile([BLjava/io/File;)V

    .line 313
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setAppImageSourceLocation(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 323
    .end local v2    # "changedSymbol":Ljava/lang/String;
    .end local v3    # "companySymbol":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "stockAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;
    .end local v8    # "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :cond_5
    instance-of v11, p1, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;

    if-eqz v11, :cond_2

    move-object v9, p1

    .line 324
    check-cast v9, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;

    .local v9, "weatherAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;
    move-object/from16 v10, p4

    .line 325
    check-cast v10, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 327
    .local v10, "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    invoke-virtual {v10}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 328
    .local v6, "key":Ljava/lang/String;
    const-string v5, ""

    .line 329
    .local v5, "fileName":Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 330
    move-object v5, v6

    .line 337
    :goto_2
    const-string v11, "[%*!@$^()?,.;=/ ]"

    const-string v12, ""

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "changedFileName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 342
    .restart local v4    # "file":Ljava/io/File;
    instance-of v11, v10, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    if-eqz v11, :cond_8

    .line 343
    new-instance v4, Ljava/io/File;

    .end local v4    # "file":Ljava/io/File;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "CC."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".img"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    .restart local v4    # "file":Ljava/io/File;
    :goto_3
    move-object/from16 v0, p2

    invoke-virtual {p1, v0, v4}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBytesToFile([BLjava/io/File;)V

    .line 353
    const/4 v11, 0x4

    move/from16 v0, p5

    if-ne v0, v11, :cond_9

    .line 354
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setSourceLocation(Ljava/lang/String;)V

    .line 360
    :cond_6
    :goto_4
    invoke-virtual {v9, v10}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->setAmbientInfo(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)V

    .line 361
    const-string v11, "WriteAmbientInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "File written "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v11, "WriteAmbientInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Android Path "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getSourceLocation()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v11, "WriteAmbientInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "WD Path "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 333
    .end local v1    # "changedFileName":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getStateName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCountryName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 348
    .restart local v1    # "changedFileName":Ljava/lang/String;
    .restart local v4    # "file":Ljava/io/File;
    :cond_8
    new-instance v4, Ljava/io/File;

    .end local v4    # "file":Ljava/io/File;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".img"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v4    # "file":Ljava/io/File;
    goto/16 :goto_3

    .line 356
    :cond_9
    const/4 v11, 0x6

    move/from16 v0, p5

    if-ne v0, v11, :cond_6

    .line 357
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setAppImageSourceLocation(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.class public Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;
.super Ljava/lang/Object;
.source "AmbientImageCreator.java"


# static fields
.field private static final APP_IMAGE:I = 0x6

.field private static final BLUE_IMAGE:I = 0x0

.field private static final CLOCK_IMAGE_DARK:I = 0x5

.field private static final CLOCK_IMAGE_WHITE:I = 0x4

.field private static final DARK_IMAGE:I = 0x1

.field private static final IMAGE_TAG:Ljava/lang/String; = "images"

.field private static final WHITE_IMAGE:I = 0x2


# instance fields
.field private ambientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ambient/ImageCreatorFactory;->getInstance()Lcom/qualcomm/toq/smartwatch/ambient/ImageCreatorFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/toq/smartwatch/ambient/ImageCreatorFactory;->getImageCreator(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;->ambientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;

    .line 41
    return-void
.end method

.method private generateZipEntry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "sourcePath"    # Ljava/lang/String;

    .prologue
    .line 589
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
.method public createAmbientImageAndUpdateImagePaths(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)I
    .locals 30
    .param p1, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    const-string v3, "Ambient"

    const-string v7, "AmbientImageCreator-createAmbientImageAndUpdateImagePaths"

    invoke-static {v3, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/16 v19, 0x0

    .line 63
    .local v19, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;->ambientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;

    check-cast v4, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;

    .line 65
    .local v4, "display":Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;->ambientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;

    instance-of v3, v3, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;

    if-eqz v3, :cond_7

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;->ambientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;

    move-object/from16 v24, v0

    check-cast v24, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;

    .line 69
    .local v24, "stockAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;
    const/4 v3, 0x2

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->writeClockDataOntoBitmap(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;I)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 71
    const/4 v5, 0x0

    .line 73
    .local v5, "outArray":[B
    if-eqz v19, :cond_1

    .line 74
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v3}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBitmapinIMGFormat(Landroid/graphics/Bitmap;Z)[B

    move-result-object v5

    .line 81
    const-string v3, "stock"

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 82
    .local v6, "stockPath":Ljava/io/File;
    if-eqz v6, :cond_2

    .line 84
    const/4 v8, 0x4

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;->writeFileForSourceLocation(Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;[BLjava/io/File;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;I)V

    .line 96
    const/16 v19, 0x0

    .line 97
    const/4 v5, 0x0

    .line 98
    const/4 v6, 0x0

    .line 99
    const/4 v3, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->writeClockDataOntoBitmap(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;I)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 101
    const-string v3, "Ambient"

    const-string v7, "AmbientImageCreator- AmbientImageCreator-Clock Image is created successfully"

    invoke-static {v3, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    if-eqz v19, :cond_3

    .line 104
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v3}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBitmapinIMGFormat(Landroid/graphics/Bitmap;Z)[B

    move-result-object v5

    .line 111
    const-string v3, "stock"

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 112
    if-eqz v6, :cond_4

    .line 114
    const/4 v8, 0x5

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;->writeFileForSourceLocation(Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;[BLjava/io/File;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;I)V

    .line 125
    const/16 v19, 0x0

    .line 126
    const/4 v5, 0x0

    .line 127
    const/4 v6, 0x0

    .line 128
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->writeDataOntoBitmap(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 129
    const-string v3, "Ambient"

    const-string v7, "AmbientImageCreator-Clock Image is created successfully"

    invoke-static {v3, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    if-eqz v19, :cond_5

    .line 132
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v3}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBitmapinIMGFormat(Landroid/graphics/Bitmap;Z)[B

    move-result-object v5

    .line 139
    const-string v3, "stock"

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientAppImageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 140
    if-eqz v6, :cond_6

    .line 142
    const/4 v8, 0x6

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    invoke-virtual/range {v3 .. v8}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;->writeFileForSourceLocation(Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;[BLjava/io/File;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;I)V

    .line 308
    .end local v5    # "outArray":[B
    .end local v6    # "stockPath":Ljava/io/File;
    .end local v24    # "stockAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 77
    .restart local v5    # "outArray":[B
    .restart local v24    # "stockAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;
    :cond_1
    const-string v3, "Ambient"

    const-string v7, "AmbientImageCreator- Returning Bitmap is null File not written"

    invoke-static {v3, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v3, -0x1

    goto :goto_1

    .line 91
    .restart local v6    # "stockPath":Ljava/io/File;
    :cond_2
    const-string v3, "Ambient"

    const-string v7, "AmbientImageCreator-Can not write File on Sd Card ,Media not mounted"

    invoke-static {v3, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v3, -0x1

    goto :goto_1

    .line 107
    :cond_3
    const-string v3, "Ambient"

    const-string v7, "AmbientImageCreator-AmbientImageCreator-Returning Bitmap is null File not written"

    invoke-static {v3, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v3, -0x1

    goto :goto_1

    .line 121
    :cond_4
    const-string v3, "Ambient"

    const-string v7, "AmbientImageCreator-Can not write File on Sd Card ,Media not mounted"

    invoke-static {v3, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/4 v3, -0x1

    goto :goto_1

    .line 135
    :cond_5
    const-string v3, "Ambient"

    const-string v7, "AmbientImageCreator-Returning Bitmap is null File not written"

    invoke-static {v3, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v3, -0x1

    goto :goto_1

    .line 149
    :cond_6
    const-string v3, "Ambient"

    const-string v7, "AmbientImageCreator-Can not write File on Sd Card ,Media not mounted"

    invoke-static {v3, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v3, -0x1

    goto :goto_1

    .line 155
    .end local v5    # "outArray":[B
    .end local v6    # "stockPath":Ljava/io/File;
    .end local v24    # "stockAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;->ambientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;

    instance-of v3, v3, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;

    if-eqz v3, :cond_0

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 158
    .local v25, "t1":J
    const-string v3, "Ambient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AmbientImageCreator-createAmbientImageAndUpdateImagePaths timer start"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    move-wide/from16 v0, v25

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;->ambientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;

    move-object/from16 v27, v0

    check-cast v27, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;

    .line 164
    .local v27, "weatherAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    if-eqz v3, :cond_a

    .line 165
    const-string v7, "push_online_image"

    move-object/from16 v3, p1

    check-cast v3, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 166
    const-string v3, "Ambient"

    const-string v7, "AmbientImageCreator-createAmbientImageAndUpdateImagePaths Processing CurrentCityAmbientInfo Images"

    invoke-static {v3, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->writeCurrentCityDataOntoBitmap(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;

    move-result-object v20

    .line 169
    .local v20, "cityClockImageRepo":Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;
    if-eqz v20, :cond_a

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherConditionImage()[Landroid/graphics/Bitmap;

    move-result-object v3

    array-length v3, v3

    const/4 v7, 0x3

    if-ne v3, v7, :cond_a

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherHourTempImage()[Landroid/graphics/Bitmap;

    move-result-object v3

    array-length v3, v3

    const/4 v7, 0x3

    if-ne v3, v7, :cond_a

    .line 172
    const-string v3, "Ambient"

    const-string v7, "AmbientImageCreator-createAmbientImageAndUpdateImagePaths Repo got created for CurrentCity Ambient Info"

    invoke-static {v3, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/4 v9, 0x0

    .line 175
    .local v9, "currentTempBitmap":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 179
    .local v10, "weatherConditionBitmap":Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    const/4 v3, 0x3

    if-ge v12, v3, :cond_9

    .line 181
    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherHourTempImage()[Landroid/graphics/Bitmap;

    move-result-object v3

    aget-object v9, v3, v12

    .line 182
    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherConditionImage()[Landroid/graphics/Bitmap;

    move-result-object v3

    aget-object v10, v3, v12

    .line 183
    if-eqz v9, :cond_8

    if-eqz v10, :cond_8

    move-object/from16 v7, p0

    move-object v8, v4

    move-object/from16 v11, p1

    .line 185
    invoke-virtual/range {v7 .. v12}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;->createBitmapSourceLocation(Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;I)V

    .line 191
    :cond_8
    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherHourTempImage()[Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v7, 0x0

    aput-object v7, v3, v12

    .line 192
    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherConditionImage()[Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v7, 0x0

    aput-object v7, v3, v12

    .line 179
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 195
    :cond_9
    const-string v3, "weather"

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v21

    .line 196
    .local v21, "currentCityParentFile":Ljava/io/File;
    if-eqz v21, :cond_a

    .line 197
    new-instance v22, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "CurrentCityWeather"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .local v22, "currentCitySourcePath":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 202
    new-instance v28, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "ClockThree.zip"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v28, "zipDestinationLocation":Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_b

    .line 206
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->createNewFile()Z

    .line 213
    :goto_3
    const-string v3, "Ambient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AmbientImageCreatorcreateAmbientImageAndUpdateImagePaths -ZIp Destination Location : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v23, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v3, v2}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;->generateSourceFileList(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    .line 221
    const-string v3, "Ambient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AmbientImageCreator-createAmbientImageAndUpdateImagePaths List of files"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v3, v7, v1}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;->createClockZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v3, p1

    .line 228
    check-cast v3, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->setClockZipSourceLocation(Ljava/lang/String;)V

    .line 252
    .end local v9    # "currentTempBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "weatherConditionBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "i":I
    .end local v20    # "cityClockImageRepo":Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;
    .end local v21    # "currentCityParentFile":Ljava/io/File;
    .end local v22    # "currentCitySourcePath":Ljava/io/File;
    .end local v23    # "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v28    # "zipDestinationLocation":Ljava/io/File;
    :cond_a
    :goto_4
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->writeClockDataOntoBitmap(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 253
    const/4 v5, 0x0

    .line 255
    .restart local v5    # "outArray":[B
    if-eqz v19, :cond_d

    .line 256
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v3}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBitmapinIMGFormat(Landroid/graphics/Bitmap;Z)[B

    move-result-object v5

    .line 265
    const-string v3, "weather"

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    .line 266
    .local v16, "weatherPath":Ljava/io/File;
    if-eqz v16, :cond_e

    .line 267
    const/16 v18, 0x4

    move-object/from16 v13, p0

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v17, p1

    invoke-virtual/range {v13 .. v18}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;->writeFileForSourceLocation(Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;[BLjava/io/File;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;I)V

    .line 279
    const/16 v19, 0x0

    .line 280
    const/4 v5, 0x0

    .line 281
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->writeDataOntoBitmap(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 282
    if-eqz v19, :cond_f

    .line 283
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v3}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBitmapinIMGFormat(Landroid/graphics/Bitmap;Z)[B

    move-result-object v5

    .line 291
    const/16 v16, 0x0

    .line 292
    const-string v3, "weather"

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientAppImageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    .line 293
    if-eqz v16, :cond_10

    .line 294
    const/16 v18, 0x6

    move-object/from16 v13, p0

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v17, p1

    invoke-virtual/range {v13 .. v18}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;->writeFileForSourceLocation(Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;[BLjava/io/File;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;I)V

    goto/16 :goto_0

    .line 209
    .end local v5    # "outArray":[B
    .end local v16    # "weatherPath":Ljava/io/File;
    .restart local v9    # "currentTempBitmap":Landroid/graphics/Bitmap;
    .restart local v10    # "weatherConditionBitmap":Landroid/graphics/Bitmap;
    .restart local v12    # "i":I
    .restart local v20    # "cityClockImageRepo":Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;
    .restart local v21    # "currentCityParentFile":Ljava/io/File;
    .restart local v22    # "currentCitySourcePath":Ljava/io/File;
    .restart local v28    # "zipDestinationLocation":Ljava/io/File;
    :cond_b
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->delete()Z

    .line 210
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->createNewFile()Z

    goto/16 :goto_3

    .line 239
    .end local v9    # "currentTempBitmap":Landroid/graphics/Bitmap;
    .end local v10    # "weatherConditionBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "i":I
    .end local v20    # "cityClockImageRepo":Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;
    .end local v21    # "currentCityParentFile":Ljava/io/File;
    .end local v22    # "currentCitySourcePath":Ljava/io/File;
    .end local v28    # "zipDestinationLocation":Ljava/io/File;
    :cond_c
    const-string v3, "weather"

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v21

    .line 240
    .restart local v21    # "currentCityParentFile":Ljava/io/File;
    if-eqz v21, :cond_a

    .line 241
    new-instance v29, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "ClockThree.zip"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v29, "zipFileLocation":Ljava/io/File;
    if-eqz v29, :cond_a

    move-object/from16 v3, p1

    .line 245
    check-cast v3, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->setClockZipSourceLocation(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 260
    .end local v21    # "currentCityParentFile":Ljava/io/File;
    .end local v29    # "zipFileLocation":Ljava/io/File;
    .restart local v5    # "outArray":[B
    :cond_d
    const-string v3, "Ambient"

    const-string v7, "AmbientImageCreator-createAmbientImageAndUpdateImagePaths Returning Bitmap is null File not written"

    invoke-static {v3, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const/4 v3, -0x1

    goto/16 :goto_1

    .line 274
    .restart local v16    # "weatherPath":Ljava/io/File;
    :cond_e
    const-string v3, "Ambient"

    const-string v7, "AmbientImageCreator-createAmbientImageAndUpdateImagePaths Can not write File on Sd Card ,Media not mounted"

    invoke-static {v3, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const/4 v3, -0x1

    goto/16 :goto_1

    .line 287
    :cond_f
    const-string v3, "Ambient"

    const-string v7, "AmbientImageCreatorcreateAmbientImageAndUpdateImagePaths -Returning Bitmap is null File not written"

    invoke-static {v3, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const/4 v3, -0x1

    goto/16 :goto_1

    .line 301
    :cond_10
    const-string v3, "Ambient"

    const-string v7, "AmbientImageCreator-createAmbientImageAndUpdateImagePaths Can not write File on Sd Card ,Media not mounted"

    invoke-static {v3, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const/4 v3, -0x1

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
    .line 424
    const/4 v4, 0x0

    .line 425
    .local v4, "tempFileSuffix":Ljava/lang/String;
    const/4 v10, 0x0

    .line 426
    .local v10, "weatherFileSuffix":Ljava/lang/String;
    packed-switch p5, :pswitch_data_0

    .line 440
    :goto_0
    const/4 v1, 0x0

    .line 441
    .local v1, "currentCityWeatherPath":Ljava/io/File;
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {p1, v0, v11}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBitmapinIMGFormat(Landroid/graphics/Bitmap;Z)[B

    move-result-object v5

    .line 443
    .local v5, "tempOutArray":[B
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-virtual {p1, v0, v11}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBitmapinIMGFormat(Landroid/graphics/Bitmap;Z)[B

    move-result-object v9

    .line 446
    .local v9, "weatherCondOutArray":[B
    const-string v11, "weather"

    invoke-static {v11}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 447
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_1

    .line 448
    new-instance v1, Ljava/io/File;

    .end local v1    # "currentCityWeatherPath":Ljava/io/File;
    const-string v11, "CurrentCityWeather/images"

    invoke-direct {v1, v2, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 451
    .restart local v1    # "currentCityWeatherPath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 452
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v11

    if-nez v11, :cond_0

    .line 453
    const-string v11, "Ambient"

    const-string v12, "AmbientImageCreator-Error Creating currentCityWeatherPath folder on SD Card"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v6, p1

    .line 458
    check-cast v6, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;

    .local v6, "weatherAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;
    move-object/from16 v7, p4

    .line 459
    check-cast v7, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 461
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

    .line 465
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

    .line 470
    .local v8, "weatherCondFile":Ljava/io/File;
    invoke-virtual {p1, v5, v3}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBytesToFile([BLjava/io/File;)V

    .line 471
    invoke-virtual {p1, v9, v8}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBytesToFile([BLjava/io/File;)V

    .line 472
    invoke-virtual {v6, v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->setAmbientInfo(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)V

    .line 473
    const-string v11, "Ambient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AmbientImageCreator-File written "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " Weather Cond file"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    .end local v3    # "tempFile":Ljava/io/File;
    .end local v6    # "weatherAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;
    .end local v7    # "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v8    # "weatherCondFile":Ljava/io/File;
    :goto_1
    return-void

    .line 428
    .end local v1    # "currentCityWeatherPath":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "tempOutArray":[B
    .end local v9    # "weatherCondOutArray":[B
    :pswitch_0
    const-string v4, "blue_temperature"

    .line 429
    const-string v10, "blue_graphic"

    .line 430
    goto/16 :goto_0

    .line 432
    :pswitch_1
    const-string v4, "dark_temperature"

    .line 433
    const-string v10, "dark_graphic"

    .line 434
    goto/16 :goto_0

    .line 436
    :pswitch_2
    const-string v4, "white_temperature"

    .line 437
    const-string v10, "white_graphic"

    goto/16 :goto_0

    .line 478
    .restart local v1    # "currentCityWeatherPath":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v5    # "tempOutArray":[B
    .restart local v9    # "weatherCondOutArray":[B
    :cond_1
    const-string v11, "Ambient"

    const-string v12, "AmbientImageCreator-parent directory returned as null"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 426
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
    .line 495
    .local p3, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v14, 0x400

    new-array v1, v14, [B

    .line 496
    .local v1, "buffer":[B
    const/4 v8, 0x0

    .line 497
    .local v8, "in":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 498
    .local v5, "fos":Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    .line 501
    .local v12, "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v13, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v13, v6}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 504
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

    .line 506
    .local v4, "file":Ljava/lang/String;
    const-string v14, "Ambient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "AmbientImageCreator-File Added : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    new-instance v11, Ljava/util/zip/ZipEntry;

    invoke-direct {v11, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 509
    .local v11, "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {v13, v11}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 511
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

    .line 514
    .end local v9    # "in":Ljava/lang/Object;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    :goto_1
    :try_start_4
    invoke-virtual {v8, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    .local v10, "len":I
    if-lez v10, :cond_2

    .line 515
    const/4 v14, 0x0

    invoke-virtual {v13, v1, v14, v10}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 529
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

    .line 530
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v3, "ex":Ljava/io/IOException;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 535
    if-eqz v8, :cond_0

    .line 536
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 537
    const/4 v8, 0x0

    .line 539
    :cond_0
    if-eqz v12, :cond_1

    .line 540
    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 541
    const/4 v12, 0x0

    .line 550
    .end local v3    # "ex":Ljava/io/IOException;
    .end local v8    # "in":Ljava/io/FileInputStream;
    :cond_1
    :goto_3
    return-void

    .line 518
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

    .line 519
    const/4 v8, 0x0

    .line 520
    invoke-virtual {v13}, Ljava/util/zip/ZipOutputStream;->flush()V

    .line 521
    invoke-virtual {v13}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v9, v8

    .line 523
    .restart local v9    # "in":Ljava/lang/Object;
    goto :goto_0

    .line 524
    .end local v4    # "file":Ljava/lang/String;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .end local v10    # "len":I
    .end local v11    # "ze":Ljava/util/zip/ZipEntry;
    :cond_3
    :try_start_8
    invoke-virtual {v13}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 525
    const/4 v12, 0x0

    .line 527
    .end local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    :try_start_9
    const-string v14, "Ambient"

    const-string v15, "AmbientImageCreator-Zipping Done"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 535
    if-eqz v9, :cond_7

    .line 536
    :try_start_a
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 537
    const/4 v8, 0x0

    .line 539
    .end local v9    # "in":Ljava/lang/Object;
    :goto_4
    if-eqz v12, :cond_4

    .line 540
    :try_start_b
    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 541
    const/4 v12, 0x0

    :cond_4
    move-object v5, v6

    .line 547
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 545
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "in":Ljava/lang/Object;
    :catch_1
    move-exception v2

    move-object v8, v9

    .line 546
    .end local v9    # "in":Ljava/lang/Object;
    .local v2, "e":Ljava/io/IOException;
    :goto_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 549
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 545
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "i$":Ljava/util/Iterator;
    .restart local v3    # "ex":Ljava/io/IOException;
    .restart local v8    # "in":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    .line 546
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 534
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    .line 535
    :goto_6
    if-eqz v8, :cond_5

    .line 536
    :try_start_c
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 537
    const/4 v8, 0x0

    .line 539
    :cond_5
    if-eqz v12, :cond_6

    .line 540
    invoke-virtual {v12}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    .line 541
    const/4 v12, 0x0

    .line 547
    :cond_6
    :goto_7
    throw v14

    .line 545
    :catch_3
    move-exception v2

    .line 546
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 534
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v14

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

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
    goto :goto_6

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .end local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v9    # "in":Ljava/lang/Object;
    .restart local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    :catchall_3
    move-exception v14

    move-object v12, v13

    .end local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v8, v9

    .restart local v8    # "in":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v14

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v8, v9

    .restart local v8    # "in":Ljava/io/FileInputStream;
    goto :goto_6

    .line 529
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

    move-object v12, v13

    .end local v13    # "zos":Ljava/util/zip/ZipOutputStream;
    .restart local v12    # "zos":Ljava/util/zip/ZipOutputStream;
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v8, v9

    .restart local v8    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v3

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v8, v9

    .restart local v8    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .line 545
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "in":Ljava/io/FileInputStream;
    .end local v9    # "in":Ljava/lang/Object;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v2

    goto :goto_5

    .restart local v9    # "in":Ljava/lang/Object;
    :cond_7
    move-object v8, v9

    .end local v9    # "in":Ljava/lang/Object;
    .local v8, "in":Ljava/lang/Object;
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
    .line 563
    .local p3, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 564
    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;->generateZipEntry(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 569
    const-string v5, "Ambient"

    const-string v6, "AmbientImageCreator-Insise a directory"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 572
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

    .line 573
    .local v1, "filename":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v5, p2, p3}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;->generateSourceFileList(Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    .line 572
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 579
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "subNote":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public getAmbinetDispaly()Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;->ambientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;

    return-object v0
.end method

.method public writeFileForSourceLocation(Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;[BLjava/io/File;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;I)V
    .locals 14
    .param p1, "display"    # Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;
    .param p2, "outArray"    # [B
    .param p3, "directoryPath"    # Ljava/io/File;
    .param p4, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    .param p5, "type"    # I

    .prologue
    .line 316
    instance-of v11, p1, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;

    if-eqz v11, :cond_5

    .line 317
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;->ambientDisplay:Lcom/qualcomm/toq/smartwatch/ambient/IAmbientDisplay;

    check-cast v7, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;

    .local v7, "stockAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;
    move-object/from16 v8, p4

    .line 318
    check-cast v8, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    .line 320
    .local v8, "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanySymbol()Ljava/lang/String;

    move-result-object v3

    .line 321
    .local v3, "companySymbol":Ljava/lang/String;
    const-string v11, "[%*!@$^()?,.;=/ ]"

    const-string v12, ""

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "changedSymbol":Ljava/lang/String;
    const/4 v4, 0x0

    .line 326
    .local v4, "file":Ljava/io/File;
    const/4 v11, 0x4

    move/from16 v0, p5

    if-ne v0, v11, :cond_3

    .line 327
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

    .line 330
    .restart local v4    # "file":Ljava/io/File;
    move-object/from16 v0, p2

    invoke-virtual {p1, v0, v4}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBytesToFile([BLjava/io/File;)V

    .line 331
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setSourceLocation(Ljava/lang/String;)V

    .line 347
    :cond_0
    :goto_0
    invoke-virtual {v7, v8}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->setAmbientInfo(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)V

    .line 348
    if-eqz v4, :cond_1

    .line 349
    const-string v11, "Ambient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AmbientImageCreator- stock File written "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_1
    const-string v11, "Ambient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AmbientImageCreator- stock Android Path "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getSourceLocation()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v11, "Ambient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AmbientImageCreator- stock WD Path "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .end local v2    # "changedSymbol":Ljava/lang/String;
    .end local v3    # "companySymbol":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "stockAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;
    .end local v8    # "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :cond_2
    :goto_1
    return-void

    .line 333
    .restart local v2    # "changedSymbol":Ljava/lang/String;
    .restart local v3    # "companySymbol":Ljava/lang/String;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "stockAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;
    .restart local v8    # "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :cond_3
    const/4 v11, 0x5

    move/from16 v0, p5

    if-ne v0, v11, :cond_4

    .line 334
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

    .line 337
    .restart local v4    # "file":Ljava/io/File;
    move-object/from16 v0, p2

    invoke-virtual {p1, v0, v4}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBytesToFile([BLjava/io/File;)V

    .line 338
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setDarkImageSourceLocation(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 340
    :cond_4
    const/4 v11, 0x6

    move/from16 v0, p5

    if-ne v0, v11, :cond_0

    .line 341
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

    .line 343
    .restart local v4    # "file":Ljava/io/File;
    move-object/from16 v0, p2

    invoke-virtual {p1, v0, v4}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBytesToFile([BLjava/io/File;)V

    .line 344
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setAppImageSourceLocation(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 361
    .end local v2    # "changedSymbol":Ljava/lang/String;
    .end local v3    # "companySymbol":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "stockAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;
    .end local v8    # "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :cond_5
    instance-of v11, p1, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;

    if-eqz v11, :cond_2

    move-object v9, p1

    .line 362
    check-cast v9, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;

    .local v9, "weatherAmbientDisplay":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;
    move-object/from16 v10, p4

    .line 363
    check-cast v10, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 365
    .local v10, "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    invoke-virtual {v10}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 366
    .local v6, "key":Ljava/lang/String;
    const-string v5, ""

    .line 367
    .local v5, "fileName":Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 368
    move-object v5, v6

    .line 375
    :goto_2
    const-string v11, "[%*!@$^()?,.;=/ ]"

    const-string v12, ""

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "changedFileName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 380
    .restart local v4    # "file":Ljava/io/File;
    instance-of v11, v10, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    if-eqz v11, :cond_8

    .line 381
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

    .line 390
    .restart local v4    # "file":Ljava/io/File;
    :goto_3
    move-object/from16 v0, p2

    invoke-virtual {p1, v0, v4}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;->writeBytesToFile([BLjava/io/File;)V

    .line 391
    const/4 v11, 0x4

    move/from16 v0, p5

    if-ne v0, v11, :cond_9

    .line 392
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setSourceLocation(Ljava/lang/String;)V

    .line 398
    :cond_6
    :goto_4
    invoke-virtual {v9, v10}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->setAmbientInfo(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)V

    .line 399
    const-string v11, "Ambient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AmbientImageCreator- weather File written "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v11, "Ambient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AmbientImageCreator-weather Android Path "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getSourceLocation()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v11, "Ambient"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AmbientImageCreator-weather WD Path "

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

    .line 371
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

    .line 386
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

    .line 394
    :cond_9
    const/4 v11, 0x6

    move/from16 v0, p5

    if-ne v0, v11, :cond_6

    .line 395
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setAppImageSourceLocation(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

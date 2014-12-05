.class public Lcom/qualcomm/toq/smartwatch/ambient/AmbientNotificationDisplay;
.super Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;
.source "AmbientNotificationDisplay.java"


# static fields
.field private static final TIMESTAMP_PREFIX:Ljava/lang/String; = "Last updated: Today "


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientNotificationDisplay;->mContext:Landroid/content/Context;

    .line 34
    const-string v0, "ambient__pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientNotificationDisplay;->mPrefs:Landroid/content/SharedPreferences;

    .line 36
    return-void
.end method


# virtual methods
.method public retreiveDataFromStream(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    .locals 1
    .param p1, "dataStream"    # Ljava/lang/String;
    .param p2, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    .param p3, "queryType"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeClockDataOntoBitmap(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeDataOntoBitmap(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeTimeStampOnBitmap(ZLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "isDataError"    # Z
    .param p2, "ambientType"    # Ljava/lang/String;

    .prologue
    .line 58
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientNotificationDisplay;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientNotificationDisplay;->mResources:Landroid/content/res/Resources;

    .line 59
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 60
    .local v2, "cal":Ljava/util/Calendar;
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v13, "hh:mm"

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v9, v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 61
    .local v9, "sf":Ljava/text/SimpleDateFormat;
    const/16 v13, 0x9

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 62
    .local v7, "meridiem":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-nez v7, :cond_1

    const-string v13, "AM"

    :goto_0
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "currentTime":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "UPDATED: TODAY "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 67
    .local v12, "timestampData":Ljava/lang/String;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 68
    .local v8, "paint":Landroid/graphics/Paint;
    const/high16 v13, -0x1000000

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    sget-object v13, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    sget-object v13, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 71
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/qualcomm/toq/base/utils/ToqData;->getQcomSemiboldTypeFace()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 73
    const/high16 v13, 0x41b80000

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 75
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 76
    .local v5, "imagePaint":Landroid/graphics/Paint;
    sget-object v13, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    const/4 v1, 0x0

    .line 80
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/16 v13, 0x114

    const/16 v14, 0x46

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 82
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 84
    .local v10, "timeCanvas":Landroid/graphics/Canvas;
    const/high16 v13, 0x430a0000

    const/high16 v14, 0x41d80000

    invoke-virtual {v10, v12, v13, v14, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 85
    const/4 v6, 0x0

    .line 86
    .local v6, "logoBitmap":Landroid/graphics/Bitmap;
    const-string v13, "weather"

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 87
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Last updated: Today "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 88
    .local v11, "timeStamp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientNotificationDisplay;->mResources:Landroid/content/res/Resources;

    const v14, 0x7f0200f0

    invoke-static {v13, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 92
    const/high16 v13, 0x41b00000

    const/high16 v14, 0x421c0000

    invoke-virtual {v10, v6, v13, v14, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 93
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientNotificationDisplay;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v13, :cond_0

    .line 94
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientNotificationDisplay;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 95
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v13, "weather_update_timestamp"

    invoke-interface {v4, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v11    # "timeStamp":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v1

    .line 62
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "currentTime":Ljava/lang/String;
    .end local v5    # "imagePaint":Landroid/graphics/Paint;
    .end local v6    # "logoBitmap":Landroid/graphics/Bitmap;
    .end local v8    # "paint":Landroid/graphics/Paint;
    .end local v10    # "timeCanvas":Landroid/graphics/Canvas;
    .end local v12    # "timestampData":Ljava/lang/String;
    :cond_1
    const-string v13, "PM"

    goto/16 :goto_0

    .line 100
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "currentTime":Ljava/lang/String;
    .restart local v5    # "imagePaint":Landroid/graphics/Paint;
    .restart local v6    # "logoBitmap":Landroid/graphics/Bitmap;
    .restart local v8    # "paint":Landroid/graphics/Paint;
    .restart local v10    # "timeCanvas":Landroid/graphics/Canvas;
    .restart local v12    # "timestampData":Ljava/lang/String;
    :cond_2
    const-string v13, "stock"

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 101
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Last updated: Today "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 103
    .restart local v11    # "timeStamp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientNotificationDisplay;->mResources:Landroid/content/res/Resources;

    const v14, 0x7f0200f1

    invoke-static {v13, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 106
    const/high16 v13, 0x41f00000

    const/high16 v14, 0x421c0000

    invoke-virtual {v10, v6, v13, v14, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientNotificationDisplay;->mPrefs:Landroid/content/SharedPreferences;

    if-eqz v13, :cond_0

    .line 108
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientNotificationDisplay;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 109
    .restart local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v13, "stock_update_timestamp"

    invoke-interface {v4, v13, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method

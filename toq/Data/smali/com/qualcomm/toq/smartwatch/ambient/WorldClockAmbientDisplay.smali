.class public Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;
.super Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;
.source "WorldClockAmbientDisplay.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WorldClockAmbientDisplay"

.field private static final WEATHER_HOUR_TEMP_BITMAP_HEIGHT:I = 0x25

.field private static final WEATHER_HOUR_TEMP_BITMAP_WIDTH:I = 0x3b

.field public static mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mWC_WeatherConditionImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mWeatherIcons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;-><init>()V

    return-void
.end method

.method private getResourceObject()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 402
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    return-object v1
.end method

.method private setWeatherConditions()V
    .locals 7

    .prologue
    const v6, 0x7f02015d

    const v5, 0x7f020147

    const v4, 0x7f020140

    const v3, 0x7f02016c

    const v2, 0x7f020144

    .line 251
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->getResourceObject()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    .line 253
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 255
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 300
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f020171

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f02017a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f020185

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f02018b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f02018c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f02018d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f02018e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f02018f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f020168

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f020169

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f02016a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f02016b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f02016d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f02016e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f02016f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f020170

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f020172

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f020173

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f020174

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f020175

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f020176

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f020177

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f020178

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f020179

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f02017b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f02017c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f02017d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f02017e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f02017f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f020180

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f020181

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f020182

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f020183

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f020184

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f020186

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f020187

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f020188

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f020189

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f02018a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f020168

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f020185

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f02016f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 350
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020149

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020152

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020163

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020164

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020165

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020166

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020167

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020141

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020142

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020143

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020145

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020146

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020148

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f02014a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f02014b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f02014c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f02014d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f02014e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f02014f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020150

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020151

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020153

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020154

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020155

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020156

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020157

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020158

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020159

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f02015a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f02015b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f02015c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f02015e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f02015f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020160

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020161

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020162

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    return-void
.end method


# virtual methods
.method public declared-synchronized createWorldClockBitmaps(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;
    .locals 17
    .param p1, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    const-string v14, "WorldClockAmbientDisplay"

    const-string v15, "createWorldClockBitmaps"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v2, 0x0

    .line 83
    .local v2, "currentTemp":Ljava/lang/String;
    const/4 v9, 0x0

    .line 84
    .local v9, "weatherCondition":Ljava/lang/String;
    const-string v3, "\u00b0"

    .line 85
    .local v3, "degreeSign":Ljava/lang/String;
    const/4 v1, 0x0

    .line 86
    .local v1, "CityClockImageRepo":Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;
    move-object/from16 v0, p1

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    move-object v8, v0

    .line 87
    .local v8, "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    if-eqz v8, :cond_d

    .line 88
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->setWeatherConditions()V

    .line 90
    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getWeatherCondition()Ljava/lang/String;

    move-result-object v9

    .line 91
    if-eqz v9, :cond_0

    .line 92
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 96
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getHourTemp()I

    move-result v15

    invoke-static {v15}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getWeatherTemperatureBasedOnUnit(I)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    new-instance v1, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;

    .end local v1    # "CityClockImageRepo":Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;
    const/4 v14, 0x2

    invoke-direct {v1, v14}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;-><init>(I)V

    .line 100
    .restart local v1    # "CityClockImageRepo":Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->getResourceObject()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    .line 102
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 103
    .local v7, "paintText":Landroid/graphics/Paint;
    if-eqz v7, :cond_1

    .line 104
    sget-object v14, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v14

    invoke-virtual {v14}, Lcom/qualcomm/toq/base/utils/ToqData;->getQcomSemiboldTypeFace()Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 107
    const/high16 v14, 0x41d00000

    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 108
    sget-object v14, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 109
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v14, 0x2

    if-ge v5, v14, :cond_d

    .line 115
    :try_start_1
    const-string v14, "WorldClockAmbientDisplay"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "createWorldClockBitmaps i="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    if-nez v5, :cond_8

    .line 117
    const-string v14, "WorldClockAmbientDisplay"

    const-string v15, "Setting Dark WORLD_CLOCK_IMAGE Images"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v14, "push_online_image"

    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 120
    const-string v2, "--"

    .line 122
    :cond_2
    sget-object v14, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    if-eqz v14, :cond_4

    .line 123
    move-object/from16 v0, p1

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getIconNumber()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 124
    .local v12, "weatherIconNumber":Ljava/lang/Integer;
    sget-object v14, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 125
    .local v6, "imageIndex":I
    const-string v14, "WorldClockAmbientDisplay"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Icon Number (Image Index) "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v14, "WorldClockAmbientDisplay"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "image index="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-object v14, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    if-eqz v14, :cond_4

    .line 129
    const-string v14, "WorldClockAmbientDisplay"

    const-string v15, "In WORLD_CLOCK_IMAGE Weather conditions"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v10, 0x0

    .line 132
    .local v10, "weatherConditionBitmap":Landroid/graphics/Bitmap;
    const/4 v14, -0x1

    if-eq v6, v14, :cond_3

    sget-object v14, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lt v6, v14, :cond_7

    .line 134
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f02001d

    invoke-static {v14, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 138
    const-string v14, "WorldClockAmbientDisplay"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Dark image not found using default image index="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_1
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherConditionImage()[Landroid/graphics/Bitmap;

    move-result-object v14

    aput-object v10, v14, v5

    .line 152
    .end local v6    # "imageIndex":I
    .end local v10    # "weatherConditionBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "weatherIconNumber":Ljava/lang/Integer;
    :cond_4
    const-string v14, "WorldClockAmbientDisplay"

    const-string v15, " WORLD img creation "

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const/16 v14, 0x3b

    const/16 v15, 0x25

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 156
    .local v11, "weatherHourTempBitmap":Landroid/graphics/Bitmap;
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 157
    .local v13, "weatherTempCanvas":Landroid/graphics/Canvas;
    const/high16 v14, -0x1000000

    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    const-string v14, "WorldClockAmbientDisplay"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " WORLD img currentTemp="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " weatherCondition="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " weatherTempCanvas ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    if-eqz v2, :cond_5

    .line 162
    if-eqz v13, :cond_5

    .line 163
    if-eqz v7, :cond_5

    .line 164
    const-string v14, "WorldClockAmbientDisplay"

    const-string v15, " WORLD dark img creation draw text"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/high16 v14, 0x41000000

    const/high16 v15, 0x41b00000

    invoke-virtual {v13, v2, v14, v15, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 173
    :cond_5
    const-string v14, "WorldClockAmbientDisplay"

    const-string v15, "World clock dark updated repo"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherHourTempImage()[Landroid/graphics/Bitmap;

    move-result-object v14

    aput-object v11, v14, v5

    .line 114
    .end local v11    # "weatherHourTempBitmap":Landroid/graphics/Bitmap;
    .end local v13    # "weatherTempCanvas":Landroid/graphics/Canvas;
    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 143
    .restart local v6    # "imageIndex":I
    .restart local v10    # "weatherConditionBitmap":Landroid/graphics/Bitmap;
    .restart local v12    # "weatherIconNumber":Ljava/lang/Integer;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    sget-object v14, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionDarkImages:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v15, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    goto/16 :goto_1

    .line 177
    .end local v6    # "imageIndex":I
    .end local v10    # "weatherConditionBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "weatherIconNumber":Ljava/lang/Integer;
    :cond_8
    const/4 v14, 0x1

    if-ne v5, v14, :cond_6

    .line 178
    const-string v14, "WorldClockAmbientDisplay"

    const-string v15, "Setting White WORLD_CLOCK_IMAGE Images"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object v14, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    if-eqz v14, :cond_a

    .line 181
    move-object/from16 v0, p1

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getIconNumber()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 182
    .restart local v12    # "weatherIconNumber":Ljava/lang/Integer;
    sget-object v14, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 183
    .restart local v6    # "imageIndex":I
    const-string v14, "WorldClockAmbientDisplay"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Icon Number (Image Index) "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v14, "WorldClockAmbientDisplay"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "World clock imageIndex="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    sget-object v14, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    if-eqz v14, :cond_a

    .line 187
    const-string v14, "WorldClockAmbientDisplay"

    const-string v15, "In WORLD_CLOCK_IMAGE Weather conditions"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v10, 0x0

    .line 191
    .restart local v10    # "weatherConditionBitmap":Landroid/graphics/Bitmap;
    const/4 v14, -0x1

    if-eq v6, v14, :cond_9

    sget-object v14, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lt v6, v14, :cond_c

    .line 193
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f0201bd

    invoke-static {v14, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 197
    const-string v14, "WorldClockAmbientDisplay"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "White image not found using default image index="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :goto_3
    const-string v14, "WorldClockAmbientDisplay"

    const-string v15, "World clock white updated repo"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherConditionImage()[Landroid/graphics/Bitmap;

    move-result-object v14

    aput-object v10, v14, v5

    .line 212
    .end local v6    # "imageIndex":I
    .end local v10    # "weatherConditionBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "weatherIconNumber":Ljava/lang/Integer;
    :cond_a
    const/16 v14, 0x3b

    const/16 v15, 0x25

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 215
    .restart local v11    # "weatherHourTempBitmap":Landroid/graphics/Bitmap;
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 216
    .restart local v13    # "weatherTempCanvas":Landroid/graphics/Canvas;
    const/4 v14, -0x1

    invoke-virtual {v7, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    if-eqz v2, :cond_b

    .line 218
    if-eqz v13, :cond_b

    .line 219
    if-eqz v7, :cond_b

    .line 220
    const-string v14, "WorldClockAmbientDisplay"

    const-string v15, " WORLD white img creation draw text"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const/high16 v14, 0x41000000

    const/high16 v15, 0x41b00000

    invoke-virtual {v13, v2, v14, v15, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 229
    :cond_b
    const-string v14, "WorldClockAmbientDisplay"

    const-string v15, " WORLD white update repo2 ="

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherHourTempImage()[Landroid/graphics/Bitmap;

    move-result-object v14

    aput-object v11, v14, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 235
    .end local v11    # "weatherHourTempBitmap":Landroid/graphics/Bitmap;
    .end local v13    # "weatherTempCanvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v4

    .line 236
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 237
    const/4 v14, 0x0

    .line 243
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "i":I
    .end local v7    # "paintText":Landroid/graphics/Paint;
    :goto_4
    monitor-exit p0

    return-object v14

    .line 202
    .restart local v5    # "i":I
    .restart local v6    # "imageIndex":I
    .restart local v7    # "paintText":Landroid/graphics/Paint;
    .restart local v10    # "weatherConditionBitmap":Landroid/graphics/Bitmap;
    .restart local v12    # "weatherIconNumber":Ljava/lang/Integer;
    :cond_c
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    sget-object v14, Lcom/qualcomm/toq/smartwatch/ambient/WorldClockAmbientDisplay;->mWC_WeatherConditionImages:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v15, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v10

    goto :goto_3

    .end local v5    # "i":I
    .end local v6    # "imageIndex":I
    .end local v7    # "paintText":Landroid/graphics/Paint;
    .end local v10    # "weatherConditionBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "weatherIconNumber":Ljava/lang/Integer;
    :cond_d
    move-object v14, v1

    .line 243
    goto :goto_4

    .line 80
    .end local v1    # "CityClockImageRepo":Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;
    .end local v2    # "currentTemp":Ljava/lang/String;
    .end local v3    # "degreeSign":Ljava/lang/String;
    .end local v8    # "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v9    # "weatherCondition":Ljava/lang/String;
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14
.end method

.method public retreiveDataFromStream(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    .locals 1
    .param p1, "dataStream"    # Ljava/lang/String;
    .param p2, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    .param p3, "queryType"    # Ljava/lang/String;

    .prologue
    .line 70
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
    .line 63
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
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

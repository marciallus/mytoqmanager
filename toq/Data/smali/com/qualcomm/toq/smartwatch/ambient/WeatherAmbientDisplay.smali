.class public Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;
.super Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;
.source "WeatherAmbientDisplay.java"


# static fields
.field private static final BLUE_IMAGE:I = 0x0

.field private static final DARK_IMAGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WeatherAmbientDisplay"

.field private static final WHITE_IMAGE:I = 0x2

.field public static mWeatherBackgroundImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mWeatherConditionBlueImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mWeatherConditionDarkImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static mWeatherConditionImages:Ljava/util/ArrayList;
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

.field public static mWeatherLowerRange:Ljava/util/ArrayList;
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
.field private forecastUrl:Ljava/lang/String;

.field mBackGroundImageIds:[I

.field mClockBackGroundImageIds:[I

.field private mLatitude:D

.field private mLongitude:D

.field private mMainImage:Landroid/graphics/Bitmap;

.field private mResources:Landroid/content/res/Resources;

.field mTemperatureLowerRange:[I

.field mTemperatureUpperRange:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherLowerRange:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherBackgroundImages:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x7

    .line 106
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;-><init>()V

    .line 53
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mMainImage:Landroid/graphics/Bitmap;

    .line 56
    iput-wide v2, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mLatitude:D

    .line 59
    iput-wide v2, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mLongitude:D

    .line 64
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mTemperatureLowerRange:[I

    .line 65
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mTemperatureUpperRange:[I

    .line 66
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mBackGroundImageIds:[I

    .line 74
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mClockBackGroundImageIds:[I

    .line 92
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->forecastUrl:Ljava/lang/String;

    .line 107
    return-void

    .line 64
    :array_0
    .array-data 4
        -0x14
        0x1
        0x15
        0x29
        0x3d
        0x51
        0x65
    .end array-data

    .line 65
    :array_1
    .array-data 4
        0x0
        0x14
        0x28
        0x3c
        0x50
        0x64
        0x78
    .end array-data

    .line 66
    :array_2
    .array-data 4
        0x7f02005d
        0x7f020058
        0x7f020059
        0x7f02005a
        0x7f02005b
        0x7f02005c
        0x7f020057
    .end array-data

    .line 74
    :array_3
    .array-data 4
        0x7f020132
        0x7f02012d
        0x7f02012e
        0x7f02012f
        0x7f020130
        0x7f020131
        0x7f02012c
    .end array-data
.end method

.method private getResourceObject()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 1378
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1379
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    return-object v1
.end method

.method private setWeatherConditions()V
    .locals 7

    .prologue
    const v6, 0x7f020025

    const v5, 0x7f02001e

    const v4, 0x7f020199

    const v3, 0x7f020079

    const v2, 0x7f020022

    .line 144
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->getResourceObject()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    .line 146
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 148
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 192
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f02019e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201a7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201b2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201b8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201b9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201ba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201bb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201bc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f020195

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f020196

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f020197

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f020198

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f02019a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f02019b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f02019c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f02019d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f02019f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201a1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201a2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201a3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201a4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201a8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201a9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201aa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201ab

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201ac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201ad

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201ae

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201af

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201b1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201b3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201b4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201b5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201b6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201b7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f020195

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f0201b2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    const v1, 0x7f02019c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 241
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f020027

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f020030

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f02003b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f020041

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f020042

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f020043

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f020044

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f020045

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f02001f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f020020

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f020021

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f020023

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f020024

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f020026

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f020028

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f020029

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f02002a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f02002b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f02002c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f02002d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f02002e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f02002f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f020031

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f020032

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f020033

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f020034

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f020035

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f020036

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f020037

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f020038

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f020039

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f02003a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f02003c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f02003d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f02003e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f02003f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f020040

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    const v1, 0x7f02003b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 291
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f02007e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020087

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020092

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020098

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020099

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f02009a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f02009b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f02009c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020075

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020076

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020077

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020078

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f02007a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f02007b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f02007c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f02007d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f02007f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020080

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020081

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020082

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020083

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020084

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020085

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020086

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020088

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020089

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f02008a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f02008b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f02008c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f02008d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f02008e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f02008f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020090

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020091

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020093

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020094

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020095

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020096

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020097

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020075

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f020092

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    const v1, 0x7f02007c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    return-void
.end method


# virtual methods
.method public getForecastUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->forecastUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mLongitude:D

    return-wide v0
.end method

.method public retreiveDataFromStream(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    .locals 26
    .param p1, "jsonStream"    # Ljava/lang/String;
    .param p2, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    .param p3, "queryType"    # Ljava/lang/String;

    .prologue
    .line 1219
    move-object/from16 v7, p2

    check-cast v7, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 1220
    .local v7, "info":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    if-eqz v7, :cond_3

    .line 1221
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->getResourceObject()Landroid/content/res/Resources;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    .line 1224
    if-eqz p2, :cond_e

    .line 1225
    :try_start_0
    const-string v23, "WEATHER_MIN_MAX_TEMPARATURE"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 1226
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1227
    .local v13, "resultObject":Lorg/json/JSONObject;
    if-eqz v13, :cond_2

    .line 1228
    const-string v23, "DailyForecasts"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1229
    .local v2, "dailyForecastArray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v23

    if-lez v23, :cond_2

    .line 1230
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 1231
    .local v14, "singleForecastObject":Lorg/json/JSONObject;
    if-eqz v14, :cond_2

    .line 1232
    const-string v23, "Temperature"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 1233
    .local v15, "temObject":Lorg/json/JSONObject;
    if-eqz v15, :cond_2

    .line 1234
    const/4 v11, 0x0

    .local v11, "minTemp":F
    const/4 v10, 0x0

    .line 1235
    .local v10, "maxTemp":F
    const-string v23, "Minimum"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 1236
    .local v18, "tempRangeObject":Lorg/json/JSONObject;
    if-eqz v18, :cond_0

    .line 1237
    const-string v23, "Value"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_4

    const-string v23, "Value"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .line 1240
    :cond_0
    :goto_0
    const-string v23, "Maximum"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 1241
    if-eqz v18, :cond_1

    .line 1242
    const-string v23, "Value"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_5

    const-string v23, "Value"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 1245
    :cond_1
    :goto_1
    const-string v23, "WeatherAmbientDisplay"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Max Temp :  "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "Min Temp:  "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    float-to-int v0, v10

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setMaxTemp(I)V

    .line 1249
    float-to-int v0, v11

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setMinTemp(I)V

    .line 1258
    .end local v2    # "dailyForecastArray":Lorg/json/JSONArray;
    .end local v10    # "maxTemp":F
    .end local v11    # "minTemp":F
    .end local v14    # "singleForecastObject":Lorg/json/JSONObject;
    .end local v15    # "temObject":Lorg/json/JSONObject;
    .end local v18    # "tempRangeObject":Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getMinTemp()I

    move-result v23

    if-nez v23, :cond_3

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getMaxTemp()I

    move-result v23

    if-nez v23, :cond_3

    .line 1259
    const-string v23, "push_data_error_image"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    .line 1374
    .end local v13    # "resultObject":Lorg/json/JSONObject;
    :cond_3
    :goto_2
    return-object v7

    .line 1237
    .restart local v2    # "dailyForecastArray":Lorg/json/JSONArray;
    .restart local v10    # "maxTemp":F
    .restart local v11    # "minTemp":F
    .restart local v13    # "resultObject":Lorg/json/JSONObject;
    .restart local v14    # "singleForecastObject":Lorg/json/JSONObject;
    .restart local v15    # "temObject":Lorg/json/JSONObject;
    .restart local v18    # "tempRangeObject":Lorg/json/JSONObject;
    :cond_4
    const/4 v11, 0x0

    goto :goto_0

    .line 1242
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .line 1262
    .end local v2    # "dailyForecastArray":Lorg/json/JSONArray;
    .end local v10    # "maxTemp":F
    .end local v11    # "minTemp":F
    .end local v13    # "resultObject":Lorg/json/JSONObject;
    .end local v14    # "singleForecastObject":Lorg/json/JSONObject;
    .end local v15    # "temObject":Lorg/json/JSONObject;
    .end local v18    # "tempRangeObject":Lorg/json/JSONObject;
    :cond_6
    const-string v23, "WEATHER_HOUR_TEMPARATURE"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 1263
    new-instance v12, Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1264
    .local v12, "resultJsonArray":Lorg/json/JSONArray;
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v23

    if-lez v23, :cond_9

    .line 1265
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    .line 1266
    .local v22, "weatherJSONObject":Lorg/json/JSONObject;
    if-eqz v22, :cond_9

    .line 1267
    const-string v23, "LocalObservationDateTime"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1268
    .local v9, "localDateTime":Ljava/lang/String;
    const-string v23, "WeatherAmbientDisplay"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " Original Local Time : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    if-eqz v9, :cond_7

    .line 1272
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x6

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 1273
    .local v8, "intSign":C
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 1288
    const-string v23, "WeatherAmbientDisplay"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " SubString Local Time : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    const-string v23, ":"

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 1292
    .local v19, "timeArray":[Ljava/lang/String;
    if-eqz v19, :cond_7

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 1294
    const/16 v23, 0x0

    aget-object v23, v19, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1295
    .local v4, "hrTemp":I
    const/16 v23, 0x1

    aget-object v23, v19, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1296
    .local v11, "minTemp":I
    const/16 v23, 0x2d

    move/from16 v0, v23

    if-ne v8, v0, :cond_b

    .line 1299
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ":"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setGmtOffset(Ljava/lang/String;)V

    .line 1318
    :goto_3
    const-string v23, "WeatherAmbientDisplay"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "GMT OFF SET  for "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "  is : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getGmtOffset()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    .end local v4    # "hrTemp":I
    .end local v8    # "intSign":C
    .end local v11    # "minTemp":I
    .end local v19    # "timeArray":[Ljava/lang/String;
    :cond_7
    const-string v23, "WeatherIcon"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1327
    .local v21, "weatherIcon":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1328
    .local v5, "iconNumber":I
    invoke-virtual {v7, v5}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setIconNumber(I)V

    .line 1330
    const-string v23, "WeatherAmbientDisplay"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "WeatherIcon:  "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    const-string v23, "WeatherText"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1333
    .local v20, "weatherCondition":Ljava/lang/String;
    if-eqz v20, :cond_8

    .line 1334
    const-string v23, "WeatherAmbientDisplay"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "weatherCondition:  "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setWeatherCondition(Ljava/lang/String;)V

    .line 1338
    :cond_8
    const-string v23, "Temperature"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 1339
    .local v17, "tempJSONObject":Lorg/json/JSONObject;
    if-eqz v17, :cond_9

    .line 1340
    const-string v23, "Imperial"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1341
    .local v6, "imperialTempOject":Lorg/json/JSONObject;
    if-eqz v6, :cond_9

    .line 1342
    const-string v23, "Value"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_d

    const-string v23, "Value"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    .line 1344
    .local v16, "temp":F
    :goto_4
    const-string v23, "WeatherAmbientDisplay"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Temp :  "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setHourTemp(I)V

    .line 1354
    .end local v5    # "iconNumber":I
    .end local v6    # "imperialTempOject":Lorg/json/JSONObject;
    .end local v9    # "localDateTime":Ljava/lang/String;
    .end local v16    # "temp":F
    .end local v17    # "tempJSONObject":Lorg/json/JSONObject;
    .end local v20    # "weatherCondition":Ljava/lang/String;
    .end local v21    # "weatherIcon":Ljava/lang/String;
    .end local v22    # "weatherJSONObject":Lorg/json/JSONObject;
    :cond_9
    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getWeatherCondition()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_a

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getHourTemp()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const v24, -0x39e3c000

    cmpl-float v23, v23, v24

    if-nez v23, :cond_3

    .line 1356
    :cond_a
    const-string v23, "push_data_error_image"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1367
    .end local v12    # "resultJsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v3

    .line 1368
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1369
    const-string v23, "push_data_error_image"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1303
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "hrTemp":I
    .restart local v8    # "intSign":C
    .restart local v9    # "localDateTime":Ljava/lang/String;
    .restart local v11    # "minTemp":I
    .restart local v12    # "resultJsonArray":Lorg/json/JSONArray;
    .restart local v19    # "timeArray":[Ljava/lang/String;
    .restart local v22    # "weatherJSONObject":Lorg/json/JSONObject;
    :cond_b
    const/16 v23, 0x2b

    move/from16 v0, v23

    if-ne v8, v0, :cond_c

    .line 1308
    :try_start_1
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "+"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ":"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setGmtOffset(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1314
    :cond_c
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ":"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setGmtOffset(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1342
    .end local v4    # "hrTemp":I
    .end local v8    # "intSign":C
    .end local v11    # "minTemp":I
    .end local v19    # "timeArray":[Ljava/lang/String;
    .restart local v5    # "iconNumber":I
    .restart local v6    # "imperialTempOject":Lorg/json/JSONObject;
    .restart local v17    # "tempJSONObject":Lorg/json/JSONObject;
    .restart local v20    # "weatherCondition":Ljava/lang/String;
    .restart local v21    # "weatherIcon":Ljava/lang/String;
    :cond_d
    const/high16 v16, -0x3b860000

    goto/16 :goto_4

    .line 1363
    .end local v5    # "iconNumber":I
    .end local v6    # "imperialTempOject":Lorg/json/JSONObject;
    .end local v9    # "localDateTime":Ljava/lang/String;
    .end local v12    # "resultJsonArray":Lorg/json/JSONArray;
    .end local v17    # "tempJSONObject":Lorg/json/JSONObject;
    .end local v20    # "weatherCondition":Ljava/lang/String;
    .end local v21    # "weatherIcon":Ljava/lang/String;
    .end local v22    # "weatherJSONObject":Lorg/json/JSONObject;
    :cond_e
    const-string v23, "WeatherAmbientDisplay"

    const-string v24, "Ambient Info is null"

    invoke-static/range {v23 .. v24}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public setForecastUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "forecastUrl"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->forecastUrl:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setLatitude(D)V
    .locals 0
    .param p1, "latitude"    # D

    .prologue
    .line 121
    iput-wide p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mLatitude:D

    .line 122
    return-void
.end method

.method public setLongitude(D)V
    .locals 0
    .param p1, "longitude"    # D

    .prologue
    .line 136
    iput-wide p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mLongitude:D

    .line 137
    return-void
.end method

.method public writeClockDataOntoBitmap(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Landroid/graphics/Bitmap;
    .locals 26
    .param p1, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 659
    const/4 v12, 0x0

    .line 660
    .local v12, "maxTemp":Ljava/lang/String;
    const/4 v13, 0x0

    .line 661
    .local v13, "minTemp":Ljava/lang/String;
    const/16 v20, 0x0

    .line 662
    .local v20, "weatherCondition":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->setWeatherConditions()V

    move-object/from16 v18, p1

    .line 663
    check-cast v18, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 668
    .local v18, "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getMaxTemp()I

    move-result v24

    invoke-static/range {v24 .. v24}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getWeatherTemperatureBasedOnUnit(I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\u00b0"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 670
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getMinTemp()I

    move-result v24

    invoke-static/range {v24 .. v24}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getWeatherTemperatureBasedOnUnit(I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\u00b0"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v23, p1

    .line 673
    check-cast v23, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    invoke-virtual/range {v23 .. v23}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getWeatherCondition()Ljava/lang/String;

    move-result-object v20

    .line 674
    if-eqz v20, :cond_0

    .line 675
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    sget-object v24, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    .line 678
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->getResourceObject()Landroid/content/res/Resources;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    move-object/from16 v23, v0

    if-eqz v23, :cond_14

    .line 680
    const/4 v6, 0x0

    .local v6, "hourTemp":Ljava/lang/String;
    move-object/from16 v23, p1

    .line 681
    check-cast v23, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    invoke-virtual/range {v23 .. v23}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v16

    .line 683
    .local v16, "pushImageType":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getHourTemp()I

    move-result v7

    .line 684
    .local v7, "hourlyTemp":I
    const-string v23, "push_online_image"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    if-eqz v20, :cond_b

    .line 686
    const-string v23, "WeatherAmbientDisplay"

    const-string v24, "PUSH_ONLINE_IMAGE_TYPE"

    invoke-static/range {v23 .. v24}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const/4 v9, 0x0

    .line 692
    .local v9, "index":I
    const/4 v9, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mClockBackGroundImageIds:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v9, v0, :cond_1

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mTemperatureLowerRange:[I

    move-object/from16 v23, v0

    aget v23, v23, v9

    move/from16 v0, v23

    if-lt v7, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mTemperatureUpperRange:[I

    move-object/from16 v23, v0

    aget v23, v23, v9

    move/from16 v0, v23

    if-gt v7, v0, :cond_a

    .line 703
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mClockBackGroundImageIds:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v9, v0, :cond_2

    .line 704
    const/4 v9, 0x0

    .line 711
    :cond_2
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getWeatherTemperatureBasedOnUnit(I)I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\u00b0"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mClockBackGroundImageIds:[I

    move-object/from16 v24, v0

    aget v24, v24, v9

    invoke-static/range {v23 .. v24}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v23

    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mMainImage:Landroid/graphics/Bitmap;

    .line 760
    .end local v9    # "index":I
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mMainImage:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mMainImage:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v23 .. v25}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 763
    .local v11, "mMainImageCopy":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mMainImage:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->convertImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 765
    new-instance v19, Landroid/graphics/Canvas;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 767
    .local v19, "weatherCanvas":Landroid/graphics/Canvas;
    if-eqz v19, :cond_5

    .line 770
    const-string v23, "WeatherAmbientDisplay"

    const-string v24, "We have main  image to the ambient"

    invoke-static/range {v23 .. v24}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 772
    .local v5, "conditionImage":Landroid/graphics/Paint;
    if-eqz v5, :cond_4

    .line 773
    sget-object v23, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 774
    const/16 v22, 0x0

    .line 775
    .local v22, "weatherImage":Landroid/graphics/Bitmap;
    if-eqz v20, :cond_4

    .line 776
    sget-object v23, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    if-eqz v23, :cond_4

    move-object/from16 v23, p1

    .line 777
    check-cast v23, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    invoke-virtual/range {v23 .. v23}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getIconNumber()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 778
    .local v21, "weatherIconNumber":Ljava/lang/Integer;
    sget-object v23, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 779
    .local v8, "imageIndex":I
    const-string v23, "WeatherAmbientDisplay"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Icon Number (Image Index) "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    sget-object v23, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    if-eqz v23, :cond_4

    .line 783
    const-string v23, "WeatherAmbientDisplay"

    const-string v24, "In Weather conditions"

    invoke-static/range {v23 .. v24}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v8, v0, :cond_4

    sget-object v23, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v8, v0, :cond_4

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    move-object/from16 v24, v0

    sget-object v23, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v23

    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 791
    const/high16 v23, 0x42aa0000

    const/high16 v24, 0x40800000

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 833
    .end local v8    # "imageIndex":I
    .end local v21    # "weatherIconNumber":Ljava/lang/Integer;
    .end local v22    # "weatherImage":Landroid/graphics/Bitmap;
    :cond_4
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    move-object/from16 v23, v0

    const v24, 0x7f0200e4

    invoke-static/range {v23 .. v24}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v23

    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 839
    .local v10, "locationImage":Landroid/graphics/Bitmap;
    const v23, 0x43818000

    const/high16 v24, 0x42340000

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v10, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 845
    .end local v5    # "conditionImage":Landroid/graphics/Paint;
    .end local v10    # "locationImage":Landroid/graphics/Bitmap;
    :cond_5
    new-instance v17, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 846
    .local v17, "textCanvas":Landroid/graphics/Canvas;
    if-eqz v17, :cond_9

    .line 847
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 850
    .local v15, "paintText":Landroid/graphics/Paint;
    if-eqz v15, :cond_6

    .line 851
    sget-object v23, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 852
    const/16 v23, -0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 853
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/qualcomm/toq/base/utils/ToqData;->getQcomRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 855
    const/high16 v23, 0x42500000

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 856
    sget-object v23, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 857
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 859
    if-eqz v6, :cond_6

    .line 860
    if-eqz v17, :cond_6

    .line 861
    if-eqz v15, :cond_6

    .line 863
    const/high16 v23, 0x43250000

    const/high16 v24, 0x431b0000

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v6, v1, v2, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 872
    :cond_6
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 877
    .local v14, "paintHL":Landroid/graphics/Paint;
    if-eqz v14, :cond_9

    .line 878
    sget-object v23, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 879
    const/16 v23, -0x1

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 880
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/qualcomm/toq/base/utils/ToqData;->getQcomSemiboldTypeFace()Landroid/graphics/Typeface;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 882
    const/high16 v23, 0x41a00000

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 883
    sget-object v23, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 884
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 885
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 887
    if-eqz v12, :cond_7

    if-eqz v13, :cond_7

    .line 888
    if-eqz v17, :cond_7

    .line 889
    if-eqz v14, :cond_7

    .line 890
    const/high16 v23, 0x435c0000

    const/high16 v24, 0x43060000

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v12, v1, v2, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 894
    const/high16 v23, 0x435c0000

    const/high16 v24, 0x431d0000

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v13, v1, v2, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 904
    :cond_7
    sget-object v23, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 905
    const/16 v23, -0x1

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 906
    const/high16 v23, 0x41a00000

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 907
    sget-object v23, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 908
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/qualcomm/toq/base/utils/ToqData;->getQcomSemiboldTypeFace()Landroid/graphics/Typeface;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 910
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 911
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setLinearText(Z)V

    .line 912
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 914
    check-cast p1, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .end local p1    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v4

    .line 915
    .local v4, "cityStr":Ljava/lang/String;
    if-eqz v4, :cond_9

    .line 916
    if-eqz v17, :cond_9

    .line 917
    if-eqz v14, :cond_9

    .line 918
    const-string v23, "WeatherAmbientDisplay"

    const-string v24, "Setting Citye to the ambient"

    invoke-static/range {v23 .. v24}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x19

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_8

    .line 920
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x0

    const/16 v25, 0x19

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "..."

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 925
    :cond_8
    const/high16 v23, 0x43120000

    const/high16 v24, 0x43330000

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v4, v1, v2, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 935
    .end local v4    # "cityStr":Ljava/lang/String;
    .end local v14    # "paintHL":Landroid/graphics/Paint;
    .end local v15    # "paintText":Landroid/graphics/Paint;
    :cond_9
    const-string v23, "WeatherAmbientDisplay"

    const-string v24, "Returning Bitmap to  ambient"

    invoke-static/range {v23 .. v24}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mMainImage:Landroid/graphics/Bitmap;

    .line 943
    .end local v6    # "hourTemp":Ljava/lang/String;
    .end local v7    # "hourlyTemp":I
    .end local v11    # "mMainImageCopy":Landroid/graphics/Bitmap;
    .end local v16    # "pushImageType":Ljava/lang/String;
    .end local v17    # "textCanvas":Landroid/graphics/Canvas;
    .end local v19    # "weatherCanvas":Landroid/graphics/Canvas;
    :goto_2
    return-object v11

    .line 692
    .restart local v6    # "hourTemp":Ljava/lang/String;
    .restart local v7    # "hourlyTemp":I
    .restart local v9    # "index":I
    .restart local v16    # "pushImageType":Ljava/lang/String;
    .restart local p1    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 719
    .end local v9    # "index":I
    :cond_b
    const-string v23, "push_data_error_image"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 720
    if-eqz v20, :cond_c

    invoke-virtual/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getMaxTemp()I

    move-result v23

    if-nez v23, :cond_d

    invoke-virtual/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getMinTemp()I

    move-result v23

    if-nez v23, :cond_d

    .line 722
    :cond_c
    const-string v6, "--"

    .line 723
    const-string v13, "L:--"

    .line 724
    const-string v12, "H:--"

    .line 727
    :cond_d
    const-string v23, "WeatherAmbientDisplay"

    const-string v24, "PUSH_DATA_ERROR_IMAGE_TYPE"

    invoke-static/range {v23 .. v24}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mClockBackGroundImageIds:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    invoke-static/range {v23 .. v24}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v23

    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mMainImage:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 733
    :cond_e
    const-string v23, "push_offline_image"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 734
    if-eqz v20, :cond_f

    invoke-virtual/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getMaxTemp()I

    move-result v23

    if-nez v23, :cond_10

    invoke-virtual/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getMinTemp()I

    move-result v23

    if-nez v23, :cond_10

    .line 736
    :cond_f
    const-string v6, "--"

    .line 737
    const-string v13, "L:--"

    .line 738
    const-string v12, "H:--"

    .line 741
    :cond_10
    const-string v23, "WeatherAmbientDisplay"

    const-string v24, "PUSH_OFFLINE_IMAGE_TYPE"

    invoke-static/range {v23 .. v24}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mClockBackGroundImageIds:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    invoke-static/range {v23 .. v24}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v23

    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mMainImage:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 746
    :cond_11
    const-string v23, "push_airplane_image"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 747
    if-eqz v20, :cond_12

    invoke-virtual/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getMaxTemp()I

    move-result v23

    if-nez v23, :cond_13

    invoke-virtual/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getMinTemp()I

    move-result v23

    if-nez v23, :cond_13

    .line 749
    :cond_12
    const-string v6, "--"

    .line 750
    const-string v13, "--"

    .line 751
    const-string v12, "--"

    .line 754
    :cond_13
    const-string v23, "WeatherAmbientDisplay"

    const-string v24, "PUSH_AIRPLANE_IMAGE_TYPE"

    invoke-static/range {v23 .. v24}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mClockBackGroundImageIds:[I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    invoke-static/range {v23 .. v24}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v23

    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mMainImage:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 941
    .end local v6    # "hourTemp":Ljava/lang/String;
    .end local v7    # "hourlyTemp":I
    .end local v16    # "pushImageType":Ljava/lang/String;
    :cond_14
    const-string v23, "WeatherAmbientDisplay"

    const-string v24, "Context is null, not able to write data on bitmap"

    invoke-static/range {v23 .. v24}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const/4 v11, 0x0

    goto/16 :goto_2
.end method

.method public writeCurrentCityDataOntoBitmap(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;
    .locals 17
    .param p1, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;

    .prologue
    .line 953
    const/4 v2, 0x0

    .line 954
    .local v2, "currentTemp":Ljava/lang/String;
    const/4 v8, 0x0

    .line 955
    .local v8, "weatherCondition":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "CityClockImageRepo":Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;
    move-object/from16 v7, p1

    .line 956
    check-cast v7, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 957
    .local v7, "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    if-eqz v7, :cond_14

    .line 958
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->setWeatherConditions()V

    .line 960
    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getWeatherCondition()Ljava/lang/String;

    move-result-object v8

    .line 961
    if-eqz v8, :cond_0

    .line 962
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 968
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getHourTemp()I

    move-result v14

    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getWeatherTemperatureBasedOnUnit(I)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\u00b0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 972
    :cond_0
    new-instance v1, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;

    .end local v1    # "CityClockImageRepo":Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;
    const/4 v13, 0x3

    invoke-direct {v1, v13}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;-><init>(I)V

    .line 973
    .restart local v1    # "CityClockImageRepo":Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->getResourceObject()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    .line 975
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 976
    .local v6, "paintText":Landroid/graphics/Paint;
    if-eqz v6, :cond_1

    .line 977
    sget-object v13, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 978
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v13

    invoke-virtual {v13}, Lcom/qualcomm/toq/base/utils/ToqData;->getQcomRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 980
    const/high16 v13, 0x42380000

    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 981
    sget-object v13, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 982
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 988
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v13, 0x3

    if-ge v4, v13, :cond_14

    .line 990
    if-nez v4, :cond_8

    .line 991
    :try_start_0
    const-string v13, "WeatherAmbientDisplay"

    const-string v14, "Setting Blue Clock Images"

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    const-string v13, "push_airplane_image"

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 996
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherConditionImage()[Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f0200cc

    invoke-static {v14, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    aput-object v14, v13, v4

    .line 1001
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherHourTempImage()[Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f0200cf

    invoke-static {v14, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    aput-object v14, v13, v4

    .line 988
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1007
    :cond_3
    const-string v13, "push_online_image"

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1009
    sget-object v13, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    if-eqz v13, :cond_5

    .line 1010
    move-object/from16 v0, p1

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getIconNumber()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1011
    .local v11, "weatherIconNumber":Ljava/lang/Integer;
    sget-object v13, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 1012
    .local v5, "imageIndex":I
    const-string v13, "WeatherAmbientDisplay"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Icon Number (Image Index) "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    sget-object v13, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    if-eqz v13, :cond_5

    .line 1016
    const-string v13, "WeatherAmbientDisplay"

    const-string v14, "In Weather conditions"

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    const/4 v9, 0x0

    .line 1018
    .local v9, "weatherConditionBitmap":Landroid/graphics/Bitmap;
    const/4 v13, -0x1

    if-eq v5, v13, :cond_4

    sget-object v13, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v5, v13, :cond_7

    .line 1020
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v14, 0x7f0200d2

    invoke-static {v13, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1032
    :goto_2
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherConditionImage()[Landroid/graphics/Bitmap;

    move-result-object v13

    aput-object v9, v13, v4

    .line 1036
    .end local v5    # "imageIndex":I
    .end local v9    # "weatherConditionBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "weatherIconNumber":Ljava/lang/Integer;
    :cond_5
    const/16 v13, 0x6e

    const/16 v14, 0x50

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1039
    .local v10, "weatherHourTempBitmap":Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1040
    .local v12, "weatherTempCanvas":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v14, 0x7f070004

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1042
    if-eqz v2, :cond_6

    if-eqz v8, :cond_6

    .line 1043
    if-eqz v12, :cond_6

    .line 1044
    if-eqz v6, :cond_6

    .line 1046
    const/high16 v13, 0x425c0000

    const/high16 v14, 0x42600000

    invoke-virtual {v12, v2, v13, v14, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1054
    :cond_6
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherHourTempImage()[Landroid/graphics/Bitmap;

    move-result-object v13

    aput-object v10, v13, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1196
    .end local v10    # "weatherHourTempBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "weatherTempCanvas":Landroid/graphics/Canvas;
    :catch_0
    move-exception v3

    .line 1197
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1198
    const/4 v13, 0x0

    .line 1204
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "i":I
    .end local v6    # "paintText":Landroid/graphics/Paint;
    :goto_3
    return-object v13

    .line 1026
    .restart local v4    # "i":I
    .restart local v5    # "imageIndex":I
    .restart local v6    # "paintText":Landroid/graphics/Paint;
    .restart local v9    # "weatherConditionBitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "weatherIconNumber":Ljava/lang/Integer;
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    sget-object v13, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionBlueImages:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v14, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_2

    .line 1058
    .end local v5    # "imageIndex":I
    .end local v9    # "weatherConditionBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "weatherIconNumber":Ljava/lang/Integer;
    :cond_8
    const/4 v13, 0x1

    if-ne v4, v13, :cond_e

    .line 1059
    const-string v13, "WeatherAmbientDisplay"

    const-string v14, "Setting Dark Clock Images"

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    const-string v13, "push_airplane_image"

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 1063
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherConditionImage()[Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f0200cd

    invoke-static {v14, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    aput-object v14, v13, v4

    .line 1068
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherHourTempImage()[Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f0200d0

    invoke-static {v14, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    aput-object v14, v13, v4

    goto/16 :goto_1

    .line 1074
    :cond_9
    const-string v13, "push_online_image"

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1075
    sget-object v13, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    if-eqz v13, :cond_b

    .line 1076
    move-object/from16 v0, p1

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getIconNumber()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1077
    .restart local v11    # "weatherIconNumber":Ljava/lang/Integer;
    sget-object v13, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 1078
    .restart local v5    # "imageIndex":I
    const-string v13, "WeatherAmbientDisplay"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Icon Number (Image Index) "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    sget-object v13, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    if-eqz v13, :cond_b

    .line 1082
    const-string v13, "WeatherAmbientDisplay"

    const-string v14, "In Weather conditions"

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    const/4 v9, 0x0

    .line 1084
    .restart local v9    # "weatherConditionBitmap":Landroid/graphics/Bitmap;
    const/4 v13, -0x1

    if-eq v5, v13, :cond_a

    sget-object v13, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v5, v13, :cond_d

    .line 1086
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v14, 0x7f0200d3

    invoke-static {v13, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1098
    :goto_4
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherConditionImage()[Landroid/graphics/Bitmap;

    move-result-object v13

    aput-object v9, v13, v4

    .line 1102
    .end local v5    # "imageIndex":I
    .end local v9    # "weatherConditionBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "weatherIconNumber":Ljava/lang/Integer;
    :cond_b
    const/16 v13, 0x6e

    const/16 v14, 0x50

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1105
    .restart local v10    # "weatherHourTempBitmap":Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1106
    .restart local v12    # "weatherTempCanvas":Landroid/graphics/Canvas;
    const/high16 v13, -0x1000000

    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1107
    if-eqz v2, :cond_c

    if-eqz v8, :cond_c

    .line 1108
    if-eqz v12, :cond_c

    .line 1109
    if-eqz v6, :cond_c

    .line 1111
    const/high16 v13, 0x425c0000

    const/high16 v14, 0x42600000

    invoke-virtual {v12, v2, v13, v14, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1119
    :cond_c
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherHourTempImage()[Landroid/graphics/Bitmap;

    move-result-object v13

    aput-object v10, v13, v4

    goto/16 :goto_1

    .line 1092
    .end local v10    # "weatherHourTempBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "weatherTempCanvas":Landroid/graphics/Canvas;
    .restart local v5    # "imageIndex":I
    .restart local v9    # "weatherConditionBitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "weatherIconNumber":Ljava/lang/Integer;
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    sget-object v13, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionDarkImages:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v14, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_4

    .line 1122
    .end local v5    # "imageIndex":I
    .end local v9    # "weatherConditionBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "weatherIconNumber":Ljava/lang/Integer;
    :cond_e
    const/4 v13, 0x2

    if-ne v4, v13, :cond_2

    .line 1123
    const-string v13, "WeatherAmbientDisplay"

    const-string v14, "Setting White Clock Images"

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    const-string v13, "push_airplane_image"

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 1127
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherConditionImage()[Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f0200ce

    invoke-static {v14, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    aput-object v14, v13, v4

    .line 1132
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherHourTempImage()[Landroid/graphics/Bitmap;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v15, 0x7f0200d1

    invoke-static {v14, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    aput-object v14, v13, v4

    goto/16 :goto_1

    .line 1138
    :cond_f
    const-string v13, "push_online_image"

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1140
    sget-object v13, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    if-eqz v13, :cond_11

    .line 1141
    move-object/from16 v0, p1

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getIconNumber()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 1142
    .restart local v11    # "weatherIconNumber":Ljava/lang/Integer;
    sget-object v13, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 1143
    .restart local v5    # "imageIndex":I
    const-string v13, "WeatherAmbientDisplay"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Icon Number (Image Index) "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    sget-object v13, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    if-eqz v13, :cond_11

    .line 1147
    const-string v13, "WeatherAmbientDisplay"

    const-string v14, "In Weather conditions"

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    const/4 v9, 0x0

    .line 1150
    .restart local v9    # "weatherConditionBitmap":Landroid/graphics/Bitmap;
    const/4 v13, -0x1

    if-eq v5, v13, :cond_10

    sget-object v13, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v5, v13, :cond_13

    .line 1152
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v14, 0x7f0200d4

    invoke-static {v13, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1156
    const-string v13, "WeatherAmbientDisplay"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Setting Default White Clock Image with index +"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    :goto_5
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherConditionImage()[Landroid/graphics/Bitmap;

    move-result-object v13

    aput-object v9, v13, v4

    .line 1174
    .end local v5    # "imageIndex":I
    .end local v9    # "weatherConditionBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "weatherIconNumber":Ljava/lang/Integer;
    :cond_11
    const/16 v13, 0x6e

    const/16 v14, 0x50

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1177
    .restart local v10    # "weatherHourTempBitmap":Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1178
    .restart local v12    # "weatherTempCanvas":Landroid/graphics/Canvas;
    const/4 v13, -0x1

    invoke-virtual {v6, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1179
    if-eqz v2, :cond_12

    if-eqz v8, :cond_12

    .line 1180
    if-eqz v12, :cond_12

    .line 1181
    if-eqz v6, :cond_12

    .line 1183
    const/high16 v13, 0x425c0000

    const/high16 v14, 0x42600000

    invoke-virtual {v12, v2, v13, v14, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1191
    :cond_12
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->getWeatherHourTempImage()[Landroid/graphics/Bitmap;

    move-result-object v13

    aput-object v10, v13, v4

    goto/16 :goto_1

    .line 1161
    .end local v10    # "weatherHourTempBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "weatherTempCanvas":Landroid/graphics/Canvas;
    .restart local v5    # "imageIndex":I
    .restart local v9    # "weatherConditionBitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "weatherIconNumber":Ljava/lang/Integer;
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    sget-object v13, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v14, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1165
    const-string v13, "WeatherAmbientDisplay"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Setting Proper White Clock Image with index +"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .end local v4    # "i":I
    .end local v5    # "imageIndex":I
    .end local v6    # "paintText":Landroid/graphics/Paint;
    .end local v9    # "weatherConditionBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "weatherIconNumber":Ljava/lang/Integer;
    :cond_14
    move-object v13, v1

    .line 1204
    goto/16 :goto_3
.end method

.method public writeDataOntoBitmap(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Landroid/graphics/Bitmap;
    .locals 29
    .param p1, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;

    .prologue
    .line 353
    const/16 v18, 0x0

    .line 354
    .local v18, "maxTemp":Ljava/lang/String;
    const/16 v19, 0x0

    .line 355
    .local v19, "minTemp":Ljava/lang/String;
    const/16 v26, 0x0

    .line 356
    .local v26, "weatherCondition":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->setWeatherConditions()V

    move-object/from16 v25, p1

    .line 357
    check-cast v25, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 363
    .local v25, "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getMaxTemp()I

    move-result v5

    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getWeatherTemperatureBasedOnUnit(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u00b0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getMinTemp()I

    move-result v5

    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getWeatherTemperatureBasedOnUnit(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u00b0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 368
    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getWeatherCondition()Ljava/lang/String;

    move-result-object v26

    .line 369
    if-eqz v26, :cond_0

    .line 370
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v26

    .line 373
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->getResourceObject()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    .line 375
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    if-eqz v4, :cond_16

    .line 376
    const/4 v12, 0x0

    .line 377
    .local v12, "hourTemp":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v23

    .line 380
    .local v23, "pushImageType":Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getHourTemp()I

    move-result v13

    .line 381
    .local v13, "hourlyTemp":I
    const-string v4, "push_online_image"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    if-eqz v26, :cond_d

    .line 383
    const-string v4, "WeatherAmbientDisplay"

    const-string v5, "PUSH_ONLINE_IMAGE_TYPE"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const/4 v15, 0x0

    .line 389
    .local v15, "index":I
    const/4 v15, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mBackGroundImageIds:[I

    array-length v4, v4

    if-ge v15, v4, :cond_1

    .line 390
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mTemperatureLowerRange:[I

    aget v4, v4, v15

    if-lt v13, v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mTemperatureUpperRange:[I

    aget v4, v4, v15

    if-gt v13, v4, :cond_c

    .line 400
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mBackGroundImageIds:[I

    array-length v4, v4

    if-lt v15, v4, :cond_2

    .line 401
    const/4 v15, 0x0

    .line 408
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getWeatherTemperatureBasedOnUnit(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u00b0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 412
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mBackGroundImageIds:[I

    aget v5, v5, v15

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mMainImage:Landroid/graphics/Bitmap;

    .line 457
    .end local v15    # "index":I
    :cond_3
    :goto_1
    const/16 v4, 0x114

    const/16 v5, 0x98

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 460
    .local v9, "baseImage":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mMainImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mMainImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 463
    .local v17, "mMainImageCopy":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mMainImage:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->convertImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 465
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 466
    .local v3, "weatherCanvas":Landroid/graphics/Canvas;
    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    .line 467
    .local v20, "paintBack":Landroid/graphics/Paint;
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 468
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v4, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 469
    if-eqz v3, :cond_6

    .line 472
    const-string v4, "WeatherAmbientDisplay"

    const-string v5, "We have main image  to the ambient"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 475
    .local v11, "conditionImage":Landroid/graphics/Paint;
    if-eqz v11, :cond_5

    .line 476
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 477
    const/16 v28, 0x0

    .line 478
    .local v28, "weatherImage":Landroid/graphics/Bitmap;
    if-eqz v26, :cond_4

    .line 479
    sget-object v4, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    move-object/from16 v4, p1

    .line 480
    check-cast v4, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getIconNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 481
    .local v27, "weatherIconNumber":Ljava/lang/Integer;
    sget-object v4, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 482
    .local v14, "imageIndex":I
    const-string v4, "WeatherAmbientDisplay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Icon Number (Image Index) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    sget-object v4, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 486
    const-string v4, "WeatherAmbientDisplay"

    const-string v5, "In Weather conditions"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const/4 v4, -0x1

    if-eq v14, v4, :cond_4

    sget-object v4, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherIcons:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_4

    .line 490
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    sget-object v4, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mWeatherConditionImages:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v5, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v28

    .line 494
    const/high16 v4, 0x431e0000

    const/high16 v5, 0x42200000

    move-object/from16 v0, v28

    invoke-virtual {v3, v0, v4, v5, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 531
    .end local v14    # "imageIndex":I
    .end local v27    # "weatherIconNumber":Ljava/lang/Integer;
    :cond_4
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    if-eqz v4, :cond_5

    .line 532
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0200e4

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 537
    .local v16, "locationImage":Landroid/graphics/Bitmap;
    const/high16 v4, 0x437e0000

    const/high16 v5, 0x41a00000

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v4, v5, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 545
    .end local v16    # "locationImage":Landroid/graphics/Bitmap;
    .end local v28    # "weatherImage":Landroid/graphics/Bitmap;
    :cond_5
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 546
    .local v8, "cardDropShadow":Landroid/graphics/Paint;
    if-eqz v8, :cond_6

    .line 547
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 548
    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 549
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f070006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 551
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mMainImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x438a0000

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mMainImage:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, 0x3

    int-to-float v7, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 559
    .end local v8    # "cardDropShadow":Landroid/graphics/Paint;
    .end local v11    # "conditionImage":Landroid/graphics/Paint;
    :cond_6
    new-instance v24, Landroid/graphics/Canvas;

    move-object/from16 v0, v24

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 560
    .local v24, "textCanvas":Landroid/graphics/Canvas;
    if-eqz v24, :cond_a

    .line 561
    new-instance v22, Landroid/graphics/Paint;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Paint;-><init>()V

    .line 564
    .local v22, "paintText":Landroid/graphics/Paint;
    if-eqz v22, :cond_7

    .line 565
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 566
    const/4 v4, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 567
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getQcomRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 569
    const/high16 v4, 0x428c0000

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 570
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 571
    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 573
    if-eqz v12, :cond_7

    .line 574
    if-eqz v24, :cond_7

    .line 575
    if-eqz v22, :cond_7

    .line 577
    const/high16 v4, 0x41800000

    const/high16 v5, 0x42d20000

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v12, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 586
    :cond_7
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    .line 591
    .local v21, "paintHL":Landroid/graphics/Paint;
    if-eqz v21, :cond_a

    .line 592
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 593
    const/4 v4, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 594
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getQcomSemiboldTypeFace()Landroid/graphics/Typeface;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 596
    const/high16 v4, 0x41d00000

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 597
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 598
    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 599
    const-string v4, "H:"

    const/high16 v5, 0x41800000

    const/high16 v6, 0x430a0000

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v5, v6, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 600
    const-string v4, "L:"

    const/high16 v5, 0x42b40000

    const/high16 v6, 0x430a0000

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v5, v6, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 601
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getQcomRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 603
    if-eqz v18, :cond_8

    if-eqz v19, :cond_8

    .line 604
    if-eqz v24, :cond_8

    .line 605
    if-eqz v21, :cond_8

    .line 606
    const/high16 v4, 0x42340000

    const/high16 v5, 0x430a0000

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 607
    const/high16 v4, 0x42ee0000

    const/high16 v5, 0x430a0000

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 612
    :cond_8
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 613
    const/4 v4, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 614
    const/high16 v4, 0x41e80000

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 615
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 616
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getQcomRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 618
    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 619
    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setLinearText(Z)V

    .line 621
    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v10

    .line 623
    .local v10, "cityStr":Ljava/lang/String;
    if-eqz v10, :cond_a

    .line 624
    if-eqz v24, :cond_a

    .line 625
    if-eqz v21, :cond_a

    .line 626
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xf

    if-le v4, v5, :cond_9

    .line 627
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const/16 v6, 0xf

    invoke-virtual {v10, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 629
    :cond_9
    const-string v4, "WeatherAmbientDisplay"

    const-string v5, "Setting City to the ambient"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const/high16 v4, 0x41200000

    const/high16 v5, 0x42140000

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 637
    .end local v10    # "cityStr":Ljava/lang/String;
    .end local v21    # "paintHL":Landroid/graphics/Paint;
    .end local v22    # "paintText":Landroid/graphics/Paint;
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mMainImage:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_b

    .line 638
    const-string v4, "MainActivity New"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Has Alpha "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mMainImage:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v4, "WeatherAmbientDisplay"

    const-string v5, "Bitmap is not null"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mMainImage:Landroid/graphics/Bitmap;

    .line 644
    const-string v4, "WeatherAmbientDisplay"

    const-string v5, "Returning Bitmap to  ambient"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    .end local v3    # "weatherCanvas":Landroid/graphics/Canvas;
    .end local v9    # "baseImage":Landroid/graphics/Bitmap;
    .end local v12    # "hourTemp":Ljava/lang/String;
    .end local v13    # "hourlyTemp":I
    .end local v17    # "mMainImageCopy":Landroid/graphics/Bitmap;
    .end local v20    # "paintBack":Landroid/graphics/Paint;
    .end local v23    # "pushImageType":Ljava/lang/String;
    .end local v24    # "textCanvas":Landroid/graphics/Canvas;
    :goto_2
    return-object v9

    .line 389
    .restart local v12    # "hourTemp":Ljava/lang/String;
    .restart local v13    # "hourlyTemp":I
    .restart local v15    # "index":I
    .restart local v23    # "pushImageType":Ljava/lang/String;
    :cond_c
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 416
    .end local v15    # "index":I
    :cond_d
    const-string v4, "push_data_error_image"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 417
    if-eqz v26, :cond_e

    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getMaxTemp()I

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getMinTemp()I

    move-result v4

    if-nez v4, :cond_f

    .line 419
    :cond_e
    const-string v12, "--"

    .line 420
    const-string v19, "--"

    .line 421
    const-string v18, "--"

    .line 424
    :cond_f
    const-string v4, "WeatherAmbientDisplay"

    const-string v5, "PUSH_DATA_ERROR_IMAGE_TYPE"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f02005d

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mMainImage:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 430
    :cond_10
    const-string v4, "push_offline_image"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 431
    if-eqz v26, :cond_11

    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getMaxTemp()I

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getMinTemp()I

    move-result v4

    if-nez v4, :cond_12

    .line 433
    :cond_11
    const-string v12, "--"

    .line 434
    const-string v19, "--"

    .line 435
    const-string v18, "--"

    .line 438
    :cond_12
    const-string v4, "WeatherAmbientDisplay"

    const-string v5, "PUSH_OFFLINE_IMAGE_TYPE"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f02005d

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mMainImage:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 443
    :cond_13
    const-string v4, "push_airplane_image"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 444
    if-eqz v26, :cond_14

    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getMaxTemp()I

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getMinTemp()I

    move-result v4

    if-nez v4, :cond_15

    .line 446
    :cond_14
    const-string v12, "--"

    .line 447
    const-string v19, "--"

    .line 448
    const-string v18, "--"

    .line 451
    :cond_15
    const-string v4, "WeatherAmbientDisplay"

    const-string v5, "PUSH_AIRPLANE_IMAGE_TYPE"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f02005d

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;->mMainImage:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 650
    .end local v12    # "hourTemp":Ljava/lang/String;
    .end local v13    # "hourlyTemp":I
    .end local v23    # "pushImageType":Ljava/lang/String;
    :cond_16
    const-string v4, "WeatherAmbientDisplay"

    const-string v5, "Context is null, not able to write data on bitmap"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const/4 v9, 0x0

    goto/16 :goto_2
.end method

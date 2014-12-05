.class public Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;
.super Ljava/lang/Object;
.source "CityClockImageRepo.java"


# instance fields
.field private mWeatherConditionImage:[Landroid/graphics/Bitmap;

.field private mWeatherHourTempImage:[Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "reposize"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-array v0, p1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->mWeatherConditionImage:[Landroid/graphics/Bitmap;

    .line 44
    new-array v0, p1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->mWeatherHourTempImage:[Landroid/graphics/Bitmap;

    .line 45
    return-void
.end method


# virtual methods
.method public getWeatherConditionImage()[Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->mWeatherConditionImage:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getWeatherHourTempImage()[Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->mWeatherHourTempImage:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setWeatherConditionImage([Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "weatherConditionImage"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->mWeatherConditionImage:[Landroid/graphics/Bitmap;

    .line 28
    return-void
.end method

.method public setWeatherHourTempImage([Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "weatherHourTempImage"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/CityClockImageRepo;->mWeatherHourTempImage:[Landroid/graphics/Bitmap;

    .line 36
    return-void
.end method

.class public Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;
.super Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
.source "CurrentCityWeatherAmbientInfo.java"


# static fields
.field private static final serialVersionUID:J = 0x5cca313634416ff7L


# instance fields
.field private clockZipDestinationLocation:Ljava/lang/String;

.field private clockZipSourceLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->clockZipSourceLocation:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->clockZipDestinationLocation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClockZipDestinationLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->clockZipDestinationLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getClockZipSourceLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->clockZipSourceLocation:Ljava/lang/String;

    return-object v0
.end method

.method public setClockZipDestinationLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "clockZipDestinationLocation"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->clockZipDestinationLocation:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setClockZipSourceLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "clockZipSourceLocation"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->clockZipSourceLocation:Ljava/lang/String;

    .line 27
    return-void
.end method

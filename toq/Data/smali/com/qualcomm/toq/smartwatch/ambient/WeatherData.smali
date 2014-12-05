.class public Lcom/qualcomm/toq/smartwatch/ambient/WeatherData;
.super Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;
.source "WeatherData.java"


# static fields
.field private static inst:Lcom/qualcomm/toq/smartwatch/ambient/WeatherData;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;-><init>()V

    .line 12
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/toq/smartwatch/ambient/WeatherData;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherData;->inst:Lcom/qualcomm/toq/smartwatch/ambient/WeatherData;

    if-nez v0, :cond_1

    .line 20
    const-class v1, Lcom/qualcomm/toq/smartwatch/ambient/WeatherData;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherData;->inst:Lcom/qualcomm/toq/smartwatch/ambient/WeatherData;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherData;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherData;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherData;->inst:Lcom/qualcomm/toq/smartwatch/ambient/WeatherData;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherData;->inst:Lcom/qualcomm/toq/smartwatch/ambient/WeatherData;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

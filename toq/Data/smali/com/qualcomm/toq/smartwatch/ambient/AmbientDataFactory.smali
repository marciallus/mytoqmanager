.class public Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFactory;
.super Ljava/lang/Object;
.source "AmbientDataFactory.java"


# static fields
.field private static inst:Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFactory;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFactory;->inst:Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFactory;

    if-nez v0, :cond_0

    .line 22
    const-class v1, Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFactory;

    monitor-enter v1

    .line 23
    :try_start_0
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFactory;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFactory;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFactory;->inst:Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFactory;

    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFactory;->inst:Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFactory;

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


# virtual methods
.method public getAmbientData(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v0, "weather"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherData;->getInstance()Lcom/qualcomm/toq/smartwatch/ambient/WeatherData;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    .line 39
    :cond_0
    const-string v0, "stock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ambient/StockData;->getInstance()Lcom/qualcomm/toq/smartwatch/ambient/StockData;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_1
    const-string v0, "Ambient"

    const-string v1, "!!! AmbientDataFactory-Invalid ambient type.!!!"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    goto :goto_0
.end method

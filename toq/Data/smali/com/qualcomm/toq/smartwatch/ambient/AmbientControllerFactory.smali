.class public Lcom/qualcomm/toq/smartwatch/ambient/AmbientControllerFactory;
.super Ljava/lang/Object;
.source "AmbientControllerFactory.java"


# static fields
.field private static inst:Lcom/qualcomm/toq/smartwatch/ambient/AmbientControllerFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/toq/smartwatch/ambient/AmbientControllerFactory;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientControllerFactory;->inst:Lcom/qualcomm/toq/smartwatch/ambient/AmbientControllerFactory;

    if-nez v0, :cond_1

    .line 23
    const-class v1, Lcom/qualcomm/toq/smartwatch/ambient/AmbientControllerFactory;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientControllerFactory;->inst:Lcom/qualcomm/toq/smartwatch/ambient/AmbientControllerFactory;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientControllerFactory;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientControllerFactory;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientControllerFactory;->inst:Lcom/qualcomm/toq/smartwatch/ambient/AmbientControllerFactory;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientControllerFactory;->inst:Lcom/qualcomm/toq/smartwatch/ambient/AmbientControllerFactory;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getAmbientController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 39
    const-string v0, "weather"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->getInstance()Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    .line 41
    :cond_0
    const-string v0, "stock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ambient/StockController;->getInstance()Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_1
    const-string v0, "Ambient"

    const-string v1, "!!! Invalid ambient controller.!!!"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    goto :goto_0
.end method

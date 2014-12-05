.class public Lcom/qualcomm/toq/smartwatch/ambient/ImageCreatorFactory;
.super Ljava/lang/Object;
.source "ImageCreatorFactory.java"


# static fields
.field private static inst:Lcom/qualcomm/toq/smartwatch/ambient/ImageCreatorFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/toq/smartwatch/ambient/ImageCreatorFactory;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/ImageCreatorFactory;->inst:Lcom/qualcomm/toq/smartwatch/ambient/ImageCreatorFactory;

    if-nez v0, :cond_0

    .line 17
    const-class v1, Lcom/qualcomm/toq/smartwatch/ambient/ImageCreatorFactory;

    monitor-enter v1

    .line 18
    :try_start_0
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ambient/ImageCreatorFactory;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/ambient/ImageCreatorFactory;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ambient/ImageCreatorFactory;->inst:Lcom/qualcomm/toq/smartwatch/ambient/ImageCreatorFactory;

    .line 19
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/ImageCreatorFactory;->inst:Lcom/qualcomm/toq/smartwatch/ambient/ImageCreatorFactory;

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getImageCreator(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 25
    const-string v0, "weather"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientDisplay;-><init>()V

    .line 32
    :goto_0
    return-object v0

    .line 28
    :cond_0
    const-string v0, "stock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 29
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;-><init>()V

    goto :goto_0

    .line 31
    :cond_1
    const-string v0, "Ambient"

    const-string v1, "!!! ImageCreatorFactory-Invalid ambient type."

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    goto :goto_0
.end method

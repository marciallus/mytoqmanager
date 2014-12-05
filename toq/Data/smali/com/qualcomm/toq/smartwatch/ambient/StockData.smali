.class public Lcom/qualcomm/toq/smartwatch/ambient/StockData;
.super Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;
.source "StockData.java"


# static fields
.field private static inst:Lcom/qualcomm/toq/smartwatch/ambient/StockData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;-><init>()V

    .line 13
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/toq/smartwatch/ambient/StockData;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/StockData;->inst:Lcom/qualcomm/toq/smartwatch/ambient/StockData;

    if-nez v0, :cond_1

    .line 21
    const-class v1, Lcom/qualcomm/toq/smartwatch/ambient/StockData;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/StockData;->inst:Lcom/qualcomm/toq/smartwatch/ambient/StockData;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ambient/StockData;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockData;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ambient/StockData;->inst:Lcom/qualcomm/toq/smartwatch/ambient/StockData;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/StockData;->inst:Lcom/qualcomm/toq/smartwatch/ambient/StockData;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

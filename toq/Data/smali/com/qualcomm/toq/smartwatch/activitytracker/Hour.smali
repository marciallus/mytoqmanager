.class public Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;
.super Ljava/lang/Object;
.source "Hour.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x525d83f452d79577L


# instance fields
.field private currentHour:Ljava/lang/String;

.field private epocTime:J

.field private points:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentHour()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;->currentHour:Ljava/lang/String;

    return-object v0
.end method

.method public getEpocTime()J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;->epocTime:J

    return-wide v0
.end method

.method public getPoints()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;->points:J

    return-wide v0
.end method

.method public setCurrentHour(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentHour"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;->currentHour:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setEpocTime(J)V
    .locals 0
    .param p1, "epocTime"    # J

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;->epocTime:J

    .line 24
    return-void
.end method

.method public setPoints(J)V
    .locals 0
    .param p1, "points"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;->points:J

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hour Data -- Epoch Time :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;->epocTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Points :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;->points:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Current Hour"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;->currentHour:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

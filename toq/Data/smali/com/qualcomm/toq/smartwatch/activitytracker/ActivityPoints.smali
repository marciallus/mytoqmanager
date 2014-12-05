.class public Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;
.super Ljava/lang/Object;
.source "ActivityPoints.java"


# instance fields
.field private epochTime:J

.field private points:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEpochTime()J
    .locals 2

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->epochTime:J

    return-wide v0
.end method

.method public getPoints()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->points:I

    return v0
.end method

.method public setEpochTime(J)V
    .locals 0
    .param p1, "epochTime"    # J

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->epochTime:J

    .line 18
    return-void
.end method

.method public setPoints(I)V
    .locals 0
    .param p1, "points"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->points:I

    .line 26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Epoc Time : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->epochTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,Activity Point : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->points:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

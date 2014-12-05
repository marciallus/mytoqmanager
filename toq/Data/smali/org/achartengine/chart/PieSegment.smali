.class public Lorg/achartengine/chart/PieSegment;
.super Ljava/lang/Object;
.source "PieSegment.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mDataIndex:I

.field private mEndAngle:F

.field private mStartAngle:F

.field private mValue:F


# direct methods
.method public constructor <init>(IFFF)V
    .locals 1
    .param p1, "dataIndex"    # I
    .param p2, "value"    # F
    .param p3, "startAngle"    # F
    .param p4, "angle"    # F

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p3, p0, Lorg/achartengine/chart/PieSegment;->mStartAngle:F

    .line 34
    add-float v0, p4, p3

    iput v0, p0, Lorg/achartengine/chart/PieSegment;->mEndAngle:F

    .line 35
    iput p1, p0, Lorg/achartengine/chart/PieSegment;->mDataIndex:I

    .line 36
    iput p2, p0, Lorg/achartengine/chart/PieSegment;->mValue:F

    .line 37
    return-void
.end method


# virtual methods
.method protected getDataIndex()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/achartengine/chart/PieSegment;->mDataIndex:I

    return v0
.end method

.method protected getEndAngle()F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lorg/achartengine/chart/PieSegment;->mEndAngle:F

    return v0
.end method

.method protected getStartAngle()F
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lorg/achartengine/chart/PieSegment;->mStartAngle:F

    return v0
.end method

.method protected getValue()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lorg/achartengine/chart/PieSegment;->mValue:F

    return v0
.end method

.method public isInSegment(D)Z
    .locals 11
    .param p1, "angle"    # D

    .prologue
    const/4 v6, 0x1

    const-wide v9, 0x4076800000000000L

    .line 46
    iget v7, p0, Lorg/achartengine/chart/PieSegment;->mStartAngle:F

    float-to-double v7, v7

    cmpl-double v7, p1, v7

    if-ltz v7, :cond_1

    iget v7, p0, Lorg/achartengine/chart/PieSegment;->mEndAngle:F

    float-to-double v7, v7

    cmpg-double v7, p1, v7

    if-gtz v7, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v6

    .line 49
    :cond_1
    rem-double v0, p1, v9

    .line 50
    .local v0, "cAngle":D
    iget v7, p0, Lorg/achartengine/chart/PieSegment;->mStartAngle:F

    float-to-double v2, v7

    .line 51
    .local v2, "startAngle":D
    iget v7, p0, Lorg/achartengine/chart/PieSegment;->mEndAngle:F

    float-to-double v4, v7

    .line 52
    .local v4, "stopAngle":D
    :goto_1
    cmpl-double v7, v4, v9

    if-lez v7, :cond_2

    .line 53
    sub-double/2addr v2, v9

    .line 54
    sub-double/2addr v4, v9

    goto :goto_1

    .line 56
    :cond_2
    cmpl-double v7, v0, v2

    if-ltz v7, :cond_3

    cmpg-double v7, v0, v4

    if-lez v7, :cond_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/achartengine/chart/PieSegment;->mDataIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/achartengine/chart/PieSegment;->mValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mStartAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/achartengine/chart/PieSegment;->mStartAngle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mEndAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/achartengine/chart/PieSegment;->mEndAngle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

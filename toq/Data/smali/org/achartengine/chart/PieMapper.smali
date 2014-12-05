.class public Lorg/achartengine/chart/PieMapper;
.super Ljava/lang/Object;
.source "PieMapper.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mPieChartRadius:I

.field private mPieSegmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/achartengine/chart/PieSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/PieMapper;->mPieSegmentList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPieSegment(IFFF)V
    .locals 2
    .param p1, "dataIndex"    # I
    .param p2, "value"    # F
    .param p3, "startAngle"    # F
    .param p4, "angle"    # F

    .prologue
    .line 68
    iget-object v0, p0, Lorg/achartengine/chart/PieMapper;->mPieSegmentList:Ljava/util/List;

    new-instance v1, Lorg/achartengine/chart/PieSegment;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/achartengine/chart/PieSegment;-><init>(IFFF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public areAllSegmentPresent(I)Z
    .locals 1
    .param p1, "datasetSize"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lorg/achartengine/chart/PieMapper;->mPieSegmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearPieSegments()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/achartengine/chart/PieMapper;->mPieSegmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    return-void
.end method

.method public getAngle(Lorg/achartengine/model/Point;)D
    .locals 8
    .param p1, "screenPoint"    # Lorg/achartengine/model/Point;

    .prologue
    .line 86
    invoke-virtual {p1}, Lorg/achartengine/model/Point;->getX()F

    move-result v6

    iget v7, p0, Lorg/achartengine/chart/PieMapper;->mCenterX:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-double v0, v6

    .line 88
    .local v0, "dx":D
    invoke-virtual {p1}, Lorg/achartengine/model/Point;->getY()F

    move-result v6

    iget v7, p0, Lorg/achartengine/chart/PieMapper;->mCenterY:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    neg-float v6, v6

    float-to-double v2, v6

    .line 90
    .local v2, "dy":D
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    .line 94
    .local v4, "inRads":D
    const-wide/16 v6, 0x0

    cmpg-double v6, v4, v6

    if-gez v6, :cond_0

    .line 95
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 99
    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    return-wide v6

    .line 97
    :cond_0
    const-wide v6, 0x401921fb54442d18L

    sub-double v4, v6, v4

    goto :goto_0
.end method

.method public getSeriesAndPointForScreenCoordinate(Lorg/achartengine/model/Point;)Lorg/achartengine/model/SeriesSelection;
    .locals 11
    .param p1, "screenPoint"    # Lorg/achartengine/model/Point;

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lorg/achartengine/chart/PieMapper;->isOnPieChart(Lorg/achartengine/model/Point;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0, p1}, Lorg/achartengine/chart/PieMapper;->getAngle(Lorg/achartengine/model/Point;)D

    move-result-wide v7

    .line 130
    .local v7, "angleFromPieCenter":D
    iget-object v0, p0, Lorg/achartengine/chart/PieMapper;->mPieSegmentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/achartengine/chart/PieSegment;

    .line 131
    .local v10, "pieSeg":Lorg/achartengine/chart/PieSegment;
    invoke-virtual {v10, v7, v8}, Lorg/achartengine/chart/PieSegment;->isInSegment(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Lorg/achartengine/model/SeriesSelection;

    const/4 v1, 0x0

    invoke-virtual {v10}, Lorg/achartengine/chart/PieSegment;->getDataIndex()I

    move-result v2

    invoke-virtual {v10}, Lorg/achartengine/chart/PieSegment;->getValue()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v10}, Lorg/achartengine/chart/PieSegment;->getValue()F

    move-result v5

    float-to-double v5, v5

    invoke-direct/range {v0 .. v6}, Lorg/achartengine/model/SeriesSelection;-><init>(IIDD)V

    .line 137
    .end local v7    # "angleFromPieCenter":D
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "pieSeg":Lorg/achartengine/chart/PieSegment;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnPieChart(Lorg/achartengine/model/Point;)Z
    .locals 11
    .param p1, "screenPoint"    # Lorg/achartengine/model/Point;

    .prologue
    const-wide/high16 v9, 0x4000000000000000L

    .line 112
    iget v5, p0, Lorg/achartengine/chart/PieMapper;->mCenterX:I

    int-to-float v5, v5

    invoke-virtual {p1}, Lorg/achartengine/model/Point;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    iget v7, p0, Lorg/achartengine/chart/PieMapper;->mCenterY:I

    int-to-float v7, v7

    invoke-virtual {p1}, Lorg/achartengine/model/Point;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double v3, v5, v7

    .line 115
    .local v3, "sqValue":D
    iget v5, p0, Lorg/achartengine/chart/PieMapper;->mPieChartRadius:I

    iget v6, p0, Lorg/achartengine/chart/PieMapper;->mPieChartRadius:I

    mul-int/2addr v5, v6

    int-to-double v1, v5

    .line 116
    .local v1, "radiusSquared":D
    cmpg-double v5, v3, v1

    if-gtz v5, :cond_0

    const/4 v0, 0x1

    .line 117
    .local v0, "isOnPieChart":Z
    :goto_0
    return v0

    .line 116
    .end local v0    # "isOnPieChart":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDimensions(III)V
    .locals 0
    .param p1, "pieRadius"    # I
    .param p2, "centerX"    # I
    .param p3, "centerY"    # I

    .prologue
    .line 44
    iput p1, p0, Lorg/achartengine/chart/PieMapper;->mPieChartRadius:I

    .line 45
    iput p2, p0, Lorg/achartengine/chart/PieMapper;->mCenterX:I

    .line 46
    iput p3, p0, Lorg/achartengine/chart/PieMapper;->mCenterY:I

    .line 47
    return-void
.end method

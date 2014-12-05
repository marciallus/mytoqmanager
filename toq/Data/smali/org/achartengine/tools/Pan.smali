.class public Lorg/achartengine/tools/Pan;
.super Lorg/achartengine/tools/AbstractTool;
.source "Pan.java"


# instance fields
.field private limitsReachedX:Z

.field private limitsReachedY:Z

.field private mPanListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/achartengine/tools/PanListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/achartengine/chart/AbstractChart;)V
    .locals 2
    .param p1, "chart"    # Lorg/achartengine/chart/AbstractChart;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1}, Lorg/achartengine/tools/AbstractTool;-><init>(Lorg/achartengine/chart/AbstractChart;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/achartengine/tools/Pan;->mPanListeners:Ljava/util/List;

    .line 32
    iput-boolean v1, p0, Lorg/achartengine/tools/Pan;->limitsReachedX:Z

    .line 34
    iput-boolean v1, p0, Lorg/achartengine/tools/Pan;->limitsReachedY:Z

    .line 43
    return-void
.end method

.method private getAxisRatio([D)D
    .locals 6
    .param p1, "range"    # [D

    .prologue
    .line 133
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const/4 v2, 0x3

    aget-wide v2, p1, v2

    const/4 v4, 0x2

    aget-wide v4, p1, v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private declared-synchronized notifyPanListeners()V
    .locals 3

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/achartengine/tools/Pan;->mPanListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/achartengine/tools/PanListener;

    .line 141
    .local v1, "listener":Lorg/achartengine/tools/PanListener;
    invoke-interface {v1}, Lorg/achartengine/tools/PanListener;->panApplied()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 140
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lorg/achartengine/tools/PanListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 143
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized addPanListener(Lorg/achartengine/tools/PanListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/achartengine/tools/PanListener;

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/tools/Pan;->mPanListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public apply(FFFF)V
    .locals 30
    .param p1, "oldX"    # F
    .param p2, "oldY"    # F
    .param p3, "newX"    # F
    .param p4, "newY"    # F

    .prologue
    .line 54
    const/16 v23, 0x1

    .line 55
    .local v23, "notLimitedUp":Z
    const/16 v20, 0x1

    .line 56
    .local v20, "notLimitedBottom":Z
    const/16 v21, 0x1

    .line 57
    .local v21, "notLimitedLeft":Z
    const/16 v22, 0x1

    .line 58
    .local v22, "notLimitedRight":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/tools/Pan;->mChart:Lorg/achartengine/chart/AbstractChart;

    instance-of v2, v2, Lorg/achartengine/chart/XYChart;

    if-eqz v2, :cond_13

    .line 59
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/tools/Pan;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getScalesCount()I

    move-result v29

    .line 60
    .local v29, "scales":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/tools/Pan;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getPanLimits()[D

    move-result-object v15

    .line 61
    .local v15, "limits":[D
    if-eqz v15, :cond_2

    array-length v2, v15

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    const/4 v14, 0x1

    .line 62
    .local v14, "limited":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/achartengine/tools/Pan;->mChart:Lorg/achartengine/chart/AbstractChart;

    check-cast v9, Lorg/achartengine/chart/XYChart;

    .line 63
    .local v9, "chart":Lorg/achartengine/chart/XYChart;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move/from16 v0, v29

    if-ge v7, v0, :cond_14

    .line 64
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/achartengine/tools/Pan;->getRange(I)[D

    move-result-object v24

    .line 65
    .local v24, "range":[D
    invoke-virtual {v9, v7}, Lorg/achartengine/chart/XYChart;->getCalcRange(I)[D

    move-result-object v8

    .line 66
    .local v8, "calcRange":[D
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/achartengine/tools/Pan;->limitsReachedX:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/achartengine/tools/Pan;->limitsReachedY:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    aget-wide v2, v24, v2

    const/4 v4, 0x1

    aget-wide v4, v24, v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x0

    aget-wide v2, v8, v2

    const/4 v4, 0x1

    aget-wide v4, v8, v4

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x2

    aget-wide v2, v24, v2

    const/4 v4, 0x3

    aget-wide v4, v24, v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    const/4 v2, 0x2

    aget-wide v2, v8, v2

    const/4 v4, 0x3

    aget-wide v4, v8, v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    .line 124
    .end local v7    # "i":I
    .end local v8    # "calcRange":[D
    .end local v9    # "chart":Lorg/achartengine/chart/XYChart;
    .end local v14    # "limited":Z
    .end local v15    # "limits":[D
    .end local v24    # "range":[D
    .end local v29    # "scales":I
    :cond_1
    :goto_2
    return-void

    .line 61
    .restart local v15    # "limits":[D
    .restart local v29    # "scales":I
    :cond_2
    const/4 v14, 0x0

    goto :goto_0

    .line 72
    .restart local v7    # "i":I
    .restart local v8    # "calcRange":[D
    .restart local v9    # "chart":Lorg/achartengine/chart/XYChart;
    .restart local v14    # "limited":Z
    .restart local v24    # "range":[D
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v7}, Lorg/achartengine/tools/Pan;->checkRange([DI)V

    .line 74
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v9, v0, v1, v7}, Lorg/achartengine/chart/XYChart;->toRealPoint(FFI)[D

    move-result-object v27

    .line 75
    .local v27, "realPoint":[D
    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v9, v0, v1, v7}, Lorg/achartengine/chart/XYChart;->toRealPoint(FFI)[D

    move-result-object v28

    .line 76
    .local v28, "realPoint2":[D
    const/4 v2, 0x0

    aget-wide v2, v27, v2

    const/4 v4, 0x0

    aget-wide v4, v28, v4

    sub-double v10, v2, v4

    .line 77
    .local v10, "deltaX":D
    const/4 v2, 0x1

    aget-wide v2, v27, v2

    const/4 v4, 0x1

    aget-wide v4, v28, v4

    sub-double v12, v2, v4

    .line 78
    .local v12, "deltaY":D
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/achartengine/tools/Pan;->getAxisRatio([D)D

    move-result-wide v25

    .line 79
    .local v25, "ratio":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/tools/Pan;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v9, v2}, Lorg/achartengine/chart/XYChart;->isVertical(Lorg/achartengine/renderer/DefaultRenderer;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 80
    neg-double v2, v12

    mul-double v16, v2, v25

    .line 81
    .local v16, "newDeltaX":D
    div-double v18, v10, v25

    .line 82
    .local v18, "newDeltaY":D
    move-wide/from16 v10, v16

    .line 83
    move-wide/from16 v12, v18

    .line 85
    .end local v16    # "newDeltaX":D
    .end local v18    # "newDeltaY":D
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/tools/Pan;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isPanXEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 86
    if-eqz v15, :cond_6

    .line 87
    if-eqz v21, :cond_5

    .line 88
    const/4 v2, 0x0

    aget-wide v2, v15, v2

    const/4 v4, 0x0

    aget-wide v4, v24, v4

    add-double/2addr v4, v10

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_d

    const/16 v21, 0x1

    .line 90
    :cond_5
    :goto_3
    if-eqz v22, :cond_6

    .line 91
    const/4 v2, 0x1

    aget-wide v2, v15, v2

    const/4 v4, 0x1

    aget-wide v4, v24, v4

    add-double/2addr v4, v10

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_e

    const/16 v22, 0x1

    .line 94
    :cond_6
    :goto_4
    if-eqz v14, :cond_7

    if-eqz v21, :cond_f

    if-eqz v22, :cond_f

    .line 95
    :cond_7
    const/4 v2, 0x0

    aget-wide v2, v24, v2

    add-double v3, v2, v10

    const/4 v2, 0x1

    aget-wide v5, v24, v2

    add-double/2addr v5, v10

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/achartengine/tools/Pan;->setXRange(DDI)V

    .line 96
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/achartengine/tools/Pan;->limitsReachedX:Z

    .line 101
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/tools/Pan;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isPanYEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 102
    if-eqz v15, :cond_a

    .line 103
    if-eqz v20, :cond_9

    .line 104
    const/4 v2, 0x2

    aget-wide v2, v15, v2

    const/4 v4, 0x2

    aget-wide v4, v24, v4

    add-double/2addr v4, v12

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_10

    const/16 v20, 0x1

    .line 106
    :cond_9
    :goto_6
    if-eqz v23, :cond_a

    .line 107
    const/4 v2, 0x3

    aget-wide v2, v15, v2

    const/4 v4, 0x3

    aget-wide v4, v24, v4

    add-double/2addr v4, v12

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_11

    const/16 v23, 0x1

    .line 110
    :cond_a
    :goto_7
    if-eqz v14, :cond_b

    if-eqz v20, :cond_12

    if-eqz v23, :cond_12

    .line 111
    :cond_b
    const/4 v2, 0x2

    aget-wide v2, v24, v2

    add-double v3, v2, v12

    const/4 v2, 0x3

    aget-wide v5, v24, v2

    add-double/2addr v5, v12

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/achartengine/tools/Pan;->setYRange(DDI)V

    .line 112
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/achartengine/tools/Pan;->limitsReachedY:Z

    .line 63
    :cond_c
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 88
    :cond_d
    const/16 v21, 0x0

    goto :goto_3

    .line 91
    :cond_e
    const/16 v22, 0x0

    goto :goto_4

    .line 98
    :cond_f
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/achartengine/tools/Pan;->limitsReachedX:Z

    goto :goto_5

    .line 104
    :cond_10
    const/16 v20, 0x0

    goto :goto_6

    .line 107
    :cond_11
    const/16 v23, 0x0

    goto :goto_7

    .line 114
    :cond_12
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/achartengine/tools/Pan;->limitsReachedY:Z

    goto :goto_8

    .line 119
    .end local v7    # "i":I
    .end local v8    # "calcRange":[D
    .end local v9    # "chart":Lorg/achartengine/chart/XYChart;
    .end local v10    # "deltaX":D
    .end local v12    # "deltaY":D
    .end local v14    # "limited":Z
    .end local v15    # "limits":[D
    .end local v24    # "range":[D
    .end local v25    # "ratio":D
    .end local v27    # "realPoint":[D
    .end local v28    # "realPoint2":[D
    .end local v29    # "scales":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/achartengine/tools/Pan;->mChart:Lorg/achartengine/chart/AbstractChart;

    check-cast v9, Lorg/achartengine/chart/RoundChart;

    .line 120
    .local v9, "chart":Lorg/achartengine/chart/RoundChart;
    invoke-virtual {v9}, Lorg/achartengine/chart/RoundChart;->getCenterX()I

    move-result v2

    sub-float v3, p3, p1

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {v9, v2}, Lorg/achartengine/chart/RoundChart;->setCenterX(I)V

    .line 121
    invoke-virtual {v9}, Lorg/achartengine/chart/RoundChart;->getCenterY()I

    move-result v2

    sub-float v3, p4, p2

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {v9, v2}, Lorg/achartengine/chart/RoundChart;->setCenterY(I)V

    .line 123
    .end local v9    # "chart":Lorg/achartengine/chart/RoundChart;
    :cond_14
    invoke-direct/range {p0 .. p0}, Lorg/achartengine/tools/Pan;->notifyPanListeners()V

    goto/16 :goto_2
.end method

.method public declared-synchronized removePanListener(Lorg/achartengine/tools/PanListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/achartengine/tools/PanListener;

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/tools/Pan;->mPanListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

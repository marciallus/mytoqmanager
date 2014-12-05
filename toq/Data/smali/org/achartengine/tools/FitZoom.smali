.class public Lorg/achartengine/tools/FitZoom;
.super Lorg/achartengine/tools/AbstractTool;
.source "FitZoom.java"


# direct methods
.method public constructor <init>(Lorg/achartengine/chart/AbstractChart;)V
    .locals 0
    .param p1, "chart"    # Lorg/achartengine/chart/AbstractChart;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/achartengine/tools/AbstractTool;-><init>(Lorg/achartengine/chart/AbstractChart;)V

    .line 33
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 17

    .prologue
    .line 39
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/achartengine/tools/FitZoom;->mChart:Lorg/achartengine/chart/AbstractChart;

    instance-of v12, v12, Lorg/achartengine/chart/XYChart;

    if-eqz v12, :cond_6

    .line 40
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/achartengine/tools/FitZoom;->mChart:Lorg/achartengine/chart/AbstractChart;

    check-cast v12, Lorg/achartengine/chart/XYChart;

    invoke-virtual {v12}, Lorg/achartengine/chart/XYChart;->getDataset()Lorg/achartengine/model/XYMultipleSeriesDataset;

    move-result-object v12

    if-nez v12, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/achartengine/tools/FitZoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v12}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getScalesCount()I

    move-result v10

    .line 44
    .local v10, "scales":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/achartengine/tools/FitZoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v12}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isInitialRangeSet()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 45
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v10, :cond_0

    .line 46
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/achartengine/tools/FitZoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v12, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isInitialRangeSet(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 47
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/achartengine/tools/FitZoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/achartengine/tools/FitZoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v13, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getInitialRange(I)[D

    move-result-object v13

    invoke-virtual {v12, v13, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setRange([DI)V

    .line 45
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 51
    .end local v1    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/achartengine/tools/FitZoom;->mChart:Lorg/achartengine/chart/AbstractChart;

    check-cast v12, Lorg/achartengine/chart/XYChart;

    invoke-virtual {v12}, Lorg/achartengine/chart/XYChart;->getDataset()Lorg/achartengine/model/XYMultipleSeriesDataset;

    move-result-object v12

    invoke-virtual {v12}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeries()[Lorg/achartengine/model/XYSeries;

    move-result-object v11

    .line 52
    .local v11, "series":[Lorg/achartengine/model/XYSeries;
    const/4 v8, 0x0

    .line 53
    .local v8, "range":[D
    array-length v3, v11

    .line 54
    .local v3, "length":I
    if-lez v3, :cond_0

    .line 55
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v10, :cond_0

    .line 56
    const/4 v12, 0x4

    new-array v8, v12, [D

    .end local v8    # "range":[D
    fill-array-data v8, :array_0

    .line 58
    .restart local v8    # "range":[D
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_3
    if-ge v2, v3, :cond_5

    .line 59
    aget-object v12, v11, v2

    invoke-virtual {v12}, Lorg/achartengine/model/XYSeries;->getScaleNumber()I

    move-result v12

    if-ne v1, v12, :cond_4

    .line 60
    const/4 v12, 0x0

    const/4 v13, 0x0

    aget-wide v13, v8, v13

    aget-object v15, v11, v2

    invoke-virtual {v15}, Lorg/achartengine/model/XYSeries;->getMinX()D

    move-result-wide v15

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->min(DD)D

    move-result-wide v13

    aput-wide v13, v8, v12

    .line 61
    const/4 v12, 0x1

    const/4 v13, 0x1

    aget-wide v13, v8, v13

    aget-object v15, v11, v2

    invoke-virtual {v15}, Lorg/achartengine/model/XYSeries;->getMaxX()D

    move-result-wide v15

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    aput-wide v13, v8, v12

    .line 62
    const/4 v12, 0x2

    const/4 v13, 0x2

    aget-wide v13, v8, v13

    aget-object v15, v11, v2

    invoke-virtual {v15}, Lorg/achartengine/model/XYSeries;->getMinY()D

    move-result-wide v15

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->min(DD)D

    move-result-wide v13

    aput-wide v13, v8, v12

    .line 63
    const/4 v12, 0x3

    const/4 v13, 0x3

    aget-wide v13, v8, v13

    aget-object v15, v11, v2

    invoke-virtual {v15}, Lorg/achartengine/model/XYSeries;->getMaxY()D

    move-result-wide v15

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->max(DD)D

    move-result-wide v13

    aput-wide v13, v8, v12

    .line 58
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 66
    :cond_5
    const/4 v12, 0x1

    aget-wide v12, v8, v12

    const/4 v14, 0x0

    aget-wide v14, v8, v14

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4044000000000000L

    div-double v4, v12, v14

    .line 67
    .local v4, "marginX":D
    const/4 v12, 0x3

    aget-wide v12, v8, v12

    const/4 v14, 0x2

    aget-wide v14, v8, v14

    sub-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4044000000000000L

    div-double v6, v12, v14

    .line 68
    .local v6, "marginY":D
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/achartengine/tools/FitZoom;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    const/4 v13, 0x4

    new-array v13, v13, [D

    const/4 v14, 0x0

    const/4 v15, 0x0

    aget-wide v15, v8, v15

    sub-double/2addr v15, v4

    aput-wide v15, v13, v14

    const/4 v14, 0x1

    const/4 v15, 0x1

    aget-wide v15, v8, v15

    add-double/2addr v15, v4

    aput-wide v15, v13, v14

    const/4 v14, 0x2

    const/4 v15, 0x2

    aget-wide v15, v8, v15

    sub-double/2addr v15, v6

    aput-wide v15, v13, v14

    const/4 v14, 0x3

    const/4 v15, 0x3

    aget-wide v15, v8, v15

    add-double/2addr v15, v6

    aput-wide v15, v13, v14

    invoke-virtual {v12, v13, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setRange([DI)V

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 74
    .end local v1    # "i":I
    .end local v2    # "j":I
    .end local v3    # "length":I
    .end local v4    # "marginX":D
    .end local v6    # "marginY":D
    .end local v8    # "range":[D
    .end local v10    # "scales":I
    .end local v11    # "series":[Lorg/achartengine/model/XYSeries;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/achartengine/tools/FitZoom;->mChart:Lorg/achartengine/chart/AbstractChart;

    check-cast v12, Lorg/achartengine/chart/RoundChart;

    invoke-virtual {v12}, Lorg/achartengine/chart/RoundChart;->getRenderer()Lorg/achartengine/renderer/DefaultRenderer;

    move-result-object v9

    .line 75
    .local v9, "renderer":Lorg/achartengine/renderer/DefaultRenderer;
    invoke-virtual {v9}, Lorg/achartengine/renderer/DefaultRenderer;->getOriginalScale()F

    move-result v12

    invoke-virtual {v9, v12}, Lorg/achartengine/renderer/DefaultRenderer;->setScale(F)V

    goto/16 :goto_0

    .line 56
    :array_0
    .array-data 8
        0x7fefffffffffffffL
        -0x10000000000001L
        0x7fefffffffffffffL
        -0x10000000000001L
    .end array-data
.end method

.class public Lorg/achartengine/chart/PieChart;
.super Lorg/achartengine/chart/RoundChart;
.source "PieChart.java"


# instance fields
.field private mPieMapper:Lorg/achartengine/chart/PieMapper;


# direct methods
.method public constructor <init>(Lorg/achartengine/model/CategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)V
    .locals 1
    .param p1, "dataset"    # Lorg/achartengine/model/CategorySeries;
    .param p2, "renderer"    # Lorg/achartengine/renderer/DefaultRenderer;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/achartengine/chart/RoundChart;-><init>(Lorg/achartengine/model/CategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)V

    .line 49
    new-instance v0, Lorg/achartengine/chart/PieMapper;

    invoke-direct {v0}, Lorg/achartengine/chart/PieMapper;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/PieChart;->mPieMapper:Lorg/achartengine/chart/PieMapper;

    .line 50
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 65
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 64
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/DefaultRenderer;->isAntialiasing()Z

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/DefaultRenderer;->getLabelsTextSize()F

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 67
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    div-int/lit8 v5, p5, 0x5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lorg/achartengine/chart/PieChart;->getLegendSize(Lorg/achartengine/renderer/DefaultRenderer;IF)I

    move-result v13

    .line 68
    .local v13, "legendSize":I
    move/from16 v8, p2

    .line 69
    .local v8, "left":I
    move/from16 v59, p3

    .line 70
    .local v59, "top":I
    add-int v9, p2, p4

    .line 71
    .local v9, "right":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/PieChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    invoke-virtual {v4}, Lorg/achartengine/model/CategorySeries;->getItemCount()I

    move-result v57

    .line 72
    .local v57, "sLength":I
    const-wide/16 v60, 0x0

    .line 73
    .local v60, "total":D
    move/from16 v0, v57

    new-array v7, v0, [Ljava/lang/String;

    .line 74
    .local v7, "titles":[Ljava/lang/String;
    const/16 v50, 0x0

    .local v50, "i":I
    :goto_0
    move/from16 v0, v50

    move/from16 v1, v57

    if-ge v0, v1, :cond_0

    .line 75
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/PieChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    move/from16 v0, v50

    invoke-virtual {v4, v0}, Lorg/achartengine/model/CategorySeries;->getValue(I)D

    move-result-wide v4

    add-double v60, v60, v4

    .line 76
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/PieChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    move/from16 v0, v50

    invoke-virtual {v4, v0}, Lorg/achartengine/model/CategorySeries;->getCategory(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v50

    .line 74
    add-int/lit8 v50, v50, 0x1

    goto :goto_0

    .line 78
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/DefaultRenderer;->isFitLegend()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 79
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    const/4 v15, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v14, p6

    invoke-virtual/range {v4 .. v15}, Lorg/achartengine/chart/PieChart;->drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    move-result v13

    .line 82
    :cond_1
    add-int v4, p3, p5

    sub-int v49, v4, v13

    .line 83
    .local v49, "bottom":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v14, p0

    move-object/from16 v16, p1

    move/from16 v17, p2

    move/from16 v18, p3

    move/from16 v19, p4

    move/from16 v20, p5

    move-object/from16 v21, p6

    invoke-virtual/range {v14 .. v23}, Lorg/achartengine/chart/PieChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 85
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/DefaultRenderer;->getStartAngle()F

    move-result v31

    .line 86
    .local v31, "currentAngle":F
    sub-int v4, v9, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v5, v49, v59

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v52

    .line 87
    .local v52, "mRadius":I
    move/from16 v0, v52

    int-to-double v4, v0

    const-wide v10, 0x3fd6666666666666L

    mul-double/2addr v4, v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v6}, Lorg/achartengine/renderer/DefaultRenderer;->getScale()F

    move-result v6

    float-to-double v10, v6

    mul-double/2addr v4, v10

    double-to-int v0, v4

    move/from16 v56, v0

    .line 89
    .local v56, "radius":I
    move-object/from16 v0, p0

    iget v4, v0, Lorg/achartengine/chart/PieChart;->mCenterX:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_2

    .line 90
    add-int v4, v8, v9

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lorg/achartengine/chart/PieChart;->mCenterX:I

    .line 92
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lorg/achartengine/chart/PieChart;->mCenterY:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_3

    .line 93
    add-int v4, v49, v59

    div-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lorg/achartengine/chart/PieChart;->mCenterY:I

    .line 97
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/PieChart;->mPieMapper:Lorg/achartengine/chart/PieMapper;

    move-object/from16 v0, p0

    iget v5, v0, Lorg/achartengine/chart/PieChart;->mCenterX:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/achartengine/chart/PieChart;->mCenterY:I

    move/from16 v0, v56

    invoke-virtual {v4, v0, v5, v6}, Lorg/achartengine/chart/PieMapper;->setDimensions(III)V

    .line 98
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/PieChart;->mPieMapper:Lorg/achartengine/chart/PieMapper;

    move/from16 v0, v57

    invoke-virtual {v4, v0}, Lorg/achartengine/chart/PieMapper;->areAllSegmentPresent(I)Z

    move-result v4

    if-nez v4, :cond_7

    const/16 v51, 0x1

    .line 99
    .local v51, "loadPieCfg":Z
    :goto_1
    if-eqz v51, :cond_4

    .line 100
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/PieChart;->mPieMapper:Lorg/achartengine/chart/PieMapper;

    invoke-virtual {v4}, Lorg/achartengine/chart/PieMapper;->clearPieSegments()V

    .line 103
    :cond_4
    move/from16 v0, v56

    int-to-float v4, v0

    const v5, 0x3f666666

    mul-float v29, v4, v5

    .line 104
    .local v29, "shortRadius":F
    move/from16 v0, v56

    int-to-float v4, v0

    const v5, 0x3f8ccccd

    mul-float v17, v4, v5

    .line 105
    .local v17, "longRadius":F
    new-instance v53, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/achartengine/chart/PieChart;->mCenterX:I

    sub-int v4, v4, v56

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/achartengine/chart/PieChart;->mCenterY:I

    sub-int v5, v5, v56

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lorg/achartengine/chart/PieChart;->mCenterX:I

    add-int v6, v6, v56

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v10, v0, Lorg/achartengine/chart/PieChart;->mCenterY:I

    add-int v10, v10, v56

    int-to-float v10, v10

    move-object/from16 v0, v53

    invoke-direct {v0, v4, v5, v6, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 107
    .local v53, "oval":Landroid/graphics/RectF;
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v26, "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    const/16 v50, 0x0

    :goto_2
    move/from16 v0, v50

    move/from16 v1, v57

    if-ge v0, v1, :cond_a

    .line 110
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    move/from16 v0, v50

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/DefaultRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v58

    .line 111
    .local v58, "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    invoke-virtual/range {v58 .. v58}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->isGradientEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 112
    new-instance v14, Landroid/graphics/RadialGradient;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/achartengine/chart/PieChart;->mCenterX:I

    int-to-float v15, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/achartengine/chart/PieChart;->mCenterY:I

    int-to-float v0, v4

    move/from16 v16, v0

    invoke-virtual/range {v58 .. v58}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getGradientStartColor()I

    move-result v18

    invoke-virtual/range {v58 .. v58}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getGradientStopColor()I

    move-result v19

    sget-object v20, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v14 .. v20}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 115
    .local v14, "grad":Landroid/graphics/RadialGradient;
    move-object/from16 v0, p6

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 120
    .end local v14    # "grad":Landroid/graphics/RadialGradient;
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/PieChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    move/from16 v0, v50

    invoke-virtual {v4, v0}, Lorg/achartengine/model/CategorySeries;->getValue(I)D

    move-result-wide v4

    double-to-float v0, v4

    move/from16 v64, v0

    .line 121
    .local v64, "value":F
    move/from16 v0, v64

    float-to-double v4, v0

    div-double v4, v4, v60

    const-wide v10, 0x4076800000000000L

    mul-double/2addr v4, v10

    double-to-float v0, v4

    move/from16 v21, v0

    .line 122
    .local v21, "angle":F
    invoke-virtual/range {v58 .. v58}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->isHighlighted()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 123
    const/high16 v4, 0x42b40000

    const/high16 v5, 0x40000000

    div-float v5, v21, v5

    add-float v5, v5, v31

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v54

    .line 124
    .local v54, "rAngle":D
    move/from16 v0, v56

    int-to-double v4, v0

    const-wide v10, 0x3fb999999999999aL

    mul-double/2addr v4, v10

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v4, v10

    double-to-float v0, v4

    move/from16 v62, v0

    .line 125
    .local v62, "translateX":F
    move/from16 v0, v56

    int-to-double v4, v0

    const-wide v10, 0x3fb999999999999aL

    mul-double/2addr v4, v10

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v4, v10

    double-to-float v0, v4

    move/from16 v63, v0

    .line 126
    .local v63, "translateY":F
    move-object/from16 v0, v53

    move/from16 v1, v62

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 127
    const/16 v22, 0x1

    move-object/from16 v18, p1

    move-object/from16 v19, v53

    move/from16 v20, v31

    move-object/from16 v23, p6

    invoke-virtual/range {v18 .. v23}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 128
    move/from16 v0, v62

    neg-float v4, v0

    move/from16 v0, v63

    neg-float v5, v0

    move-object/from16 v0, v53

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 132
    .end local v54    # "rAngle":D
    .end local v62    # "translateX":F
    .end local v63    # "translateY":F
    :goto_4
    invoke-virtual/range {v58 .. v58}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getColor()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    const/4 v4, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 134
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/PieChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    move/from16 v0, v50

    invoke-virtual {v4, v0}, Lorg/achartengine/model/CategorySeries;->getCategory(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/achartengine/chart/PieChart;->mCenterX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/achartengine/chart/PieChart;->mCenterY:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/DefaultRenderer;->getLabelsColor()I

    move-result v35

    const/16 v37, 0x1

    const/16 v38, 0x0

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move/from16 v30, v17

    move/from16 v32, v21

    move/from16 v33, v8

    move/from16 v34, v9

    move-object/from16 v36, p6

    invoke-virtual/range {v22 .. v38}, Lorg/achartengine/chart/PieChart;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;Lorg/achartengine/renderer/DefaultRenderer;Ljava/util/List;IIFFFFIIILandroid/graphics/Paint;ZZ)V

    .line 137
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/DefaultRenderer;->isDisplayValues()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 138
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    move/from16 v0, v50

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/DefaultRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesFormat()Ljava/text/NumberFormat;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/PieChart;->mDataset:Lorg/achartengine/model/CategorySeries;

    move/from16 v0, v50

    invoke-virtual {v5, v0}, Lorg/achartengine/model/CategorySeries;->getValue(I)D

    move-result-wide v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lorg/achartengine/chart/PieChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/achartengine/chart/PieChart;->mCenterX:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/achartengine/chart/PieChart;->mCenterY:I

    move/from16 v38, v0

    const/high16 v4, 0x40000000

    div-float v39, v29, v4

    const/high16 v4, 0x40000000

    div-float v40, v17, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/DefaultRenderer;->getLabelsColor()I

    move-result v45

    const/16 v47, 0x0

    const/16 v48, 0x1

    move-object/from16 v32, p0

    move-object/from16 v33, p1

    move-object/from16 v36, v26

    move/from16 v41, v31

    move/from16 v42, v21

    move/from16 v43, v8

    move/from16 v44, v9

    move-object/from16 v46, p6

    invoke-virtual/range {v32 .. v48}, Lorg/achartengine/chart/PieChart;->drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;Lorg/achartengine/renderer/DefaultRenderer;Ljava/util/List;IIFFFFIIILandroid/graphics/Paint;ZZ)V

    .line 146
    :cond_5
    if-eqz v51, :cond_6

    .line 147
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/PieChart;->mPieMapper:Lorg/achartengine/chart/PieMapper;

    move/from16 v0, v50

    move/from16 v1, v64

    move/from16 v2, v31

    move/from16 v3, v21

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/achartengine/chart/PieMapper;->addPieSegment(IFFF)V

    .line 149
    :cond_6
    add-float v31, v31, v21

    .line 109
    add-int/lit8 v50, v50, 0x1

    goto/16 :goto_2

    .line 98
    .end local v17    # "longRadius":F
    .end local v21    # "angle":F
    .end local v26    # "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local v29    # "shortRadius":F
    .end local v51    # "loadPieCfg":Z
    .end local v53    # "oval":Landroid/graphics/RectF;
    .end local v58    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .end local v64    # "value":F
    :cond_7
    const/16 v51, 0x0

    goto/16 :goto_1

    .line 117
    .restart local v17    # "longRadius":F
    .restart local v26    # "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .restart local v29    # "shortRadius":F
    .restart local v51    # "loadPieCfg":Z
    .restart local v53    # "oval":Landroid/graphics/RectF;
    .restart local v58    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    :cond_8
    invoke-virtual/range {v58 .. v58}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getColor()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    .line 130
    .restart local v21    # "angle":F
    .restart local v64    # "value":F
    :cond_9
    const/16 v22, 0x1

    move-object/from16 v18, p1

    move-object/from16 v19, v53

    move/from16 v20, v31

    move-object/from16 v23, p6

    invoke-virtual/range {v18 .. v23}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 151
    .end local v21    # "angle":F
    .end local v58    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .end local v64    # "value":F
    :cond_a
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->clear()V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/PieChart;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    move-object/from16 v34, v0

    const/16 v43, 0x0

    move-object/from16 v32, p0

    move-object/from16 v33, p1

    move-object/from16 v35, v7

    move/from16 v36, v8

    move/from16 v37, v9

    move/from16 v38, p3

    move/from16 v39, p4

    move/from16 v40, p5

    move/from16 v41, v13

    move-object/from16 v42, p6

    invoke-virtual/range {v32 .. v43}, Lorg/achartengine/chart/PieChart;->drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    move-object/from16 v32, p0

    move-object/from16 v33, p1

    move/from16 v34, p2

    move/from16 v35, p3

    move/from16 v36, p4

    move-object/from16 v37, p6

    .line 153
    invoke-virtual/range {v32 .. v37}, Lorg/achartengine/chart/PieChart;->drawTitle(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V

    .line 154
    return-void
.end method

.method public getSeriesAndPointForScreenCoordinate(Lorg/achartengine/model/Point;)Lorg/achartengine/model/SeriesSelection;
    .locals 1
    .param p1, "screenPoint"    # Lorg/achartengine/model/Point;

    .prologue
    .line 157
    iget-object v0, p0, Lorg/achartengine/chart/PieChart;->mPieMapper:Lorg/achartengine/chart/PieMapper;

    invoke-virtual {v0, p1}, Lorg/achartengine/chart/PieMapper;->getSeriesAndPointForScreenCoordinate(Lorg/achartengine/model/Point;)Lorg/achartengine/model/SeriesSelection;

    move-result-object v0

    return-object v0
.end method

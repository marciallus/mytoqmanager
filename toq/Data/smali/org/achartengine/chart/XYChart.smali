.class public abstract Lorg/achartengine/chart/XYChart;
.super Lorg/achartengine/chart/AbstractChart;
.source "XYChart.java"


# instance fields
.field private clickableAreas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lorg/achartengine/chart/ClickableArea;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCalcRange:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[D>;"
        }
    .end annotation
.end field

.field private mCenter:Lorg/achartengine/model/Point;

.field protected mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

.field protected mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

.field private mScale:F

.field private mScreenR:Landroid/graphics/Rect;

.field private mTranslate:F


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/achartengine/chart/AbstractChart;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/XYChart;->clickableAreas:Ljava/util/Map;

    .line 76
    return-void
.end method

.method public constructor <init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 1
    .param p1, "dataset"    # Lorg/achartengine/model/XYMultipleSeriesDataset;
    .param p2, "renderer"    # Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .prologue
    .line 84
    invoke-direct {p0}, Lorg/achartengine/chart/AbstractChart;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/XYChart;->clickableAreas:Ljava/util/Map;

    .line 85
    iput-object p1, p0, Lorg/achartengine/chart/XYChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    .line 86
    iput-object p2, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 87
    return-void
.end method

.method private getLabelLinePos(Landroid/graphics/Paint$Align;)I
    .locals 2
    .param p1, "align"    # Landroid/graphics/Paint$Align;

    .prologue
    .line 817
    const/4 v0, 0x4

    .line 818
    .local v0, "pos":I
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne p1, v1, :cond_0

    .line 819
    neg-int v0, v0

    .line 821
    :cond_0
    return v0
.end method

.method private getValidLabels(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 478
    .local p1, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 479
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 480
    .local v1, "label":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->isNaN()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 481
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 484
    .end local v1    # "label":Ljava/lang/Double;
    :cond_1
    return-object v2
.end method

.method private setStroke(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLandroid/graphics/Paint$Style;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "cap"    # Landroid/graphics/Paint$Cap;
    .param p2, "join"    # Landroid/graphics/Paint$Join;
    .param p3, "miter"    # F
    .param p4, "style"    # Landroid/graphics/Paint$Style;
    .param p5, "pathEffect"    # Landroid/graphics/PathEffect;
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 544
    invoke-virtual {p6, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 545
    invoke-virtual {p6, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 546
    invoke-virtual {p6, p3}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 547
    invoke-virtual {p6, p5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 548
    invoke-virtual {p6, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 549
    return-void
.end method

.method private transform(Landroid/graphics/Canvas;FZ)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "angle"    # F
    .param p3, "inverse"    # Z

    .prologue
    const/high16 v2, 0x3f800000

    .line 641
    if-eqz p3, :cond_0

    .line 642
    iget v0, p0, Lorg/achartengine/chart/XYChart;->mScale:F

    div-float v0, v2, v0

    iget v1, p0, Lorg/achartengine/chart/XYChart;->mScale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 643
    iget v0, p0, Lorg/achartengine/chart/XYChart;->mTranslate:F

    iget v1, p0, Lorg/achartengine/chart/XYChart;->mTranslate:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 644
    neg-float v0, p2

    iget-object v1, p0, Lorg/achartengine/chart/XYChart;->mCenter:Lorg/achartengine/model/Point;

    invoke-virtual {v1}, Lorg/achartengine/model/Point;->getX()F

    move-result v1

    iget-object v2, p0, Lorg/achartengine/chart/XYChart;->mCenter:Lorg/achartengine/model/Point;

    invoke-virtual {v2}, Lorg/achartengine/model/Point;->getY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 650
    :goto_0
    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->mCenter:Lorg/achartengine/model/Point;

    invoke-virtual {v0}, Lorg/achartengine/model/Point;->getX()F

    move-result v0

    iget-object v1, p0, Lorg/achartengine/chart/XYChart;->mCenter:Lorg/achartengine/model/Point;

    invoke-virtual {v1}, Lorg/achartengine/model/Point;->getY()F

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 647
    iget v0, p0, Lorg/achartengine/chart/XYChart;->mTranslate:F

    neg-float v0, v0

    iget v1, p0, Lorg/achartengine/chart/XYChart;->mTranslate:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 648
    iget v0, p0, Lorg/achartengine/chart/XYChart;->mScale:F

    iget v1, p0, Lorg/achartengine/chart/XYChart;->mScale:F

    div-float v1, v2, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract clickableAreasForPoints(Ljava/util/List;Ljava/util/List;FII)[Lorg/achartengine/chart/ClickableArea;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;FII)[",
            "Lorg/achartengine/chart/ClickableArea;"
        }
    .end annotation
.end method

.method public draw(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 116
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 107
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isAntialiasing()Z

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 108
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    div-int/lit8 v5, p5, 0x5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getAxisTitleTextSize()F

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lorg/achartengine/chart/XYChart;->getLegendSize(Lorg/achartengine/renderer/DefaultRenderer;IF)I

    move-result v13

    .line 109
    .local v13, "legendSize":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMargins()[I

    move-result-object v86

    .line 110
    .local v86, "margins":[I
    const/4 v4, 0x1

    aget v4, v86, v4

    add-int v8, p2, v4

    .line 111
    .local v8, "left":I
    const/4 v4, 0x0

    aget v4, v86, v4

    add-int v108, p3, v4

    .line 112
    .local v108, "top":I
    add-int v4, p2, p4

    const/4 v5, 0x3

    aget v5, v86, v5

    sub-int v9, v4, v5

    .line 113
    .local v9, "right":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-virtual {v4}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesCount()I

    move-result v102

    .line 114
    .local v102, "sLength":I
    move/from16 v0, v102

    new-array v7, v0, [Ljava/lang/String;

    .line 115
    .local v7, "titles":[Ljava/lang/String;
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, v102

    if-ge v0, v1, :cond_0

    .line 116
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesAt(I)Lorg/achartengine/model/XYSeries;

    move-result-object v4

    invoke-virtual {v4}, Lorg/achartengine/model/XYSeries;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v22

    .line 115
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 118
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isFitLegend()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowLegend()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 119
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    const/4 v15, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v14, p6

    invoke-virtual/range {v4 .. v15}, Lorg/achartengine/chart/XYChart;->drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    move-result v13

    .line 122
    :cond_1
    add-int v4, p3, p5

    const/4 v5, 0x2

    aget v5, v86, v5

    sub-int/2addr v4, v5

    sub-int v37, v4, v13

    .line 123
    .local v37, "bottom":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    if-nez v4, :cond_2

    .line 124
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    .line 126
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    move/from16 v0, v108

    move/from16 v1, v37

    invoke-virtual {v4, v8, v0, v9, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 127
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v14, p0

    move-object/from16 v16, p1

    move/from16 v17, p2

    move/from16 v18, p3

    move/from16 v19, p4

    move/from16 v20, p5

    move-object/from16 v21, p6

    invoke-virtual/range {v14 .. v23}, Lorg/achartengine/chart/XYChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 129
    .end local v22    # "i":I
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getTextTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getTextTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getTextTypefaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Typeface;->getStyle()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getTextTypefaceStyle()I

    move-result v5

    if-eq v4, v5, :cond_5

    .line 134
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getTextTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 135
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getTextTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 141
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getOrientation()Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-result-object v23

    .line 142
    .local v23, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    sget-object v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->VERTICAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_6

    .line 143
    sub-int/2addr v9, v13

    .line 144
    add-int/lit8 v4, v13, -0x14

    add-int v37, v37, v4

    .line 146
    :cond_6
    invoke-virtual/range {v23 .. v23}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->getAngle()I

    move-result v70

    .line 147
    .local v70, "angle":I
    const/16 v4, 0x5a

    move/from16 v0, v70

    if-ne v0, v4, :cond_a

    const/16 v101, 0x1

    .line 148
    .local v101, "rotate":Z
    :goto_2
    move/from16 v0, p5

    int-to-float v4, v0

    move/from16 v0, p4

    int-to-float v5, v0

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lorg/achartengine/chart/XYChart;->mScale:F

    .line 149
    sub-int v4, p4, p5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lorg/achartengine/chart/XYChart;->mTranslate:F

    .line 150
    move-object/from16 v0, p0

    iget v4, v0, Lorg/achartengine/chart/XYChart;->mScale:F

    const/high16 v5, 0x3f800000

    cmpg-float v4, v4, v5

    if-gez v4, :cond_7

    .line 151
    move-object/from16 v0, p0

    iget v4, v0, Lorg/achartengine/chart/XYChart;->mTranslate:F

    const/high16 v5, -0x40800000

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lorg/achartengine/chart/XYChart;->mTranslate:F

    .line 153
    :cond_7
    new-instance v4, Lorg/achartengine/model/Point;

    add-int v5, p2, p4

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-int v6, p3, p5

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Lorg/achartengine/model/Point;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/achartengine/chart/XYChart;->mCenter:Lorg/achartengine/model/Point;

    .line 154
    if-eqz v101, :cond_8

    .line 155
    move/from16 v0, v70

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lorg/achartengine/chart/XYChart;->transform(Landroid/graphics/Canvas;FZ)V

    .line 158
    :cond_8
    const v87, -0x7fffffff

    .line 159
    .local v87, "maxScaleNumber":I
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_3
    move/from16 v0, v22

    move/from16 v1, v102

    if-ge v0, v1, :cond_b

    .line 160
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesAt(I)Lorg/achartengine/model/XYSeries;

    move-result-object v4

    invoke-virtual {v4}, Lorg/achartengine/model/XYSeries;->getScaleNumber()I

    move-result v4

    move/from16 v0, v87

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v87

    .line 159
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 137
    .end local v22    # "i":I
    .end local v23    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .end local v70    # "angle":I
    .end local v87    # "maxScaleNumber":I
    .end local v101    # "rotate":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getTextTypefaceName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getTextTypefaceStyle()I

    move-result v5

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_1

    .line 147
    .restart local v23    # "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .restart local v70    # "angle":I
    :cond_a
    const/16 v101, 0x0

    goto/16 :goto_2

    .line 162
    .restart local v22    # "i":I
    .restart local v87    # "maxScaleNumber":I
    .restart local v101    # "rotate":Z
    :cond_b
    add-int/lit8 v87, v87, 0x1

    .line 163
    if-gez v87, :cond_d

    .line 454
    :cond_c
    :goto_4
    return-void

    .line 166
    :cond_d
    move/from16 v0, v87

    new-array v0, v0, [D

    move-object/from16 v94, v0

    .line 167
    .local v94, "minX":[D
    move/from16 v0, v87

    new-array v0, v0, [D

    move-object/from16 v88, v0

    .line 168
    .local v88, "maxX":[D
    move/from16 v0, v87

    new-array v0, v0, [D

    move-object/from16 v53, v0

    .line 169
    .local v53, "minY":[D
    move/from16 v0, v87

    new-array v0, v0, [D

    move-object/from16 v89, v0

    .line 170
    .local v89, "maxY":[D
    move/from16 v0, v87

    new-array v0, v0, [Z

    move-object/from16 v81, v0

    .line 171
    .local v81, "isMinXSet":[Z
    move/from16 v0, v87

    new-array v0, v0, [Z

    move-object/from16 v79, v0

    .line 172
    .local v79, "isMaxXSet":[Z
    move/from16 v0, v87

    new-array v0, v0, [Z

    move-object/from16 v82, v0

    .line 173
    .local v82, "isMinYSet":[Z
    move/from16 v0, v87

    new-array v0, v0, [Z

    move-object/from16 v80, v0

    .line 175
    .local v80, "isMaxYSet":[Z
    const/16 v22, 0x0

    :goto_5
    move/from16 v0, v22

    move/from16 v1, v87

    if-ge v0, v1, :cond_f

    .line 176
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMin(I)D

    move-result-wide v4

    aput-wide v4, v94, v22

    .line 177
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMax(I)D

    move-result-wide v4

    aput-wide v4, v88, v22

    .line 178
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMin(I)D

    move-result-wide v4

    aput-wide v4, v53, v22

    .line 179
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMax(I)D

    move-result-wide v4

    aput-wide v4, v89, v22

    .line 180
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinXSet(I)Z

    move-result v4

    aput-boolean v4, v81, v22

    .line 181
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxXSet(I)Z

    move-result v4

    aput-boolean v4, v79, v22

    .line 182
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinYSet(I)Z

    move-result v4

    aput-boolean v4, v82, v22

    .line 183
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxYSet(I)Z

    move-result v4

    aput-boolean v4, v80, v22

    .line 184
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_e

    .line 185
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [D

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_e
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_5

    .line 188
    :cond_f
    move/from16 v0, v87

    new-array v0, v0, [D

    move-object/from16 v110, v0

    .line 189
    .local v110, "xPixelsPerUnit":[D
    move/from16 v0, v87

    new-array v0, v0, [D

    move-object/from16 v52, v0

    .line 190
    .local v52, "yPixelsPerUnit":[D
    const/16 v22, 0x0

    :goto_6
    move/from16 v0, v22

    move/from16 v1, v102

    if-ge v0, v1, :cond_15

    .line 191
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesAt(I)Lorg/achartengine/model/XYSeries;

    move-result-object v14

    .line 192
    .local v14, "series":Lorg/achartengine/model/XYSeries;
    invoke-virtual {v14}, Lorg/achartengine/model/XYSeries;->getScaleNumber()I

    move-result v103

    .line 193
    .local v103, "scale":I
    invoke-virtual {v14}, Lorg/achartengine/model/XYSeries;->getItemCount()I

    move-result v4

    if-nez v4, :cond_11

    .line 190
    :cond_10
    :goto_7
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 196
    :cond_11
    aget-boolean v4, v81, v103

    if-nez v4, :cond_12

    .line 197
    invoke-virtual {v14}, Lorg/achartengine/model/XYSeries;->getMinX()D

    move-result-wide v95

    .line 198
    .local v95, "minimumX":D
    aget-wide v4, v94, v103

    move-wide/from16 v0, v95

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    aput-wide v4, v94, v103

    .line 199
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    invoke-static/range {v103 .. v103}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    const/4 v5, 0x0

    aget-wide v10, v94, v103

    aput-wide v10, v4, v5

    .line 201
    .end local v95    # "minimumX":D
    :cond_12
    aget-boolean v4, v79, v103

    if-nez v4, :cond_13

    .line 202
    invoke-virtual {v14}, Lorg/achartengine/model/XYSeries;->getMaxX()D

    move-result-wide v90

    .line 203
    .local v90, "maximumX":D
    aget-wide v4, v88, v103

    move-wide/from16 v0, v90

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    aput-wide v4, v88, v103

    .line 204
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    invoke-static/range {v103 .. v103}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    const/4 v5, 0x1

    aget-wide v10, v88, v103

    aput-wide v10, v4, v5

    .line 206
    .end local v90    # "maximumX":D
    :cond_13
    aget-boolean v4, v82, v103

    if-nez v4, :cond_14

    .line 207
    invoke-virtual {v14}, Lorg/achartengine/model/XYSeries;->getMinY()D

    move-result-wide v97

    .line 208
    .local v97, "minimumY":D
    aget-wide v4, v53, v103

    move-wide/from16 v0, v97

    double-to-float v6, v0

    float-to-double v10, v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    aput-wide v4, v53, v103

    .line 209
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    invoke-static/range {v103 .. v103}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    const/4 v5, 0x2

    aget-wide v10, v53, v103

    aput-wide v10, v4, v5

    .line 211
    .end local v97    # "minimumY":D
    :cond_14
    aget-boolean v4, v80, v103

    if-nez v4, :cond_10

    .line 212
    invoke-virtual {v14}, Lorg/achartengine/model/XYSeries;->getMaxY()D

    move-result-wide v92

    .line 213
    .local v92, "maximumY":D
    aget-wide v4, v89, v103

    move-wide/from16 v0, v92

    double-to-float v6, v0

    float-to-double v10, v6

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    aput-wide v4, v89, v103

    .line 214
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    invoke-static/range {v103 .. v103}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    const/4 v5, 0x3

    aget-wide v10, v89, v103

    aput-wide v10, v4, v5

    goto/16 :goto_7

    .line 217
    .end local v14    # "series":Lorg/achartengine/model/XYSeries;
    .end local v92    # "maximumY":D
    .end local v103    # "scale":I
    :cond_15
    const/16 v22, 0x0

    :goto_8
    move/from16 v0, v22

    move/from16 v1, v87

    if-ge v0, v1, :cond_18

    .line 218
    aget-wide v4, v88, v22

    aget-wide v10, v94, v22

    sub-double/2addr v4, v10

    const-wide/16 v10, 0x0

    cmpl-double v4, v4, v10

    if-eqz v4, :cond_16

    .line 219
    sub-int v4, v9, v8

    int-to-double v4, v4

    aget-wide v10, v88, v22

    aget-wide v15, v94, v22

    sub-double/2addr v10, v15

    div-double/2addr v4, v10

    aput-wide v4, v110, v22

    .line 221
    :cond_16
    aget-wide v4, v89, v22

    aget-wide v10, v53, v22

    sub-double/2addr v4, v10

    const-wide/16 v10, 0x0

    cmpl-double v4, v4, v10

    if-eqz v4, :cond_17

    .line 222
    sub-int v4, v37, v108

    int-to-double v4, v4

    aget-wide v10, v89, v22

    aget-wide v15, v53, v22

    sub-double/2addr v10, v15

    div-double/2addr v4, v10

    double-to-float v4, v4

    float-to-double v4, v4

    aput-wide v4, v52, v22

    .line 217
    :cond_17
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 226
    :cond_18
    const/16 v77, 0x0

    .line 231
    .local v77, "hasValues":Z
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/achartengine/chart/XYChart;->clickableAreas:Ljava/util/Map;

    .line 232
    const/16 v22, 0x0

    :goto_9
    move/from16 v0, v22

    move/from16 v1, v102

    if-ge v0, v1, :cond_23

    .line 233
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesAt(I)Lorg/achartengine/model/XYSeries;

    move-result-object v14

    .line 234
    .restart local v14    # "series":Lorg/achartengine/model/XYSeries;
    invoke-virtual {v14}, Lorg/achartengine/model/XYSeries;->getScaleNumber()I

    move-result v103

    .line 235
    .restart local v103    # "scale":I
    invoke-virtual {v14}, Lorg/achartengine/model/XYSeries;->getItemCount()I

    move-result v4

    if-nez v4, :cond_19

    .line 232
    :goto_a
    add-int/lit8 v22, v22, 0x1

    goto :goto_9

    .line 239
    :cond_19
    const/16 v77, 0x1

    .line 240
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v20

    .line 246
    .local v20, "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v26, "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v27, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    move/from16 v0, v37

    int-to-float v4, v0

    move/from16 v0, v37

    int-to-double v5, v0

    aget-wide v10, v52, v103

    aget-wide v15, v53, v103

    mul-double/2addr v10, v15

    add-double/2addr v5, v10

    double-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v21

    .line 249
    .local v21, "yAxisValue":F
    new-instance v74, Ljava/util/LinkedList;

    invoke-direct/range {v74 .. v74}, Ljava/util/LinkedList;-><init>()V

    .line 251
    .local v74, "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->clickableAreas:Ljava/util/Map;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v74

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    monitor-enter v14

    .line 254
    :try_start_0
    aget-wide v15, v94, v103

    aget-wide v17, v88, v103

    invoke-virtual/range {v20 .. v20}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->isDisplayBoundingPoints()Z

    move-result v19

    invoke-virtual/range {v14 .. v19}, Lorg/achartengine/model/XYSeries;->getRange(DDZ)Ljava/util/SortedMap;

    move-result-object v99

    .line 256
    .local v99, "range":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    const/16 v24, -0x1

    .line 258
    .local v24, "startIndex":I
    invoke-interface/range {v99 .. v99}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v78

    .local v78, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v78 .. v78}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface/range {v78 .. v78}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v109

    check-cast v109, Ljava/util/Map$Entry;

    .line 259
    .local v109, "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    invoke-interface/range {v109 .. v109}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v111

    .line 260
    .local v111, "xValue":D
    invoke-interface/range {v109 .. v109}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v114

    .line 261
    .local v114, "yValue":D
    if-gez v24, :cond_1b

    move-object/from16 v0, p0

    move-wide/from16 v1, v114

    invoke-virtual {v0, v1, v2}, Lorg/achartengine/chart/XYChart;->isNullValue(D)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lorg/achartengine/chart/XYChart;->isRenderNullValues()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 262
    :cond_1a
    move-wide/from16 v0, v111

    invoke-virtual {v14, v0, v1}, Lorg/achartengine/model/XYSeries;->getIndexForKey(D)I

    move-result v24

    .line 269
    :cond_1b
    invoke-interface/range {v109 .. v109}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-interface/range {v109 .. v109}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    move-object/from16 v0, p0

    move-wide/from16 v1, v114

    invoke-virtual {v0, v1, v2}, Lorg/achartengine/chart/XYChart;->isNullValue(D)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 273
    int-to-double v4, v8

    aget-wide v10, v110, v103

    aget-wide v15, v94, v103

    sub-double v15, v111, v15

    mul-double/2addr v10, v15

    add-double/2addr v4, v10

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    move/from16 v0, v37

    int-to-double v4, v0

    aget-wide v10, v52, v103

    aget-wide v15, v53, v103

    sub-double v15, v114, v15

    mul-double/2addr v10, v15

    sub-double/2addr v4, v10

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 316
    .end local v24    # "startIndex":I
    .end local v78    # "i$":Ljava/util/Iterator;
    .end local v99    # "range":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v109    # "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v111    # "xValue":D
    .end local v114    # "yValue":D
    :catchall_0
    move-exception v4

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 275
    .restart local v24    # "startIndex":I
    .restart local v78    # "i$":Ljava/util/Iterator;
    .restart local v99    # "range":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    .restart local v109    # "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    .restart local v111    # "xValue":D
    .restart local v114    # "yValue":D
    :cond_1c
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/achartengine/chart/XYChart;->isRenderNullValues()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 276
    int-to-double v4, v8

    aget-wide v10, v110, v103

    aget-wide v15, v94, v103

    sub-double v15, v111, v15

    mul-double/2addr v10, v15

    add-double/2addr v4, v10

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    move/from16 v0, v37

    int-to-double v4, v0

    aget-wide v10, v52, v103

    aget-wide v15, v53, v103

    neg-double v15, v15

    mul-double/2addr v10, v15

    sub-double/2addr v4, v10

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 279
    :cond_1d
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1e

    move-object/from16 v15, p0

    move-object/from16 v16, v14

    move-object/from16 v17, p1

    move-object/from16 v18, p6

    move-object/from16 v19, v26

    .line 280
    invoke-virtual/range {v15 .. v24}, Lorg/achartengine/chart/XYChart;->drawSeries(Lorg/achartengine/model/XYSeries;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lorg/achartengine/renderer/SimpleSeriesRenderer;FILorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;I)V

    move-object/from16 v25, p0

    move/from16 v28, v21

    move/from16 v29, v22

    move/from16 v30, v24

    .line 282
    invoke-virtual/range {v25 .. v30}, Lorg/achartengine/chart/XYChart;->clickableAreasForPoints(Ljava/util/List;Ljava/util/List;FII)[Lorg/achartengine/chart/ClickableArea;

    move-result-object v75

    .line 284
    .local v75, "clickableAreasForSubSeries":[Lorg/achartengine/chart/ClickableArea;
    invoke-static/range {v75 .. v75}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v74

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 285
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->clear()V

    .line 286
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->clear()V

    .line 287
    const/16 v24, -0x1

    .line 289
    .end local v75    # "clickableAreasForSubSeries":[Lorg/achartengine/chart/ClickableArea;
    :cond_1e
    const/4 v4, 0x0

    move-object/from16 v0, v74

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 293
    .end local v109    # "value":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v111    # "xValue":D
    .end local v114    # "yValue":D
    :cond_1f
    invoke-virtual {v14}, Lorg/achartengine/model/XYSeries;->getAnnotationCount()I

    move-result v76

    .line 294
    .local v76, "count":I
    if-lez v76, :cond_21

    .line 295
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsColor()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    new-instance v73, Landroid/graphics/Rect;

    invoke-direct/range {v73 .. v73}, Landroid/graphics/Rect;-><init>()V

    .line 297
    .local v73, "bound":Landroid/graphics/Rect;
    const/16 v83, 0x0

    .local v83, "j":I
    :goto_c
    move/from16 v0, v83

    move/from16 v1, v76

    if-ge v0, v1, :cond_21

    .line 298
    int-to-double v4, v8

    aget-wide v10, v110, v103

    move/from16 v0, v83

    invoke-virtual {v14, v0}, Lorg/achartengine/model/XYSeries;->getAnnotationX(I)D

    move-result-wide v15

    aget-wide v17, v94, v103

    sub-double v15, v15, v17

    mul-double/2addr v10, v15

    add-double/2addr v4, v10

    double-to-float v0, v4

    move/from16 v31, v0

    .line 300
    .local v31, "xS":F
    move/from16 v0, v37

    int-to-double v4, v0

    aget-wide v10, v52, v103

    move/from16 v0, v83

    invoke-virtual {v14, v0}, Lorg/achartengine/model/XYSeries;->getAnnotationY(I)D

    move-result-wide v15

    aget-wide v17, v53, v103

    sub-double v15, v15, v17

    mul-double/2addr v10, v15

    sub-double/2addr v4, v10

    double-to-float v0, v4

    move/from16 v32, v0

    .line 302
    .local v32, "yS":F
    move/from16 v0, v83

    invoke-virtual {v14, v0}, Lorg/achartengine/model/XYSeries;->getAnnotationAt(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move/from16 v0, v83

    invoke-virtual {v14, v0}, Lorg/achartengine/model/XYSeries;->getAnnotationAt(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p6

    move-object/from16 v1, v73

    invoke-virtual {v0, v4, v5, v6, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 304
    invoke-virtual/range {v73 .. v73}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    add-float v4, v4, v31

    cmpg-float v4, v31, v4

    if-gez v4, :cond_20

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v32, v4

    if-gez v4, :cond_20

    .line 305
    move/from16 v0, v83

    invoke-virtual {v14, v0}, Lorg/achartengine/model/XYSeries;->getAnnotationAt(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v28, p0

    move-object/from16 v29, p1

    move-object/from16 v33, p6

    invoke-virtual/range {v28 .. v33}, Lorg/achartengine/chart/XYChart;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 297
    :cond_20
    add-int/lit8 v83, v83, 0x1

    goto :goto_c

    .line 310
    .end local v31    # "xS":F
    .end local v32    # "yS":F
    .end local v73    # "bound":Landroid/graphics/Rect;
    .end local v83    # "j":I
    :cond_21
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_22

    move-object/from16 v15, p0

    move-object/from16 v16, v14

    move-object/from16 v17, p1

    move-object/from16 v18, p6

    move-object/from16 v19, v26

    .line 311
    invoke-virtual/range {v15 .. v24}, Lorg/achartengine/chart/XYChart;->drawSeries(Lorg/achartengine/model/XYSeries;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lorg/achartengine/renderer/SimpleSeriesRenderer;FILorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;I)V

    move-object/from16 v25, p0

    move/from16 v28, v21

    move/from16 v29, v22

    move/from16 v30, v24

    .line 312
    invoke-virtual/range {v25 .. v30}, Lorg/achartengine/chart/XYChart;->clickableAreasForPoints(Ljava/util/List;Ljava/util/List;FII)[Lorg/achartengine/chart/ClickableArea;

    move-result-object v75

    .line 314
    .restart local v75    # "clickableAreasForSubSeries":[Lorg/achartengine/chart/ClickableArea;
    invoke-static/range {v75 .. v75}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v74

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 316
    .end local v75    # "clickableAreasForSubSeries":[Lorg/achartengine/chart/ClickableArea;
    :cond_22
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_a

    .line 319
    .end local v14    # "series":Lorg/achartengine/model/XYSeries;
    .end local v20    # "seriesRenderer":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .end local v21    # "yAxisValue":F
    .end local v24    # "startIndex":I
    .end local v26    # "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .end local v27    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v74    # "clickableArea":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/achartengine/chart/ClickableArea;>;"
    .end local v76    # "count":I
    .end local v78    # "i$":Ljava/util/Iterator;
    .end local v99    # "range":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v103    # "scale":I
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v34, v0

    sub-int v39, p5, v37

    const/16 v41, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v42

    move-object/from16 v33, p0

    move-object/from16 v35, p1

    move/from16 v36, p2

    move/from16 v38, p4

    move-object/from16 v40, p6

    invoke-virtual/range {v33 .. v42}, Lorg/achartengine/chart/XYChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v39, v0

    const/4 v4, 0x0

    aget v44, v86, v4

    const/16 v46, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v47

    move-object/from16 v38, p0

    move-object/from16 v40, p1

    move/from16 v41, p2

    move/from16 v42, p3

    move/from16 v43, p4

    move-object/from16 v45, p6

    invoke-virtual/range {v38 .. v47}, Lorg/achartengine/chart/XYChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 323
    sget-object v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->HORIZONTAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_28

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v39, v0

    sub-int v43, v8, p2

    sub-int v44, p5, p3

    const/16 v46, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v47

    move-object/from16 v38, p0

    move-object/from16 v40, p1

    move/from16 v41, p2

    move/from16 v42, p3

    move-object/from16 v45, p6

    invoke-virtual/range {v38 .. v47}, Lorg/achartengine/chart/XYChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v39, v0

    const/4 v4, 0x3

    aget v43, v86, v4

    sub-int v44, p5, p3

    const/16 v46, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v47

    move-object/from16 v38, p0

    move-object/from16 v40, p1

    move/from16 v41, v9

    move/from16 v42, p3

    move-object/from16 v45, p6

    invoke-virtual/range {v38 .. v47}, Lorg/achartengine/chart/XYChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 335
    :cond_24
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowLabels()Z

    move-result v4

    if-eqz v4, :cond_29

    if-eqz v77, :cond_29

    const/16 v106, 0x1

    .line 336
    .local v106, "showLabels":Z
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowGridX()Z

    move-result v105

    .line 337
    .local v105, "showGridX":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowCustomTextGrid()Z

    move-result v104

    .line 338
    .local v104, "showCustomTextGrid":Z
    if-nez v106, :cond_25

    if-eqz v105, :cond_30

    .line 339
    :cond_25
    const/4 v4, 0x0

    aget-wide v39, v94, v4

    const/4 v4, 0x0

    aget-wide v41, v88, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabels()I

    move-result v43

    move-object/from16 v38, p0

    invoke-virtual/range {v38 .. v43}, Lorg/achartengine/chart/XYChart;->getXLabels(DDI)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/achartengine/chart/XYChart;->getValidLabels(Ljava/util/List;)Ljava/util/List;

    move-result-object v39

    .line 340
    .local v39, "xLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-object/from16 v2, v89

    move/from16 v3, v87

    invoke-virtual {v0, v1, v2, v3}, Lorg/achartengine/chart/XYChart;->getYLabels([D[DI)Ljava/util/Map;

    move-result-object v69

    .line 342
    .local v69, "allYLabels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Double;>;>;"
    move/from16 v43, v8

    .line 343
    .local v43, "xLabelsLeft":I
    if-eqz v106, :cond_26

    .line 344
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsColor()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 345
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 346
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsAlign()Landroid/graphics/Paint$Align;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 351
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXTextLabelLocations()[Ljava/lang/Double;

    move-result-object v40

    const/4 v4, 0x0

    aget-wide v46, v110, v4

    const/4 v4, 0x0

    aget-wide v48, v94, v4

    const/4 v4, 0x0

    aget-wide v50, v88, v4

    move-object/from16 v38, p0

    move-object/from16 v41, p1

    move-object/from16 v42, p6

    move/from16 v44, v108

    move/from16 v45, v37

    invoke-virtual/range {v38 .. v51}, Lorg/achartengine/chart/XYChart;->drawXLabels(Ljava/util/List;[Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIDDD)V

    move-object/from16 v44, p0

    move-object/from16 v45, v69

    move-object/from16 v46, p1

    move-object/from16 v47, p6

    move/from16 v48, v87

    move/from16 v49, v8

    move/from16 v50, v9

    move/from16 v51, v37

    .line 353
    invoke-virtual/range {v44 .. v53}, Lorg/achartengine/chart/XYChart;->drawYLabels(Ljava/util/Map;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII[D[D)V

    .line 356
    if-eqz v106, :cond_2d

    .line 357
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsColor()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 358
    const/16 v22, 0x0

    :goto_f
    move/from16 v0, v22

    move/from16 v1, v87

    if-ge v0, v1, :cond_2d

    .line 359
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v72

    .line 360
    .local v72, "axisAlign":Landroid/graphics/Paint$Align;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYTextLabelLocations(I)[Ljava/lang/Double;

    move-result-object v113

    .line 361
    .local v113, "yTextLabelLocations":[Ljava/lang/Double;
    move-object/from16 v71, v113

    .local v71, "arr$":[Ljava/lang/Double;
    move-object/from16 v0, v71

    array-length v0, v0

    move/from16 v84, v0

    .local v84, "len$":I
    const/16 v78, 0x0

    .local v78, "i$":I
    :goto_10
    move/from16 v0, v78

    move/from16 v1, v84

    if-ge v0, v1, :cond_2c

    aget-object v85, v71, v78

    .line 362
    .local v85, "location":Ljava/lang/Double;
    aget-wide v4, v53, v22

    invoke-virtual/range {v85 .. v85}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    cmpg-double v4, v4, v10

    if-gtz v4, :cond_27

    invoke-virtual/range {v85 .. v85}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aget-wide v10, v89, v22

    cmpg-double v4, v4, v10

    if-gtz v4, :cond_27

    .line 363
    move/from16 v0, v37

    int-to-double v4, v0

    aget-wide v10, v52, v22

    invoke-virtual/range {v85 .. v85}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    aget-wide v17, v53, v22

    sub-double v15, v15, v17

    mul-double/2addr v10, v15

    sub-double/2addr v4, v10

    double-to-float v0, v4

    move/from16 v46, v0

    .line 365
    .local v46, "yLabel":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v0, v85

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYTextLabel(Ljava/lang/Double;I)Ljava/lang/String;

    move-result-object v56

    .line 366
    .local v56, "label":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsColor(I)I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 367
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 368
    sget-object v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->HORIZONTAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_2b

    .line 369
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v72

    if-ne v0, v4, :cond_2a

    .line 370
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v1}, Lorg/achartengine/chart/XYChart;->getLabelLinePos(Landroid/graphics/Paint$Align;)I

    move-result v4

    add-int/2addr v4, v8

    int-to-float v0, v4

    move/from16 v45, v0

    int-to-float v0, v8

    move/from16 v47, v0

    move-object/from16 v44, p1

    move/from16 v48, v46

    move-object/from16 v49, p6

    invoke-virtual/range {v44 .. v49}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 371
    int-to-float v0, v8

    move/from16 v57, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsVerticalPadding()F

    move-result v4

    sub-float v58, v46, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAngle()F

    move-result v60

    move-object/from16 v54, p0

    move-object/from16 v55, p1

    move-object/from16 v59, p6

    invoke-virtual/range {v54 .. v60}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 377
    :goto_11
    if-eqz v104, :cond_27

    .line 378
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 379
    int-to-float v0, v8

    move/from16 v45, v0

    int-to-float v0, v9

    move/from16 v47, v0

    move-object/from16 v44, p1

    move/from16 v48, v46

    move-object/from16 v49, p6

    invoke-virtual/range {v44 .. v49}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 361
    .end local v46    # "yLabel":F
    .end local v56    # "label":Ljava/lang/String;
    :cond_27
    :goto_12
    add-int/lit8 v78, v78, 0x1

    goto/16 :goto_10

    .line 328
    .end local v39    # "xLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v43    # "xLabelsLeft":I
    .end local v69    # "allYLabels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Double;>;>;"
    .end local v71    # "arr$":[Ljava/lang/Double;
    .end local v72    # "axisAlign":Landroid/graphics/Paint$Align;
    .end local v78    # "i$":I
    .end local v84    # "len$":I
    .end local v85    # "location":Ljava/lang/Double;
    .end local v104    # "showCustomTextGrid":Z
    .end local v105    # "showGridX":Z
    .end local v106    # "showLabels":Z
    .end local v113    # "yTextLabelLocations":[Ljava/lang/Double;
    :cond_28
    sget-object v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->VERTICAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_24

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v39, v0

    sub-int v43, p4, v9

    sub-int v44, p5, p3

    const/16 v46, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v47

    move-object/from16 v38, p0

    move-object/from16 v40, p1

    move/from16 v41, v9

    move/from16 v42, p3

    move-object/from16 v45, p6

    invoke-virtual/range {v38 .. v47}, Lorg/achartengine/chart/XYChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v39, v0

    sub-int v43, v8, p2

    sub-int v44, p5, p3

    const/16 v46, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getMarginsColor()I

    move-result v47

    move-object/from16 v38, p0

    move-object/from16 v40, p1

    move/from16 v41, p2

    move/from16 v42, p3

    move-object/from16 v45, p6

    invoke-virtual/range {v38 .. v47}, Lorg/achartengine/chart/XYChart;->drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    goto/16 :goto_d

    .line 335
    :cond_29
    const/16 v106, 0x0

    goto/16 :goto_e

    .line 373
    .restart local v39    # "xLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v43    # "xLabelsLeft":I
    .restart local v46    # "yLabel":F
    .restart local v56    # "label":Ljava/lang/String;
    .restart local v69    # "allYLabels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Double;>;>;"
    .restart local v71    # "arr$":[Ljava/lang/Double;
    .restart local v72    # "axisAlign":Landroid/graphics/Paint$Align;
    .restart local v78    # "i$":I
    .restart local v84    # "len$":I
    .restart local v85    # "location":Ljava/lang/Double;
    .restart local v104    # "showCustomTextGrid":Z
    .restart local v105    # "showGridX":Z
    .restart local v106    # "showLabels":Z
    .restart local v113    # "yTextLabelLocations":[Ljava/lang/Double;
    :cond_2a
    int-to-float v0, v9

    move/from16 v45, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v1}, Lorg/achartengine/chart/XYChart;->getLabelLinePos(Landroid/graphics/Paint$Align;)I

    move-result v4

    add-int/2addr v4, v9

    int-to-float v0, v4

    move/from16 v47, v0

    move-object/from16 v44, p1

    move/from16 v48, v46

    move-object/from16 v49, p6

    invoke-virtual/range {v44 .. v49}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 374
    int-to-float v0, v9

    move/from16 v57, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsVerticalPadding()F

    move-result v4

    sub-float v58, v46, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAngle()F

    move-result v60

    move-object/from16 v54, p0

    move-object/from16 v55, p1

    move-object/from16 v59, p6

    invoke-virtual/range {v54 .. v60}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto/16 :goto_11

    .line 382
    :cond_2b
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-direct {v0, v1}, Lorg/achartengine/chart/XYChart;->getLabelLinePos(Landroid/graphics/Paint$Align;)I

    move-result v4

    sub-int v4, v9, v4

    int-to-float v0, v4

    move/from16 v45, v0

    int-to-float v0, v9

    move/from16 v47, v0

    move-object/from16 v44, p1

    move/from16 v48, v46

    move-object/from16 v49, p6

    invoke-virtual/range {v44 .. v49}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 383
    add-int/lit8 v4, v9, 0xa

    int-to-float v0, v4

    move/from16 v57, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsVerticalPadding()F

    move-result v4

    sub-float v58, v46, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAngle()F

    move-result v60

    move-object/from16 v54, p0

    move-object/from16 v55, p1

    move-object/from16 v59, p6

    invoke-virtual/range {v54 .. v60}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 384
    if-eqz v104, :cond_27

    .line 385
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 386
    int-to-float v0, v9

    move/from16 v45, v0

    int-to-float v0, v8

    move/from16 v47, v0

    move-object/from16 v44, p1

    move/from16 v48, v46

    move-object/from16 v49, p6

    invoke-virtual/range {v44 .. v49}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_12

    .line 358
    .end local v46    # "yLabel":F
    .end local v56    # "label":Ljava/lang/String;
    .end local v85    # "location":Ljava/lang/Double;
    :cond_2c
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_f

    .line 394
    .end local v71    # "arr$":[Ljava/lang/Double;
    .end local v72    # "axisAlign":Landroid/graphics/Paint$Align;
    .end local v78    # "i$":I
    .end local v84    # "len$":I
    .end local v113    # "yTextLabelLocations":[Ljava/lang/Double;
    :cond_2d
    if-eqz v106, :cond_30

    .line 395
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsColor()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 396
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getAxisTitleTextSize()F

    move-result v107

    .line 397
    .local v107, "size":F
    move-object/from16 v0, p6

    move/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 398
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 399
    sget-object v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->HORIZONTAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_32

    .line 400
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXTitle()Ljava/lang/String;

    move-result-object v59

    div-int/lit8 v4, p4, 0x2

    add-int v4, v4, p2

    int-to-float v0, v4

    move/from16 v60, v0

    move/from16 v0, v37

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v5

    const/high16 v6, 0x40800000

    mul-float/2addr v5, v6

    const/high16 v6, 0x40400000

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsPadding()F

    move-result v5

    add-float/2addr v4, v5

    add-float v61, v4, v107

    const/16 v63, 0x0

    move-object/from16 v57, p0

    move-object/from16 v58, p1

    move-object/from16 v62, p6

    invoke-virtual/range {v57 .. v63}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 406
    const/16 v22, 0x0

    :goto_13
    move/from16 v0, v22

    move/from16 v1, v87

    if-ge v0, v1, :cond_2f

    .line 407
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v72

    .line 408
    .restart local v72    # "axisAlign":Landroid/graphics/Paint$Align;
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v72

    if-ne v0, v4, :cond_2e

    .line 409
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYTitle(I)Ljava/lang/String;

    move-result-object v59

    move/from16 v0, p2

    int-to-float v4, v0

    add-float v60, v4, v107

    div-int/lit8 v4, p5, 0x2

    add-int v4, v4, p3

    int-to-float v0, v4

    move/from16 v61, v0

    const/high16 v63, -0x3d4c0000

    move-object/from16 v57, p0

    move-object/from16 v58, p1

    move-object/from16 v62, p6

    invoke-virtual/range {v57 .. v63}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 406
    :goto_14
    add-int/lit8 v22, v22, 0x1

    goto :goto_13

    .line 411
    :cond_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYTitle(I)Ljava/lang/String;

    move-result-object v59

    add-int v4, p2, p4

    int-to-float v0, v4

    move/from16 v60, v0

    div-int/lit8 v4, p5, 0x2

    add-int v4, v4, p3

    int-to-float v0, v4

    move/from16 v61, v0

    const/high16 v63, -0x3d4c0000

    move-object/from16 v57, p0

    move-object/from16 v58, p1

    move-object/from16 v62, p6

    invoke-virtual/range {v57 .. v63}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto :goto_14

    .line 414
    .end local v72    # "axisAlign":Landroid/graphics/Paint$Align;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getChartTitleTextSize()F

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 415
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getChartTitle()Ljava/lang/String;

    move-result-object v59

    div-int/lit8 v4, p4, 0x2

    add-int v4, v4, p2

    int-to-float v0, v4

    move/from16 v60, v0

    move/from16 v0, p3

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getChartTitleTextSize()F

    move-result v5

    add-float v61, v4, v5

    const/16 v63, 0x0

    move-object/from16 v57, p0

    move-object/from16 v58, p1

    move-object/from16 v62, p6

    invoke-virtual/range {v57 .. v63}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 426
    .end local v39    # "xLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v43    # "xLabelsLeft":I
    .end local v69    # "allYLabels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Double;>;>;"
    .end local v107    # "size":F
    :cond_30
    :goto_15
    sget-object v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->HORIZONTAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_33

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsPadding()F

    move-result v4

    float-to-int v4, v4

    add-int v63, p3, v4

    const/16 v68, 0x0

    move-object/from16 v57, p0

    move-object/from16 v58, p1

    move-object/from16 v60, v7

    move/from16 v61, v8

    move/from16 v62, v9

    move/from16 v64, p4

    move/from16 v65, p5

    move/from16 v66, v13

    move-object/from16 v67, p6

    invoke-virtual/range {v57 .. v68}, Lorg/achartengine/chart/XYChart;->drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    .line 435
    :cond_31
    :goto_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowAxes()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 436
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getAxesColor()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 437
    int-to-float v0, v8

    move/from16 v58, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v59, v0

    int-to-float v0, v9

    move/from16 v60, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v61, v0

    move-object/from16 v57, p1

    move-object/from16 v62, p6

    invoke-virtual/range {v57 .. v62}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 438
    const/16 v100, 0x0

    .line 439
    .local v100, "rightAxis":Z
    const/16 v22, 0x0

    :goto_17
    move/from16 v0, v22

    move/from16 v1, v87

    if-ge v0, v1, :cond_35

    if-nez v100, :cond_35

    .line 440
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v4

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-ne v4, v5, :cond_34

    const/16 v100, 0x1

    .line 439
    :goto_18
    add-int/lit8 v22, v22, 0x1

    goto :goto_17

    .line 417
    .end local v100    # "rightAxis":Z
    .restart local v39    # "xLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .restart local v43    # "xLabelsLeft":I
    .restart local v69    # "allYLabels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Double;>;>;"
    .restart local v107    # "size":F
    :cond_32
    sget-object v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->VERTICAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_30

    .line 418
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXTitle()Ljava/lang/String;

    move-result-object v59

    div-int/lit8 v4, p4, 0x2

    add-int v4, v4, p2

    int-to-float v0, v4

    move/from16 v60, v0

    add-int v4, p3, p5

    int-to-float v4, v4

    sub-float v4, v4, v107

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsPadding()F

    move-result v5

    add-float v61, v4, v5

    const/high16 v63, -0x3d4c0000

    move-object/from16 v57, p0

    move-object/from16 v58, p1

    move-object/from16 v62, p6

    invoke-virtual/range {v57 .. v63}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 420
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYTitle()Ljava/lang/String;

    move-result-object v59

    add-int/lit8 v4, v9, 0x14

    int-to-float v0, v4

    move/from16 v60, v0

    div-int/lit8 v4, p5, 0x2

    add-int v4, v4, p3

    int-to-float v0, v4

    move/from16 v61, v0

    const/16 v63, 0x0

    move-object/from16 v57, p0

    move-object/from16 v58, p1

    move-object/from16 v62, p6

    invoke-virtual/range {v57 .. v63}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 421
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getChartTitleTextSize()F

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 422
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getChartTitle()Ljava/lang/String;

    move-result-object v59

    move/from16 v0, p2

    int-to-float v4, v0

    add-float v60, v4, v107

    div-int/lit8 v4, p5, 0x2

    add-int v4, v4, v108

    int-to-float v0, v4

    move/from16 v61, v0

    const/16 v63, 0x0

    move-object/from16 v57, p0

    move-object/from16 v58, p1

    move-object/from16 v62, p6

    invoke-virtual/range {v57 .. v63}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto/16 :goto_15

    .line 429
    .end local v39    # "xLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v43    # "xLabelsLeft":I
    .end local v69    # "allYLabels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Double;>;>;"
    .end local v107    # "size":F
    :cond_33
    sget-object v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->VERTICAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_31

    .line 430
    move/from16 v0, v70

    int-to-float v4, v0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lorg/achartengine/chart/XYChart;->transform(Landroid/graphics/Canvas;FZ)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsPadding()F

    move-result v4

    float-to-int v4, v4

    add-int v63, p3, v4

    const/16 v68, 0x0

    move-object/from16 v57, p0

    move-object/from16 v58, p1

    move-object/from16 v60, v7

    move/from16 v61, v8

    move/from16 v62, v9

    move/from16 v64, p4

    move/from16 v65, p5

    move/from16 v66, v13

    move-object/from16 v67, p6

    invoke-virtual/range {v57 .. v68}, Lorg/achartengine/chart/XYChart;->drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    .line 433
    move/from16 v0, v70

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lorg/achartengine/chart/XYChart;->transform(Landroid/graphics/Canvas;FZ)V

    goto/16 :goto_16

    .line 440
    .restart local v100    # "rightAxis":Z
    :cond_34
    const/16 v100, 0x0

    goto/16 :goto_18

    .line 442
    :cond_35
    sget-object v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->HORIZONTAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_37

    .line 443
    int-to-float v0, v8

    move/from16 v58, v0

    move/from16 v0, v108

    int-to-float v0, v0

    move/from16 v59, v0

    int-to-float v0, v8

    move/from16 v60, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v61, v0

    move-object/from16 v57, p1

    move-object/from16 v62, p6

    invoke-virtual/range {v57 .. v62}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 444
    if-eqz v100, :cond_36

    .line 445
    int-to-float v0, v9

    move/from16 v58, v0

    move/from16 v0, v108

    int-to-float v0, v0

    move/from16 v59, v0

    int-to-float v0, v9

    move/from16 v60, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v61, v0

    move-object/from16 v57, p1

    move-object/from16 v62, p6

    invoke-virtual/range {v57 .. v62}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 451
    .end local v100    # "rightAxis":Z
    :cond_36
    :goto_19
    if-eqz v101, :cond_c

    .line 452
    move/from16 v0, v70

    int-to-float v4, v0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lorg/achartengine/chart/XYChart;->transform(Landroid/graphics/Canvas;FZ)V

    goto/16 :goto_4

    .line 447
    .restart local v100    # "rightAxis":Z
    :cond_37
    sget-object v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->VERTICAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_36

    .line 448
    int-to-float v0, v9

    move/from16 v58, v0

    move/from16 v0, v108

    int-to-float v0, v0

    move/from16 v59, v0

    int-to-float v0, v9

    move/from16 v60, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v61, v0

    move-object/from16 v57, p1

    move-object/from16 v62, p6

    invoke-virtual/range {v57 .. v62}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_19
.end method

.method protected drawChartValuesText(Landroid/graphics/Canvas;Lorg/achartengine/model/XYSeries;Lorg/achartengine/renderer/SimpleSeriesRenderer;Landroid/graphics/Paint;Ljava/util/List;II)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "series"    # Lorg/achartengine/model/XYSeries;
    .param p3, "renderer"    # Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .param p4, "paint"    # Landroid/graphics/Paint;
    .param p6, "seriesIndex"    # I
    .param p7, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lorg/achartengine/model/XYSeries;",
            "Lorg/achartengine/renderer/SimpleSeriesRenderer;",
            "Landroid/graphics/Paint;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 564
    .local p5, "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    .line 566
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 567
    .local v9, "previousPointX":F
    const/4 v1, 0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 568
    .local v10, "previousPointY":F
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_0
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_5

    .line 569
    const/4 v1, 0x2

    if-ne v8, v1, :cond_2

    .line 571
    const/4 v1, 0x2

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getDisplayChartValuesDistance()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v1, 0x3

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v1, 0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getDisplayChartValuesDistance()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 574
    :cond_0
    invoke-virtual {p3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesFormat()Ljava/text/NumberFormat;

    move-result-object v1

    move/from16 v0, p7

    invoke-virtual {p2, v0}, Lorg/achartengine/model/XYSeries;->getY(I)D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lorg/achartengine/chart/XYChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v1, 0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesSpacing()F

    move-result v2

    sub-float v5, v1, v2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p4

    invoke-virtual/range {v1 .. v7}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 577
    invoke-virtual {p3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesFormat()Ljava/text/NumberFormat;

    move-result-object v1

    add-int/lit8 v2, p7, 0x1

    invoke-virtual {p2, v2}, Lorg/achartengine/model/XYSeries;->getY(I)D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lorg/achartengine/chart/XYChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x2

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v1, 0x3

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesSpacing()F

    move-result v2

    sub-float v5, v1, v2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p4

    invoke-virtual/range {v1 .. v7}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 581
    const/4 v1, 0x2

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 582
    const/4 v1, 0x3

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 568
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x2

    goto/16 :goto_0

    .line 584
    :cond_2
    const/4 v1, 0x2

    if-le v8, v1, :cond_1

    .line 587
    move-object/from16 v0, p5

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getDisplayChartValuesDistance()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_3

    add-int/lit8 v1, v8, 0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v1, v10

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getDisplayChartValuesDistance()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 590
    :cond_3
    invoke-virtual {p3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesFormat()Ljava/text/NumberFormat;

    move-result-object v1

    div-int/lit8 v2, v8, 0x2

    add-int v2, v2, p7

    invoke-virtual {p2, v2}, Lorg/achartengine/model/XYSeries;->getY(I)D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lorg/achartengine/chart/XYChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-int/lit8 v1, v8, 0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesSpacing()F

    move-result v2

    sub-float v5, v1, v2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p4

    invoke-virtual/range {v1 .. v7}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 593
    move-object/from16 v0, p5

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 594
    add-int/lit8 v1, v8, 0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v10

    goto/16 :goto_1

    .line 599
    .end local v8    # "k":I
    .end local v9    # "previousPointX":F
    .end local v10    # "previousPointY":F
    :cond_4
    const/4 v8, 0x0

    .restart local v8    # "k":I
    :goto_2
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_5

    .line 600
    invoke-virtual {p3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesFormat()Ljava/text/NumberFormat;

    move-result-object v1

    div-int/lit8 v2, v8, 0x2

    add-int v2, v2, p7

    invoke-virtual {p2, v2}, Lorg/achartengine/model/XYSeries;->getY(I)D

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lorg/achartengine/chart/XYChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-int/lit8 v1, v8, 0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesSpacing()F

    move-result v2

    sub-float v5, v1, v2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p4

    invoke-virtual/range {v1 .. v7}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 599
    add-int/lit8 v8, v8, 0x2

    goto :goto_2

    .line 605
    :cond_5
    return-void
.end method

.method public abstract drawSeries(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lorg/achartengine/renderer/SimpleSeriesRenderer;FII)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lorg/achartengine/renderer/SimpleSeriesRenderer;",
            "FII)V"
        }
    .end annotation
.end method

.method protected drawSeries(Lorg/achartengine/model/XYSeries;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lorg/achartengine/renderer/SimpleSeriesRenderer;FILorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;I)V
    .locals 23
    .param p1, "series"    # Lorg/achartengine/model/XYSeries;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p5, "seriesRenderer"    # Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .param p6, "yAxisValue"    # F
    .param p7, "seriesIndex"    # I
    .param p8, "or"    # Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    .param p9, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/achartengine/model/XYSeries;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lorg/achartengine/renderer/SimpleSeriesRenderer;",
            "FI",
            "Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 503
    .local p4, "pointsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-virtual/range {p5 .. p5}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getStroke()Lorg/achartengine/renderer/BasicStroke;

    move-result-object v21

    .line 504
    .local v21, "stroke":Lorg/achartengine/renderer/BasicStroke;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v17

    .line 505
    .local v17, "cap":Landroid/graphics/Paint$Cap;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v18

    .line 506
    .local v18, "join":Landroid/graphics/Paint$Join;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStrokeMiter()F

    move-result v19

    .line 507
    .local v19, "miter":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getPathEffect()Landroid/graphics/PathEffect;

    move-result-object v20

    .line 508
    .local v20, "pathEffect":Landroid/graphics/PathEffect;
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v22

    .line 509
    .local v22, "style":Landroid/graphics/Paint$Style;
    if-eqz v21, :cond_1

    .line 510
    const/4 v7, 0x0

    .line 511
    .local v7, "effect":Landroid/graphics/PathEffect;
    invoke-virtual/range {v21 .. v21}, Lorg/achartengine/renderer/BasicStroke;->getIntervals()[F

    move-result-object v2

    if-eqz v2, :cond_0

    .line 512
    new-instance v7, Landroid/graphics/DashPathEffect;

    .end local v7    # "effect":Landroid/graphics/PathEffect;
    invoke-virtual/range {v21 .. v21}, Lorg/achartengine/renderer/BasicStroke;->getIntervals()[F

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, Lorg/achartengine/renderer/BasicStroke;->getPhase()F

    move-result v3

    invoke-direct {v7, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 514
    .restart local v7    # "effect":Landroid/graphics/PathEffect;
    :cond_0
    invoke-virtual/range {v21 .. v21}, Lorg/achartengine/renderer/BasicStroke;->getCap()Landroid/graphics/Paint$Cap;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Lorg/achartengine/renderer/BasicStroke;->getJoin()Landroid/graphics/Paint$Join;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Lorg/achartengine/renderer/BasicStroke;->getMiter()F

    move-result v5

    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v2, p0

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v8}, Lorg/achartengine/chart/XYChart;->setStroke(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLandroid/graphics/Paint$Style;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V

    .end local v7    # "effect":Landroid/graphics/PathEffect;
    :cond_1
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p9

    .line 518
    invoke-virtual/range {v8 .. v15}, Lorg/achartengine/chart/XYChart;->drawSeries(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lorg/achartengine/renderer/SimpleSeriesRenderer;FII)V

    .line 519
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/achartengine/chart/XYChart;->isRenderPoints(Lorg/achartengine/renderer/SimpleSeriesRenderer;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 520
    invoke-virtual/range {p0 .. p0}, Lorg/achartengine/chart/XYChart;->getPointsChart()Lorg/achartengine/chart/ScatterChart;

    move-result-object v8

    .line 521
    .local v8, "pointsChart":Lorg/achartengine/chart/ScatterChart;
    if-eqz v8, :cond_2

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p9

    .line 522
    invoke-virtual/range {v8 .. v15}, Lorg/achartengine/chart/ScatterChart;->drawSeries(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lorg/achartengine/renderer/SimpleSeriesRenderer;FII)V

    .line 526
    .end local v8    # "pointsChart":Lorg/achartengine/chart/ScatterChart;
    :cond_2
    invoke-virtual/range {p5 .. p5}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesTextSize()F

    move-result v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 527
    sget-object v2, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->HORIZONTAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v0, p8

    if-ne v0, v2, :cond_5

    .line 528
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 532
    :goto_0
    invoke-virtual/range {p5 .. p5}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->isDisplayChartValues()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 533
    invoke-virtual/range {p5 .. p5}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getChartValuesTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p1

    move-object/from16 v12, p5

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v15, p7

    move/from16 v16, p9

    .line 534
    invoke-virtual/range {v9 .. v16}, Lorg/achartengine/chart/XYChart;->drawChartValuesText(Landroid/graphics/Canvas;Lorg/achartengine/model/XYSeries;Lorg/achartengine/renderer/SimpleSeriesRenderer;Landroid/graphics/Paint;Ljava/util/List;II)V

    .line 537
    :cond_3
    if-eqz v21, :cond_4

    move-object/from16 v9, p0

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move/from16 v12, v19

    move-object/from16 v13, v22

    move-object/from16 v14, v20

    move-object/from16 v15, p3

    .line 538
    invoke-direct/range {v9 .. v15}, Lorg/achartengine/chart/XYChart;->setStroke(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLandroid/graphics/Paint$Style;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V

    .line 540
    :cond_4
    return-void

    .line 530
    :cond_5
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0
.end method

.method protected drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .param p6, "extraAngle"    # F

    .prologue
    const/4 v2, 0x0

    .line 620
    iget-object v1, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getOrientation()Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->getAngle()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    add-float v0, v1, p6

    .line 621
    .local v0, "angle":F
    cmpl-float v1, v0, v2

    if-eqz v1, :cond_0

    .line 623
    invoke-virtual {p1, v0, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 625
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lorg/achartengine/chart/XYChart;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 626
    cmpl-float v1, v0, v2

    if-eqz v1, :cond_1

    .line 627
    neg-float v1, v0

    invoke-virtual {p1, v1, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 630
    :cond_1
    return-void
.end method

.method protected drawXLabels(Ljava/util/List;[Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIDDD)V
    .locals 25
    .param p2, "xTextLabelLocations"    # [Ljava/lang/Double;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "paint"    # Landroid/graphics/Paint;
    .param p5, "left"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .param p8, "xPixelsPerUnit"    # D
    .param p10, "minX"    # D
    .param p12, "maxX"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;[",
            "Ljava/lang/Double;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "IIIDDD)V"
        }
    .end annotation

    .prologue
    .line 668
    .local p1, "xLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v22

    .line 669
    .local v22, "length":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowLabels()Z

    move-result v24

    .line 670
    .local v24, "showLabels":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowGridY()Z

    move-result v23

    .line 671
    .local v23, "showGridY":Z
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 672
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    .line 673
    .local v20, "label":D
    move/from16 v0, p5

    int-to-double v5, v0

    sub-double v7, v20, p10

    mul-double v7, v7, p8

    add-double/2addr v5, v7

    double-to-float v4, v5

    .line 674
    .local v4, "xLabel":F
    if-eqz v24, :cond_0

    .line 675
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsColor()I

    move-result v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 676
    move/from16 v0, p7

    int-to-float v5, v0

    move/from16 v0, p7

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v6

    const/high16 v7, 0x40400000

    div-float/2addr v6, v7

    add-float v7, v3, v6

    move-object/from16 v3, p3

    move v6, v4

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 677
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelFormat()Ljava/text/NumberFormat;

    move-result-object v3

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v3, v1, v2}, Lorg/achartengine/chart/XYChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v7

    move/from16 v0, p7

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v5

    const/high16 v6, 0x40800000

    mul-float/2addr v5, v6

    const/high16 v6, 0x40400000

    div-float/2addr v5, v6

    add-float/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsPadding()F

    move-result v5

    add-float v9, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsAngle()F

    move-result v11

    move-object/from16 v5, p0

    move-object/from16 v6, p3

    move v8, v4

    move-object/from16 v10, p4

    invoke-virtual/range {v5 .. v11}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 681
    :cond_0
    if-eqz v23, :cond_1

    .line 682
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 683
    move/from16 v0, p7

    int-to-float v5, v0

    move/from16 v0, p6

    int-to-float v7, v0

    move-object/from16 v3, p3

    move v6, v4

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 671
    :cond_1
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .end local v4    # "xLabel":F
    .end local v20    # "label":D
    :cond_2
    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, v24

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-wide/from16 v13, p8

    move-wide/from16 v15, p10

    move-wide/from16 v17, p12

    .line 686
    invoke-virtual/range {v5 .. v18}, Lorg/achartengine/chart/XYChart;->drawXTextLabels([Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;ZIIIDDD)V

    .line 688
    return-void
.end method

.method protected drawXTextLabels([Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;ZIIIDDD)V
    .locals 15
    .param p1, "xTextLabelLocations"    # [Ljava/lang/Double;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "showLabels"    # Z
    .param p5, "left"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .param p8, "xPixelsPerUnit"    # D
    .param p10, "minX"    # D
    .param p12, "maxX"    # D

    .prologue
    .line 771
    iget-object v1, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowCustomTextGrid()Z

    move-result v14

    .line 772
    .local v14, "showCustomTextGrid":Z
    if-eqz p4, :cond_1

    .line 773
    iget-object v1, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsColor()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 774
    move-object/from16 v10, p1

    .local v10, "arr$":[Ljava/lang/Double;
    array-length v12, v10

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_1

    aget-object v13, v10, v11

    .line 775
    .local v13, "location":Ljava/lang/Double;
    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpg-double v1, p10, v3

    if-gtz v1, :cond_0

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpg-double v1, v3, p12

    if-gtz v1, :cond_0

    .line 776
    move/from16 v0, p5

    int-to-double v3, v0

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    sub-double v5, v5, p10

    mul-double v5, v5, p8

    add-double/2addr v3, v5

    double-to-float v2, v3

    .line 777
    .local v2, "xLabel":F
    iget-object v1, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsColor()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 778
    move/from16 v0, p7

    int-to-float v3, v0

    move/from16 v0, p7

    int-to-float v1, v0

    iget-object v4, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v4

    const/high16 v5, 0x40400000

    div-float/2addr v4, v5

    add-float v5, v1, v4

    move-object/from16 v1, p2

    move v4, v2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 780
    iget-object v1, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1, v13}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXTextLabel(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, p7

    int-to-float v1, v0

    iget-object v3, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v3

    const/high16 v4, 0x40800000

    mul-float/2addr v3, v4

    const/high16 v4, 0x40400000

    div-float/2addr v3, v4

    add-float v7, v1, v3

    iget-object v1, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsAngle()F

    move-result v9

    move-object v3, p0

    move-object/from16 v4, p2

    move v6, v2

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v9}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 782
    if-eqz v14, :cond_0

    .line 783
    iget-object v1, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 784
    move/from16 v0, p7

    int-to-float v3, v0

    move/from16 v0, p6

    int-to-float v5, v0

    move-object/from16 v1, p2

    move v4, v2

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 774
    .end local v2    # "xLabel":F
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 789
    .end local v10    # "arr$":[Ljava/lang/Double;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "location":Ljava/lang/Double;
    :cond_1
    return-void
.end method

.method protected drawYLabels(Ljava/util/Map;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII[D[D)V
    .locals 22
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "maxScaleNumber"    # I
    .param p5, "left"    # I
    .param p6, "right"    # I
    .param p7, "bottom"    # I
    .param p8, "yPixelsPerUnit"    # [D
    .param p9, "minY"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;>;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "IIII[D[D)V"
        }
    .end annotation

    .prologue
    .line 705
    .local p1, "allYLabels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Double;>;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getOrientation()Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-result-object v17

    .line 706
    .local v17, "or":Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowGridX()Z

    move-result v18

    .line 707
    .local v18, "showGridX":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowLabels()Z

    move-result v19

    .line 708
    .local v19, "showLabels":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, p4

    if-ge v12, v0, :cond_7

    .line 709
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1, v12}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 710
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    .line 711
    .local v21, "yLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v16

    .line 712
    .local v16, "length":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_6

    .line 713
    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    .line 714
    .local v14, "label":D
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1, v12}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisAlign(I)Landroid/graphics/Paint$Align;

    move-result-object v11

    .line 715
    .local v11, "axisAlign":Landroid/graphics/Paint$Align;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2, v12}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYTextLabel(Ljava/lang/Double;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v20, 0x1

    .line 716
    .local v20, "textLabel":Z
    :goto_2
    move/from16 v0, p7

    int-to-double v1, v0

    aget-wide v4, p8, v12

    aget-wide v6, p9, v12

    sub-double v6, v14, v6

    mul-double/2addr v4, v6

    sub-double/2addr v1, v4

    double-to-float v3, v1

    .line 717
    .local v3, "yLabel":F
    sget-object v1, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->HORIZONTAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v0, v17

    if-ne v0, v1, :cond_4

    .line 718
    if-eqz v19, :cond_0

    if-nez v20, :cond_0

    .line 719
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1, v12}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsColor(I)I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 720
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne v11, v1, :cond_3

    .line 721
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/achartengine/chart/XYChart;->getLabelLinePos(Landroid/graphics/Paint$Align;)I

    move-result v1

    add-int v1, v1, p5

    int-to-float v2, v1

    move/from16 v0, p5

    int-to-float v4, v0

    move-object/from16 v1, p2

    move v5, v3

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 722
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelFormat()Ljava/text/NumberFormat;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v14, v15}, Lorg/achartengine/chart/XYChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v6

    move/from16 v0, p5

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsPadding()F

    move-result v2

    sub-float v7, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsVerticalPadding()F

    move-result v1

    sub-float v8, v3, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAngle()F

    move-result v10

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v10}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 734
    :cond_0
    :goto_3
    if-eqz v18, :cond_1

    .line 735
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 736
    move/from16 v0, p5

    int-to-float v2, v0

    move/from16 v0, p6

    int-to-float v4, v0

    move-object/from16 v1, p2

    move v5, v3

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 712
    :cond_1
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 715
    .end local v3    # "yLabel":F
    .end local v20    # "textLabel":Z
    :cond_2
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 727
    .restart local v3    # "yLabel":F
    .restart local v20    # "textLabel":Z
    :cond_3
    move/from16 v0, p6

    int-to-float v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/achartengine/chart/XYChart;->getLabelLinePos(Landroid/graphics/Paint$Align;)I

    move-result v1

    add-int v1, v1, p6

    int-to-float v4, v1

    move-object/from16 v1, p2

    move v5, v3

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 728
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelFormat()Ljava/text/NumberFormat;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v14, v15}, Lorg/achartengine/chart/XYChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v6

    move/from16 v0, p6

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsPadding()F

    move-result v2

    add-float v7, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsVerticalPadding()F

    move-result v1

    sub-float v8, v3, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAngle()F

    move-result v10

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v10}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto :goto_3

    .line 738
    :cond_4
    sget-object v1, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->VERTICAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-object/from16 v0, v17

    if-ne v0, v1, :cond_1

    .line 739
    if-eqz v19, :cond_5

    if-nez v20, :cond_5

    .line 740
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1, v12}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsColor(I)I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 741
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/achartengine/chart/XYChart;->getLabelLinePos(Landroid/graphics/Paint$Align;)I

    move-result v1

    sub-int v1, p6, v1

    int-to-float v2, v1

    move/from16 v0, p6

    int-to-float v4, v0

    move-object/from16 v1, p2

    move v5, v3

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 742
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelFormat()Ljava/text/NumberFormat;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v14, v15}, Lorg/achartengine/chart/XYChart;->getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v1, p6, 0xa

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsPadding()F

    move-result v2

    add-float v7, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsVerticalPadding()F

    move-result v1

    sub-float v8, v3, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabelsAngle()F

    move-result v10

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v10}, Lorg/achartengine/chart/XYChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 746
    :cond_5
    if-eqz v18, :cond_1

    .line 747
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 748
    move/from16 v0, p6

    int-to-float v2, v0

    move/from16 v0, p5

    int-to-float v4, v0

    move-object/from16 v1, p2

    move v5, v3

    move-object/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 708
    .end local v3    # "yLabel":F
    .end local v11    # "axisAlign":Landroid/graphics/Paint$Align;
    .end local v14    # "label":D
    .end local v20    # "textLabel":Z
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 753
    .end local v13    # "j":I
    .end local v16    # "length":I
    .end local v21    # "yLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    :cond_7
    return-void
.end method

.method public getCalcRange(I)[D
    .locals 2
    .param p1, "scale"    # I

    .prologue
    .line 801
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public abstract getChartType()Ljava/lang/String;
.end method

.method public getDataset()Lorg/achartengine/model/XYMultipleSeriesDataset;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    return-object v0
.end method

.method public getDefaultMinimum()D
    .locals 2

    .prologue
    .line 943
    const-wide v0, 0x7fefffffffffffffL

    return-wide v0
.end method

.method public getPointsChart()Lorg/achartengine/chart/ScatterChart;
    .locals 1

    .prologue
    .line 952
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRenderer()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    return-object v0
.end method

.method protected getScreenR()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSeriesAndPointForScreenCoordinate(Lorg/achartengine/model/Point;)Lorg/achartengine/model/SeriesSelection;
    .locals 10
    .param p1, "screenPoint"    # Lorg/achartengine/model/Point;

    .prologue
    .line 869
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->clickableAreas:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 870
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->clickableAreas:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local v1, "seriesIndex":I
    :goto_0
    if-ltz v1, :cond_2

    .line 875
    const/4 v2, 0x0

    .line 876
    .local v2, "pointIndex":I
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->clickableAreas:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 878
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->clickableAreas:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/achartengine/chart/ClickableArea;

    .line 879
    .local v7, "area":Lorg/achartengine/chart/ClickableArea;
    if-eqz v7, :cond_0

    .line 880
    invoke-virtual {v7}, Lorg/achartengine/chart/ClickableArea;->getRect()Landroid/graphics/RectF;

    move-result-object v9

    .line 881
    .local v9, "rectangle":Landroid/graphics/RectF;
    if-eqz v9, :cond_0

    invoke-virtual {p1}, Lorg/achartengine/model/Point;->getX()F

    move-result v0

    invoke-virtual {p1}, Lorg/achartengine/model/Point;->getY()F

    move-result v3

    invoke-virtual {v9, v0, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    new-instance v0, Lorg/achartengine/model/SeriesSelection;

    invoke-virtual {v7}, Lorg/achartengine/chart/ClickableArea;->getX()D

    move-result-wide v3

    invoke-virtual {v7}, Lorg/achartengine/chart/ClickableArea;->getY()D

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lorg/achartengine/model/SeriesSelection;-><init>(IIDD)V

    .line 889
    .end local v1    # "seriesIndex":I
    .end local v2    # "pointIndex":I
    .end local v7    # "area":Lorg/achartengine/chart/ClickableArea;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "rectangle":Landroid/graphics/RectF;
    :goto_2
    return-object v0

    .line 885
    .restart local v1    # "seriesIndex":I
    .restart local v2    # "pointIndex":I
    .restart local v7    # "area":Lorg/achartengine/chart/ClickableArea;
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 870
    .end local v7    # "area":Lorg/achartengine/chart/ClickableArea;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 889
    .end local v1    # "seriesIndex":I
    .end local v2    # "pointIndex":I
    :cond_2
    invoke-super {p0, p1}, Lorg/achartengine/chart/AbstractChart;->getSeriesAndPointForScreenCoordinate(Lorg/achartengine/model/Point;)Lorg/achartengine/model/SeriesSelection;

    move-result-object v0

    goto :goto_2
.end method

.method protected getXLabels(DDI)Ljava/util/List;
    .locals 1
    .param p1, "min"    # D
    .param p3, "max"    # D
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    invoke-static {p1, p2, p3, p4, p5}, Lorg/achartengine/util/MathHelper;->getLabels(DDI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getYLabels([D[DI)Ljava/util/Map;
    .locals 8
    .param p1, "minY"    # [D
    .param p2, "maxY"    # [D
    .param p3, "maxScaleNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D[DI)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 461
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 462
    .local v0, "allYLabels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Double;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 463
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-wide v3, p1, v1

    aget-wide v5, p2, v1

    iget-object v7, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYLabels()I

    move-result v7

    invoke-static {v3, v4, v5, v6, v7}, Lorg/achartengine/util/MathHelper;->getLabels(DDI)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/achartengine/chart/XYChart;->getValidLabels(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
    :cond_0
    return-object v0
.end method

.method protected isRenderNullValues()Z
    .locals 1

    .prologue
    .line 925
    const/4 v0, 0x0

    return v0
.end method

.method public isRenderPoints(Lorg/achartengine/renderer/SimpleSeriesRenderer;)Z
    .locals 1
    .param p1, "renderer"    # Lorg/achartengine/renderer/SimpleSeriesRenderer;

    .prologue
    .line 934
    const/4 v0, 0x0

    return v0
.end method

.method public setCalcRange([DI)V
    .locals 2
    .param p1, "range"    # [D
    .param p2, "scale"    # I

    .prologue
    .line 805
    iget-object v0, p0, Lorg/achartengine/chart/XYChart;->mCalcRange:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    return-void
.end method

.method protected setDatasetRenderer(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 0
    .param p1, "dataset"    # Lorg/achartengine/model/XYMultipleSeriesDataset;
    .param p2, "renderer"    # Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .prologue
    .line 92
    iput-object p1, p0, Lorg/achartengine/chart/XYChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    .line 93
    iput-object p2, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 94
    return-void
.end method

.method protected setScreenR(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "screenR"    # Landroid/graphics/Rect;

    .prologue
    .line 474
    iput-object p1, p0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    .line 475
    return-void
.end method

.method public toRealPoint(FF)[D
    .locals 1
    .param p1, "screenX"    # F
    .param p2, "screenY"    # F

    .prologue
    .line 809
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/achartengine/chart/XYChart;->toRealPoint(FFI)[D

    move-result-object v0

    return-object v0
.end method

.method public toRealPoint(FFI)[D
    .locals 15
    .param p1, "screenX"    # F
    .param p2, "screenY"    # F
    .param p3, "scale"    # I

    .prologue
    .line 832
    iget-object v9, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMin(I)D

    move-result-wide v5

    .line 833
    .local v5, "realMinX":D
    iget-object v9, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMax(I)D

    move-result-wide v1

    .line 834
    .local v1, "realMaxX":D
    iget-object v9, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMin(I)D

    move-result-wide v7

    .line 835
    .local v7, "realMinY":D
    iget-object v9, p0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMax(I)D

    move-result-wide v3

    .line 836
    .local v3, "realMaxY":D
    iget-object v9, p0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    if-eqz v9, :cond_0

    .line 837
    const/4 v9, 0x2

    new-array v9, v9, [D

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    sub-float v11, p1, v11

    float-to-double v11, v11

    sub-double v13, v1, v5

    mul-double/2addr v11, v13

    iget-object v13, p0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-double v13, v13

    div-double/2addr v11, v13

    add-double/2addr v11, v5

    aput-wide v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    sub-float v11, v11, p2

    float-to-double v11, v11

    sub-double v13, v3, v7

    mul-double/2addr v11, v13

    iget-object v13, p0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-double v13, v13

    div-double/2addr v11, v13

    add-double/2addr v11, v7

    aput-wide v11, v9, v10

    .line 842
    :goto_0
    return-object v9

    :cond_0
    const/4 v9, 0x2

    new-array v9, v9, [D

    const/4 v10, 0x0

    move/from16 v0, p1

    float-to-double v11, v0

    aput-wide v11, v9, v10

    const/4 v10, 0x1

    move/from16 v0, p2

    float-to-double v11, v0

    aput-wide v11, v9, v10

    goto :goto_0
.end method

.method public toScreenPoint([D)[D
    .locals 1
    .param p1, "realPoint"    # [D

    .prologue
    .line 813
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/achartengine/chart/XYChart;->toScreenPoint([DI)[D

    move-result-object v0

    return-object v0
.end method

.method public toScreenPoint([DI)[D
    .locals 17
    .param p1, "realPoint"    # [D
    .param p2, "scale"    # I

    .prologue
    .line 847
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMin(I)D

    move-result-wide v7

    .line 848
    .local v7, "realMinX":D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXAxisMax(I)D

    move-result-wide v3

    .line 849
    .local v3, "realMaxX":D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMin(I)D

    move-result-wide v9

    .line 850
    .local v9, "realMinY":D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getYAxisMax(I)D

    move-result-wide v5

    .line 851
    .local v5, "realMaxY":D
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinXSet(I)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxXSet(I)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMinXSet(I)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/achartengine/chart/XYChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isMaxYSet(I)Z

    move-result v11

    if-nez v11, :cond_1

    .line 853
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/achartengine/chart/XYChart;->getCalcRange(I)[D

    move-result-object v2

    .line 854
    .local v2, "calcRange":[D
    const/4 v11, 0x0

    aget-wide v7, v2, v11

    .line 855
    const/4 v11, 0x1

    aget-wide v3, v2, v11

    .line 856
    const/4 v11, 0x2

    aget-wide v9, v2, v11

    .line 857
    const/4 v11, 0x3

    aget-wide v5, v2, v11

    .line 859
    .end local v2    # "calcRange":[D
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    if-eqz v11, :cond_2

    .line 860
    const/4 v11, 0x2

    new-array v11, v11, [D

    const/4 v12, 0x0

    const/4 v13, 0x0

    aget-wide v13, p1, v13

    sub-double/2addr v13, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-double v15, v15

    mul-double/2addr v13, v15

    sub-double v15, v3, v7

    div-double/2addr v13, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    int-to-double v15, v15

    add-double/2addr v13, v15

    aput-wide v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x1

    aget-wide v13, p1, v13

    sub-double v13, v5, v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-double v15, v15

    mul-double/2addr v13, v15

    sub-double v15, v5, v9

    div-double/2addr v13, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/achartengine/chart/XYChart;->mScreenR:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    int-to-double v15, v15

    add-double/2addr v13, v15

    aput-wide v13, v11, v12

    move-object/from16 p1, v11

    .line 864
    .end local p1    # "realPoint":[D
    :cond_2
    return-object p1
.end method

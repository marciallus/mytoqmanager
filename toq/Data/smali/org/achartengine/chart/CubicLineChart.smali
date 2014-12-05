.class public Lorg/achartengine/chart/CubicLineChart;
.super Lorg/achartengine/chart/LineChart;
.source "CubicLineChart.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "Cubic"


# instance fields
.field private firstMultiplier:F

.field private p1:Lorg/achartengine/model/Point;

.field private p2:Lorg/achartengine/model/Point;

.field private p3:Lorg/achartengine/model/Point;

.field private secondMultiplier:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/achartengine/chart/LineChart;-><init>()V

    .line 39
    new-instance v0, Lorg/achartengine/model/Point;

    invoke-direct {v0}, Lorg/achartengine/model/Point;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/CubicLineChart;->p1:Lorg/achartengine/model/Point;

    .line 41
    new-instance v0, Lorg/achartengine/model/Point;

    invoke-direct {v0}, Lorg/achartengine/model/Point;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/CubicLineChart;->p2:Lorg/achartengine/model/Point;

    .line 43
    new-instance v0, Lorg/achartengine/model/Point;

    invoke-direct {v0}, Lorg/achartengine/model/Point;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/CubicLineChart;->p3:Lorg/achartengine/model/Point;

    .line 47
    const v0, 0x3ea8f5c3

    iput v0, p0, Lorg/achartengine/chart/CubicLineChart;->firstMultiplier:F

    .line 49
    const/high16 v0, 0x3f800000

    iget v1, p0, Lorg/achartengine/chart/CubicLineChart;->firstMultiplier:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/achartengine/chart/CubicLineChart;->secondMultiplier:F

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;F)V
    .locals 2
    .param p1, "dataset"    # Lorg/achartengine/model/XYMultipleSeriesDataset;
    .param p2, "renderer"    # Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .param p3, "smoothness"    # F

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lorg/achartengine/chart/LineChart;-><init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 39
    new-instance v0, Lorg/achartengine/model/Point;

    invoke-direct {v0}, Lorg/achartengine/model/Point;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/CubicLineChart;->p1:Lorg/achartengine/model/Point;

    .line 41
    new-instance v0, Lorg/achartengine/model/Point;

    invoke-direct {v0}, Lorg/achartengine/model/Point;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/CubicLineChart;->p2:Lorg/achartengine/model/Point;

    .line 43
    new-instance v0, Lorg/achartengine/model/Point;

    invoke-direct {v0}, Lorg/achartengine/model/Point;-><init>()V

    iput-object v0, p0, Lorg/achartengine/chart/CubicLineChart;->p3:Lorg/achartengine/model/Point;

    .line 66
    iput p3, p0, Lorg/achartengine/chart/CubicLineChart;->firstMultiplier:F

    .line 67
    const/high16 v0, 0x3f800000

    iget v1, p0, Lorg/achartengine/chart/CubicLineChart;->firstMultiplier:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/achartengine/chart/CubicLineChart;->secondMultiplier:F

    .line 68
    return-void
.end method

.method private calc(Ljava/util/List;Lorg/achartengine/model/Point;IIF)V
    .locals 7
    .param p2, "result"    # Lorg/achartengine/model/Point;
    .param p3, "index1"    # I
    .param p4, "index2"    # I
    .param p5, "multiplier"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lorg/achartengine/model/Point;",
            "IIF)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 103
    .local v2, "p1x":F
    add-int/lit8 v6, p3, 0x1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 104
    .local v3, "p1y":F
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 105
    .local v4, "p2x":F
    add-int/lit8 v6, p4, 0x1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 107
    .local v5, "p2y":F
    sub-float v0, v4, v2

    .line 108
    .local v0, "diffX":F
    sub-float v1, v5, v3

    .line 109
    .local v1, "diffY":F
    mul-float v6, v0, p5

    add-float/2addr v6, v2

    invoke-virtual {p2, v6}, Lorg/achartengine/model/Point;->setX(F)V

    .line 110
    mul-float v6, v1, p5

    add-float/2addr v6, v3

    invoke-virtual {p2, v6}, Lorg/achartengine/model/Point;->setY(F)V

    .line 111
    return-void
.end method


# virtual methods
.method protected drawPath(Landroid/graphics/Canvas;Ljava/util/List;Landroid/graphics/Paint;Z)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "circular"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/Paint;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p2, "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    .line 73
    .local v21, "p":Landroid/graphics/Path;
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v22

    .line 74
    .local v22, "x":F
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v23

    .line 75
    .local v23, "y":F
    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Path;->moveTo(FF)V

    .line 77
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v20

    .line 78
    .local v20, "length":I
    if-eqz p4, :cond_0

    .line 79
    add-int/lit8 v20, v20, -0x4

    .line 82
    :cond_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v6, v0, :cond_3

    .line 83
    add-int/lit8 v3, v6, 0x2

    move/from16 v0, v20

    if-ge v3, v0, :cond_1

    add-int/lit8 v7, v6, 0x2

    .line 84
    .local v7, "nextIndex":I
    :goto_1
    add-int/lit8 v3, v6, 0x4

    move/from16 v0, v20

    if-ge v3, v0, :cond_2

    add-int/lit8 v12, v6, 0x4

    .line 85
    .local v12, "nextNextIndex":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/CubicLineChart;->p1:Lorg/achartengine/model/Point;

    move-object/from16 v0, p0

    iget v8, v0, Lorg/achartengine/chart/CubicLineChart;->secondMultiplier:F

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v8}, Lorg/achartengine/chart/CubicLineChart;->calc(Ljava/util/List;Lorg/achartengine/model/Point;IIF)V

    .line 86
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/CubicLineChart;->p2:Lorg/achartengine/model/Point;

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4, v3}, Lorg/achartengine/model/Point;->setX(F)V

    .line 87
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/CubicLineChart;->p2:Lorg/achartengine/model/Point;

    add-int/lit8 v3, v7, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4, v3}, Lorg/achartengine/model/Point;->setY(F)V

    .line 88
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/achartengine/chart/CubicLineChart;->p3:Lorg/achartengine/model/Point;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/achartengine/chart/CubicLineChart;->firstMultiplier:F

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move v11, v7

    invoke-direct/range {v8 .. v13}, Lorg/achartengine/chart/CubicLineChart;->calc(Ljava/util/List;Lorg/achartengine/model/Point;IIF)V

    .line 90
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/CubicLineChart;->p1:Lorg/achartengine/model/Point;

    invoke-virtual {v3}, Lorg/achartengine/model/Point;->getX()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/CubicLineChart;->p1:Lorg/achartengine/model/Point;

    invoke-virtual {v3}, Lorg/achartengine/model/Point;->getY()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/CubicLineChart;->p2:Lorg/achartengine/model/Point;

    invoke-virtual {v3}, Lorg/achartengine/model/Point;->getX()F

    move-result v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/CubicLineChart;->p2:Lorg/achartengine/model/Point;

    invoke-virtual {v3}, Lorg/achartengine/model/Point;->getY()F

    move-result v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/CubicLineChart;->p3:Lorg/achartengine/model/Point;

    invoke-virtual {v3}, Lorg/achartengine/model/Point;->getX()F

    move-result v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/achartengine/chart/CubicLineChart;->p3:Lorg/achartengine/model/Point;

    invoke-virtual {v3}, Lorg/achartengine/model/Point;->getY()F

    move-result v19

    move-object/from16 v13, v21

    invoke-virtual/range {v13 .. v19}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 82
    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_0

    .end local v7    # "nextIndex":I
    .end local v12    # "nextNextIndex":I
    :cond_1
    move v7, v6

    .line 83
    goto/16 :goto_1

    .restart local v7    # "nextIndex":I
    :cond_2
    move v12, v7

    .line 84
    goto/16 :goto_2

    .line 92
    .end local v7    # "nextIndex":I
    :cond_3
    if-eqz p4, :cond_5

    .line 93
    move/from16 v6, v20

    :goto_3
    add-int/lit8 v3, v20, 0x4

    if-ge v6, v3, :cond_4

    .line 94
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-int/lit8 v3, v6, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 93
    add-int/lit8 v6, v6, 0x2

    goto :goto_3

    .line 96
    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 98
    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 99
    return-void
.end method

.method public getChartType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, "Cubic"

    return-object v0
.end method

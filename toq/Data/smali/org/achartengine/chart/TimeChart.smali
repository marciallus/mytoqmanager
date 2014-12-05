.class public Lorg/achartengine/chart/TimeChart;
.super Lorg/achartengine/chart/LineChart;
.source "TimeChart.java"


# static fields
.field public static final DAY:J = 0x5265c00L

.field public static final TYPE:Ljava/lang/String; = "Time"


# instance fields
.field private mDateFormat:Ljava/lang/String;

.field private mStartPoint:Ljava/lang/Double;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/achartengine/chart/LineChart;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V
    .locals 0
    .param p1, "dataset"    # Lorg/achartengine/model/XYMultipleSeriesDataset;
    .param p2, "renderer"    # Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lorg/achartengine/chart/LineChart;-><init>(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;)V

    .line 55
    return-void
.end method

.method private getDateFormat(DD)Ljava/text/DateFormat;
    .locals 9
    .param p1, "start"    # D
    .param p3, "end"    # D

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const-wide v5, 0x4194997000000000L

    .line 127
    iget-object v3, p0, Lorg/achartengine/chart/TimeChart;->mDateFormat:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 128
    const/4 v2, 0x0

    .line 130
    .local v2, "format":Ljava/text/SimpleDateFormat;
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    .end local v2    # "format":Ljava/text/SimpleDateFormat;
    iget-object v3, p0, Lorg/achartengine/chart/TimeChart;->mDateFormat:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    return-object v2

    .line 132
    :catch_0
    move-exception v3

    .line 136
    :cond_1
    invoke-static {v7}, Ljava/text/SimpleDateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    .line 137
    .local v2, "format":Ljava/text/DateFormat;
    sub-double v0, p3, p1

    .line 138
    .local v0, "diff":D
    cmpl-double v3, v0, v5

    if-lez v3, :cond_2

    const-wide v3, 0x41b9bfcc00000000L

    cmpg-double v3, v0, v3

    if-gez v3, :cond_2

    .line 139
    invoke-static {v8, v8}, Ljava/text/SimpleDateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v2

    goto :goto_0

    .line 140
    :cond_2
    cmpg-double v3, v0, v5

    if-gez v3, :cond_0

    .line 141
    invoke-static {v7}, Ljava/text/SimpleDateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
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
    .line 94
    .local p1, "xLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v22

    .line 95
    .local v22, "length":I
    if-lez v22, :cond_2

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/TimeChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowLabels()Z

    move-result v24

    .line 97
    .local v24, "showLabels":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/TimeChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isShowGridY()Z

    move-result v23

    .line 98
    .local v23, "showGridY":Z
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    add-int/lit8 v2, v22, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Lorg/achartengine/chart/TimeChart;->getDateFormat(DD)Ljava/text/DateFormat;

    move-result-object v18

    .line 99
    .local v18, "format":Ljava/text/DateFormat;
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 100
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v20

    .line 101
    .local v20, "label":J
    move/from16 v0, p5

    int-to-double v4, v0

    move-wide/from16 v0, v20

    long-to-double v6, v0

    sub-double v6, v6, p10

    mul-double v6, v6, p8

    add-double/2addr v4, v6

    double-to-float v3, v4

    .line 102
    .local v3, "xLabel":F
    if-eqz v24, :cond_0

    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/TimeChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsColor()I

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    move/from16 v0, p7

    int-to-float v4, v0

    move/from16 v0, p7

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/achartengine/chart/TimeChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v5

    const/high16 v6, 0x40400000

    div-float/2addr v5, v6

    add-float v6, v2, v5

    move-object/from16 v2, p3

    move v5, v3

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 106
    new-instance v2, Ljava/util/Date;

    move-wide/from16 v0, v20

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    move/from16 v0, p7

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/TimeChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getLabelsTextSize()F

    move-result v4

    const/high16 v5, 0x40800000

    mul-float/2addr v4, v5

    const/high16 v5, 0x40400000

    div-float/2addr v4, v5

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/achartengine/chart/TimeChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsPadding()F

    move-result v4

    add-float v8, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/TimeChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getXLabelsAngle()F

    move-result v10

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move v7, v3

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v10}, Lorg/achartengine/chart/TimeChart;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    .line 109
    :cond_0
    if-eqz v23, :cond_1

    .line 110
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/achartengine/chart/TimeChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getGridColor()I

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    move/from16 v0, p7

    int-to-float v4, v0

    move/from16 v0, p6

    int-to-float v6, v0

    move-object/from16 v2, p3

    move v5, v3

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 99
    :cond_1
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 115
    .end local v3    # "xLabel":F
    .end local v18    # "format":Ljava/text/DateFormat;
    .end local v19    # "i":I
    .end local v20    # "label":J
    .end local v23    # "showGridY":Z
    .end local v24    # "showLabels":Z
    :cond_2
    const/4 v8, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    move-wide/from16 v16, p12

    invoke-virtual/range {v4 .. v17}, Lorg/achartengine/chart/TimeChart;->drawXTextLabels([Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;ZIIIDDD)V

    .line 117
    return-void
.end method

.method public getChartType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const-string v0, "Time"

    return-object v0
.end method

.method public getDateFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/achartengine/chart/TimeChart;->mDateFormat:Ljava/lang/String;

    return-object v0
.end method

.method protected getXLabels(DDI)Ljava/util/List;
    .locals 24
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
    .line 157
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/TimeChart;->mRenderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isXRoundedLabels()Z

    move-result v19

    if-nez v19, :cond_6

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/TimeChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesCount()I

    move-result v19

    if-lez v19, :cond_4

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/TimeChart;->mDataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lorg/achartengine/model/XYMultipleSeriesDataset;->getSeriesAt(I)Lorg/achartengine/model/XYSeries;

    move-result-object v12

    .line 161
    .local v12, "series":Lorg/achartengine/model/XYSeries;
    invoke-virtual {v12}, Lorg/achartengine/model/XYSeries;->getItemCount()I

    move-result v10

    .line 162
    .local v10, "length":I
    const/4 v9, 0x0

    .line 163
    .local v9, "intervalLength":I
    const/4 v13, -0x1

    .line 164
    .local v13, "startIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v10, :cond_1

    .line 165
    invoke-virtual {v12, v6}, Lorg/achartengine/model/XYSeries;->getX(I)D

    move-result-wide v17

    .line 166
    .local v17, "value":D
    cmpg-double v19, p1, v17

    if-gtz v19, :cond_0

    cmpg-double v19, v17, p3

    if-gtz v19, :cond_0

    .line 167
    add-int/lit8 v9, v9, 0x1

    .line 168
    if-gez v13, :cond_0

    .line 169
    move v13, v6

    .line 164
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 173
    .end local v17    # "value":D
    :cond_1
    move/from16 v0, p5

    if-ge v9, v0, :cond_2

    .line 174
    move v6, v13

    :goto_1
    add-int v19, v13, v9

    move/from16 v0, v19

    if-ge v6, v0, :cond_5

    .line 175
    invoke-virtual {v12, v6}, Lorg/achartengine/model/XYSeries;->getX(I)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 178
    :cond_2
    int-to-float v0, v9

    move/from16 v19, v0

    move/from16 v0, p5

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v14, v19, v20

    .line 179
    .local v14, "step":F
    const/4 v8, 0x0

    .line 180
    .local v8, "intervalCount":I
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v10, :cond_5

    move/from16 v0, p5

    if-ge v8, v0, :cond_5

    .line 181
    int-to-float v0, v6

    move/from16 v19, v0

    mul-float v19, v19, v14

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/achartengine/model/XYSeries;->getX(I)D

    move-result-wide v17

    .line 182
    .restart local v17    # "value":D
    cmpg-double v19, p1, v17

    if-gtz v19, :cond_3

    cmpg-double v19, v17, p3

    if-gtz v19, :cond_3

    .line 183
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v8, v8, 0x1

    .line 180
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 190
    .end local v6    # "i":I
    .end local v8    # "intervalCount":I
    .end local v9    # "intervalLength":I
    .end local v10    # "length":I
    .end local v12    # "series":Lorg/achartengine/model/XYSeries;
    .end local v13    # "startIndex":I
    .end local v14    # "step":F
    .end local v17    # "value":D
    :cond_4
    invoke-super/range {p0 .. p5}, Lorg/achartengine/chart/LineChart;->getXLabels(DDI)Ljava/util/List;

    move-result-object v11

    .line 225
    .end local v11    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    :cond_5
    :goto_3
    return-object v11

    .line 193
    .restart local v11    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/TimeChart;->mStartPoint:Ljava/lang/Double;

    move-object/from16 v19, v0

    if-nez v19, :cond_7

    .line 194
    const-wide v19, 0x4194997000000000L

    rem-double v19, p1, v19

    sub-double v19, p1, v19

    const-wide v21, 0x4194997000000000L

    add-double v19, v19, v21

    new-instance v21, Ljava/util/Date;

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    invoke-direct/range {v21 .. v23}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v21 .. v21}, Ljava/util/Date;->getTimezoneOffset()I

    move-result v21

    mul-int/lit8 v21, v21, 0x3c

    move/from16 v0, v21

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    add-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/achartengine/chart/TimeChart;->mStartPoint:Ljava/lang/Double;

    .line 197
    :cond_7
    const/16 v19, 0x19

    move/from16 v0, p5

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    .line 198
    const/16 p5, 0x19

    .line 202
    :cond_8
    sub-double v19, p3, p1

    move/from16 v0, p5

    int-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v4, v19, v21

    .line 203
    .local v4, "cycleMath":D
    const-wide/16 v19, 0x0

    cmpg-double v19, v4, v19

    if-lez v19, :cond_5

    .line 206
    const-wide v2, 0x4194997000000000L

    .line 208
    .local v2, "cycle":D
    const-wide v19, 0x4194997000000000L

    cmpg-double v19, v4, v19

    if-gtz v19, :cond_9

    .line 209
    :goto_4
    const-wide/high16 v19, 0x4000000000000000L

    div-double v19, v2, v19

    cmpg-double v19, v4, v19

    if-gez v19, :cond_a

    .line 210
    const-wide/high16 v19, 0x4000000000000000L

    div-double v2, v2, v19

    goto :goto_4

    .line 213
    :cond_9
    :goto_5
    cmpl-double v19, v4, v2

    if-lez v19, :cond_a

    .line 214
    const-wide/high16 v19, 0x4000000000000000L

    mul-double v2, v2, v19

    goto :goto_5

    .line 218
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/TimeChart;->mStartPoint:Ljava/lang/Double;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/chart/TimeChart;->mStartPoint:Ljava/lang/Double;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21

    sub-double v21, v21, p1

    div-double v21, v21, v2

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->floor(D)D

    move-result-wide v21

    mul-double v21, v21, v2

    sub-double v15, v19, v21

    .line 219
    .local v15, "val":D
    const/4 v6, 0x0

    .restart local v6    # "i":I
    move v7, v6

    .line 220
    .end local v6    # "i":I
    .local v7, "i":I
    :goto_6
    cmpg-double v19, v15, p3

    if-gez v19, :cond_b

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "i":I
    .restart local v6    # "i":I
    move/from16 v0, p5

    if-gt v7, v0, :cond_5

    .line 221
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    add-double/2addr v15, v2

    move v7, v6

    .end local v6    # "i":I
    .restart local v7    # "i":I
    goto :goto_6

    :cond_b
    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto/16 :goto_3
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lorg/achartengine/chart/TimeChart;->mDateFormat:Ljava/lang/String;

    .line 75
    return-void
.end method

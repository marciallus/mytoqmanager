.class public abstract Lorg/achartengine/chart/AbstractChart;
.super Ljava/lang/Object;
.source "AbstractChart.java"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateDrawPoints(FFFFII)[F
    .locals 8
    .param p0, "p1x"    # F
    .param p1, "p1y"    # F
    .param p2, "p2x"    # F
    .param p3, "p2y"    # F
    .param p4, "screenHeight"    # I
    .param p5, "screenWidth"    # I

    .prologue
    const/4 v7, 0x0

    .line 228
    int-to-float v5, p4

    cmpl-float v5, p1, v5

    if-lez v5, :cond_3

    .line 230
    sub-float v5, p3, p1

    sub-float v6, p2, p0

    div-float v4, v5, v6

    .line 231
    .local v4, "m":F
    int-to-float v5, p4

    sub-float/2addr v5, p1

    mul-float v6, v4, p0

    add-float/2addr v5, v6

    div-float v0, v5, v4

    .line 232
    .local v0, "drawP1x":F
    int-to-float v1, p4

    .line 234
    .local v1, "drawP1y":F
    cmpg-float v5, v0, v7

    if-gez v5, :cond_2

    .line 237
    const/4 v0, 0x0

    .line 238
    mul-float v5, v4, p0

    sub-float v1, p1, v5

    .line 262
    .end local v4    # "m":F
    :cond_0
    :goto_0
    int-to-float v5, p4

    cmpl-float v5, p3, v5

    if-lez v5, :cond_7

    .line 263
    sub-float v5, p3, p1

    sub-float v6, p2, p0

    div-float v4, v5, v6

    .line 264
    .restart local v4    # "m":F
    int-to-float v5, p4

    sub-float/2addr v5, p1

    mul-float v6, v4, p0

    add-float/2addr v5, v6

    div-float v2, v5, v4

    .line 265
    .local v2, "drawP2x":F
    int-to-float v3, p4

    .line 266
    .local v3, "drawP2y":F
    cmpg-float v5, v2, v7

    if-gez v5, :cond_6

    .line 267
    const/4 v2, 0x0

    .line 268
    mul-float v5, v4, p0

    sub-float v3, p1, v5

    .line 290
    .end local v4    # "m":F
    :cond_1
    :goto_1
    const/4 v5, 0x4

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v6, 0x1

    aput v1, v5, v6

    const/4 v6, 0x2

    aput v2, v5, v6

    const/4 v6, 0x3

    aput v3, v5, v6

    return-object v5

    .line 239
    .end local v2    # "drawP2x":F
    .end local v3    # "drawP2y":F
    .restart local v4    # "m":F
    :cond_2
    int-to-float v5, p5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    .line 242
    int-to-float v0, p5

    .line 243
    int-to-float v5, p5

    mul-float/2addr v5, v4

    add-float/2addr v5, p1

    mul-float v6, v4, p0

    sub-float v1, v5, v6

    goto :goto_0

    .line 245
    .end local v0    # "drawP1x":F
    .end local v1    # "drawP1y":F
    .end local v4    # "m":F
    :cond_3
    cmpg-float v5, p1, v7

    if-gez v5, :cond_5

    .line 246
    sub-float v5, p3, p1

    sub-float v6, p2, p0

    div-float v4, v5, v6

    .line 247
    .restart local v4    # "m":F
    neg-float v5, p1

    mul-float v6, v4, p0

    add-float/2addr v5, v6

    div-float v0, v5, v4

    .line 248
    .restart local v0    # "drawP1x":F
    const/4 v1, 0x0

    .line 249
    .restart local v1    # "drawP1y":F
    cmpg-float v5, v0, v7

    if-gez v5, :cond_4

    .line 250
    const/4 v0, 0x0

    .line 251
    mul-float v5, v4, p0

    sub-float v1, p1, v5

    goto :goto_0

    .line 252
    :cond_4
    int-to-float v5, p5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    .line 253
    int-to-float v0, p5

    .line 254
    int-to-float v5, p5

    mul-float/2addr v5, v4

    add-float/2addr v5, p1

    mul-float v6, v4, p0

    sub-float v1, v5, v6

    goto :goto_0

    .line 258
    .end local v0    # "drawP1x":F
    .end local v1    # "drawP1y":F
    .end local v4    # "m":F
    :cond_5
    move v0, p0

    .line 259
    .restart local v0    # "drawP1x":F
    move v1, p1

    .restart local v1    # "drawP1y":F
    goto :goto_0

    .line 269
    .restart local v2    # "drawP2x":F
    .restart local v3    # "drawP2y":F
    .restart local v4    # "m":F
    :cond_6
    int-to-float v5, p5

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    .line 270
    int-to-float v2, p5

    .line 271
    int-to-float v5, p5

    mul-float/2addr v5, v4

    add-float/2addr v5, p1

    mul-float v6, v4, p0

    sub-float v3, v5, v6

    goto :goto_1

    .line 273
    .end local v2    # "drawP2x":F
    .end local v3    # "drawP2y":F
    .end local v4    # "m":F
    :cond_7
    cmpg-float v5, p3, v7

    if-gez v5, :cond_9

    .line 274
    sub-float v5, p3, p1

    sub-float v6, p2, p0

    div-float v4, v5, v6

    .line 275
    .restart local v4    # "m":F
    neg-float v5, p1

    mul-float v6, v4, p0

    add-float/2addr v5, v6

    div-float v2, v5, v4

    .line 276
    .restart local v2    # "drawP2x":F
    const/4 v3, 0x0

    .line 277
    .restart local v3    # "drawP2y":F
    cmpg-float v5, v2, v7

    if-gez v5, :cond_8

    .line 278
    const/4 v2, 0x0

    .line 279
    mul-float v5, v4, p0

    sub-float v3, p1, v5

    goto :goto_1

    .line 280
    :cond_8
    int-to-float v5, p5

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    .line 281
    int-to-float v2, p5

    .line 282
    int-to-float v5, p5

    mul-float/2addr v5, v4

    add-float/2addr v5, p1

    mul-float v6, v4, p0

    sub-float v3, v5, v6

    goto :goto_1

    .line 286
    .end local v2    # "drawP2x":F
    .end local v3    # "drawP2y":F
    .end local v4    # "m":F
    :cond_9
    move v2, p2

    .line 287
    .restart local v2    # "drawP2x":F
    move v3, p3

    .restart local v3    # "drawP2y":F
    goto/16 :goto_1
.end method

.method private getFitText(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/lang/String;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "width"    # F
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 404
    move-object v2, p1

    .line 405
    .local v2, "newText":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 406
    .local v1, "length":I
    const/4 v0, 0x0

    .line 407
    .local v0, "diff":I
    :goto_0
    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v3, v3, p2

    if-lez v3, :cond_0

    if-ge v0, v1, :cond_0

    .line 408
    add-int/lit8 v0, v0, 0x1

    .line 409
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    sub-int v5, v1, v0

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 411
    :cond_0
    if-ne v0, v1, :cond_1

    .line 412
    const-string v2, "..."

    .line 414
    :cond_1
    return-object v2
.end method


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
.end method

.method protected drawBackground(Lorg/achartengine/renderer/DefaultRenderer;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V
    .locals 6
    .param p1, "renderer"    # Lorg/achartengine/renderer/DefaultRenderer;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "paint"    # Landroid/graphics/Paint;
    .param p8, "newColor"    # Z
    .param p9, "color"    # I

    .prologue
    .line 70
    invoke-virtual {p1}, Lorg/achartengine/renderer/DefaultRenderer;->isApplyBackgroundColor()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p8, :cond_1

    .line 71
    :cond_0
    if-eqz p8, :cond_2

    .line 72
    invoke-virtual {p7, p9}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    :goto_0
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p7, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    int-to-float v1, p3

    int-to-float v2, p4

    add-int v0, p3, p5

    int-to-float v3, v0

    add-int v0, p4, p6

    int-to-float v4, v0

    move-object v0, p2

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 79
    :cond_1
    return-void

    .line 74
    :cond_2
    invoke-virtual {p1}, Lorg/achartengine/renderer/DefaultRenderer;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p7, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method protected drawLabel(Landroid/graphics/Canvas;Ljava/lang/String;Lorg/achartengine/renderer/DefaultRenderer;Ljava/util/List;IIFFFFIIILandroid/graphics/Paint;ZZ)V
    .locals 32
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "labelText"    # Ljava/lang/String;
    .param p3, "renderer"    # Lorg/achartengine/renderer/DefaultRenderer;
    .param p5, "centerX"    # I
    .param p6, "centerY"    # I
    .param p7, "shortRadius"    # F
    .param p8, "longRadius"    # F
    .param p9, "currentAngle"    # F
    .param p10, "angle"    # F
    .param p11, "left"    # I
    .param p12, "right"    # I
    .param p13, "color"    # I
    .param p14, "paint"    # Landroid/graphics/Paint;
    .param p15, "line"    # Z
    .param p16, "display"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/lang/String;",
            "Lorg/achartengine/renderer/DefaultRenderer;",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/RectF;",
            ">;IIFFFFIII",
            "Landroid/graphics/Paint;",
            "ZZ)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p4, "prevLabelsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-virtual/range {p3 .. p3}, Lorg/achartengine/renderer/DefaultRenderer;->isShowLabels()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p16, :cond_7

    .line 461
    :cond_0
    move-object/from16 v0, p14

    move/from16 v1, p13

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 462
    const/high16 v5, 0x42b40000

    const/high16 v6, 0x40000000

    div-float v6, p10, v6

    add-float v6, v6, p9

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v19

    .line 463
    .local v19, "rAngle":D
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    .line 464
    .local v21, "sinValue":D
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 465
    .local v11, "cosValue":D
    move/from16 v0, p5

    int-to-float v5, v0

    move/from16 v0, p7

    float-to-double v6, v0

    mul-double v6, v6, v21

    double-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v26

    .line 466
    .local v26, "x1":I
    move/from16 v0, p6

    int-to-float v5, v0

    move/from16 v0, p7

    float-to-double v6, v0

    mul-double/2addr v6, v11

    double-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v29

    .line 467
    .local v29, "y1":I
    move/from16 v0, p5

    int-to-float v5, v0

    move/from16 v0, p8

    float-to-double v6, v0

    mul-double v6, v6, v21

    double-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v27

    .line 468
    .local v27, "x2":I
    move/from16 v0, p6

    int-to-float v5, v0

    move/from16 v0, p8

    float-to-double v6, v0

    mul-double/2addr v6, v11

    double-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v30

    .line 470
    .local v30, "y2":I
    invoke-virtual/range {p3 .. p3}, Lorg/achartengine/renderer/DefaultRenderer;->getLabelsTextSize()F

    move-result v23

    .line 471
    .local v23, "size":F
    const/high16 v5, 0x40000000

    div-float v5, v23, v5

    const/high16 v6, 0x41200000

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v13

    .line 472
    .local v13, "extra":F
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p14

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 473
    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_1

    .line 474
    neg-float v13, v13

    .line 475
    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p14

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 477
    :cond_1
    move/from16 v0, v27

    int-to-float v5, v0

    add-float v28, v5, v13

    .line 478
    .local v28, "xLabel":F
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v31, v0

    .line 479
    .local v31, "yLabel":F
    move/from16 v0, p12

    int-to-float v5, v0

    sub-float v24, v5, v28

    .line 480
    .local v24, "width":F
    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_2

    .line 481
    move/from16 v0, p11

    int-to-float v5, v0

    sub-float v24, v28, v5

    .line 483
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v24

    move-object/from16 v3, p14

    invoke-direct {v0, v1, v2, v3}, Lorg/achartengine/chart/AbstractChart;->getFitText(Ljava/lang/String;FLandroid/graphics/Paint;)Ljava/lang/String;

    move-result-object p2

    .line 484
    move-object/from16 v0, p14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v25

    .line 485
    .local v25, "widthLabel":F
    const/16 v17, 0x0

    .line 486
    .local v17, "okBounds":Z
    :goto_0
    if-nez v17, :cond_6

    if-eqz p15, :cond_6

    .line 487
    const/4 v14, 0x0

    .line 488
    .local v14, "intersects":Z
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v16

    .line 489
    .local v16, "length":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    if-nez v14, :cond_4

    .line 490
    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/RectF;

    .line 491
    .local v18, "prevLabelBounds":Landroid/graphics/RectF;
    add-float v5, v28, v25

    add-float v6, v31, v23

    move-object/from16 v0, v18

    move/from16 v1, v28

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/graphics/RectF;->intersects(FFFF)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 492
    const/4 v14, 0x1

    .line 493
    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v0, v31

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v31

    .line 489
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 496
    .end local v18    # "prevLabelBounds":Landroid/graphics/RectF;
    :cond_4
    if-nez v14, :cond_5

    const/16 v17, 0x1

    .line 497
    :goto_2
    goto :goto_0

    .line 496
    :cond_5
    const/16 v17, 0x0

    goto :goto_2

    .line 499
    .end local v14    # "intersects":Z
    .end local v15    # "j":I
    .end local v16    # "length":I
    :cond_6
    if-eqz p15, :cond_8

    .line 500
    const/high16 v5, 0x40000000

    div-float v5, v23, v5

    sub-float v5, v31, v5

    float-to-int v0, v5

    move/from16 v30, v0

    .line 501
    move/from16 v0, v26

    int-to-float v6, v0

    move/from16 v0, v29

    int-to-float v7, v0

    move/from16 v0, v27

    int-to-float v8, v0

    move/from16 v0, v30

    int-to-float v9, v0

    move-object/from16 v5, p1

    move-object/from16 v10, p14

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 502
    move/from16 v0, v27

    int-to-float v6, v0

    move/from16 v0, v30

    int-to-float v7, v0

    move/from16 v0, v27

    int-to-float v5, v0

    add-float v8, v5, v13

    move/from16 v0, v30

    int-to-float v9, v0

    move-object/from16 v5, p1

    move-object/from16 v10, p14

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 506
    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v28

    move/from16 v3, v31

    move-object/from16 v4, p14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 507
    if-eqz p15, :cond_7

    .line 508
    new-instance v5, Landroid/graphics/RectF;

    add-float v6, v28, v25

    add-float v7, v31, v23

    move/from16 v0, v28

    move/from16 v1, v31

    invoke-direct {v5, v0, v1, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    .end local v11    # "cosValue":D
    .end local v13    # "extra":F
    .end local v17    # "okBounds":Z
    .end local v19    # "rAngle":D
    .end local v21    # "sinValue":D
    .end local v23    # "size":F
    .end local v24    # "width":F
    .end local v25    # "widthLabel":F
    .end local v26    # "x1":I
    .end local v27    # "x2":I
    .end local v28    # "xLabel":F
    .end local v29    # "y1":I
    .end local v30    # "y2":I
    .end local v31    # "yLabel":F
    :cond_7
    return-void

    .line 504
    .restart local v11    # "cosValue":D
    .restart local v13    # "extra":F
    .restart local v17    # "okBounds":Z
    .restart local v19    # "rAngle":D
    .restart local v21    # "sinValue":D
    .restart local v23    # "size":F
    .restart local v24    # "width":F
    .restart local v25    # "widthLabel":F
    .restart local v26    # "x1":I
    .restart local v27    # "x2":I
    .restart local v28    # "xLabel":F
    .restart local v29    # "y1":I
    .restart local v30    # "y2":I
    .restart local v31    # "yLabel":F
    :cond_8
    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p14

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_3
.end method

.method protected drawLegend(Landroid/graphics/Canvas;Lorg/achartengine/renderer/DefaultRenderer;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I
    .locals 30
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "renderer"    # Lorg/achartengine/renderer/DefaultRenderer;
    .param p3, "titles"    # [Ljava/lang/String;
    .param p4, "left"    # I
    .param p5, "right"    # I
    .param p6, "y"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "legendSize"    # I
    .param p10, "paint"    # Landroid/graphics/Paint;
    .param p11, "calculate"    # Z

    .prologue
    .line 100
    const/high16 v26, 0x42000000

    .line 101
    .local v26, "size":F
    invoke-virtual/range {p2 .. p2}, Lorg/achartengine/renderer/DefaultRenderer;->isShowLegend()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 102
    move/from16 v0, p4

    int-to-float v8, v0

    .line 103
    .local v8, "currentX":F
    add-int v5, p6, p8

    sub-int v5, v5, p9

    int-to-float v5, v5

    add-float v9, v5, v26

    .line 104
    .local v9, "currentY":F
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p10

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Lorg/achartengine/renderer/DefaultRenderer;->getLegendTextSize()F

    move-result v5

    move-object/from16 v0, p10

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 106
    move-object/from16 v0, p3

    array-length v5, v0

    invoke-virtual/range {p2 .. p2}, Lorg/achartengine/renderer/DefaultRenderer;->getSeriesRendererCount()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v25

    .line 107
    .local v25, "sLength":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move/from16 v0, v25

    if-ge v10, v0, :cond_7

    .line 108
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/achartengine/renderer/DefaultRenderer;->getSeriesRendererAt(I)Lorg/achartengine/renderer/SimpleSeriesRenderer;

    move-result-object v7

    .line 109
    .local v7, "r":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/achartengine/chart/AbstractChart;->getLegendShapeWidth(I)I

    move-result v5

    int-to-float v0, v5

    move/from16 v22, v0

    .line 110
    .local v22, "lineSize":F
    invoke-virtual {v7}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->isShowLegendItem()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 111
    aget-object v13, p3, v10

    .line 112
    .local v13, "text":Ljava/lang/String;
    move-object/from16 v0, p3

    array-length v5, v0

    invoke-virtual/range {p2 .. p2}, Lorg/achartengine/renderer/DefaultRenderer;->getSeriesRendererCount()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 113
    invoke-virtual {v7}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->getColor()I

    move-result v5

    move-object/from16 v0, p10

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    :goto_1
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    new-array v0, v5, [F

    move-object/from16 v29, v0

    .line 118
    .local v29, "widths":[F
    move-object/from16 v0, p10

    move-object/from16 v1, v29

    invoke-virtual {v0, v13, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 119
    const/16 v27, 0x0

    .line 120
    .local v27, "sum":F
    move-object/from16 v17, v29

    .local v17, "arr$":[F
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    .local v21, "len$":I
    const/16 v20, 0x0

    .local v20, "i$":I
    :goto_2
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    aget v28, v17, v20

    .line 121
    .local v28, "value":F
    add-float v27, v27, v28

    .line 120
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 115
    .end local v17    # "arr$":[F
    .end local v20    # "i$":I
    .end local v21    # "len$":I
    .end local v27    # "sum":F
    .end local v28    # "value":F
    .end local v29    # "widths":[F
    :cond_0
    const v5, -0x333334

    move-object/from16 v0, p10

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 123
    .restart local v17    # "arr$":[F
    .restart local v20    # "i$":I
    .restart local v21    # "len$":I
    .restart local v27    # "sum":F
    .restart local v29    # "widths":[F
    :cond_1
    const/high16 v5, 0x41200000

    add-float v5, v5, v22

    add-float v19, v5, v27

    .line 124
    .local v19, "extraSize":F
    add-float v18, v8, v19

    .line 126
    .local v18, "currentWidth":F
    if-lez v10, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/achartengine/chart/AbstractChart;->getExceed(FLorg/achartengine/renderer/DefaultRenderer;II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 127
    move/from16 v0, p4

    int-to-float v8, v0

    .line 128
    invoke-virtual/range {p2 .. p2}, Lorg/achartengine/renderer/DefaultRenderer;->getLegendTextSize()F

    move-result v5

    add-float/2addr v9, v5

    .line 129
    invoke-virtual/range {p2 .. p2}, Lorg/achartengine/renderer/DefaultRenderer;->getLegendTextSize()F

    move-result v5

    add-float v26, v26, v5

    .line 130
    add-float v18, v8, v19

    .line 132
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/achartengine/chart/AbstractChart;->getExceed(FLorg/achartengine/renderer/DefaultRenderer;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 133
    move/from16 v0, p5

    int-to-float v5, v0

    sub-float/2addr v5, v8

    sub-float v5, v5, v22

    const/high16 v6, 0x41200000

    sub-float v23, v5, v6

    .line 134
    .local v23, "maxWidth":F
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/achartengine/chart/AbstractChart;->isVertical(Lorg/achartengine/renderer/DefaultRenderer;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 135
    move/from16 v0, p7

    int-to-float v5, v0

    sub-float/2addr v5, v8

    sub-float v5, v5, v22

    const/high16 v6, 0x41200000

    sub-float v23, v5, v6

    .line 137
    :cond_3
    const/4 v5, 0x1

    move-object/from16 v0, p10

    move/from16 v1, v23

    move-object/from16 v2, v29

    invoke-virtual {v0, v13, v5, v1, v2}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v24

    .line 138
    .local v24, "nr":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    move/from16 v0, v24

    invoke-virtual {v13, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 140
    .end local v23    # "maxWidth":F
    .end local v24    # "nr":I
    :cond_4
    if-nez p11, :cond_5

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v11, p10

    .line 141
    invoke-virtual/range {v5 .. v11}, Lorg/achartengine/chart/AbstractChart;->drawLegendShape(Landroid/graphics/Canvas;Lorg/achartengine/renderer/SimpleSeriesRenderer;FFILandroid/graphics/Paint;)V

    .line 142
    add-float v5, v8, v22

    const/high16 v6, 0x40a00000

    add-float v14, v5, v6

    const/high16 v5, 0x40a00000

    add-float v15, v9, v5

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v16, p10

    invoke-virtual/range {v11 .. v16}, Lorg/achartengine/chart/AbstractChart;->drawString(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 144
    :cond_5
    add-float v8, v8, v19

    .line 107
    .end local v13    # "text":Ljava/lang/String;
    .end local v17    # "arr$":[F
    .end local v18    # "currentWidth":F
    .end local v19    # "extraSize":F
    .end local v20    # "i$":I
    .end local v21    # "len$":I
    .end local v27    # "sum":F
    .end local v29    # "widths":[F
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 148
    .end local v7    # "r":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .end local v8    # "currentX":F
    .end local v9    # "currentY":F
    .end local v10    # "i":I
    .end local v22    # "lineSize":F
    .end local v25    # "sLength":I
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lorg/achartengine/renderer/DefaultRenderer;->getLegendTextSize()F

    move-result v5

    add-float v5, v5, v26

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    return v5
.end method

.method public abstract drawLegendShape(Landroid/graphics/Canvas;Lorg/achartengine/renderer/SimpleSeriesRenderer;FFILandroid/graphics/Paint;)V
.end method

.method protected drawPath(Landroid/graphics/Canvas;Ljava/util/List;Landroid/graphics/Paint;Z)V
    .locals 10
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
    .line 302
    .local p2, "points":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 303
    .local v8, "path":Landroid/graphics/Path;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    .line 304
    .local v4, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    .line 307
    .local v5, "width":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 332
    :goto_0
    return-void

    .line 310
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static/range {v0 .. v5}, Lorg/achartengine/chart/AbstractChart;->calculateDrawPoints(FFFFII)[F

    move-result-object v9

    .line 312
    .local v9, "tempDrawPoints":[F
    const/4 v0, 0x0

    aget v0, v9, v0

    const/4 v1, 0x1

    aget v1, v9, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 313
    const/4 v0, 0x2

    aget v0, v9, v0

    const/4 v1, 0x3

    aget v1, v9, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 315
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    .line 316
    .local v7, "length":I
    const/4 v6, 0x4

    .local v6, "i":I
    :goto_1
    if-ge v6, v7, :cond_5

    .line 317
    add-int/lit8 v0, v6, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    add-int/lit8 v0, v6, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    :cond_1
    add-int/lit8 v0, v6, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    int-to-float v1, v4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    add-int/lit8 v0, v6, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    int-to-float v1, v4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 316
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    .line 321
    :cond_3
    add-int/lit8 v0, v6, -0x2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-int/lit8 v1, v6, -0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-int/lit8 v3, v6, 0x1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static/range {v0 .. v5}, Lorg/achartengine/chart/AbstractChart;->calculateDrawPoints(FFFFII)[F

    move-result-object v9

    .line 323
    if-nez p4, :cond_4

    .line 324
    const/4 v0, 0x0

    aget v0, v9, v0

    const/4 v1, 0x1

    aget v1, v9, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 326
    :cond_4
    const/4 v0, 0x2

    aget v0, v9, v0

    const/4 v1, 0x3

    aget v1, v9, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 328
    :cond_5
    if-eqz p4, :cond_6

    .line 329
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v8, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 331
    :cond_6
    invoke-virtual {p1, v8, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected drawPath(Landroid/graphics/Canvas;[FLandroid/graphics/Paint;Z)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "points"    # [F
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "circular"    # Z

    .prologue
    .line 343
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 344
    .local v8, "path":Landroid/graphics/Path;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    .line 345
    .local v4, "height":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    .line 348
    .local v5, "width":I
    array-length v0, p2

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 372
    :goto_0
    return-void

    .line 351
    :cond_0
    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget v1, p2, v1

    const/4 v2, 0x2

    aget v2, p2, v2

    const/4 v3, 0x3

    aget v3, p2, v3

    invoke-static/range {v0 .. v5}, Lorg/achartengine/chart/AbstractChart;->calculateDrawPoints(FFFFII)[F

    move-result-object v9

    .line 352
    .local v9, "tempDrawPoints":[F
    const/4 v0, 0x0

    aget v0, v9, v0

    const/4 v1, 0x1

    aget v1, v9, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 353
    const/4 v0, 0x2

    aget v0, v9, v0

    const/4 v1, 0x3

    aget v1, v9, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 355
    array-length v7, p2

    .line 356
    .local v7, "length":I
    const/4 v6, 0x4

    .local v6, "i":I
    :goto_1
    if-ge v6, v7, :cond_5

    .line 357
    add-int/lit8 v0, v6, -0x1

    aget v0, p2, v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    add-int/lit8 v0, v6, 0x1

    aget v0, p2, v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    :cond_1
    add-int/lit8 v0, v6, -0x1

    aget v0, p2, v0

    int-to-float v1, v4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    add-int/lit8 v0, v6, 0x1

    aget v0, p2, v0

    int-to-float v1, v4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 356
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    .line 361
    :cond_3
    add-int/lit8 v0, v6, -0x2

    aget v0, p2, v0

    add-int/lit8 v1, v6, -0x1

    aget v1, p2, v1

    aget v2, p2, v6

    add-int/lit8 v3, v6, 0x1

    aget v3, p2, v3

    invoke-static/range {v0 .. v5}, Lorg/achartengine/chart/AbstractChart;->calculateDrawPoints(FFFFII)[F

    move-result-object v9

    .line 363
    if-nez p4, :cond_4

    .line 364
    const/4 v0, 0x0

    aget v0, v9, v0

    const/4 v1, 0x1

    aget v1, v9, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 366
    :cond_4
    const/4 v0, 0x2

    aget v0, v9, v0

    const/4 v1, 0x3

    aget v1, v9, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 368
    :cond_5
    if-eqz p4, :cond_6

    .line 369
    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget v1, p2, v1

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 371
    :cond_6
    invoke-virtual {p1, v8, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected drawString(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 161
    if-eqz p2, :cond_0

    .line 162
    const-string v4, "\n"

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "lines":[Ljava/lang/String;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 164
    .local v2, "rect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    .line 165
    .local v3, "yOff":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 166
    aget-object v4, v1, v0

    int-to-float v5, v3

    add-float/2addr v5, p4

    invoke-virtual {p1, v4, p3, v5, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 167
    aget-object v4, v1, v0

    const/4 v5, 0x0

    aget-object v6, v1, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p5, v4, v5, v6, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 168
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v4, v3

    add-int/lit8 v3, v4, 0x5

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "i":I
    .end local v1    # "lines":[Ljava/lang/String;
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "yOff":I
    :cond_0
    return-void
.end method

.method protected getExceed(FLorg/achartengine/renderer/DefaultRenderer;II)Z
    .locals 4
    .param p1, "currentWidth"    # F
    .param p2, "renderer"    # Lorg/achartengine/renderer/DefaultRenderer;
    .param p3, "right"    # I
    .param p4, "width"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 183
    int-to-float v3, p3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    move v0, v1

    .line 184
    .local v0, "exceed":Z
    :goto_0
    invoke-virtual {p0, p2}, Lorg/achartengine/chart/AbstractChart;->isVertical(Lorg/achartengine/renderer/DefaultRenderer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    int-to-float v3, p4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    move v0, v1

    .line 187
    :cond_0
    :goto_1
    return v0

    .end local v0    # "exceed":Z
    :cond_1
    move v0, v2

    .line 183
    goto :goto_0

    .restart local v0    # "exceed":Z
    :cond_2
    move v0, v2

    .line 185
    goto :goto_1
.end method

.method protected getLabel(Ljava/text/NumberFormat;D)Ljava/lang/String;
    .locals 4
    .param p1, "format"    # Ljava/text/NumberFormat;
    .param p2, "label"    # D

    .prologue
    .line 210
    const-string v0, ""

    .line 211
    .local v0, "text":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 212
    invoke-virtual {p1, p2, p3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 218
    :goto_0
    return-object v0

    .line 213
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-double v1, v1

    cmpl-double v1, p2, v1

    if-nez v1, :cond_1

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 216
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract getLegendShapeWidth(I)I
.end method

.method protected getLegendSize(Lorg/achartengine/renderer/DefaultRenderer;IF)I
    .locals 3
    .param p1, "renderer"    # Lorg/achartengine/renderer/DefaultRenderer;
    .param p2, "defaultHeight"    # I
    .param p3, "extraHeight"    # F

    .prologue
    .line 426
    invoke-virtual {p1}, Lorg/achartengine/renderer/DefaultRenderer;->getLegendHeight()I

    move-result v0

    .line 427
    .local v0, "legendSize":I
    invoke-virtual {p1}, Lorg/achartengine/renderer/DefaultRenderer;->isShowLegend()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 428
    move v0, p2

    .line 430
    :cond_0
    invoke-virtual {p1}, Lorg/achartengine/renderer/DefaultRenderer;->isShowLegend()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/achartengine/renderer/DefaultRenderer;->isShowLabels()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    invoke-virtual {p1}, Lorg/achartengine/renderer/DefaultRenderer;->getLabelsTextSize()F

    move-result v1

    const/high16 v2, 0x40800000

    mul-float/2addr v1, v2

    const/high16 v2, 0x40400000

    div-float/2addr v1, v2

    add-float/2addr v1, p3

    float-to-int v0, v1

    .line 433
    :cond_1
    return v0
.end method

.method public getSeriesAndPointForScreenCoordinate(Lorg/achartengine/model/Point;)Lorg/achartengine/model/SeriesSelection;
    .locals 1
    .param p1, "screenPoint"    # Lorg/achartengine/model/Point;

    .prologue
    .line 526
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNullValue(D)Z
    .locals 2
    .param p1, "value"    # D

    .prologue
    .line 514
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fefffffffffffffL

    cmpl-double v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVertical(Lorg/achartengine/renderer/DefaultRenderer;)Z
    .locals 2
    .param p1, "renderer"    # Lorg/achartengine/renderer/DefaultRenderer;

    .prologue
    .line 197
    instance-of v0, p1, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .end local p1    # "renderer":Lorg/achartengine/renderer/DefaultRenderer;
    invoke-virtual {p1}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getOrientation()Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    move-result-object v0

    sget-object v1, Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;->VERTICAL:Lorg/achartengine/renderer/XYMultipleSeriesRenderer$Orientation;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

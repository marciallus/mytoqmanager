.class public Lorg/achartengine/TouchHandler;
.super Ljava/lang/Object;
.source "TouchHandler.java"

# interfaces
.implements Lorg/achartengine/ITouchHandler;


# instance fields
.field private graphicalView:Lorg/achartengine/GraphicalView;

.field private mPan:Lorg/achartengine/tools/Pan;

.field private mPinchZoom:Lorg/achartengine/tools/Zoom;

.field private mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

.field private oldX:F

.field private oldX2:F

.field private oldY:F

.field private oldY2:F

.field private zoomR:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lorg/achartengine/GraphicalView;Lorg/achartengine/chart/AbstractChart;)V
    .locals 3
    .param p1, "view"    # Lorg/achartengine/GraphicalView;
    .param p2, "chart"    # Lorg/achartengine/chart/AbstractChart;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/achartengine/TouchHandler;->zoomR:Landroid/graphics/RectF;

    .line 60
    iput-object p1, p0, Lorg/achartengine/TouchHandler;->graphicalView:Lorg/achartengine/GraphicalView;

    .line 61
    iget-object v0, p0, Lorg/achartengine/TouchHandler;->graphicalView:Lorg/achartengine/GraphicalView;

    invoke-virtual {v0}, Lorg/achartengine/GraphicalView;->getZoomRectangle()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lorg/achartengine/TouchHandler;->zoomR:Landroid/graphics/RectF;

    .line 62
    instance-of v0, p2, Lorg/achartengine/chart/XYChart;

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 63
    check-cast v0, Lorg/achartengine/chart/XYChart;

    invoke-virtual {v0}, Lorg/achartengine/chart/XYChart;->getRenderer()Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-result-object v0

    iput-object v0, p0, Lorg/achartengine/TouchHandler;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    .line 67
    :goto_0
    iget-object v0, p0, Lorg/achartengine/TouchHandler;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/DefaultRenderer;->isPanEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lorg/achartengine/tools/Pan;

    invoke-direct {v0, p2}, Lorg/achartengine/tools/Pan;-><init>(Lorg/achartengine/chart/AbstractChart;)V

    iput-object v0, p0, Lorg/achartengine/TouchHandler;->mPan:Lorg/achartengine/tools/Pan;

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/achartengine/TouchHandler;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v0}, Lorg/achartengine/renderer/DefaultRenderer;->isZoomEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Lorg/achartengine/tools/Zoom;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000

    invoke-direct {v0, p2, v1, v2}, Lorg/achartengine/tools/Zoom;-><init>(Lorg/achartengine/chart/AbstractChart;ZF)V

    iput-object v0, p0, Lorg/achartengine/TouchHandler;->mPinchZoom:Lorg/achartengine/tools/Zoom;

    .line 73
    :cond_1
    return-void

    :cond_2
    move-object v0, p2

    .line 65
    check-cast v0, Lorg/achartengine/chart/RoundChart;

    invoke-virtual {v0}, Lorg/achartengine/chart/RoundChart;->getRenderer()Lorg/achartengine/renderer/DefaultRenderer;

    move-result-object v0

    iput-object v0, p0, Lorg/achartengine/TouchHandler;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    goto :goto_0
.end method

.method private applyZoom(FI)V
    .locals 4
    .param p1, "zoomRate"    # F
    .param p2, "axis"    # I

    .prologue
    .line 155
    const v0, 0x3f666666

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 156
    const v0, 0x3f8ccccd

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 157
    float-to-double v0, p1

    const-wide v2, 0x3feccccccccccccdL

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    float-to-double v0, p1

    const-wide v2, 0x3ff199999999999aL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/achartengine/TouchHandler;->mPinchZoom:Lorg/achartengine/tools/Zoom;

    invoke-virtual {v0, p1}, Lorg/achartengine/tools/Zoom;->setZoomRate(F)V

    .line 159
    iget-object v0, p0, Lorg/achartengine/TouchHandler;->mPinchZoom:Lorg/achartengine/tools/Zoom;

    invoke-virtual {v0, p2}, Lorg/achartengine/tools/Zoom;->apply(I)V

    .line 161
    :cond_0
    return-void
.end method


# virtual methods
.method public addPanListener(Lorg/achartengine/tools/PanListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/achartengine/tools/PanListener;

    .prologue
    .line 191
    iget-object v0, p0, Lorg/achartengine/TouchHandler;->mPan:Lorg/achartengine/tools/Pan;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lorg/achartengine/TouchHandler;->mPan:Lorg/achartengine/tools/Pan;

    invoke-virtual {v0, p1}, Lorg/achartengine/tools/Pan;->addPanListener(Lorg/achartengine/tools/PanListener;)V

    .line 194
    :cond_0
    return-void
.end method

.method public addZoomListener(Lorg/achartengine/tools/ZoomListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/achartengine/tools/ZoomListener;

    .prologue
    .line 169
    iget-object v0, p0, Lorg/achartengine/TouchHandler;->mPinchZoom:Lorg/achartengine/tools/Zoom;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lorg/achartengine/TouchHandler;->mPinchZoom:Lorg/achartengine/tools/Zoom;

    invoke-virtual {v0, p1}, Lorg/achartengine/tools/Zoom;->addZoomListener(Lorg/achartengine/tools/ZoomListener;)V

    .line 172
    :cond_0
    return-void
.end method

.method public handleTouch(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 81
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 82
    .local v1, "action":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/achartengine/TouchHandler;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    if-eqz v13, :cond_7

    const/4 v13, 0x2

    if-ne v1, v13, :cond_7

    .line 83
    move-object/from16 v0, p0

    iget v13, v0, Lorg/achartengine/TouchHandler;->oldX:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-gez v13, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lorg/achartengine/TouchHandler;->oldY:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_c

    .line 84
    :cond_0
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 85
    .local v4, "newX":F
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 86
    .local v6, "newY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_6

    move-object/from16 v0, p0

    iget v13, v0, Lorg/achartengine/TouchHandler;->oldX2:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-gez v13, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lorg/achartengine/TouchHandler;->oldY2:F

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_6

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/achartengine/TouchHandler;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v13}, Lorg/achartengine/renderer/DefaultRenderer;->isZoomEnabled()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 87
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 88
    .local v5, "newX2":F
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 89
    .local v7, "newY2":F
    sub-float v13, v4, v5

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 90
    .local v2, "newDeltaX":F
    sub-float v13, v6, v7

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 91
    .local v3, "newDeltaY":F
    move-object/from16 v0, p0

    iget v13, v0, Lorg/achartengine/TouchHandler;->oldX:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/achartengine/TouchHandler;->oldX2:F

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 92
    .local v8, "oldDeltaX":F
    move-object/from16 v0, p0

    iget v13, v0, Lorg/achartengine/TouchHandler;->oldY:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/achartengine/TouchHandler;->oldY2:F

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 93
    .local v9, "oldDeltaY":F
    const/high16 v12, 0x3f800000

    .line 95
    .local v12, "zoomRate":F
    move-object/from16 v0, p0

    iget v13, v0, Lorg/achartengine/TouchHandler;->oldY:F

    sub-float v13, v6, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/achartengine/TouchHandler;->oldX:F

    sub-float v14, v4, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    div-float v10, v13, v14

    .line 96
    .local v10, "tan1":F
    move-object/from16 v0, p0

    iget v13, v0, Lorg/achartengine/TouchHandler;->oldY2:F

    sub-float v13, v7, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/achartengine/TouchHandler;->oldX2:F

    sub-float v14, v5, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    div-float v11, v13, v14

    .line 97
    .local v11, "tan2":F
    float-to-double v13, v10

    const-wide/high16 v15, 0x3fd0000000000000L

    cmpg-double v13, v13, v15

    if-gtz v13, :cond_3

    float-to-double v13, v11

    const-wide/high16 v15, 0x3fd0000000000000L

    cmpg-double v13, v13, v15

    if-gtz v13, :cond_3

    .line 100
    div-float v12, v2, v8

    .line 101
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lorg/achartengine/TouchHandler;->applyZoom(FI)V

    .line 116
    :goto_0
    move-object/from16 v0, p0

    iput v5, v0, Lorg/achartengine/TouchHandler;->oldX2:F

    .line 117
    move-object/from16 v0, p0

    iput v7, v0, Lorg/achartengine/TouchHandler;->oldY2:F

    .line 123
    .end local v2    # "newDeltaX":F
    .end local v3    # "newDeltaY":F
    .end local v5    # "newX2":F
    .end local v7    # "newY2":F
    .end local v8    # "oldDeltaX":F
    .end local v9    # "oldDeltaY":F
    .end local v10    # "tan1":F
    .end local v11    # "tan2":F
    .end local v12    # "zoomRate":F
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iput v4, v0, Lorg/achartengine/TouchHandler;->oldX:F

    .line 124
    move-object/from16 v0, p0

    iput v6, v0, Lorg/achartengine/TouchHandler;->oldY:F

    .line 125
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/achartengine/TouchHandler;->graphicalView:Lorg/achartengine/GraphicalView;

    invoke-virtual {v13}, Lorg/achartengine/GraphicalView;->repaint()V

    .line 126
    const/4 v13, 0x1

    .line 151
    .end local v4    # "newX":F
    .end local v6    # "newY":F
    :goto_2
    return v13

    .line 102
    .restart local v2    # "newDeltaX":F
    .restart local v3    # "newDeltaY":F
    .restart local v4    # "newX":F
    .restart local v5    # "newX2":F
    .restart local v6    # "newY":F
    .restart local v7    # "newY2":F
    .restart local v8    # "oldDeltaX":F
    .restart local v9    # "oldDeltaY":F
    .restart local v10    # "tan1":F
    .restart local v11    # "tan2":F
    .restart local v12    # "zoomRate":F
    :cond_3
    float-to-double v13, v10

    const-wide v15, 0x400dd70a3d70a3d7L

    cmpl-double v13, v13, v15

    if-ltz v13, :cond_4

    float-to-double v13, v11

    const-wide v15, 0x400dd70a3d70a3d7L

    cmpl-double v13, v13, v15

    if-ltz v13, :cond_4

    .line 105
    div-float v12, v3, v9

    .line 106
    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lorg/achartengine/TouchHandler;->applyZoom(FI)V

    goto :goto_0

    .line 109
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lorg/achartengine/TouchHandler;->oldX:F

    sub-float v13, v4, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/achartengine/TouchHandler;->oldY:F

    sub-float v14, v6, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_5

    .line 110
    div-float v12, v2, v8

    .line 114
    :goto_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lorg/achartengine/TouchHandler;->applyZoom(FI)V

    goto :goto_0

    .line 112
    :cond_5
    div-float v12, v3, v9

    goto :goto_3

    .line 118
    .end local v2    # "newDeltaX":F
    .end local v3    # "newDeltaY":F
    .end local v5    # "newX2":F
    .end local v7    # "newY2":F
    .end local v8    # "oldDeltaX":F
    .end local v9    # "oldDeltaY":F
    .end local v10    # "tan1":F
    .end local v11    # "tan2":F
    .end local v12    # "zoomRate":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/achartengine/TouchHandler;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v13}, Lorg/achartengine/renderer/DefaultRenderer;->isPanEnabled()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 119
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/achartengine/TouchHandler;->mPan:Lorg/achartengine/tools/Pan;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/achartengine/TouchHandler;->oldX:F

    move-object/from16 v0, p0

    iget v15, v0, Lorg/achartengine/TouchHandler;->oldY:F

    invoke-virtual {v13, v14, v15, v4, v6}, Lorg/achartengine/tools/Pan;->apply(FFFF)V

    .line 120
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/achartengine/TouchHandler;->oldX2:F

    .line 121
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/achartengine/TouchHandler;->oldY2:F

    goto :goto_1

    .line 128
    .end local v4    # "newX":F
    .end local v6    # "newY":F
    :cond_7
    if-nez v1, :cond_a

    .line 129
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lorg/achartengine/TouchHandler;->oldX:F

    .line 130
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lorg/achartengine/TouchHandler;->oldY:F

    .line 131
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/achartengine/TouchHandler;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/achartengine/TouchHandler;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v13}, Lorg/achartengine/renderer/DefaultRenderer;->isZoomEnabled()Z

    move-result v13

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/achartengine/TouchHandler;->zoomR:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/achartengine/TouchHandler;->oldX:F

    move-object/from16 v0, p0

    iget v15, v0, Lorg/achartengine/TouchHandler;->oldY:F

    invoke-virtual {v13, v14, v15}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 132
    move-object/from16 v0, p0

    iget v13, v0, Lorg/achartengine/TouchHandler;->oldX:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/achartengine/TouchHandler;->zoomR:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/achartengine/TouchHandler;->zoomR:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v15

    const/high16 v16, 0x40400000

    div-float v15, v15, v16

    add-float/2addr v14, v15

    cmpg-float v13, v13, v14

    if-gez v13, :cond_8

    .line 133
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/achartengine/TouchHandler;->graphicalView:Lorg/achartengine/GraphicalView;

    invoke-virtual {v13}, Lorg/achartengine/GraphicalView;->zoomIn()V

    .line 139
    :goto_4
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 134
    :cond_8
    move-object/from16 v0, p0

    iget v13, v0, Lorg/achartengine/TouchHandler;->oldX:F

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/achartengine/TouchHandler;->zoomR:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/achartengine/TouchHandler;->zoomR:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v15

    const/high16 v16, 0x40000000

    mul-float v15, v15, v16

    const/high16 v16, 0x40400000

    div-float v15, v15, v16

    add-float/2addr v14, v15

    cmpg-float v13, v13, v14

    if-gez v13, :cond_9

    .line 135
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/achartengine/TouchHandler;->graphicalView:Lorg/achartengine/GraphicalView;

    invoke-virtual {v13}, Lorg/achartengine/GraphicalView;->zoomOut()V

    goto :goto_4

    .line 137
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/achartengine/TouchHandler;->graphicalView:Lorg/achartengine/GraphicalView;

    invoke-virtual {v13}, Lorg/achartengine/GraphicalView;->zoomReset()V

    goto :goto_4

    .line 141
    :cond_a
    const/4 v13, 0x1

    if-eq v1, v13, :cond_b

    const/4 v13, 0x6

    if-ne v1, v13, :cond_c

    .line 142
    :cond_b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/achartengine/TouchHandler;->oldX:F

    .line 143
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/achartengine/TouchHandler;->oldY:F

    .line 144
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/achartengine/TouchHandler;->oldX2:F

    .line 145
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/achartengine/TouchHandler;->oldY2:F

    .line 146
    const/4 v13, 0x6

    if-ne v1, v13, :cond_c

    .line 147
    const/high16 v13, -0x40800000

    move-object/from16 v0, p0

    iput v13, v0, Lorg/achartengine/TouchHandler;->oldX:F

    .line 148
    const/high16 v13, -0x40800000

    move-object/from16 v0, p0

    iput v13, v0, Lorg/achartengine/TouchHandler;->oldY:F

    .line 151
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/achartengine/TouchHandler;->mRenderer:Lorg/achartengine/renderer/DefaultRenderer;

    invoke-virtual {v13}, Lorg/achartengine/renderer/DefaultRenderer;->isClickEnabled()Z

    move-result v13

    if-nez v13, :cond_d

    const/4 v13, 0x1

    goto/16 :goto_2

    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_2
.end method

.method public removePanListener(Lorg/achartengine/tools/PanListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/achartengine/tools/PanListener;

    .prologue
    .line 202
    iget-object v0, p0, Lorg/achartengine/TouchHandler;->mPan:Lorg/achartengine/tools/Pan;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lorg/achartengine/TouchHandler;->mPan:Lorg/achartengine/tools/Pan;

    invoke-virtual {v0, p1}, Lorg/achartengine/tools/Pan;->removePanListener(Lorg/achartengine/tools/PanListener;)V

    .line 205
    :cond_0
    return-void
.end method

.method public removeZoomListener(Lorg/achartengine/tools/ZoomListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/achartengine/tools/ZoomListener;

    .prologue
    .line 180
    iget-object v0, p0, Lorg/achartengine/TouchHandler;->mPinchZoom:Lorg/achartengine/tools/Zoom;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lorg/achartengine/TouchHandler;->mPinchZoom:Lorg/achartengine/tools/Zoom;

    invoke-virtual {v0, p1}, Lorg/achartengine/tools/Zoom;->removeZoomListener(Lorg/achartengine/tools/ZoomListener;)V

    .line 183
    :cond_0
    return-void
.end method

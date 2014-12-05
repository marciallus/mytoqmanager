.class public Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;
.super Landroid/widget/ListView;
.source "TouchInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;,
        Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;,
        Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DragListener;
    }
.end annotation


# static fields
.field private static final FLING:I = 0x0

.field private static final SLIDE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TouchInterceptor"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoordOffset:I

.field private mDragListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DragListener;

.field private mDragPoint:I

.field private mDragPos:I

.field private mDragView:Landroid/view/View;

.field private mDropListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;

.field private mFirstDragPos:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHeight:I

.field private mLowerBound:I

.field private mRemoveListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;

.field private mRemoveMode:I

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchSlop:I

.field private mUpperBound:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput v3, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mRemoveMode:I

    .line 57
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 64
    const-string v1, "Music"

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 65
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "deletemode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mRemoveMode:I

    .line 66
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mTouchSlop:I

    .line 67
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->stopDragging()V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;

    .prologue
    .line 36
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mFirstDragPos:I

    return v0
.end method

.method static synthetic access$400(Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;)Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mRemoveListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->unExpandViews(Z)V

    return-void
.end method

.method private adjustScrollBounds(I)V
    .locals 1
    .param p1, "y"    # I

    .prologue
    .line 212
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_0

    .line 213
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mUpperBound:I

    .line 215
    :cond_0
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1

    .line 216
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mLowerBound:I

    .line 218
    :cond_1
    return-void
.end method

.method private doExpansion()V
    .locals 9

    .prologue
    .line 260
    iget v7, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v8

    sub-int v0, v7, v8

    .line 261
    .local v0, "childnum":I
    iget v7, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragPos:I

    iget v8, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mFirstDragPos:I

    if-le v7, v8, :cond_0

    .line 262
    add-int/lit8 v0, v0, 0x1

    .line 265
    :cond_0
    iget v7, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mFirstDragPos:I

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 267
    .local v1, "first":Landroid/view/View;
    const/4 v3, 0x0

    .line 268
    .local v3, "i":I
    :goto_0
    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 269
    .local v6, "vv":Landroid/view/View;
    if-nez v6, :cond_1

    .line 296
    return-void

    .line 273
    :cond_1
    const/4 v2, -0x1

    .line 274
    .local v2, "height":I
    const/4 v5, 0x0

    .line 275
    .local v5, "visibility":I
    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 277
    iget v7, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragPos:I

    iget v8, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mFirstDragPos:I

    if-ne v7, v8, :cond_3

    .line 279
    const/4 v5, 0x4

    .line 291
    :cond_2
    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 292
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 293
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 267
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 283
    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 286
    :cond_4
    if-ne v3, v0, :cond_2

    .line 287
    iget v7, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_2

    .line 288
    const/16 v2, 0x80

    goto :goto_1
.end method

.method private dragView(II)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 405
    iget v2, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mRemoveMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 406
    const/high16 v0, 0x3f800000

    .line 407
    .local v0, "alpha":F
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 408
    .local v1, "width":I
    div-int/lit8 v2, v1, 0x2

    if-le p1, v2, :cond_0

    .line 409
    sub-int v2, v1, p1

    int-to-float v2, v2

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 411
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 413
    .end local v0    # "alpha":F
    .end local v1    # "width":I
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragPoint:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mCoordOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 414
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragView:Landroid/view/View;

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    return-void
.end method

.method private getItemForPosition(I)I
    .locals 3
    .param p1, "y"    # I

    .prologue
    .line 198
    iget v2, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragPoint:I

    sub-int v2, p1, v2

    add-int/lit8 v0, v2, -0x20

    .line 199
    .local v0, "adjustedy":I
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->myPointToPosition(II)I

    move-result v1

    .line 200
    .local v1, "pos":I
    if-ltz v1, :cond_1

    .line 201
    iget v2, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mFirstDragPos:I

    if-gt v1, v2, :cond_0

    .line 202
    add-int/lit8 v1, v1, 0x1

    .line 208
    :cond_0
    :goto_0
    return v1

    .line 205
    :cond_1
    if-gez v0, :cond_0

    .line 206
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private myPointToPosition(II)I
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 185
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 186
    .local v2, "frame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->getChildCount()I

    move-result v1

    .line 187
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 188
    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 189
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 190
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v4

    add-int/2addr v4, v3

    .line 194
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return v4

    .line 187
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 194
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private startDragging(Landroid/graphics/Bitmap;I)V
    .locals 6
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 380
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 381
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x30

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 382
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 383
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragPoint:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mCoordOffset:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 385
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 386
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 387
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x198

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 391
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 392
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 394
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 396
    .local v0, "v":Landroid/widget/ImageView;
    const-string v1, "#66181e1e"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 397
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 399
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    .line 400
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragView:Landroid/view/View;

    .line 402
    return-void
.end method

.method private stopDragging()V
    .locals 3

    .prologue
    .line 418
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 419
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 420
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragView:Landroid/view/View;

    .line 421
    return-void
.end method

.method private unExpandViews(Z)V
    .locals 7
    .param p1, "deletion"    # Z

    .prologue
    const/4 v6, 0x0

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 226
    .local v3, "v":Landroid/view/View;
    if-nez v3, :cond_1

    .line 227
    if-eqz p1, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v2

    .line 230
    .local v2, "position":I
    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 231
    .local v4, "y":I
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 233
    invoke-virtual {p0, v2, v4}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->setSelectionFromTop(II)V

    .line 236
    .end local v2    # "position":I
    .end local v4    # "y":I
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->layoutChildren()V

    .line 237
    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 238
    if-nez v3, :cond_1

    .line 248
    return-void

    .line 242
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 244
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v5, -0x1

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 245
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    .line 72
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mRemoveListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v11, :cond_0

    .line 73
    iget v11, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mRemoveMode:I

    if-nez v11, :cond_0

    .line 74
    new-instance v11, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->getContext()Landroid/content/Context;

    move-result-object v12

    new-instance v13, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$1;

    invoke-direct {v13, p0}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$1;-><init>(Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;)V

    invoke-direct {v11, v12, v13}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v11, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    .line 116
    :cond_0
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DragListener;

    if-nez v11, :cond_1

    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDropListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;

    if-eqz v11, :cond_2

    .line 117
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 177
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    :goto_1
    return v10

    .line 119
    :pswitch_0
    const-string v11, "TouchInterceptor"

    const-string v12, " ACTION_DOWN"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v8, v11

    .line 121
    .local v8, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v9, v11

    .line 122
    .local v9, "y":I
    invoke-virtual {p0, v8, v9}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->pointToPosition(II)I

    move-result v4

    .line 123
    .local v4, "itemnum":I
    const/4 v11, -0x1

    if-ne v4, v11, :cond_3

    .line 124
    const-string v10, "TouchInterceptor"

    const-string v11, " INVALID_POSITION"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_3
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v11

    sub-int v11, v4, v11

    invoke-virtual {p0, v11}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 129
    .local v3, "item":Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v11

    sub-int v11, v9, v11

    iput v11, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragPoint:I

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    float-to-int v11, v11

    sub-int/2addr v11, v9

    iput v11, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mCoordOffset:I

    .line 131
    const v11, 0x7f09008a

    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 132
    .local v1, "dragger":Landroid/view/View;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_4

    .line 134
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 135
    .local v5, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->getWidth()I

    move-result v6

    .line 136
    .local v6, "screenWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 138
    .local v2, "imageWidth":I
    const-string v11, "TouchInterceptor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " x is :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v11, "TouchInterceptor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " y is :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v11, "TouchInterceptor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " screenWidth is :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v11, "TouchInterceptor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " imageWidth is :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1, v5}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 143
    sub-int v11, v6, v2

    if-le v8, v11, :cond_5

    .line 144
    const-string v11, "TouchInterceptor"

    const-string v12, " ACTION_DOWN 2222"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 151
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 152
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v9}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->startDragging(Landroid/graphics/Bitmap;I)V

    .line 153
    iput v4, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragPos:I

    .line 154
    iget v11, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragPos:I

    iput v11, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mFirstDragPos:I

    .line 155
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->getHeight()I

    move-result v11

    iput v11, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mHeight:I

    .line 156
    iget v7, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mTouchSlop:I

    .line 157
    .local v7, "touchSlop":I
    sub-int v11, v9, v7

    iget v12, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mHeight:I

    div-int/lit8 v12, v12, 0x3

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mUpperBound:I

    .line 158
    add-int v11, v9, v7

    iget v12, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mHeight:I

    mul-int/lit8 v12, v12, 0x2

    div-int/lit8 v12, v12, 0x3

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mLowerBound:I

    .line 160
    const-string v11, "TouchInterceptor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " mHeight is :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mHeight:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v11, "TouchInterceptor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " mFirstDragPos is :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mFirstDragPos:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v11, "TouchInterceptor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " mUpperBoundis :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mUpperBound:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v11, "TouchInterceptor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " mLowerBound is :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mLowerBound:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    goto/16 :goto_1

    .line 170
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "imageWidth":I
    .end local v5    # "r":Landroid/graphics/Rect;
    .end local v6    # "screenWidth":I
    .end local v7    # "touchSlop":I
    :cond_4
    const-string v11, "TouchInterceptor"

    const-string v12, "View Not Visible so not doing any work"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 173
    .restart local v2    # "imageWidth":I
    .restart local v5    # "r":Landroid/graphics/Rect;
    .restart local v6    # "screenWidth":I
    :cond_5
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragView:Landroid/view/View;

    goto/16 :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v13, 0x0

    .line 300
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v10, :cond_0

    .line 301
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v10, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 303
    :cond_0
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DragListener;

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDropListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;

    if-eqz v10, :cond_e

    :cond_1
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragView:Landroid/view/View;

    if-eqz v10, :cond_e

    .line 305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 306
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 376
    .end local v0    # "action":I
    :cond_2
    :goto_0
    return v9

    .line 309
    .restart local v0    # "action":I
    :pswitch_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 310
    .local v3, "r":Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragView:Landroid/view/View;

    invoke-virtual {v10, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 311
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->stopDragging()V

    .line 312
    iget v10, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mRemoveMode:I

    if-ne v10, v9, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget v11, v3, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v11, v11, 0x3

    div-int/lit8 v11, v11, 0x4

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_4

    .line 313
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mRemoveListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;

    if-eqz v10, :cond_3

    .line 314
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mRemoveListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;

    iget v11, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mFirstDragPos:I

    invoke-interface {v10, v11}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;->remove(I)V

    .line 316
    :cond_3
    invoke-direct {p0, v9}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->unExpandViews(Z)V

    goto :goto_0

    .line 319
    :cond_4
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDropListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;

    if-eqz v10, :cond_5

    iget v10, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragPos:I

    if-ltz v10, :cond_5

    iget v10, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->getCount()I

    move-result v11

    if-ge v10, v11, :cond_5

    .line 321
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDropListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;

    iget v11, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mFirstDragPos:I

    iget v12, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragPos:I

    invoke-interface {v10, v11, v12}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;->drop(II)V

    .line 323
    :cond_5
    invoke-direct {p0, v13}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->unExpandViews(Z)V

    goto :goto_0

    .line 329
    .end local v3    # "r":Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v7, v10

    .line 330
    .local v7, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v8, v10

    .line 331
    .local v8, "y":I
    invoke-direct {p0, v7, v8}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->dragView(II)V

    .line 332
    invoke-direct {p0, v8}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->getItemForPosition(I)I

    move-result v1

    .line 333
    .local v1, "itemnum":I
    if-ltz v1, :cond_2

    .line 334
    if-eqz v0, :cond_6

    iget v10, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragPos:I

    if-eq v1, v10, :cond_8

    .line 336
    :cond_6
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DragListener;

    if-eqz v10, :cond_7

    .line 337
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DragListener;

    iget v11, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragPos:I

    invoke-interface {v10, v11, v1}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DragListener;->drag(II)V

    .line 339
    :cond_7
    iput v1, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragPos:I

    .line 340
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->doExpansion()V

    .line 342
    :cond_8
    const/4 v5, 0x0

    .line 343
    .local v5, "speed":I
    invoke-direct {p0, v8}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->adjustScrollBounds(I)V

    .line 344
    iget v10, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mLowerBound:I

    if-le v8, v10, :cond_c

    .line 346
    iget v10, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mHeight:I

    iget v11, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mLowerBound:I

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    if-le v8, v10, :cond_b

    const/16 v5, 0x10

    .line 352
    :cond_9
    :goto_1
    if-eqz v5, :cond_2

    .line 353
    iget v10, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mHeight:I

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {p0, v13, v10}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->pointToPosition(II)I

    move-result v4

    .line 354
    .local v4, "ref":I
    const/4 v10, -0x1

    if-ne v4, v10, :cond_a

    .line 359
    iget v10, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mHeight:I

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->getDividerHeight()I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p0, v13, v10}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->pointToPosition(II)I

    move-result v4

    .line 365
    :cond_a
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v10

    sub-int v10, v4, v10

    invoke-virtual {p0, v10}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 366
    .local v6, "v":Landroid/view/View;
    if-eqz v6, :cond_2

    .line 367
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    .line 368
    .local v2, "pos":I
    sub-int v10, v2, v5

    invoke-virtual {p0, v4, v10}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 346
    .end local v2    # "pos":I
    .end local v4    # "ref":I
    .end local v6    # "v":Landroid/view/View;
    :cond_b
    const/4 v5, 0x4

    goto :goto_1

    .line 348
    :cond_c
    iget v10, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mUpperBound:I

    if-ge v8, v10, :cond_9

    .line 350
    iget v10, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mUpperBound:I

    div-int/lit8 v10, v10, 0x2

    if-ge v8, v10, :cond_d

    const/16 v5, -0x10

    :goto_2
    goto :goto_1

    :cond_d
    const/4 v5, -0x4

    goto :goto_2

    .line 376
    .end local v0    # "action":I
    .end local v1    # "itemnum":I
    .end local v5    # "speed":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_0

    .line 306
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDragListener(Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DragListener;)V
    .locals 0
    .param p1, "l"    # Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DragListener;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DragListener;

    .line 425
    return-void
.end method

.method public setDropListener(Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;)V
    .locals 0
    .param p1, "l"    # Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDropListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;

    .line 429
    return-void
.end method

.method public setRemoveListener(Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;)V
    .locals 0
    .param p1, "l"    # Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mRemoveListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;

    .line 433
    return-void
.end method

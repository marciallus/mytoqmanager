.class Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TouchInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v1, 0x1

    .line 81
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragView:Landroid/view/View;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->access$000(Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 82
    const/high16 v2, 0x447a0000

    cmpl-float v2, p3, v2

    if-lez v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->access$100(Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;)Landroid/graphics/Rect;

    move-result-object v0

    .line 84
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mDragView:Landroid/view/View;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->access$000(Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 85
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;

    # invokes: Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->stopDragging()V
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->access$200(Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;)V

    .line 99
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mRemoveListener:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->access$400(Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;)Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->mFirstDragPos:I
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->access$300(Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;->remove(I)V

    .line 100
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;

    # invokes: Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->unExpandViews(Z)V
    invoke-static {v2, v1}, Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;->access$500(Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor;Z)V

    .line 111
    .end local v0    # "r":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.class Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;)V
    .locals 0

    .prologue
    .line 2230
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4$4;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2234
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4$4;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getHideHeadsetCardDialog()Landroid/app/Dialog;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$1900(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2235
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4$4;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getHideHeadsetCardDialog()Landroid/app/Dialog;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$1900(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2237
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4$4;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getHeadsetWelcomeCard()Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$2000(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4$4;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;

    iget-object v1, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mAnimationBlur:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2238
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4$4;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mUiAnimationHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4$4$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4$4$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4$4;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2257
    return-void
.end method

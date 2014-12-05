.class Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$19;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 5582
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$19;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "paramDialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 5587
    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5591
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$19;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$4900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5592
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$19;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$4900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 5593
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$19;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    const/4 v2, 0x0

    # setter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;
    invoke-static {v1, v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$4902(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 5595
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$19;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaLoadingProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$19;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaLoadingProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5597
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$19;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaLoadingProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 5599
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$19;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissActivity()V
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 5603
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

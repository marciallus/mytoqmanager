.class Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5$2;
.super Ljava/lang/Object;
.source "QuickReplyListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5$2;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5$2;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mEditText:Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;->setEnabled(Z)V

    .line 526
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5$2;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5$2;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;

    iget-object v1, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mEditText:Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 527
    return-void
.end method

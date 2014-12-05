.class Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$4;
.super Ljava/lang/Object;
.source "QuickReplyListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 392
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 393
    .local v1, "resId":I
    packed-switch v1, :pswitch_data_0

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 395
    :pswitch_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mEditText:Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "editTextString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 397
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->saveNewQuickReply(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;Ljava/lang/String;)V

    .line 398
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mNewQRDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 402
    .end local v0    # "editTextString":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mNewQRDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x7f09021e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;
.super Ljava/lang/Object;
.source "QuickReplyListActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isMaxCharactersReached:Z

.field private qrAlertDialog:Landroid/app/AlertDialog;

.field private qrBufferStringBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)V
    .locals 1

    .prologue
    .line 416
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->qrAlertDialog:Landroid/app/AlertDialog;

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->qrBufferStringBuilder:Ljava/lang/StringBuilder;

    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->isMaxCharactersReached:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mEditText:Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->lengthOfQRString:I
    invoke-static {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$602(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;I)I

    .line 429
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->lengthOfQRString:I
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)I

    move-result v0

    const/16 v1, 0xa0

    if-le v0, v1, :cond_0

    .line 430
    const-string v0, "QuickReplyListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The length of string afterTextChanged  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->lengthOfQRString:I
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mNewQRDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 435
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 440
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mEditText:Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->lengthOfQRString:I
    invoke-static {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$602(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;I)I

    .line 442
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->lengthOfQRString:I
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)I

    move-result v0

    const/16 v1, 0xa0

    if-le v0, v1, :cond_0

    .line 443
    const-string v0, "QuickReplyListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The length of string is beforeTextChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->lengthOfQRString:I
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mNewQRDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 448
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 9
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v3, 0x1

    const/16 v8, 0xa0

    const/4 v4, 0x0

    .line 458
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCharacterCountText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 460
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->lengthOfQRString:I
    invoke-static {v2, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$602(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;I)I

    .line 462
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->lengthOfQRString:I
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)I

    move-result v2

    if-lt v2, v8, :cond_0

    iget-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->isMaxCharactersReached:Z

    if-nez v2, :cond_0

    .line 466
    :try_start_0
    const-string v2, "QuickReplyListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inside buffer setting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->lengthOfQRString:I
    invoke-static {v6}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->qrBufferStringBuilder:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->qrBufferStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 470
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->qrBufferStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0xa0

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->isMaxCharactersReached:Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->lengthOfQRString:I
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)I

    move-result v2

    if-le v2, v8, :cond_5

    .line 485
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCharacterCountText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->lengthOfQRString:I
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mNewQRDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 491
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->qrAlertDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_1

    .line 492
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 494
    .local v1, "qrAlertDialogBuilder":Landroid/app/AlertDialog$Builder;
    if-eqz v1, :cond_1

    .line 495
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 496
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0038

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 502
    const-string v2, "OK"

    new-instance v3, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5$1;

    invoke-direct {v3, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 519
    const-string v2, "QuickReplyListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The dialog is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->lengthOfQRString:I
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->qrAlertDialog:Landroid/app/AlertDialog;

    .line 521
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->qrAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 522
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->qrAlertDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5$2;

    invoke-direct {v3, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 532
    .end local v1    # "qrAlertDialogBuilder":Landroid/app/AlertDialog$Builder;
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mEditText:Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCharacterCountText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 533
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->qrBufferStringBuilder:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2

    .line 534
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mEditText:Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->qrBufferStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    :cond_2
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mEditText:Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;->setSelection(I)V

    .line 537
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mEditText:Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;->setEnabled(Z)V

    .line 538
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCharacterCountText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 541
    :cond_3
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->qrAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->qrAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_4

    .line 542
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->qrAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 555
    :cond_4
    :goto_1
    return-void

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v2, "QuickReplyListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Index out of bound exception in Quick Reply Screen "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_0

    .line 545
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_5
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mEditText:Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v8, :cond_6

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->isMaxCharactersReached:Z

    .line 549
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mEditText:Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;->setEnabled(Z)V

    .line 550
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCharacterCountText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->lengthOfQRString:I
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCharacterCountText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    move v2, v4

    .line 545
    goto :goto_2
.end method

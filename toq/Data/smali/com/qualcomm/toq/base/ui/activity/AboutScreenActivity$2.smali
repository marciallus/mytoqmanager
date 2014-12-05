.class Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$2;
.super Ljava/lang/Object;
.source "AboutScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 543
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 545
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 601
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 548
    :pswitch_1
    iget-object v3, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->finish()V

    goto :goto_0

    .line 551
    :pswitch_2
    iget-object v3, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # invokes: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->resetConnection()V
    invoke-static {v3}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$800(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)V

    goto :goto_0

    .line 557
    :pswitch_3
    iget-object v3, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferStatusLoggerAdapter:Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;
    invoke-static {v3}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$900(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 558
    iget-object v3, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferStatusLoggerAdapter:Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;
    invoke-static {v3}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$900(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/ui/adapter/FileTransferStatusAdapter;->getCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 559
    iget-object v3, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # invokes: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->getFileTransferButtonText()Landroid/widget/TextView;
    invoke-static {v3}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$1000(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/widget/TextView;

    move-result-object v3

    const/high16 v4, 0x3f800000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 560
    iget-object v3, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$1100(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 561
    iget-object v3, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$1100(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 563
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mAboutScreenLogsListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$1200(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/widget/ListView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferLayoutCancelImage:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$1300(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 565
    iget-object v3, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mAboutScreenLogsListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$1200(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 566
    iget-object v3, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferLayoutCancelImage:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$1300(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 567
    iget-object v3, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # invokes: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->setAnimationForListView()V
    invoke-static {v3}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$1400(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)V

    goto :goto_0

    .line 574
    :pswitch_4
    iget-object v3, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$1100(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 575
    iget-object v3, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$1100(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 577
    :cond_2
    iget-object v3, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferLayoutCancelImage:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$1300(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mAboutScreenLogsListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$1200(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/widget/ListView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 579
    iget-object v3, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mAboutScreenLogsListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$1200(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/widget/ListView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 580
    iget-object v3, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mFileTransferLayoutCancelImage:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$1300(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 581
    iget-object v3, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # invokes: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->setAnimationForListView()V
    invoke-static {v3}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$1400(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)V

    goto/16 :goto_0

    .line 587
    :pswitch_5
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/qualcomm/toq/base/ui/activity/OpenSourceLicensesWebView;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 589
    .local v2, "openSrcLic":Landroid/content/Intent;
    iget-object v3, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    invoke-virtual {v3, v2}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 593
    .end local v2    # "openSrcLic":Landroid/content/Intent;
    :pswitch_6
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 595
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    invoke-virtual {v3, v1}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 598
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_7
    iget-object v3, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # invokes: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->showLicenseAgreement()V
    invoke-static {v3}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$1500(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)V

    goto/16 :goto_0

    .line 545
    :pswitch_data_0
    .packed-switch 0x7f090003
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

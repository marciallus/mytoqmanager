.class Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$1;
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
    .line 267
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 273
    .local v1, "resId":I
    packed-switch v1, :pswitch_data_0

    .line 313
    :goto_0
    return-void

    .line 275
    :pswitch_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->initiateDoneChanges()V
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)V

    goto :goto_0

    .line 278
    :pswitch_1
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->createNewQRMessage()V
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)V

    goto :goto_0

    .line 304
    :pswitch_2
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Landroid/widget/PopupWindow;

    move-result-object v2

    if-nez v2, :cond_0

    .line 305
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "popUpList":[Ljava/lang/String;
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    new-instance v3, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    invoke-direct {v3, v4}, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;-><init>(Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;)V

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    invoke-virtual {v3, v0, v4}, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;->getPopUpWindow([Ljava/lang/String;Landroid/content/Context;)Landroid/widget/PopupWindow;

    move-result-object v3

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$202(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 310
    .end local v0    # "popUpList":[Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2, p1, v5, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0

    .line 273
    :pswitch_data_0
    .packed-switch 0x7f09024f
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

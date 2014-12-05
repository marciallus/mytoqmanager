.class Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity$1;
.super Ljava/lang/Object;
.source "IconStyleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "overflowMenu"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 137
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    if-nez v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "popUpList":[Ljava/lang/String;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;

    new-instance v2, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;

    invoke-direct {v2, v3}, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;-><init>(Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;)V

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;

    invoke-virtual {v2, v0, v3}, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;->getPopUpWindow([Ljava/lang/String;Landroid/content/Context;)Landroid/widget/PopupWindow;

    move-result-object v2

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->access$002(Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 143
    .end local v0    # "popUpList":[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1, p1, v4, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 145
    return-void
.end method

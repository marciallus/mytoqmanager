.class Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$3;
.super Ljava/lang/Object;
.source "ClockSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "overflowMenu"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 357
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    if-nez v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "popUpList":[Ljava/lang/String;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    new-instance v2, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    invoke-direct {v2, v3}, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;-><init>(Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;)V

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    invoke-virtual {v2, v0, v3}, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;->getPopUpWindow([Ljava/lang/String;Landroid/content/Context;)Landroid/widget/PopupWindow;

    move-result-object v2

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$702(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 363
    .end local v0    # "popUpList":[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1, p1, v4, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 365
    return-void
.end method

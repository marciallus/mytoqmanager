.class Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 3485
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$10;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "overflowMenu"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 3492
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$10;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$3800(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$10;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$3800(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3493
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$10;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$3800(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3516
    :goto_0
    return-void

    .line 3497
    :cond_0
    const/4 v0, 0x0

    .line 3499
    .local v0, "popUpList":[Ljava/lang/String;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$10;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->isHeadsetWelcomeCardHidden()Z
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$3900(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isLeftEPBonded()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isRightEPBonded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3502
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$10;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 3508
    :goto_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$10;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    new-instance v2, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$10;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    invoke-direct {v2, v3}, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;-><init>(Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;)V

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$10;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    invoke-virtual {v2, v0, v3}, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;->getPopUpWindow([Ljava/lang/String;Landroid/content/Context;)Landroid/widget/PopupWindow;

    move-result-object v2

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$3802(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 3514
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$10;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$3800(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1, p1, v4, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0

    .line 3505
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$10;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

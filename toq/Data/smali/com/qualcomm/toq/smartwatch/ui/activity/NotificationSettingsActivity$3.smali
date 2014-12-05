.class Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$3;
.super Ljava/lang/Object;
.source "NotificationSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;)V
    .locals 0

    .prologue
    .line 607
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "overflowMenu"    # Landroid/view/View;

    .prologue
    const v5, 0x7f06000d

    const v3, 0x7f06000c

    const/4 v4, 0x0

    .line 611
    const/4 v0, 0x0

    .line 614
    .local v0, "popUpList":[Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_1

    .line 617
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils;->isNotificationListenerServiceEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 638
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    new-instance v2, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    invoke-direct {v2, v3}, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;-><init>(Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;)V

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    invoke-virtual {v2, v0, v3}, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;->getPopUpWindow([Ljava/lang/String;Landroid/content/Context;)Landroid/widget/PopupWindow;

    move-result-object v2

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->access$102(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 640
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1, p1, v4, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 642
    return-void

    .line 622
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 629
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->isPhubAccessibilityServiceEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 630
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 634
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

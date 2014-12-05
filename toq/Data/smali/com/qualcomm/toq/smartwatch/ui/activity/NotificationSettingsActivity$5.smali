.class Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$5;
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
    .line 663
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 667
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 669
    .local v0, "id":I
    const v1, 0x7f0901b3

    if-ne v0, v1, :cond_1

    .line 670
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    const/4 v2, 0x1

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->isAppsSearchViewShown:Z
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->access$302(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;Z)Z

    .line 680
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->invalidateOptionsMenu()V

    .line 681
    return-void

    .line 672
    :cond_1
    const v1, 0x7f090014

    if-ne v0, v1, :cond_0

    .line 673
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 674
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 678
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    const/4 v2, 0x0

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->isAppsSearchViewShown:Z
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->access$302(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;Z)Z

    goto :goto_0
.end method

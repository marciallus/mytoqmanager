.class Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$12;
.super Ljava/lang/Object;
.source "WeatherListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)V
    .locals 0

    .prologue
    .line 1711
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$12;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$12;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherSearchAsync:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;

    if-eqz v0, :cond_0

    .line 1718
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$12;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherSearchAsync:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;->cancel(Z)Z

    .line 1721
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$12;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherAutoCompListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1722
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$12;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$12;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1723
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$12;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$12;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1726
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$12;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isFinalzed:Z

    .line 1727
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$12;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->invalidateOptionsMenu()V

    .line 1728
    return-void
.end method

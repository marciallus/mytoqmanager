.class Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$8;
.super Ljava/lang/Object;
.source "StockListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)V
    .locals 0

    .prologue
    .line 1366
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockSearchAsync:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;

    if-eqz v0, :cond_0

    .line 1371
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockSearchAsync:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;->cancel(Z)Z

    .line 1373
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    const v1, 0x7f090093

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1374
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1375
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1380
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    const/4 v1, 0x0

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->isFinalzed:Z
    invoke-static {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$302(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;Z)Z

    .line 1382
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->invalidateOptionsMenu()V

    .line 1383
    return-void
.end method

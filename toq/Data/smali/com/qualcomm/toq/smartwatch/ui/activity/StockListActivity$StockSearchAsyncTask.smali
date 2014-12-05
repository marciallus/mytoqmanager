.class Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;
.super Landroid/os/AsyncTask;
.source "StockListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StockSearchAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;
    .param p2, "x1"    # Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;

    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 342
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 360
    const-string v2, "Ambient"

    const-string v3, "StockListActivityStockListActivity-ShowDialogAsyncTask  doInBackground"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v2, "Ambient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StockListActivityStockListActivity- params[0] :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v1, "stocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getAmbientController()Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v2

    aget-object v3, p1, v5

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getAutocompleteResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "autoCompleteResponse":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 367
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getAmbientController()Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->parseAutocompleteResponse(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 372
    :cond_0
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 342
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, "stocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "Ambient"

    const-string v2, "StockListActivityStockListActivity- onPostExecute"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->isFinalzed:Z
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 389
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mAutoStockList:Ljava/util/ArrayList;
    invoke-static {v1, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$102(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 390
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->setItemsList(Ljava/util/ArrayList;)V

    .line 391
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->notifyDataSetChanged()V

    .line 392
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mainListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 400
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mainListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidate()V

    .line 402
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mainListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setClickable(Z)V

    .line 403
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mainListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->addItemListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 410
    :cond_0
    :goto_1
    return-void

    .line 395
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->setItemsList(Ljava/util/ArrayList;)V

    .line 396
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->notifyDataSetChanged()V

    .line 397
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mainListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 348
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 349
    const-string v0, "Ambient"

    const-string v1, "StockListActivityStockListActivity-ShowDialogAsyncTask onPreExecute"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mAutoStockList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$StockSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mAutoStockList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 357
    :cond_0
    return-void
.end method

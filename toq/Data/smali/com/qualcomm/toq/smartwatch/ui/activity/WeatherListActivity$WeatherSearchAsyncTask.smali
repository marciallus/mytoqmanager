.class Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;
.super Landroid/os/AsyncTask;
.source "WeatherListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeatherSearchAsyncTask"
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
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)V
    .locals 0

    .prologue
    .line 839
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;
    .param p2, "x1"    # Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$1;

    .prologue
    .line 839
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 839
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
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
    .line 857
    const-string v2, "Ambient"

    const-string v3, "WeatherListActivity ShowDialogAsyncTask  doInBackground"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 860
    .local v1, "cityNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getAmbientController()Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getAutocompleteResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, "autoCompleteResponse":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 862
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getAmbientController()Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCityMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->parseAutocompleteResponse(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 866
    :cond_0
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 839
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;->onPostExecute(Ljava/util/ArrayList;)V

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
    .line 877
    .local p1, "cities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    iget-boolean v1, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isFinalzed:Z

    if-eqz v1, :cond_0

    .line 878
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 879
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mAutocityEntries:Ljava/util/ArrayList;
    invoke-static {v1, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$802(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 880
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mAutocityEntries:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->setItemsList(Ljava/util/ArrayList;)V

    .line 881
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->notifyDataSetChanged()V

    .line 882
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    iget-object v1, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherAutoCompListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidate()V

    .line 883
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    iget-object v1, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherAutoCompListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setClickable(Z)V

    .line 884
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    iget-object v1, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherAutoCompListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->addItemListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$1200(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 885
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    iget-object v1, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherAutoCompListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 902
    :cond_0
    :goto_0
    return-void

    .line 889
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->setItemsList(Ljava/util/ArrayList;)V

    .line 890
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->notifyDataSetChanged()V

    .line 891
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    iget-object v1, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherAutoCompListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidate()V

    .line 892
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    iget-object v1, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherAutoCompListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setClickable(Z)V

    .line 893
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    iget-object v1, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherAutoCompListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->addItemListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$1200(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 894
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    iget-object v1, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherAutoCompListView:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 898
    :catch_0
    move-exception v0

    .line 899
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 845
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 846
    const-string v0, "Ambient"

    const-string v1, "WeatherListActivity  ShowDialogAsyncTask onPreExecute"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mAutocityEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$WeatherSearchAsyncTask;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mAutocityEntries:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 854
    :cond_0
    return-void
.end method

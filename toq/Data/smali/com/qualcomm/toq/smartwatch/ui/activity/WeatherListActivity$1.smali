.class Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$1;
.super Ljava/lang/Object;
.source "WeatherListActivity.java"

# interfaces
.implements Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;
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
    .line 373
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 10
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 379
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    const/4 v8, 0x1

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isCitySortedDeleted:Z
    invoke-static {v7, v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$102(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;Z)Z

    .line 380
    const-string v7, "Ambient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WeatherListActivity DropListener from = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "to = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->moveListItem(II)V
    invoke-static {v7, p1, p2}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;II)V

    .line 387
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->notifyDataSetChanged()V

    .line 388
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherListView:Landroid/widget/ListView;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->invalidateViews()V

    .line 395
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 396
    const-string v7, "Ambient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WeatherListActivity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 400
    .local v0, "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, "clockImageDestinationLocation":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, "appImageDestinationLocation":Ljava/lang/String;
    const-string v7, "Ambient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WeatherListActivity clockImageDestinationLocation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " appImageDestinationLocation:  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 410
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->updateDestinationLocation(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v7, v2, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 412
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->updateDestinationLocation(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v7, v1, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 415
    const-string v7, "Ambient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WeatherListActivity Destination location is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-virtual {v0, v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setDestinationLocation(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setAppImageDestinationLocation(Ljava/lang/String;)V

    .line 421
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 422
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 395
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 427
    .end local v0    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v1    # "appImageDestinationLocation":Ljava/lang/String;
    .end local v2    # "clockImageDestinationLocation":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    const-string v8, "ambient__pref"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 429
    .local v6, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 431
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    const-string v7, "WeatherCitiesCopy"

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :goto_1
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 438
    return-void

    .line 434
    :catch_0
    move-exception v3

    .line 435
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

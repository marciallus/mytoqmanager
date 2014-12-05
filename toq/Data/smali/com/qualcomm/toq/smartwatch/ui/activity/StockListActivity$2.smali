.class Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$2;
.super Ljava/lang/Object;
.source "StockListActivity.java"

# interfaces
.implements Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;
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
    .line 568
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 11
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 574
    const-string v8, "Ambient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "StockListActivity DropListener from = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "to = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->moveListItem(II)V
    invoke-static {v8, p1, p2}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$1700(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;II)V

    .line 579
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$1400(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;->notifyDataSetChanged()V

    .line 580
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockListView:Landroid/widget/ListView;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$1500(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->invalidateViews()V

    .line 587
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_1

    .line 588
    const-string v8, "Ambient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "StockListActivity"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    .line 591
    .local v0, "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v2

    .line 592
    .local v2, "clockImageDestiantionLocation":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v1

    .line 593
    .local v1, "appImageDestinationLocation":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDarkImageDestinationLocation()Ljava/lang/String;

    move-result-object v3

    .line 595
    .local v3, "darkImageDestinationLocation":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 598
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->updateDestinationLocation(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v8, v2, v6}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$1800(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 600
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->updateDestinationLocation(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v8, v1, v6}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$1800(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 602
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->updateDestinationLocation(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v8, v3, v6}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$1800(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 604
    const-string v8, "Ambient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "StockListActivityDestination location is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-virtual {v0, v2}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setDestinationLocation(Ljava/lang/String;)V

    .line 608
    invoke-virtual {v0, v3}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setDarkImageDestinationLocation(Ljava/lang/String;)V

    .line 609
    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setAppImageDestinationLocation(Ljava/lang/String;)V

    .line 610
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 611
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 587
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 616
    .end local v0    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    .end local v1    # "appImageDestinationLocation":Ljava/lang/String;
    .end local v2    # "clockImageDestiantionLocation":Ljava/lang/String;
    .end local v3    # "darkImageDestinationLocation":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    const-string v9, "ambient__pref"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 618
    .local v7, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 620
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    const-string v8, "StockSymbolsCopy"

    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {v9}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :goto_1
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 628
    return-void

    .line 623
    :catch_0
    move-exception v4

    .line 624
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

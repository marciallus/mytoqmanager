.class Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;
.super Ljava/lang/Object;
.source "StockListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 413
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 16
    .param p2, "myView"    # Landroid/view/View;
    .param p3, "myItemInt"    # I
    .param p4, "mylng"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "stockListAdapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v13, "Ambient"

    const-string v14, "StockListActivityStockListActivity-onItemClick"

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 419
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 423
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->setItemsList(Ljava/util/ArrayList;)V

    .line 424
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    move-result-object v13

    invoke-virtual {v13}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->notifyDataSetChanged()V

    .line 425
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mainListView:Landroid/widget/ListView;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Landroid/widget/ListView;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ListView;->setVisibility(I)V

    .line 426
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mainListView:Landroid/widget/ListView;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Landroid/widget/ListView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/ListView;->invalidate()V

    .line 427
    const v13, 0x7f09010c

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 428
    .local v10, "stockSymbolTextView":Landroid/widget/TextView;
    const v13, 0x7f09010d

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 430
    .local v8, "stockNameTextView":Landroid/widget/TextView;
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 431
    .local v9, "stockSymbolText":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 432
    .local v7, "stockNameText":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 434
    .local v4, "keyedText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    const/4 v14, 0x0

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->isFinalzed:Z
    invoke-static {v13, v14}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$302(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;Z)Z

    .line 435
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    invoke-virtual {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->invalidateOptionsMenu()V

    .line 436
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 437
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0054

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Utils;->showErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 537
    :cond_1
    :goto_0
    return-void

    .line 444
    :cond_2
    const-string v13, ","

    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 445
    .local v12, "tokens":[Ljava/lang/String;
    const-string v13, "Ambient"

    const-string v14, "StockListActivityStockListActivity- Adding in progress. Background synch will not happen during this time"

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    const-string v14, "ambient__pref"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 452
    .local v5, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    const-string v13, "StockSymbolsCopy"

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 455
    .local v11, "stocksAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    if-eqz v11, :cond_1

    .line 457
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->IsMaxLimitReached()Z
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 459
    const/4 v3, 0x0

    .line 464
    .local v3, "isRepeatedInstance":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_3

    .line 465
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    invoke-virtual {v13}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanySymbol()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v14, v12, v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 467
    const/4 v3, 0x1

    .line 471
    :cond_3
    if-nez v3, :cond_8

    .line 477
    new-instance v6, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    invoke-direct {v6}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;-><init>()V

    .line 478
    .local v6, "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    const-string v13, "Ambient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "StockListActivitytokens[0] :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v12, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v13, "Ambient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "StockListActivitytokens[1]:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v12, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const/4 v13, 0x1

    aget-object v13, v12, v13

    if-eqz v13, :cond_4

    .line 484
    const/4 v13, 0x1

    const/4 v14, 0x1

    aget-object v14, v12, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 486
    :cond_4
    const/4 v13, 0x0

    aget-object v13, v12, v13

    invoke-virtual {v6, v13}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setCompanySymbol(Ljava/lang/String;)V

    .line 487
    const/4 v13, 0x0

    aget-object v13, v12, v13

    invoke-virtual {v6, v13}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setSearchKeyText(Ljava/lang/String;)V

    .line 488
    const/4 v13, 0x1

    aget-object v13, v12, v13

    invoke-virtual {v6, v13}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setCompanyName(Ljava/lang/String;)V

    .line 490
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->addItem(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Z
    invoke-static {v13, v6}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Z

    .line 491
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->loadItems()Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Ljava/util/ArrayList;

    move-result-object v14

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;
    invoke-static {v13, v14}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$1002(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 492
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockCodes:Ljava/util/ArrayList;
    invoke-static {v15}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Ljava/util/ArrayList;

    move-result-object v15

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->createAdapterListFromAmbientInfo(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    invoke-static {v14, v15}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v14

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockList:Ljava/util/ArrayList;
    invoke-static {v13, v14}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$1202(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 493
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$1400(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockList:Ljava/util/ArrayList;
    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$1200(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;->setLists(Ljava/util/ArrayList;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mainListView:Landroid/widget/ListView;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Landroid/widget/ListView;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ListView;->setVisibility(I)V

    .line 495
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mainListView:Landroid/widget/ListView;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Landroid/widget/ListView;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/ListView;->setClickable(Z)V

    .line 497
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockListView:Landroid/widget/ListView;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$1500(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Landroid/widget/ListView;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 498
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockListView:Landroid/widget/ListView;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$1500(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Landroid/widget/ListView;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;
    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$1400(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/StockListAdapter;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mStockListView:Landroid/widget/ListView;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$1500(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Landroid/widget/ListView;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 502
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 503
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v14

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 507
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    const/4 v14, 0x1

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->isStockAdded:Z
    invoke-static {v13, v14}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$1602(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 529
    .end local v2    # "i":I
    .end local v3    # "isRepeatedInstance":Z
    .end local v6    # "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    .end local v11    # "stocksAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :catch_0
    move-exception v1

    .line 530
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 464
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "i":I
    .restart local v3    # "isRepeatedInstance":Z
    .restart local v11    # "stocksAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 510
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    invoke-virtual {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0108

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 532
    .end local v2    # "i":I
    .end local v3    # "isRepeatedInstance":Z
    .end local v11    # "stocksAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :catch_1
    move-exception v1

    .line 533
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 519
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v11    # "stocksAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    invoke-virtual {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0109

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

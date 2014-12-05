.class Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;
.super Ljava/lang/Object;
.source "WeatherListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 908
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 18
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
    .line 912
    .local p1, "mCitiesListAdapter":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v15, "Ambient"

    const-string v16, "WeatherListActivity onItemClick"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v15}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 914
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v15}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v16

    const/16 v17, 0x2

    invoke-virtual/range {v15 .. v17}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 918
    :cond_0
    const v15, 0x7f09010c

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 919
    .local v13, "topTextView":Landroid/widget/TextView;
    const v15, 0x7f09010d

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 920
    .local v1, "bottomTextView":Landroid/widget/TextView;
    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 921
    .local v3, "city":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 922
    .local v5, "country":Ljava/lang/String;
    const-string v15, ","

    invoke-virtual {v5, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 923
    .local v11, "params":[Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 924
    .local v10, "mapKey":Ljava/lang/String;
    move-object v9, v10

    .line 925
    .local v9, "keyedText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCityMap:Ljava/util/HashMap;
    invoke-static {v15}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 926
    .local v4, "cityKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;
    invoke-static {v15}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->setItemsList(Ljava/util/ArrayList;)V

    .line 927
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;
    invoke-static {v15}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;

    move-result-object v15

    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->notifyDataSetChanged()V

    .line 928
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    iget-object v15, v15, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherAutoCompListView:Landroid/widget/ListView;

    invoke-virtual {v15}, Landroid/widget/ListView;->invalidate()V

    .line 929
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    iget-object v15, v15, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherAutoCompListView:Landroid/widget/ListView;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListView;->setVisibility(I)V

    .line 930
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    const/16 v16, 0x0

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isFinalzed:Z

    .line 931
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->invalidateOptionsMenu()V

    .line 932
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 933
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0a0054

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Utils;->showErrorMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 1040
    :cond_1
    :goto_0
    return-void

    .line 940
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    const-string v16, "ambient__pref"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 944
    .local v12, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    const-string v15, "WeatherCitiesCopy"

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v12, v15, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 947
    .local v2, "citiesAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    if-eqz v2, :cond_1

    .line 952
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->IsMaxLimitReached()Z
    invoke-static {v15}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$1400(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 954
    const/4 v8, 0x0

    .line 955
    .local v8, "isRepeatedInstance":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v7, v15, :cond_3

    .line 956
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    if-eqz v4, :cond_7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 961
    const/4 v8, 0x1

    .line 965
    :cond_3
    if-nez v8, :cond_8

    .line 969
    new-instance v14, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    invoke-direct {v14}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;-><init>()V

    .line 970
    .local v14, "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    invoke-virtual {v14, v3}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setCityName(Ljava/lang/String;)V

    .line 971
    array-length v15, v11

    const/16 v16, 0x1

    move/from16 v0, v16

    if-lt v15, v0, :cond_4

    .line 972
    const/4 v15, 0x0

    aget-object v15, v11, v15

    invoke-virtual {v14, v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setStateName(Ljava/lang/String;)V

    .line 974
    :cond_4
    array-length v15, v11

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 975
    const/4 v15, 0x1

    aget-object v15, v11, v15

    invoke-virtual {v14, v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setCountryName(Ljava/lang/String;)V

    .line 977
    :cond_5
    invoke-virtual {v14, v9}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setSearchKeyText(Ljava/lang/String;)V

    .line 978
    invoke-virtual {v14, v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setKey(Ljava/lang/String;)V

    .line 980
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->addItem(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Z
    invoke-static {v15, v14}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$1500(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Z

    .line 981
    const-string v15, "Ambient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "WeatherListActivity Added City Entry : City name: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "  Country: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCountryName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "  State: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getStateName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " key: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getKey()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    const/16 v16, 0x1

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isCityAdded:Z
    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$1602(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;Z)Z

    .line 992
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    move-object/from16 v16, v0

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->loadItems()Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$1700(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Ljava/util/ArrayList;

    move-result-object v16

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;
    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$502(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 993
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    move-object/from16 v17, v0

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;
    invoke-static/range {v17 .. v17}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Ljava/util/ArrayList;

    move-result-object v17

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->createAdapterListFromAmbientInfo(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    invoke-static/range {v16 .. v17}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$1800(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v16

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherList:Ljava/util/ArrayList;
    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$702(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 994
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;
    invoke-static {v15}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherList:Ljava/util/ArrayList;
    invoke-static/range {v16 .. v16}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;->setLists(Ljava/util/ArrayList;)V

    .line 995
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    iget-object v15, v15, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherAutoCompListView:Landroid/widget/ListView;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListView;->setVisibility(I)V

    .line 997
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherListView:Landroid/widget/ListView;
    invoke-static {v15}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Landroid/widget/ListView;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 998
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherListView:Landroid/widget/ListView;
    invoke-static {v15}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Landroid/widget/ListView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;
    invoke-static/range {v16 .. v16}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/WeatherListAdapter;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 999
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherListView:Landroid/widget/ListView;
    invoke-static {v15}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Landroid/widget/ListView;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 1002
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v15}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 1004
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v15}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v16

    const/16 v17, 0x2

    invoke-virtual/range {v15 .. v17}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 1029
    .end local v2    # "citiesAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .end local v7    # "i":I
    .end local v8    # "isRepeatedInstance":Z
    .end local v14    # "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    :catch_0
    move-exception v6

    .line 1031
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 955
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v2    # "citiesAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .restart local v7    # "i":I
    .restart local v8    # "isRepeatedInstance":Z
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 1010
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0a010b

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1033
    .end local v2    # "citiesAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .end local v7    # "i":I
    .end local v8    # "isRepeatedInstance":Z
    :catch_1
    move-exception v6

    .line 1035
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v6}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 1019
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "citiesAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0a010c

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v15

    invoke-virtual {v15}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

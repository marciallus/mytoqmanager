.class Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$2;
.super Ljava/lang/Object;
.source "WeatherListActivity.java"

# interfaces
.implements Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;


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
    .line 446
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(I)V
    .locals 6
    .param p1, "which"    # I

    .prologue
    .line 451
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    const/4 v4, 0x1

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isCitySortedDeleted:Z
    invoke-static {v3, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$102(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;Z)Z

    .line 452
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 453
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 454
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 459
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 460
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 461
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidateViews()V

    .line 463
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    const-string v4, "ambient__pref"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 465
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 467
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    const-string v3, "WeatherCitiesCopy"

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mCities:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 476
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 470
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

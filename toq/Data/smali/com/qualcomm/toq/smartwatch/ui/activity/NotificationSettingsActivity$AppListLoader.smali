.class public Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "NotificationSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppListLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mLastConfig:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$InterestingConfigChanges;

.field mPackageObserver:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$PackageIntentReceiver;

.field final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 960
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 952
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$InterestingConfigChanges;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->mLastConfig:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$InterestingConfigChanges;

    .line 965
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    .line 966
    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 951
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1027
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;>;"
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1030
    if-eqz p1, :cond_0

    .line 1031
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 1034
    :cond_0
    move-object v0, p1

    .line 1035
    .local v0, "oldApps":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;>;"
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->mApps:Ljava/util/List;

    .line 1037
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1040
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 1046
    :cond_1
    if-eqz v0, :cond_2

    .line 1047
    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 1049
    :cond_2
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 951
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 976
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    const/16 v7, 0x2200

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 978
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v0, :cond_0

    .line 979
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 982
    .restart local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_0
    const-string v6, "NotificationSettingsActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "apps.size() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 987
    .local v2, "context":Landroid/content/Context;
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 988
    .local v3, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 989
    .local v1, "checkedEntries":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 990
    new-instance v4, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v4, p0, v6}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;Landroid/content/pm/ApplicationInfo;)V

    .line 991
    .local v4, "entry":Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;
    invoke-virtual {v4, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->loadLabel(Landroid/content/Context;)V

    .line 993
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 997
    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationsSettingsListMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->access$000()Ljava/util/HashMap;

    move-result-object v6

    if-eqz v6, :cond_2

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationsSettingsListMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->access$000()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 999
    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationsSettingsListMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->access$000()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v4, v6}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->setCheckBox(Ljava/lang/Boolean;)V

    .line 1000
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 989
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1004
    :cond_2
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1010
    .end local v4    # "entry":Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;
    :cond_3
    sget-object v6, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1011
    sget-object v6, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1012
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1013
    const/4 v3, 0x0

    .line 1016
    return-object v1
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 951
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->onCanceled(Ljava/util/List;)V

    return-void
.end method

.method public onCanceled(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1101
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;>;"
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 1105
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 1106
    return-void
.end method

.method protected onReleaseResources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1139
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;>;"
    return-void
.end method

.method protected onReset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1113
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 1116
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->onStopLoading()V

    .line 1120
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->mApps:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 1122
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->mApps:Ljava/util/List;

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->mPackageObserver:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$PackageIntentReceiver;

    if-eqz v0, :cond_1

    .line 1127
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->mPackageObserver:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$PackageIntentReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1128
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->mPackageObserver:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$PackageIntentReceiver;

    .line 1130
    :cond_1
    return-void
.end method

.method protected onStartLoading()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1060
    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->sNotificationsMenuImageLayout:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->access$700()Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->sNotificationsSearchImageLayout:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->access$800()Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1062
    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->sNotificationsMenuImageLayout:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->access$700()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1063
    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->sNotificationsSearchImageLayout:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->access$800()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1065
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1068
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->mApps:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->deliverResult(Ljava/util/List;)V

    .line 1072
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->mPackageObserver:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$PackageIntentReceiver;

    if-nez v1, :cond_2

    .line 1073
    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$PackageIntentReceiver;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$PackageIntentReceiver;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;)V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->mPackageObserver:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$PackageIntentReceiver;

    .line 1078
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->mLastConfig:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$InterestingConfigChanges;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    .line 1080
    .local v0, "configChange":Z
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->mApps:Ljava/util/List;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_4

    .line 1083
    :cond_3
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->forceLoad()V

    .line 1085
    :cond_4
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 1093
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->cancelLoad()Z

    .line 1094
    return-void
.end method

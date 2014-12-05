.class Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$1;
.super Landroid/widget/Filter;
.source "NotificationSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;)V
    .locals 0

    .prologue
    .line 787
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 6
    .param p1, "filterText"    # Ljava/lang/CharSequence;

    .prologue
    .line 802
    new-instance v2, Landroid/widget/Filter$FilterResults;

    invoke-direct {v2}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 804
    .local v2, "results":Landroid/widget/Filter$FilterResults;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->getAllAppsList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 809
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->filteredAppsList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->filteredAppsList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 811
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->filteredAppsList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 821
    :goto_0
    const/4 v1, 0x0

    .local v1, "position":I
    :goto_1
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->getAllAppsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 822
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->getAllAppsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;

    .line 823
    .local v0, "item":Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 825
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->locale:Ljava/util/Locale;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->locale:Ljava/util/Locale;
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;)Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 828
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->filteredAppsList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 815
    .end local v0    # "item":Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;
    .end local v1    # "position":I
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->filteredAppsList:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->access$502(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0

    .line 832
    .restart local v1    # "position":I
    :cond_2
    const-string v3, "NotificationSettingsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Filtered List"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->filteredAppsList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->filteredAppsList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 834
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->filteredAppsList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v2, Landroid/widget/Filter$FilterResults;->count:I

    .line 842
    .end local v1    # "position":I
    :cond_3
    :goto_2
    return-object v2

    .line 837
    :cond_4
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->getAllAppsList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 838
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->getAllAppsList()Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 839
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->getAllAppsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, v2, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_2
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 792
    if-eqz p2, :cond_0

    .line 794
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->setAppsList(Ljava/util/List;)V

    .line 795
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->notifyDataSetChanged()V

    .line 797
    :cond_0
    return-void
.end method

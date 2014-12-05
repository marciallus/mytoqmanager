.class Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$1;
.super Ljava/lang/Object;
.source "NotificationSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->selectORClearAllTheAppListItems(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;Z)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    iput-boolean p2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$1;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 554
    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationsSettingsListMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->access$000()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 555
    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationsSettingsListMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->access$000()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 556
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 557
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    invoke-virtual {v2, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;

    .line 558
    .local v1, "item":Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;
    iget-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$1;->val$value:Z

    if-eqz v2, :cond_2

    .line 559
    iget-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$1;->val$value:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->setCheckBox(Ljava/lang/Boolean;)V

    .line 560
    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationsSettingsListMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->access$000()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 561
    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationsSettingsListMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->access$000()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$1;->val$value:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 565
    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->setCheckBox(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 567
    .end local v1    # "item":Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;
    :cond_3
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->notifyDataSetChanged()V

    .line 569
    return-void
.end method

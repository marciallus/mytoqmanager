.class Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$2;
.super Ljava/lang/Object;
.source "NotificationSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
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
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 579
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    iget-object v4, v4, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    invoke-virtual {v4, p3}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;

    .line 580
    .local v2, "item":Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;
    const v4, 0x7f09022e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 581
    .local v0, "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 582
    .local v1, "isChecked":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 583
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->setCheckBox(Ljava/lang/Boolean;)V

    .line 584
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 585
    .local v3, "key":Ljava/lang/String;
    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationsSettingsListMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->access$000()Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_0

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationsSettingsListMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->access$000()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 587
    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationsSettingsListMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->access$000()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationsSettingsListMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->access$000()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    :cond_0
    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 600
    .end local v3    # "key":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->postInvalidate()V

    .line 604
    return-void

    .line 594
    :cond_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->setCheckBox(Ljava/lang/Boolean;)V

    .line 595
    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationsSettingsListMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->access$000()Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 596
    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationsSettingsListMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->access$000()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    :cond_2
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

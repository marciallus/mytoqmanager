.class Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$UIReciever;
.super Landroid/content/BroadcastReceiver;
.source "ActivityDashboardScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIReciever"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;)V
    .locals 0

    .prologue
    .line 638
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 641
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_ACTIVITY_MONITORING_UPDATE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    const-string v1, "ActivityDashboardScreenActivity"

    const-string v2, "Activity Monitoring Update Called"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->isMonthUpdated:Z

    .line 646
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->updateUI()V
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;)V

    .line 659
    :cond_0
    return-void
.end method

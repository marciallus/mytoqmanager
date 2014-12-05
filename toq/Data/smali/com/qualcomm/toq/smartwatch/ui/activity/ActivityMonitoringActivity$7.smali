.class Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$7;
.super Ljava/lang/Object;
.source "ActivityMonitoringActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$7;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 505
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 507
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 508
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$7;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mGoalSettingDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$1200(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_1

    .line 509
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$7;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->startActivity(Landroid/content/Intent;)V

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$7;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mGoalSettingDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$1200(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$7;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

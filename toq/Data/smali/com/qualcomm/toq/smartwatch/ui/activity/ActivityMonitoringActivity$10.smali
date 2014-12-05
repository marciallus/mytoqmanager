.class Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$10;
.super Ljava/lang/Object;
.source "ActivityMonitoringActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->showClearActivityDialog()V
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
    .line 798
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$10;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 802
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->getActivityMonitoringController()Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->clearActivityData()V

    .line 804
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$10;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->clearDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$1400(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$10;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->clearDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$1400(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 808
    :cond_0
    return-void
.end method

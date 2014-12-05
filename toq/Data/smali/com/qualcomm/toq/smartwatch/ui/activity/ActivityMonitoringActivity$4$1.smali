.class Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$4$1;
.super Ljava/lang/Object;
.source "ActivityMonitoringActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$4;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$4;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$4$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$4$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$4;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$4$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$4;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 386
    :cond_0
    return-void
.end method

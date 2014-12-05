.class Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$1;
.super Ljava/lang/Object;
.source "ActivityMonitoringActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 314
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 319
    if-eqz p2, :cond_0

    .line 320
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    const/4 v1, 0x1

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->isActivityMonitoringSettingsOn:Z
    invoke-static {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$002(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;Z)Z

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    const/4 v1, 0x0

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->isActivityMonitoringSettingsOn:Z
    invoke-static {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$002(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;Z)Z

    goto :goto_0
.end method

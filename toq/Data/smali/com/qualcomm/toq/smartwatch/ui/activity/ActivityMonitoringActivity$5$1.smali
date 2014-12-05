.class Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5$1;
.super Ljava/lang/Object;
.source "ActivityMonitoringActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;

.field final synthetic val$activityPoints:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;

    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5$1;->val$activityPoints:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 458
    if-eqz p3, :cond_0

    .line 459
    div-int/lit16 p2, p2, 0x1f4

    .line 461
    mul-int/lit16 v0, p2, 0x1f4

    add-int/lit16 p2, v0, 0xbb8

    .line 463
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5$1;->val$activityPoints:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mTempActivityGoalpoints:I
    invoke-static {v0, p2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$802(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;I)I

    .line 467
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 470
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 473
    return-void
.end method

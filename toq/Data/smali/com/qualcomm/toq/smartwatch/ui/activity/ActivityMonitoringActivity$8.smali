.class Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$8;
.super Ljava/lang/Object;
.source "ActivityMonitoringActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;
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
    .line 519
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 523
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 524
    .local v0, "resId":I
    packed-switch v0, :pswitch_data_0

    .line 539
    :goto_0
    return-void

    .line 526
    :pswitch_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mActivityGoalPoints:I
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)I

    move-result v2

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mTempActivityGoalpoints:I
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$802(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;I)I

    .line 527
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getActivityGoalSettingDialog()Landroid/app/Dialog;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 532
    :pswitch_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mTempActivityGoalpoints:I
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)I

    move-result v2

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mActivityGoalPoints:I
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$702(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;I)I

    .line 533
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getActivityGoalSettingSecondaryText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mActivityGoalPoints:I
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getActivityGoalSettingDialog()Landroid/app/Dialog;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 524
    nop

    :pswitch_data_0
    .packed-switch 0x7f090073
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

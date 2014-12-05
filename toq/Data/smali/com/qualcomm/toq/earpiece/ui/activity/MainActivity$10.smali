.class Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceBassBoostDialog(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

.field final synthetic val$bassBoostDialogRadioGroup:Landroid/widget/RadioGroup;

.field final synthetic val$bassBoostDoneButton:Landroid/widget/Button;

.field final synthetic val$endPointType:I

.field final synthetic val$selected:I

.field final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Landroid/widget/RadioGroup;IILandroid/widget/Button;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 3618
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iput-object p2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;->val$bassBoostDialogRadioGroup:Landroid/widget/RadioGroup;

    iput p3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;->val$selected:I

    iput p4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;->val$endPointType:I

    iput-object p5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;->val$bassBoostDoneButton:Landroid/widget/Button;

    iput-object p6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;->val$timer:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 3628
    const-string v5, "MainActivity"

    const-string v6, "[BassBoost] onClick of Done"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3629
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;->val$bassBoostDialogRadioGroup:Landroid/widget/RadioGroup;

    iget v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;->val$selected:I

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3631
    .local v2, "lastSelectedBassButtonView":Landroid/view/View;
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;->val$bassBoostDialogRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v5}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    .line 3633
    .local v1, "checkedId":I
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v5, v1, :cond_3

    .line 3636
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;->val$bassBoostDialogRadioGroup:Landroid/widget/RadioGroup;

    if-eqz v5, :cond_0

    .line 3637
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;->val$bassBoostDialogRadioGroup:Landroid/widget/RadioGroup;

    const v6, 0x7f0200b9

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->setBackgroundResource(I)V

    .line 3639
    :cond_0
    const-string v4, "Off"

    .line 3640
    .local v4, "value":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 3659
    const-string v5, "MainActivity"

    const-string v6, "[BassBoost] default off"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3663
    :goto_0
    const-string v5, "MainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BassBoost] Sending sendbassBoostRequest to the END POINT = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;->val$endPointType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3667
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPCommunicationController()Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    move-result-object v5

    iget v6, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;->val$endPointType:I

    invoke-virtual {v5, v4, v8, v6}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->sendbassBoostRequest(Ljava/lang/String;II)V

    .line 3688
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceBassBoostDialog:Landroid/app/Dialog;
    invoke-static {v5}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v5

    const v6, 0x7f090134

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3690
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;->val$bassBoostDoneButton:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 3691
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;->val$bassBoostDialogRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v5, v8}, Landroid/widget/RadioGroup;->setEnabled(Z)V

    .line 3695
    const/4 v0, 0x0

    .local v0, "buttonIndex":I
    :goto_1
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;->val$bassBoostDialogRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v5}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 3696
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;->val$bassBoostDialogRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v5, v0}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 3697
    .local v3, "radioButton":Landroid/widget/RadioButton;
    invoke-virtual {v3, v8}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 3698
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-virtual {v5}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 3695
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3642
    .end local v0    # "buttonIndex":I
    .end local v3    # "radioButton":Landroid/widget/RadioButton;
    :pswitch_0
    const-string v5, "MainActivity"

    const-string v6, "[BassBoost] off"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3643
    const-string v4, "Off"

    .line 3644
    goto :goto_0

    .line 3646
    :pswitch_1
    const-string v5, "MainActivity"

    const-string v6, "[BassBoost] low"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3647
    const-string v4, "Low"

    .line 3648
    goto :goto_0

    .line 3650
    :pswitch_2
    const-string v5, "MainActivity"

    const-string v6, "[BassBoost] medium"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3651
    const-string v4, "Medium"

    .line 3652
    goto/16 :goto_0

    .line 3654
    :pswitch_3
    const-string v5, "MainActivity"

    const-string v6, "[BassBoost] high"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3655
    const-string v4, "High"

    .line 3656
    goto/16 :goto_0

    .line 3700
    .restart local v0    # "buttonIndex":I
    :cond_1
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;->val$timer:Ljava/util/Timer;

    new-instance v6, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10$1;

    invoke-direct {v6, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10$1;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;)V

    const-wide/16 v7, 0x1388

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 3726
    .end local v0    # "buttonIndex":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 3721
    :cond_3
    const-string v5, "MainActivity"

    const-string v6, "[BassBoost] dismiss dialog box since last selected bass mode is same as current mode"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3723
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceBassBoostDialog:Landroid/app/Dialog;
    invoke-static {v5}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 3724
    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceBassBoostDialog:Landroid/app/Dialog;
    invoke-static {v5}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    goto :goto_2

    .line 3640
    :pswitch_data_0
    .packed-switch 0x7f09012f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

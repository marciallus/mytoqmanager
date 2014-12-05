.class Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;
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
    .line 397
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 20
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 402
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getActivityGoalSettingDialog()Landroid/app/Dialog;
    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/app/Dialog;

    move-result-object v14

    const v15, 0x7f090069

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 403
    .local v6, "dialogTitleTextView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getActivityGoalSettingDialog()Landroid/app/Dialog;
    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/app/Dialog;

    move-result-object v14

    const v15, 0x7f09006a

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 404
    .local v5, "dialogSecondaryTextView":Landroid/widget/TextView;
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    const v14, 0x7f0a00ca

    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setText(I)V

    .line 407
    const v14, 0x7f0a00cb

    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setText(I)V

    .line 409
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getActivityGoalSettingDialog()Landroid/app/Dialog;
    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/app/Dialog;

    move-result-object v14

    const v15, 0x7f090073

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 410
    .local v4, "cancelButton":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getActivityGoalSettingDialog()Landroid/app/Dialog;
    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/app/Dialog;

    move-result-object v14

    const v15, 0x7f090074

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 412
    .local v10, "saveButton":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getActivityGoalSettingDialog()Landroid/app/Dialog;
    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/app/Dialog;

    move-result-object v14

    const v15, 0x7f09006e

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 413
    .local v11, "seekBarLayout":Landroid/widget/LinearLayout;
    const v14, 0x7f09006f

    invoke-virtual {v11, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 415
    .local v2, "activityPoints":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getActivityGoalSettingDialog()Landroid/app/Dialog;
    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/app/Dialog;

    move-result-object v14

    const v15, 0x7f090070

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 417
    .local v3, "activityPointsSeekBar":Landroid/widget/SeekBar;
    const/4 v14, 0x1

    const/high16 v15, 0x41a00000

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static/range {v16 .. v16}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/util/DisplayMetrics;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v12

    .line 421
    .local v12, "seekbarMarginInPixels":F
    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$600()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The width of seek bar is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    move-object/from16 v16, v0

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static/range {v16 .. v16}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/util/DisplayMetrics;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x32

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000

    mul-float v17, v17, v12

    sub-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v14, v14, -0x32

    int-to-float v14, v14

    const/high16 v15, 0x40000000

    mul-float/2addr v15, v12

    sub-float v13, v14, v15

    .line 430
    .local v13, "widthOfSeekBar":F
    const v14, 0x3ea2e8ba

    mul-float v8, v13, v14

    .line 433
    .local v8, "recValuePadding":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getActivityGoalSettingDialog()Landroid/app/Dialog;
    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/app/Dialog;

    move-result-object v14

    const v15, 0x7f090071

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 435
    .local v9, "recommendedView":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 438
    .local v7, "params":Landroid/widget/FrameLayout$LayoutParams;
    float-to-double v14, v8

    const-wide v16, 0x3ff6666666666666L

    float-to-double v0, v12

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    double-to-int v14, v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v14, v15, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 444
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getActivityGoalSettingDialog()Landroid/app/Dialog;
    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/app/Dialog;

    move-result-object v14

    const v15, 0x7f09006d

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 446
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getActivityGoalSettingDialog()Landroid/app/Dialog;
    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/app/Dialog;

    move-result-object v14

    const v15, 0x7f09006e

    invoke-virtual {v14, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 449
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mActivityGoalPoints:I
    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)I

    move-result v14

    add-int/lit16 v14, v14, -0xbb8

    invoke-virtual {v3, v14}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 451
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a00cc

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mActivityGoalPoints:I
    invoke-static {v15}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    new-instance v14, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;Landroid/widget/TextView;)V

    invoke-virtual {v3, v14}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getActivityGoalSettingDialog()Landroid/app/Dialog;
    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/app/Dialog;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Dialog;->show()V

    .line 478
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->activitydialogButtonsListener:Landroid/view/View$OnClickListener;
    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/view/View$OnClickListener;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->activitydialogButtonsListener:Landroid/view/View$OnClickListener;
    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/view/View$OnClickListener;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    return-void
.end method

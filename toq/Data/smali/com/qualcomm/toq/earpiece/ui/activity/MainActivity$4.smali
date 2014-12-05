.class Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceFirmwareUpdateProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 2726
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v3, 0x7f0a0192

    const v2, 0x7f0a018b

    .line 2731
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2732
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceLeftProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2734
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissAllDialogs()V
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 2736
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2737
    const-string v0, "MainActivity"

    const-string v1, "Showing Software Update L & R"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2738
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    const v1, 0x7f0a018a

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceProgressDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2752
    :cond_0
    :goto_0
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->setCurrentAction(I)V

    .line 2764
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mViewStatusInstallUpdateLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2765
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v0

    const-string v1, "firmware_progress1"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2769
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v0

    const-string v1, "firmware_progress2"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2773
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v0

    const-string v1, "firmware_progress_text2"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2777
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v0

    const-string v1, "firmware_progress_mode2"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2781
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v0

    const-string v1, "firmware_progress_mode1"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2786
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->performSoftwareUpdateInRetryAction()V
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 2787
    return-void

    .line 2741
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2742
    const-string v0, "MainActivity"

    const-string v1, "Showing Software Update L"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2743
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a018c

    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceProgressDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2746
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2747
    const-string v0, "MainActivity"

    const-string v1, "Showing Software Update R"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2748
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceProgressDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

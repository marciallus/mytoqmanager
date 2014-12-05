.class Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$3;
.super Ljava/lang/Object;
.source "ActivityGoalReminderTimesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->setListenerToViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 203
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimePickerDialog:Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;)Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimePickerDialog:Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;)Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimePickerDialog:Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;)Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->dismiss()V

    .line 206
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimePickerDialog:Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;
    invoke-static {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->access$102(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;)Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 210
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->access$002(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->initiateDoneChanges()V
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;)V

    .line 215
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->finish()V

    .line 216
    return-void
.end method

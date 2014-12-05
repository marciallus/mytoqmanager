.class Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$2;
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
    .line 135
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 140
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimesList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 141
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;

    new-instance v0, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;

    new-instance v2, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$2$1;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$2$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$2;)V

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00d4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a00d5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimePickerDialog:Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;
    invoke-static {v7, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->access$102(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;)Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;

    .line 179
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimePickerDialog:Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;)Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->show()V

    .line 195
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a010e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

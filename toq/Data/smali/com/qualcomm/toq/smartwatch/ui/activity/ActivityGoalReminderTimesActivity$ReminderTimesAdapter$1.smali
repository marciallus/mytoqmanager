.class Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$1;
.super Ljava/lang/Object;
.source "ActivityGoalReminderTimesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;

.field final synthetic val$positionDummy:I


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;I)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;

    iput p2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$1;->val$positionDummy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 342
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$1;->val$positionDummy:I

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;

    iget-object v1, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimesAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;)Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimesList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;

    iget v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$1;->val$positionDummy:I

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 344
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimesAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;)Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;

    iget v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$1;->val$positionDummy:I

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;->remove(Ljava/lang/Object;)V

    .line 346
    const-string v0, "ActivityGoalReminderTimesActivity"

    const-string v1, "Alarm Removed"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_0
    return-void
.end method

.class Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$3;
.super Ljava/lang/Object;
.source "ActivityDashboardScreenActivity.java"

# interfaces
.implements Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->updateUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showMonthData(Lcom/qualcomm/toq/smartwatch/activitytracker/Month;)V
    .locals 11
    .param p1, "month"    # Lcom/qualcomm/toq/smartwatch/activitytracker/Month;

    .prologue
    .line 554
    const/4 v2, 0x0

    .line 555
    .local v2, "weekNumber":I
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getMaxActivityPointForWeek(Lcom/qualcomm/toq/smartwatch/activitytracker/Month;)D

    move-result-wide v3

    .line 557
    .local v3, "maxActivityPointForWeek":D
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;

    const v9, 0x7f09001c

    invoke-virtual {v0, v9}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 559
    .local v6, "activityMonitorWeekBarChart":Landroid/widget/LinearLayout;
    if-eqz v6, :cond_0

    .line 560
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->getWholeMonthValidatedWeekList(Lcom/qualcomm/toq/smartwatch/activitytracker/Month;)Ljava/util/ArrayList;
    invoke-static {v0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;Lcom/qualcomm/toq/smartwatch/activitytracker/Month;)Ljava/util/ArrayList;

    move-result-object v8

    .line 565
    .local v8, "validatedWeekList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/activitytracker/Week;>;"
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/activitytracker/Month;->getWeekDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    .local v7, "i":I
    :goto_0
    if-ltz v7, :cond_3

    .line 567
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/activitytracker/Month;->getWeekDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/activitytracker/Week;

    .line 569
    .local v1, "week":Lcom/qualcomm/toq/smartwatch/activitytracker/Week;
    if-eqz v1, :cond_1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/activitytracker/Month;->getWeekDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v7, v0, :cond_2

    const/4 v5, 0x1

    .line 573
    .local v5, "isLastWeekOfMonth":Z
    :goto_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->showWholeMonthActivityGraph(Lcom/qualcomm/toq/smartwatch/activitytracker/Week;IDZ)V
    invoke-static/range {v0 .. v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;Lcom/qualcomm/toq/smartwatch/activitytracker/Week;IDZ)V

    .line 578
    const-string v0, "ActivityDashboardScreenActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The days in a week count ===> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/activitytracker/Week;->getDayDataList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    .end local v5    # "isLastWeekOfMonth":Z
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 565
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 570
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 584
    .end local v1    # "week":Lcom/qualcomm/toq/smartwatch/activitytracker/Week;
    :cond_3
    return-void
.end method

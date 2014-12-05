.class Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread$1;
.super Ljava/lang/Object;
.source "ActivityDashboardScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 144
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;->callback:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$Callback;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;

    iget-object v1, v1, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;->monthData:Lcom/qualcomm/toq/smartwatch/activitytracker/Month;

    invoke-interface {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$Callback;->showMonthData(Lcom/qualcomm/toq/smartwatch/activitytracker/Month;)V

    .line 145
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;->handler:Landroid/os/Handler;
    invoke-static {v0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;->access$002(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;Landroid/os/Handler;)Landroid/os/Handler;

    .line 146
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;

    iput-object v2, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;->callback:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$Callback;

    .line 147
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;

    iput-object v2, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;->monthData:Lcom/qualcomm/toq/smartwatch/activitytracker/Month;

    .line 148
    return-void
.end method

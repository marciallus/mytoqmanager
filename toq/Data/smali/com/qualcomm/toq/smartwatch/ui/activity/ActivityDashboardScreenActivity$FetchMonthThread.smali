.class Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;
.super Ljava/lang/Thread;
.source "ActivityDashboardScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchMonthThread"
.end annotation


# instance fields
.field callback:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$Callback;

.field private handler:Landroid/os/Handler;

.field monthData:Lcom/qualcomm/toq/smartwatch/activitytracker/Month;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$Callback;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$Callback;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 120
    new-instance v0, Lcom/qualcomm/toq/smartwatch/activitytracker/Month;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/activitytracker/Month;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;->monthData:Lcom/qualcomm/toq/smartwatch/activitytracker/Month;

    .line 123
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;->handler:Landroid/os/Handler;

    .line 124
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;->callback:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$Callback;

    .line 125
    return-void
.end method

.method static synthetic access$002(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;->handler:Landroid/os/Handler;

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 130
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->getActivityPointsDatabaseAdapter(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;

    move-result-object v0

    .line 137
    .local v0, "activityPointsAdapter":Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->fetchMonthData()Lcom/qualcomm/toq/smartwatch/activitytracker/Month;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;->monthData:Lcom/qualcomm/toq/smartwatch/activitytracker/Month;

    .line 139
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread$1;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    return-void
.end method

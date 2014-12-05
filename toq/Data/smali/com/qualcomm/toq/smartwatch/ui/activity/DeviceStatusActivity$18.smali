.class Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$18;
.super Ljava/lang/Thread;
.source "DeviceStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->printActivityContentDBLogs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)V
    .locals 0

    .prologue
    .line 1504
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$18;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1506
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->getActivityPointsDatabaseAdapter(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;

    move-result-object v0

    .line 1507
    .local v0, "adapter":Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->printDBValues()V

    .line 1509
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$18;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    new-instance v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$18$1;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$18$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$18;)V

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1519
    return-void
.end method

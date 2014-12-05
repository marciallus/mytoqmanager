.class Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$3;
.super Ljava/lang/Object;
.source "DeviceStatusActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->onToggleClicked(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

.field final synthetic val$on:Z


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Z)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    iput-boolean p2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$3;->val$on:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 469
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 470
    iget-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$3;->val$on:Z

    if-eqz v1, :cond_1

    .line 472
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 473
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->setEndPointCheckCompatibilityMode(IZ)V

    .line 476
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->resetConnection()V
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)V

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 482
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->setEndPointCheckCompatibilityMode(IZ)V

    .line 486
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsDatabaseAdapter()Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 489
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsDatabaseAdapter()Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v1

    const-string v2, "/firmware/1234.zip"

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->isFMSEntryAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsDatabaseAdapter()Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v1

    const-string v2, "/firmware/1234.zip"

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSState(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    .line 495
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsDatabaseAdapter()Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v1

    const-string v2, "/firmware/1234.zip"

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->deleteFMSEntry(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->resetConnection()V
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)V

    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

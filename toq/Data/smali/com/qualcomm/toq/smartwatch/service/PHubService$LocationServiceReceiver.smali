.class Lcom/qualcomm/toq/smartwatch/service/PHubService$LocationServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/service/PHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationServiceReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/smartwatch/service/PHubService;)V
    .locals 0

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$LocationServiceReceiver;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/service/PHubService;Lcom/qualcomm/toq/smartwatch/service/PHubService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/smartwatch/service/PHubService;
    .param p2, "x1"    # Lcom/qualcomm/toq/smartwatch/service/PHubService$1;

    .prologue
    .line 1315
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/service/PHubService$LocationServiceReceiver;-><init>(Lcom/qualcomm/toq/smartwatch/service/PHubService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1319
    const-string v0, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1321
    const-string v0, "AmbientController"

    const-string v1, "Broadcast for Provider Change Action Called"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    const-string v0, "AmbientController"

    const-string v1, "Broadcast for Provider Change Action Called"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$LocationServiceReceiver;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mLocationUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$1600(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1326
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$LocationServiceReceiver;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mLocationUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$1600(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$LocationServiceReceiver;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    iget-object v1, v1, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mLocationUpdateTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1339
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$LocationServiceReceiver;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mLocationUpdateTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$LocationServiceReceiver;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mLocationUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$1600(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$LocationServiceReceiver;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    iget-object v1, v1, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mLocationUpdateTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1346
    :cond_0
    return-void

    .line 1330
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$LocationServiceReceiver;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    # setter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mLocationUpdateHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$1602(Lcom/qualcomm/toq/smartwatch/service/PHubService;Landroid/os/Handler;)Landroid/os/Handler;

    goto :goto_0
.end method

.class Lcom/qualcomm/toq/smartwatch/controller/AmbientController$2;
.super Landroid/content/BroadcastReceiver;
.source "AmbientController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/controller/AmbientController;)V
    .locals 0

    .prologue
    .line 793
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController$2;->this$0:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 796
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 797
    .local v0, "action":Ljava/lang/String;
    const-string v1, "Ambient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController$2;->this$0:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    iget-object v3, v3, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "onReceive Received Intent action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-string v1, "Ambient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController$2;->this$0:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    iget-object v3, v3, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Network connectivity state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/toq/base/utils/Utils;->isNetworkConnectivityAvailable(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/base/utils/Utils;->isNetworkConnectivityAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 809
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController$2;->this$0:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->deRegisterNetWrokChangeReceiver()V

    .line 810
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController$2;->this$0:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->onNetworkConnected()V

    .line 812
    :cond_0
    return-void
.end method

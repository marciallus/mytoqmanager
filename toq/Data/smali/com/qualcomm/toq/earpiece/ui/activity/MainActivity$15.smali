.class Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$15;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 4254
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$15;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4256
    # operator++ for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSingleHeadsetSecondsCounter:B
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3608()B

    .line 4257
    const-string v1, "MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ChangeRoles]..................mChangeRoleSingleHeadsetSecondsCounter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSingleHeadsetSecondsCounter:B
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3600()B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4261
    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSingleHeadsetSecondsCounter:B
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3600()B

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 4262
    const/4 v1, 0x0

    sput-boolean v1, Lcom/qualcomm/toq/base/utils/Constants;->isChangeRolesActive:Z

    .line 4263
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->unRegisterHeadsetActionResponseReceiver()V

    .line 4265
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->setCurrentAction(I)V

    .line 4266
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$15;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->closePendingActions()V
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 4268
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->quitLooper()V

    .line 4270
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$15;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    iput-object v2, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->connectionFactoryObj:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    .line 4271
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$15;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v1, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->connectionFactoryObj:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    if-eqz v1, :cond_0

    .line 4272
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$15;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v1, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->connectionFactoryObj:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getConnectionManager(Landroid/content/Context;)Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;

    move-result-object v0

    .line 4273
    .local v0, "btConnectMgr":Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;
    if-eqz v0, :cond_0

    .line 4274
    const-string v1, "MainActivity"

    const-string v2, "[ChangeRoles] disassociatePhoneEPLeft && disassociatePhoneEPRight"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4276
    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->disassociatePhoneEPLeft()V

    .line 4277
    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->disassociatePhoneEPRight()V

    .line 4282
    .end local v0    # "btConnectMgr":Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;
    :cond_0
    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSingleHeadsetSecondsCounter:B
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3600()B

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_1

    .line 4284
    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSingleHeadsetHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3700()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$15;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSingleHeadsetTimeTask:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4285
    const/4 v1, 0x0

    # setter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSingleHeadsetHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3702(Landroid/os/Handler;)Landroid/os/Handler;

    .line 4286
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$15;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    new-instance v2, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$15$1;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$15$1;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$15;)V

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4334
    :goto_0
    return-void

    .line 4332
    :cond_1
    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSingleHeadsetHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3700()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.class Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9;
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
    .line 3310
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3317
    # operator++ for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSecondsCounter:B
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2708()B

    .line 3318
    const-string v0, "MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ChangeRoles]..................mChangeRoleSecondsCounter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSecondsCounter:B
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2700()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3322
    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSecondsCounter:B
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2700()B

    move-result v0

    if-ne v0, v4, :cond_0

    .line 3323
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRole:Ljava/lang/String;

    const-string v1, "Secondary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3324
    const-string v0, "MainActivity"

    const-string v1, "[ChangeRoles] sendChageRoleRequestToHeadset to left <<2>>"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3326
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    const/4 v1, 0x2

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->sendChageRoleRequestToHeadset(I)V
    invoke-static {v0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;I)V

    .line 3335
    :cond_0
    :goto_0
    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSecondsCounter:B
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2700()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 3337
    const-string v0, "MainActivity"

    const-string v1, "[ChangeRoles] Now stop the connections"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3338
    sput-boolean v3, Lcom/qualcomm/toq/base/utils/Constants;->isChangeRolesActive:Z

    .line 3339
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->unRegisterHeadsetActionResponseReceiver()V

    .line 3341
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->setCurrentAction(I)V

    .line 3342
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->closePendingActions()V
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 3344
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->quitLooper()V

    .line 3348
    :cond_1
    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSecondsCounter:B
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2700()B

    move-result v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->MAX_CHANGE_ROLE_COUNTER_VALUE:I
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3200()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 3350
    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2800()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleTimeTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3351
    const/4 v0, 0x0

    # setter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2802(Landroid/os/Handler;)Landroid/os/Handler;

    .line 3353
    new-instance v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9$1;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3418
    :goto_1
    return-void

    .line 3329
    :cond_2
    const-string v0, "MainActivity"

    const-string v1, "[ChangeRoles] sendChageRoleRequestToHeadset to right <<2>>"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3331
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->sendChageRoleRequestToHeadset(I)V
    invoke-static {v0, v4}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;I)V

    goto :goto_0

    .line 3416
    :cond_3
    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2800()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

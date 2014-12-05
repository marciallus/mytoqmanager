.class Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9$1;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9$1;)V
    .locals 0

    .prologue
    .line 3357
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9$1$1;->this$2:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3362
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->unRegisterHeadsetActionResponseReceiver()V

    .line 3364
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->setCurrentAction(I)V

    .line 3366
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9$1$1;->this$2:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9$1;

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9$1;->this$1:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9;

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissEarpieceRoleChangeDialog()V
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 3367
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9$1$1;->this$2:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9$1;

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9$1;->this$1:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9;

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->closePendingActions()V
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 3368
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->quitLooper()V

    .line 3370
    const/4 v0, 0x1

    # setter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->avoidStyledDataFlag:Z
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1702(Z)Z

    .line 3371
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v0

    const-string v1, "last_status_checked"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3376
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v0

    const-string v1, "firmware_progress1"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3380
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v0

    const-string v1, "firmware_progress2"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3384
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v0

    const-string v1, "firmware_progress_text2"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3388
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v0

    const-string v1, "firmware_progress_mode2"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3392
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v0

    const-string v1, "firmware_progress_mode1"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3397
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9$1$1;->this$2:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9$1;

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9$1;->this$1:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9;

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEarpieceUI()V
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 3399
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9$1$1;->this$2:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9$1;

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9$1;->this$1:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9;

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    const-string v1, "Performed Change Roles \nTap \'View Status\' to see the latest headset status"

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showToastMessage(Ljava/lang/String;Landroid/content/Context;)V

    .line 3401
    return-void
.end method

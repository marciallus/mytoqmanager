.class Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceBassBoostDialog(II)V
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
    .line 3782
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$12;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 3785
    const-string v0, "MainActivity"

    const-string v1, "[BassBoost] onDismiss updating UI"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3786
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->unRegisterHeadsetActionResponseReceiver()V

    .line 3788
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->setCurrentAction(I)V

    .line 3789
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$12;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->closePendingActions()V
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 3791
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->quitLooper()V

    .line 3793
    const/4 v0, 0x0

    # setter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->avoidStyledDataFlag:Z
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1702(Z)Z

    .line 3795
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$12;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateUI()V
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 3796
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$12;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEarpieceUI()V
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 3797
    return-void
.end method

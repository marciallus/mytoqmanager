.class Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceRoleChangeDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

.field final synthetic val$saveButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 3245
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$7;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iput-object p2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$7;->val$saveButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3248
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 3249
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$7;->val$saveButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 3250
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$7;->val$saveButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 3251
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$7;->val$saveButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 3278
    :cond_0
    :goto_0
    return v1

    .line 3255
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 3257
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$7;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    iput-object v3, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->connectionFactoryObj:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    .line 3258
    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRolesDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3000()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 3260
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->unRegisterHeadsetActionResponseReceiver()V

    .line 3262
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->setCurrentAction(I)V

    .line 3263
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$7;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->closePendingActions()V
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 3265
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->quitLooper()V

    .line 3266
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$7;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v1, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->connectionFactoryObj:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    if-eqz v1, :cond_2

    .line 3267
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$7;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v1, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->connectionFactoryObj:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getConnectionManager(Landroid/content/Context;)Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;

    move-result-object v0

    .line 3268
    .local v0, "btConnectMgr":Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;
    if-eqz v0, :cond_2

    .line 3269
    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->disassociatePhoneEPLeft()V

    .line 3270
    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->disassociatePhoneEPRight()V

    .line 3273
    .end local v0    # "btConnectMgr":Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$7;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateUI()V
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 3274
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$7;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEarpieceUI()V
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    move v1, v2

    .line 3276
    goto :goto_0
.end method

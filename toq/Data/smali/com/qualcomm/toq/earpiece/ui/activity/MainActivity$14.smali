.class Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$14;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceRoleChangeSingleHeadsetDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

.field final synthetic val$useForCallsButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 4194
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$14;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iput-object p2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$14;->val$useForCallsButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4197
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 4198
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$14;->val$useForCallsButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 4199
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$14;->val$useForCallsButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 4200
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$14;->val$useForCallsButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 4233
    :cond_0
    :goto_0
    return v2

    .line 4204
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 4206
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$14;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEarpieceUI()V
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 4207
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->setCurrentAction(I)V

    .line 4208
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->unRegisterHeadsetActionResponseReceiver()V

    .line 4210
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$14;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    iput-object v4, v2, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->connectionFactoryObj:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    .line 4211
    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceChangeRoleInSingleHeadsetDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3900()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 4213
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    .line 4215
    .local v1, "headsetActionObj1":Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;
    iget-object v2, v1, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->actionHandler:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;

    if-eqz v2, :cond_2

    .line 4216
    iget-object v2, v1, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->actionHandler:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$ActionHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 4219
    :cond_2
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$14;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v2, v2, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->connectionFactoryObj:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    if-eqz v2, :cond_3

    .line 4220
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$14;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v2, v2, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->connectionFactoryObj:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getConnectionManager(Landroid/content/Context;)Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;

    move-result-object v0

    .line 4221
    .local v0, "btConnectMgr":Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;
    if-eqz v0, :cond_3

    .line 4222
    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->disassociatePhoneEPLeft()V

    .line 4223
    invoke-virtual {v0}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->disassociatePhoneEPRight()V

    .line 4227
    .end local v0    # "btConnectMgr":Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;
    :cond_3
    iget-object v2, v1, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 4229
    iget-object v2, v1, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->headsetActionStatusList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_4
    move v2, v3

    .line 4231
    goto :goto_0
.end method

.class Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$1;
.super Ljava/util/TimerTask;
.source "HeadsetAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->processState(Lcom/qualcomm/toq/earpiece/utils/HeadsetState;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

.field final synthetic val$endPointType:I


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;I)V
    .locals 0

    .prologue
    .line 740
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$1;->this$0:Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    iput p2, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$1;->val$endPointType:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 744
    # getter for: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->isTimerRequired:Z
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$600()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 745
    const/4 v0, 0x0

    # setter for: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->isTimerRequired:Z
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$602(Z)Z

    .line 746
    # getter for: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mTimer:Ljava/util/Timer;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$700()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 747
    # getter for: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mTimer:Ljava/util/Timer;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$700()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 748
    # setter for: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mTimer:Ljava/util/Timer;
    invoke-static {v5}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$702(Ljava/util/Timer;)Ljava/util/Timer;

    .line 750
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v1, "SUB_STATE_SUCCESS,RESPONSE_CODE_NONE"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/qualcomm/toq/base/utils/Utils;->printEarpieceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 757
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v0

    const/16 v1, 0x65

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->broadcastResponsetoHeadset(II)V

    .line 760
    iget v0, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$1;->val$endPointType:I

    if-ne v0, v4, :cond_1

    .line 761
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$1;->val$endPointType:I

    const-string v2, "UPDATE_HEADSET"

    const v3, 0x7f0a0195

    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->updateEarpieceUIBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    .line 766
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current_status_text"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$1;->val$endPointType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UNABLE_CONNECT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :cond_1
    iget v0, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$1;->val$endPointType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 773
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$1;->val$endPointType:I

    const-string v2, "UPDATE_HEADSET"

    const v3, 0x7f0a018f

    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->updateEarpieceUIBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current_status_text"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction$1;->val$endPointType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UNABLE_CONNECT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    :cond_2
    # getter for: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mTimer:Ljava/util/Timer;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$700()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 785
    # getter for: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mTimer:Ljava/util/Timer;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$700()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 786
    # setter for: Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->mTimer:Ljava/util/Timer;
    invoke-static {v5}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->access$702(Ljava/util/Timer;)Ljava/util/Timer;

    .line 788
    :cond_3
    return-void
.end method

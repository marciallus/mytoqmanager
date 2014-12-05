.class Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController$2;
.super Ljava/util/TimerTask;
.source "EPCommunicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->testing(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

.field final synthetic val$endPointType:I


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;I)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController$2;->this$0:Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    iput p2, p0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController$2;->val$endPointType:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 504
    # getter for: Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->isSWUpdateTimerRequired:Z
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    const/4 v0, 0x0

    # setter for: Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->isSWUpdateTimerRequired:Z
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->access$002(Z)Z

    .line 506
    # getter for: Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->mSWUpdateTimer:Ljava/util/Timer;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->access$100()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    # getter for: Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->mSWUpdateTimer:Ljava/util/Timer;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->access$100()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 508
    # setter for: Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->mSWUpdateTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->access$102(Ljava/util/Timer;)Ljava/util/Timer;

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController$2;->this$0:Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    iget v1, p0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController$2;->val$endPointType:I

    # invokes: Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->broadcastEPFirmwareUpdateSuccess(I)V
    invoke-static {v0, v1}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->access$200(Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;I)V

    .line 517
    :cond_1
    # getter for: Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->mSWUpdateTimer:Ljava/util/Timer;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->access$100()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 518
    # getter for: Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->mSWUpdateTimer:Ljava/util/Timer;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->access$100()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 519
    # setter for: Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->mSWUpdateTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->access$102(Ljava/util/Timer;)Ljava/util/Timer;

    .line 521
    :cond_2
    return-void
.end method

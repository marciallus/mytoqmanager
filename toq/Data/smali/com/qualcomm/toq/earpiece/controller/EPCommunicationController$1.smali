.class Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController$1;
.super Ljava/lang/Thread;
.source "EPCommunicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->handleConnHandlerMessage(IILjava/lang/Object;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

.field final synthetic val$endPointType:I

.field final synthetic val$transactionId:I


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;II)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController$1;->this$0:Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    iput p2, p0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController$1;->val$transactionId:I

    iput p3, p0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController$1;->val$endPointType:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 228
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController$1;->this$0:Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    iget v2, p0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController$1;->val$transactionId:I

    iget v3, p0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController$1;->val$endPointType:I

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->handleEPModeConfigurationRev1(II)Z

    move-result v0

    .line 230
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 232
    :cond_0
    const-string v1, "EPCommunicationController"

    const-string v2, "EPMessage: Not configured!!!"

    iget v3, p0, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController$1;->val$endPointType:I

    const/4 v4, 0x1

    const/4 v5, 0x7

    invoke-static {v1, v2, v3, v4, v5}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    goto :goto_0
.end method

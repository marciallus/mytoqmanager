.class Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1$1;
.super Ljava/lang/Object;
.source "BTPHubReceiver.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;)V
    .locals 0

    .prologue
    .line 668
    iput-object p1, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1$1;->this$1:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    .prologue
    .line 671
    const-string v0, "BTPHubReceiver"

    const-string v1, "Removing handler thread disassociatePhoneWD()"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    sget-boolean v0, Lcom/qualcomm/toq/base/service/PHubBaseService;->isPHubBaseServiceRunning:Z

    if-nez v0, :cond_0

    .line 674
    const-string v0, "BTPHubReceiver"

    const-string v1, "Removing handler thread disassociatePhoneWD() 1"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1$1;->this$1:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;

    iget-object v0, v0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->this$0:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver;

    # invokes: Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver;->removeHandlerThread()V
    invoke-static {v0}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver;->access$000(Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver;)V

    .line 678
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

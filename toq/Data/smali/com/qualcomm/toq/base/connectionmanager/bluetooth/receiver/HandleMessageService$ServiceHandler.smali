.class final Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$ServiceHandler;
.super Landroid/os/Handler;
.source "HandleMessageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$ServiceHandler;->this$0:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;

    .line 105
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 106
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 110
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$ServiceHandler;->this$0:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    # invokes: Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->onHandleIntent(Landroid/content/Intent;)V
    invoke-static {v1, v0}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->access$000(Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;Landroid/content/Intent;)V

    .line 111
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$ServiceHandler;->this$0:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->stopSelf(I)V

    .line 112
    return-void
.end method

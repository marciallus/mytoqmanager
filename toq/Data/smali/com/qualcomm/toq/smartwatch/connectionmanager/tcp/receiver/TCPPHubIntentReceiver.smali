.class public Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/receiver/TCPPHubIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TCPPHubIntentReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TCPPHubIntentReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "action":Ljava/lang/String;
    const-string v4, "TCPPHubIntentReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CONNECTION_STATE_CHANGE:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 25
    const-string v4, "endpointaddress"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "address":Ljava/lang/String;
    const-string v4, "state"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 28
    .local v3, "state":I
    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 29
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 30
    .local v2, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/receiver/TCPPHubIntentReceiver$1;

    invoke-direct {v4, p0, v1}, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/receiver/TCPPHubIntentReceiver$1;-><init>(Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/receiver/TCPPHubIntentReceiver;Ljava/lang/String;)V

    const-wide/16 v5, 0x1388

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "state":I
    :cond_0
    return-void
.end method

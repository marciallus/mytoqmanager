.class Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/receiver/TCPPHubIntentReceiver$1;
.super Ljava/lang/Object;
.source "TCPPHubIntentReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/receiver/TCPPHubIntentReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/receiver/TCPPHubIntentReceiver;

.field final synthetic val$address:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/receiver/TCPPHubIntentReceiver;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/receiver/TCPPHubIntentReceiver$1;->this$0:Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/receiver/TCPPHubIntentReceiver;

    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/receiver/TCPPHubIntentReceiver$1;->val$address:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->getConnectionManager(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/receiver/TCPPHubIntentReceiver$1;->val$address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->connect(Ljava/lang/String;)V

    .line 38
    return-void
.end method

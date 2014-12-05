.class Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager$1;
.super Ljava/lang/Thread;
.source "TCPConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->resetEndPointConnection(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;

.field final synthetic val$endPointType:I

.field final synthetic val$reconnect:Z


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;IZ)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager$1;->this$0:Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;

    iput p2, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager$1;->val$endPointType:I

    iput-boolean p3, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager$1;->val$reconnect:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 277
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    .line 278
    .local v0, "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    const/4 v1, 0x0

    .line 279
    .local v1, "endpoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    if-eqz v0, :cond_1

    .line 280
    iget v2, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager$1;->val$endPointType:I

    invoke-virtual {v0, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    .line 281
    if-eqz v1, :cond_0

    .line 282
    iget v2, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager$1;->val$endPointType:I

    packed-switch v2, :pswitch_data_0

    .line 294
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager$1;->this$0:Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;

    invoke-virtual {v2, v1}, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->getRegisteredConnectionListener(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;->stopConnectionListener()V

    .line 295
    iget-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager$1;->val$reconnect:Z

    if-eqz v2, :cond_0

    .line 296
    const-string v2, "TCPConnectionManager"

    const-string v3, "[sleep] 10 seconds reconnect"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-wide/16 v2, 0x2710

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 298
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager$1;->this$0:Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;

    invoke-virtual {v2, v1}, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->connect(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)V

    .line 305
    :cond_0
    :goto_1
    return-void

    .line 284
    :pswitch_0
    sput v3, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_WD_CONNECT_ATTEMPT:I

    goto :goto_0

    .line 287
    :pswitch_1
    sput v3, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_EPL_CONNECT_ATTEMPT:I

    goto :goto_0

    .line 290
    :pswitch_2
    sput v3, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_EPR_CONNECT_ATTEMPT:I

    goto :goto_0

    .line 303
    :cond_1
    const-string v2, "TCPConnectionManager"

    const-string v3, "Null issue in resetConnectionEndpoint()"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

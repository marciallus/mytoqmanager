.class Lcom/qualcomm/toq/smartwatch/connectionlistener/mock/MockConnectionListener$1;
.super Ljava/lang/Thread;
.source "MockConnectionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/connectionlistener/mock/MockConnectionListener;->connect(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/connectionlistener/mock/MockConnectionListener;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/connectionlistener/mock/MockConnectionListener;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/mock/MockConnectionListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/connectionlistener/mock/MockConnectionListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 30
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/mock/MockConnectionListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/connectionlistener/mock/MockConnectionListener;

    iget-object v1, v1, Lcom/qualcomm/toq/smartwatch/connectionlistener/mock/MockConnectionListener;->connectionManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/mock/MockConnectionListener$1;->this$0:Lcom/qualcomm/toq/smartwatch/connectionlistener/mock/MockConnectionListener;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/connectionlistener/mock/MockConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    const/4 v3, 0x3

    invoke-interface {v1, v2, v3}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->connectionStateChange(Lcom/qualcomm/toq/base/endpoint/IEndPoint;I)V

    .line 37
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

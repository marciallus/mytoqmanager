.class Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;
.super Ljava/lang/Thread;
.source "TCPConnectionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectThread"
.end annotation


# instance fields
.field private mmSocket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;->this$0:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 212
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 257
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;->mmSocket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;->mmSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 259
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;->mmSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TCPConnectionListener"

    const-string v2, "close() of connect socket failed"

    invoke-static {v1, v2, v0}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 215
    const-string v3, "TCPConnectionListener"

    const-string v4, "BEGIN mConnectThread"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v3, "ConnectThread"

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;->setName(Ljava/lang/String;)V

    .line 219
    :try_start_0
    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->PHUB_TCP_INTERFACE:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 220
    .local v1, "serverAddr":Ljava/net/InetAddress;
    const-string v3, "TCPConnectionListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Socket trying to connect on TCP/IP ADDRESS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/qualcomm/toq/base/utils/Constants;->PHUB_TCP_INTERFACE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " PORT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getTCPPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getTCPPort()I

    move-result v3

    invoke-direct {v2, v1, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 227
    .local v2, "socketaddress":Ljava/net/SocketAddress;
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;->mmSocket:Ljava/net/Socket;

    .line 229
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;->mmSocket:Ljava/net/Socket;

    const/16 v4, 0x1b58

    invoke-virtual {v3, v2, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 231
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;->mmSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 232
    const-string v3, "TCPConnectionListener"

    const-string v4, "ConnectThread: mmSocket is not connected"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v1    # "serverAddr":Ljava/net/InetAddress;
    .end local v2    # "socketaddress":Ljava/net/SocketAddress;
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "TCPConnectionListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOexception in:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 240
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;->cancel()V

    .line 241
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;->this$0:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;

    # invokes: Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->connectionFailed()V
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->access$000(Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;)V

    .line 253
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 235
    .restart local v1    # "serverAddr":Ljava/net/InetAddress;
    .restart local v2    # "socketaddress":Ljava/net/SocketAddress;
    :cond_0
    :try_start_1
    const-string v3, "TCPConnectionListener"

    const-string v4, "Socket connected over TCP "

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 247
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;->this$0:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;

    monitor-enter v4

    .line 248
    :try_start_2
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;->this$0:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;

    const/4 v5, 0x0

    # setter for: Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;
    invoke-static {v3, v5}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->access$102(Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;)Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;

    .line 249
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;->this$0:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;->mmSocket:Ljava/net/Socket;

    # invokes: Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->connectionSuccess(Ljava/net/Socket;)V
    invoke-static {v3, v4}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->access$200(Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;Ljava/net/Socket;)V

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

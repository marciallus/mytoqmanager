.class public Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;
.super Ljava/lang/Object;
.source "TCPConnectionListener.java"

# interfaces
.implements Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;,
        Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TCPConnectionListener"


# instance fields
.field private connectionManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

.field private endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

.field private mConnectThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;

.field private mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/base/endpoint/IEndPoint;Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;)V
    .locals 2
    .param p1, "endPoint"    # Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    .param p2, "connectionManager"    # Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "TCPConnectionListener"

    const-string v1, "TCPConnectionListener created"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->connectionManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    .line 36
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mState:I

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->connectionFailed()V

    return-void
.end method

.method static synthetic access$102(Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;)Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;
    .param p1, "x1"    # Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;

    return-object p1
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;Ljava/net/Socket;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;
    .param p1, "x1"    # Ljava/net/Socket;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->connectionSuccess(Ljava/net/Socket;)V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;)Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    return-object v0
.end method

.method static synthetic access$302(Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;)Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;
    .param p1, "x1"    # Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    return-object p1
.end method

.method private connectionFailed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    const-string v0, "TCPConnectionListener"

    const-string v1, "Connection Failed() called"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;->cancel()V

    .line 189
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->stopConnectedThread()V

    .line 195
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->cancel()V

    .line 196
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    .line 199
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->setState(I)V

    .line 200
    return-void
.end method

.method private declared-synchronized connectionSuccess(Ljava/net/Socket;)V
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    const-string v0, "TCPConnectionListener"

    const-string v1, "connectionSuccess() called"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;->cancel()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->stopConnectedThread()V

    .line 170
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->cancel()V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    .line 175
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->setState(I)V

    .line 177
    new-instance v0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;-><init>(Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;Ljava/net/Socket;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    .line 178
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public connect(Ljava/lang/String;)V
    .locals 5
    .param p1, "unqiueAdress"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 101
    const-string v0, "TCPConnectionListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect() mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " listener object:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mState:I

    if-eq v0, v3, :cond_2

    .line 107
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;->cancel()V

    .line 109
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->stopConnectedThread()V

    .line 115
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->cancel()V

    .line 116
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    .line 119
    :cond_1
    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->setState(I)V

    .line 121
    new-instance v0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;-><init>(Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;

    .line 122
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;->start()V

    .line 125
    :cond_2
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->cancel()V

    .line 132
    :cond_0
    return-void
.end method

.method public isWDDeviceAssociated(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 446
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "associated_wd_device_address"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "associated_wd_device_address"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    const/4 v0, 0x0

    .line 455
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public read([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 67
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->connectionManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v0, p1, v1}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->receiveData([BLcom/qualcomm/toq/base/endpoint/IEndPoint;)V

    .line 68
    return-void
.end method

.method protected declared-synchronized setState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    const-string v0, "TCPConnectionListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " listener object:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iput p1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mState:I

    .line 145
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->connectionManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v0, v1, p1}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->connectionStateChange(Lcom/qualcomm/toq/base/endpoint/IEndPoint;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_0
    monitor-exit p0

    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startSPPServer()V
    .locals 0

    .prologue
    .line 461
    return-void
.end method

.method public stopConnectionListener()V
    .locals 2

    .prologue
    .line 72
    const-string v0, "TCPConnectionListener"

    const-string v1, "stopConnectionListener()"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;->interrupt()V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->interrupt()V

    .line 81
    :cond_1
    monitor-enter p0

    .line 82
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->setState(I)V

    .line 84
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;->cancel()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectThread;

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->stopConnectedThread()V

    .line 91
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->cancel()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    .line 95
    :cond_3
    monitor-exit p0

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    .line 47
    monitor-enter p0

    .line 48
    :try_start_0
    iget v2, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 49
    monitor-exit p0

    .line 63
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;->mConnectedThread:Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;

    .line 51
    .local v1, "r":Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {v1, p1}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;->write([B)V

    .line 54
    const-string v2, "TCPConnectionListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write of byte data done: size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_1
    const-wide/16 v2, 0x5

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TCPConnectionListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured during writing data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "r":Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener$ConnectedThread;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 41
    return-void
.end method

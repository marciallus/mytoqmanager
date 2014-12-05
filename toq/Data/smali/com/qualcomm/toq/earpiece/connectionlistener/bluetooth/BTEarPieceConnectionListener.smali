.class public Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;
.super Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;
.source "BTEarPieceConnectionListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BTEarPieceConnectionListener"


# instance fields
.field private retryConnectAllowed:Z

.field private virtualConnection:Z


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/base/endpoint/IEndPoint;Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;)V
    .locals 1
    .param p1, "endPoint"    # Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    .param p2, "connectionManager"    # Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;-><init>(Lcom/qualcomm/toq/base/endpoint/IEndPoint;Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;)V

    .line 28
    iput-boolean v0, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->virtualConnection:Z

    .line 29
    iput-boolean v0, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->retryConnectAllowed:Z

    .line 36
    return-void
.end method

.method private isVirtualConnection()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->virtualConnection:Z

    return v0
.end method

.method private setVirtualConnection(Z)V
    .locals 0
    .param p1, "virtualConnection"    # Z

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->virtualConnection:Z

    .line 236
    return-void
.end method


# virtual methods
.method public declared-synchronized connect(Ljava/lang/String;)V
    .locals 5
    .param p1, "unqiueAdress"    # Ljava/lang/String;

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    const-string v0, "BTEarPieceConnectionListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect() called. unqiueAdress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->setVirtualConnection(Z)V

    .line 57
    iget v0, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->btConnectIteration:I

    if-nez v0, :cond_0

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->setRetryConnectAllowed(Z)V

    .line 60
    :cond_0
    invoke-super {p0, p1}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->connect(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected connectionFailed()V
    .locals 7

    .prologue
    .line 65
    const-string v2, "BTEarPieceConnectionListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectionFailed() called. isVirtualConnection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->isVirtualConnection()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v4}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-static {v2, v3, v4, v5, v6}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 72
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 75
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v2

    const-string v3, "firmware_progress_text2"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "str":Ljava/lang/String;
    const-string v2, "UPDATED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndpointMode(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Config"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    const-string v2, "BTEarPieceConnectionListener"

    const-string v3, "Sending FW failed status"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 85
    .local v0, "fileTransferErrorIntent":Landroid/content/Intent;
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_EAR_PIECE_UI_UPDATE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v2, "endpointtype"

    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    const-string v2, "state"

    const/16 v3, 0x66

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    const-string v2, "ep_firmware_update_error"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 99
    .end local v0    # "fileTransferErrorIntent":Landroid/content/Intent;
    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->connectionFailed()V

    .line 101
    return-void
.end method

.method protected declared-synchronized connectionSuccess(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "socket"    # Landroid/bluetooth/BluetoothSocket;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    const-string v0, "BTEarPieceConnectionListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sconnectionSuccess() called. isVirtualConnection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->isVirtualConnection()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 125
    invoke-super {p0, p1, p2}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->connectionSuccess(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isRetryConnectAllowed()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->retryConnectAllowed:Z

    return v0
.end method

.method public setRetryConnectAllowed(Z)V
    .locals 0
    .param p1, "retryConnectAllowed"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->retryConnectAllowed:Z

    .line 244
    return-void
.end method

.method protected declared-synchronized setState(I)V
    .locals 9
    .param p1, "state"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 129
    monitor-enter p0

    :try_start_0
    const-string v1, "BTEarPieceConnectionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setState(connlisten: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", endPointType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSPPState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-static {v1, v2, v3, v4, v5}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 136
    invoke-super {p0, p1}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->setState(I)V

    .line 139
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    const-string v1, "BTEarPieceConnectionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v4}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": BT not enabled to reconnect from setState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 144
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    if-ne v1, v6, :cond_2

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "associated_ep_l_device_address"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    if-ne v1, v8, :cond_4

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "associated_ep_r_device_address"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 150
    :cond_3
    const-string v1, "BTEarPieceConnectionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No associated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v4}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " details found to initiate a reconnect from setState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 156
    :cond_4
    const/4 v1, 0x4

    if-ne p1, v1, :cond_9

    .line 157
    :try_start_2
    iget v1, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->btConnectIteration:I

    if-ge v1, v8, :cond_8

    iget-boolean v1, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->retryConnectAllowed:Z

    if-eqz v1, :cond_8

    .line 160
    const-string v1, "BTEarPieceConnectionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SPP retry interation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->btConnectIteration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-static {v1, v2, v3, v4, v5}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 167
    iget v1, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->btConnectIteration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->btConnectIteration:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    :try_start_3
    const-string v1, "BTEarPieceConnectionListener"

    const-string v2, "[sleep] 6 seconds EP"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-wide/16 v1, 0x189c

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    :try_start_4
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    if-ne v1, v6, :cond_5

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "associated_ep_l_device_address"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    if-ne v1, v8, :cond_7

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "associated_ep_r_device_address"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 193
    :cond_6
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->connect(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "BTEarPieceConnectionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SPP retry interation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->btConnectIteration:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " interrupted!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-static {v1, v2, v3, v4, v5}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    goto/16 :goto_0

    .line 196
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_7
    const-string v1, "BTEarPieceConnectionListener"

    const-string v2, "Preferences are not having the device data."

    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-static {v1, v2, v3, v4, v5}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    goto/16 :goto_0

    .line 204
    :cond_8
    const-string v1, "BTEarPieceConnectionListener"

    const-string v2, "Moving to NONE state instead of starting SPP server from setState"

    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-static {v1, v2, v3, v4, v5}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 210
    sget-boolean v1, Lcom/qualcomm/toq/base/utils/Constants;->isChangeRolesActive:Z

    if-nez v1, :cond_0

    .line 211
    const-string v1, "BTEarPieceConnectionListener"

    const-string v2, "[ChangeRoles]..Calling from BT EarpieceListener"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->stopConnectionListener()V

    goto/16 :goto_0

    .line 218
    :cond_9
    if-eq p1, v7, :cond_a

    if-ne p1, v6, :cond_0

    .line 221
    :cond_a
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v1

    if-ne v1, v6, :cond_b

    .line 222
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->setRetryConnectAllowed(Z)V

    .line 226
    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->btConnectIteration:I

    goto/16 :goto_0

    .line 225
    :cond_b
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->setRetryConnectAllowed(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public startSPPServer()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public declared-synchronized stopConnectionListener()V
    .locals 5

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    const-string v0, "BTEarPieceConnectionListener"

    const-string v1, "[ChangeRoles] TEST 2 stopConnectionListener()"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "BTEarPieceConnectionListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopConnectionListener() called. isVirtualConnection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->isVirtualConnection()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 113
    invoke-super {p0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->stopConnectionListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

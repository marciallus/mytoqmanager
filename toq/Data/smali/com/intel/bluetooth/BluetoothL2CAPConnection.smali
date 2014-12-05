.class abstract Lcom/intel/bluetooth/BluetoothL2CAPConnection;
.super Ljava/lang/Object;
.source "BluetoothL2CAPConnection.java"

# interfaces
.implements Lcom/intel/bluetooth/BluetoothConnectionAccess;
.implements Ljavax/bluetooth/L2CAPConnection;


# instance fields
.field protected bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

.field protected volatile handle:J

.field private isClosed:Z

.field private remoteDevice:Ljavax/bluetooth/RemoteDevice;

.field protected securityOpt:I

.field protected transmitMTU:I


# direct methods
.method protected constructor <init>(Lcom/intel/bluetooth/BluetoothStack;J)V
    .locals 1
    .param p1, "bluetoothStack"    # Lcom/intel/bluetooth/BluetoothStack;
    .param p2, "handle"    # J

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    .line 55
    iput-wide p2, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->handle:J

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->isClosed:Z

    .line 57
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->isClosed:Z

    if-eqz v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->isClosed:Z

    .line 150
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->shutdown()V

    goto :goto_0
.end method

.method abstract closeConnectionHandle(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public encrypt(JZ)Z
    .locals 7
    .param p1, "address"    # J
    .param p3, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->isClosed:Z

    if-eqz v0, :cond_0

    .line 223
    new-instance v0, Ljava/io/IOException;

    const-string v1, "L2CAP Connection is already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    iget-wide v3, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->handle:J

    move-wide v1, p1

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/intel/bluetooth/BluetoothStack;->l2Encrypt(JJZ)Z

    move-result v6

    .line 226
    .local v6, "changed":Z
    if-eqz v6, :cond_1

    .line 227
    if-eqz p3, :cond_2

    .line 228
    const/4 v0, 0x2

    iput v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->securityOpt:I

    .line 233
    :cond_1
    :goto_0
    return v6

    .line 230
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->securityOpt:I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 175
    :try_start_0
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getBluetoothStack()Lcom/intel/bluetooth/BluetoothStack;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    return-object v0
.end method

.method public getReceiveMTU()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->isClosed:Z

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    iget-wide v1, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->handle:J

    invoke-interface {v0, v1, v2}, Lcom/intel/bluetooth/BluetoothStack;->l2GetReceiveMTU(J)I

    move-result v0

    return v0
.end method

.method public getRemoteAddress()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->isClosed:Z

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    iget-wide v1, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->handle:J

    invoke-interface {v0, v1, v2}, Lcom/intel/bluetooth/BluetoothStack;->l2RemoteAddress(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemoteDevice()Ljavax/bluetooth/RemoteDevice;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->remoteDevice:Ljavax/bluetooth/RemoteDevice;

    return-object v0
.end method

.method public getSecurityOpt()I
    .locals 4

    .prologue
    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    iget-wide v1, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->handle:J

    .line 208
    iget v3, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->securityOpt:I

    .line 207
    invoke-interface {v0, v1, v2, v3}, Lcom/intel/bluetooth/BluetoothStack;->l2GetSecurityOpt(JI)I

    move-result v0

    iput v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->securityOpt:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    iget v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->securityOpt:I

    return v0

    .line 209
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getTransmitMTU()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->isClosed:Z

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    iget-wide v1, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->handle:J

    invoke-interface {v0, v1, v2}, Lcom/intel/bluetooth/BluetoothStack;->l2GetTransmitMTU(J)I

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->isClosed:Z

    return v0
.end method

.method public markAuthenticated()V
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->securityOpt:I

    if-nez v0, :cond_0

    .line 196
    const/4 v0, 0x1

    iput v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->securityOpt:I

    .line 198
    :cond_0
    return-void
.end method

.method public ready()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->isClosed:Z

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    iget-wide v1, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->handle:J

    invoke-interface {v0, v1, v2}, Lcom/intel/bluetooth/BluetoothStack;->l2Ready(J)Z

    move-result v0

    return v0
.end method

.method public receive([B)I
    .locals 3
    .param p1, "inBuf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->isClosed:Z

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    if-nez p1, :cond_1

    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inBuf is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    iget-wide v1, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->handle:J

    invoke-interface {v0, v1, v2, p1}, Lcom/intel/bluetooth/BluetoothStack;->l2Receive(J[B)I

    move-result v0

    return v0
.end method

.method public send([B)V
    .locals 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->isClosed:Z

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    if-nez p1, :cond_1

    .line 132
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    iget-wide v1, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->handle:J

    iget v3, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->transmitMTU:I

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/intel/bluetooth/BluetoothStack;->l2Send(J[BI)V

    .line 135
    return-void
.end method

.method public setRemoteDevice(Ljavax/bluetooth/RemoteDevice;)V
    .locals 0
    .param p1, "remoteDevice"    # Ljavax/bluetooth/RemoteDevice;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->remoteDevice:Ljavax/bluetooth/RemoteDevice;

    .line 254
    return-void
.end method

.method public shutdown()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    .line 159
    iget-wide v2, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->handle:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_0

    .line 160
    const-string v2, "closing L2CAP Connection"

    iget-wide v3, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->handle:J

    invoke-static {v2, v3, v4}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    .line 163
    monitor-enter p0

    .line 164
    :try_start_0
    iget-wide v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->handle:J

    .line 165
    .local v0, "synchronizedHandle":J
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->handle:J

    .line 163
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    cmp-long v2, v0, v5

    if-eqz v2, :cond_0

    .line 168
    invoke-virtual {p0, v0, v1}, Lcom/intel/bluetooth/BluetoothL2CAPConnection;->closeConnectionHandle(J)V

    .line 171
    .end local v0    # "synchronizedHandle":J
    :cond_0
    return-void

    .line 163
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

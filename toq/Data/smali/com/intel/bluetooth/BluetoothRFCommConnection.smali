.class abstract Lcom/intel/bluetooth/BluetoothRFCommConnection;
.super Ljava/lang/Object;
.source "BluetoothRFCommConnection.java"

# interfaces
.implements Lcom/intel/bluetooth/BluetoothConnectionAccess;
.implements Ljavax/microedition/io/StreamConnection;


# instance fields
.field protected bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

.field protected volatile handle:J

.field private in:Lcom/intel/bluetooth/BluetoothRFCommInputStream;

.field private isClosed:Z

.field private out:Lcom/intel/bluetooth/BluetoothRFCommOutputStream;

.field remoteDevice:Ljavax/bluetooth/RemoteDevice;

.field protected securityOpt:I


# direct methods
.method protected constructor <init>(Lcom/intel/bluetooth/BluetoothStack;J)V
    .locals 1
    .param p1, "bluetoothStack"    # Lcom/intel/bluetooth/BluetoothStack;
    .param p2, "handle"    # J

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    .line 69
    iput-wide p2, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->handle:J

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->isClosed:Z

    .line 71
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
    .line 233
    iget-boolean v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->isClosed:Z

    if-eqz v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->isClosed:Z

    .line 237
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothRFCommConnection;->streamClosed()V

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
    .line 287
    iget-boolean v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->isClosed:Z

    if-eqz v0, :cond_0

    .line 288
    new-instance v0, Ljava/io/IOException;

    const-string v1, "RFCOMM Connection is already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    iget-wide v3, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->handle:J

    move-wide v1, p1

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/intel/bluetooth/BluetoothStack;->rfEncrypt(JJZ)Z

    move-result v6

    .line 291
    .local v6, "changed":Z
    if-eqz v6, :cond_1

    .line 292
    if-eqz p3, :cond_2

    .line 293
    const/4 v0, 0x2

    iput v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->securityOpt:I

    .line 298
    :cond_1
    :goto_0
    return v6

    .line 295
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->securityOpt:I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 242
    :try_start_0
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothRFCommConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getBluetoothStack()Lcom/intel/bluetooth/BluetoothStack;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    return-object v0
.end method

.method public getRemoteAddress()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->isClosed:Z

    if-eqz v0, :cond_0

    .line 308
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    iget-wide v1, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->handle:J

    invoke-interface {v0, v1, v2}, Lcom/intel/bluetooth/BluetoothStack;->getConnectionRfRemoteAddress(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemoteDevice()Ljavax/bluetooth/RemoteDevice;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->remoteDevice:Ljavax/bluetooth/RemoteDevice;

    return-object v0
.end method

.method public getSecurityOpt()I
    .locals 4

    .prologue
    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    iget-wide v1, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->handle:J

    .line 275
    iget v3, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->securityOpt:I

    .line 274
    invoke-interface {v0, v1, v2, v3}, Lcom/intel/bluetooth/BluetoothStack;->rfGetSecurityOpt(JI)I

    move-result v0

    iput v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->securityOpt:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    iget v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->securityOpt:I

    return v0

    .line 276
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->isClosed:Z

    return v0
.end method

.method public markAuthenticated()V
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->securityOpt:I

    if-nez v0, :cond_0

    .line 263
    const/4 v0, 0x1

    iput v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->securityOpt:I

    .line 265
    :cond_0
    return-void
.end method

.method public openDataInputStream()Ljava/io/DataInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothRFCommConnection;->openInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public openDataOutputStream()Ljava/io/DataOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothRFCommConnection;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->isClosed:Z

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Ljava/io/IOException;

    const-string v1, "RFCOMM Connection is already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->in:Lcom/intel/bluetooth/BluetoothRFCommInputStream;

    if-nez v0, :cond_1

    .line 142
    new-instance v0, Lcom/intel/bluetooth/BluetoothRFCommInputStream;

    invoke-direct {v0, p0}, Lcom/intel/bluetooth/BluetoothRFCommInputStream;-><init>(Lcom/intel/bluetooth/BluetoothRFCommConnection;)V

    iput-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->in:Lcom/intel/bluetooth/BluetoothRFCommInputStream;

    .line 143
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->in:Lcom/intel/bluetooth/BluetoothRFCommInputStream;

    return-object v0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->in:Lcom/intel/bluetooth/BluetoothRFCommInputStream;

    invoke-virtual {v0}, Lcom/intel/bluetooth/BluetoothRFCommInputStream;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream cannot be reopened"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Another InputStream already opened"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->isClosed:Z

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Ljava/io/IOException;

    const-string v1, "RFCOMM Connection is already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->out:Lcom/intel/bluetooth/BluetoothRFCommOutputStream;

    if-nez v0, :cond_1

    .line 189
    new-instance v0, Lcom/intel/bluetooth/BluetoothRFCommOutputStream;

    invoke-direct {v0, p0}, Lcom/intel/bluetooth/BluetoothRFCommOutputStream;-><init>(Lcom/intel/bluetooth/BluetoothRFCommConnection;)V

    iput-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->out:Lcom/intel/bluetooth/BluetoothRFCommOutputStream;

    .line 190
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->out:Lcom/intel/bluetooth/BluetoothRFCommOutputStream;

    return-object v0

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->out:Lcom/intel/bluetooth/BluetoothRFCommOutputStream;

    invoke-virtual {v0}, Lcom/intel/bluetooth/BluetoothRFCommOutputStream;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream cannot be reopened"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Another OutputStream already opened"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRemoteDevice(Ljavax/bluetooth/RemoteDevice;)V
    .locals 0
    .param p1, "remoteDevice"    # Ljavax/bluetooth/RemoteDevice;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->remoteDevice:Ljavax/bluetooth/RemoteDevice;

    .line 331
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

    .line 110
    iget-wide v2, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->handle:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_0

    .line 111
    const-string v2, "closing RFCOMM Connection"

    iget-wide v3, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->handle:J

    invoke-static {v2, v3, v4}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-wide v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->handle:J

    .line 116
    .local v0, "synchronizedHandle":J
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->handle:J

    .line 114
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    cmp-long v2, v0, v5

    if-eqz v2, :cond_0

    .line 119
    invoke-virtual {p0, v0, v1}, Lcom/intel/bluetooth/BluetoothRFCommConnection;->closeConnectionHandle(J)V

    .line 122
    .end local v0    # "synchronizedHandle":J
    :cond_0
    return-void

    .line 114
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method streamClosed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->isClosed:Z

    if-nez v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->in:Lcom/intel/bluetooth/BluetoothRFCommInputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->in:Lcom/intel/bluetooth/BluetoothRFCommInputStream;

    invoke-virtual {v0}, Lcom/intel/bluetooth/BluetoothRFCommInputStream;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->out:Lcom/intel/bluetooth/BluetoothRFCommOutputStream;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->out:Lcom/intel/bluetooth/BluetoothRFCommOutputStream;

    invoke-virtual {v0}, Lcom/intel/bluetooth/BluetoothRFCommOutputStream;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    :cond_3
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothRFCommConnection;->shutdown()V

    goto :goto_0
.end method

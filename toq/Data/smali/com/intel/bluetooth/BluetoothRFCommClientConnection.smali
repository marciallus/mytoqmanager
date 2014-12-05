.class Lcom/intel/bluetooth/BluetoothRFCommClientConnection;
.super Lcom/intel/bluetooth/BluetoothRFCommConnection;
.source "BluetoothRFCommClientConnection.java"


# direct methods
.method public constructor <init>(Lcom/intel/bluetooth/BluetoothStack;Lcom/intel/bluetooth/BluetoothConnectionParams;)V
    .locals 6
    .param p1, "bluetoothStack"    # Lcom/intel/bluetooth/BluetoothStack;
    .param p2, "params"    # Lcom/intel/bluetooth/BluetoothConnectionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    .line 38
    invoke-interface {p1, p2}, Lcom/intel/bluetooth/BluetoothStack;->connectionRfOpenClientConnection(Lcom/intel/bluetooth/BluetoothConnectionParams;)J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/intel/bluetooth/BluetoothRFCommConnection;-><init>(Lcom/intel/bluetooth/BluetoothStack;J)V

    .line 39
    const/4 v1, 0x0

    .line 41
    .local v1, "initOK":Z
    :try_start_0
    iget-wide v2, p0, Lcom/intel/bluetooth/BluetoothRFCommClientConnection;->handle:J

    .line 42
    iget-boolean v4, p2, Lcom/intel/bluetooth/BluetoothConnectionParams;->authenticate:Z

    iget-boolean v5, p2, Lcom/intel/bluetooth/BluetoothConnectionParams;->encrypt:Z

    invoke-static {v4, v5}, Lcom/intel/bluetooth/Utils;->securityOpt(ZZ)I

    move-result v4

    .line 41
    invoke-interface {p1, v2, v3, v4}, Lcom/intel/bluetooth/BluetoothStack;->rfGetSecurityOpt(JI)I

    move-result v2

    iput v2, p0, Lcom/intel/bluetooth/BluetoothRFCommClientConnection;->securityOpt:I

    .line 43
    invoke-static {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->connected(Lcom/intel/bluetooth/BluetoothConnectionAccess;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    const/4 v1, 0x1

    .line 46
    if-nez v1, :cond_0

    .line 49
    :try_start_1
    iget-wide v2, p0, Lcom/intel/bluetooth/BluetoothRFCommClientConnection;->handle:J

    invoke-interface {p1, v2, v3}, Lcom/intel/bluetooth/BluetoothStack;->connectionRfCloseClientConnection(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 45
    :catchall_0
    move-exception v2

    .line 46
    if-nez v1, :cond_1

    .line 49
    :try_start_2
    iget-wide v3, p0, Lcom/intel/bluetooth/BluetoothRFCommClientConnection;->handle:J

    invoke-interface {p1, v3, v4}, Lcom/intel/bluetooth/BluetoothStack;->connectionRfCloseClientConnection(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 54
    :cond_1
    :goto_1
    throw v2

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "close error"

    invoke-static {v3, v0}, Lcom/intel/bluetooth/DebugLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 50
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 51
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "close error"

    invoke-static {v2, v0}, Lcom/intel/bluetooth/DebugLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method closeConnectionHandle(J)V
    .locals 1
    .param p1, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->disconnected(Lcom/intel/bluetooth/BluetoothConnectionAccess;)V

    .line 59
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommClientConnection;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    invoke-interface {v0, p1, p2}, Lcom/intel/bluetooth/BluetoothStack;->connectionRfCloseClientConnection(J)V

    .line 60
    return-void
.end method

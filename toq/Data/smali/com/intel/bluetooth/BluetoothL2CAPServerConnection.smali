.class Lcom/intel/bluetooth/BluetoothL2CAPServerConnection;
.super Lcom/intel/bluetooth/BluetoothL2CAPConnection;
.source "BluetoothL2CAPServerConnection.java"

# interfaces
.implements Lcom/intel/bluetooth/BluetoothServerConnection;


# direct methods
.method protected constructor <init>(Lcom/intel/bluetooth/BluetoothStack;JII)V
    .locals 5
    .param p1, "bluetoothStack"    # Lcom/intel/bluetooth/BluetoothStack;
    .param p2, "handle"    # J
    .param p4, "transmitMTU"    # I
    .param p5, "securityOpt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/intel/bluetooth/BluetoothL2CAPConnection;-><init>(Lcom/intel/bluetooth/BluetoothStack;J)V

    .line 43
    const/4 v1, 0x0

    .line 45
    .local v1, "initOK":Z
    :try_start_0
    iput p5, p0, Lcom/intel/bluetooth/BluetoothL2CAPServerConnection;->securityOpt:I

    .line 46
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothL2CAPServerConnection;->getTransmitMTU()I

    move-result v2

    iput v2, p0, Lcom/intel/bluetooth/BluetoothL2CAPServerConnection;->transmitMTU:I

    .line 50
    if-lez p4, :cond_0

    iget v2, p0, Lcom/intel/bluetooth/BluetoothL2CAPServerConnection;->transmitMTU:I

    if-ge p4, v2, :cond_0

    .line 51
    iput p4, p0, Lcom/intel/bluetooth/BluetoothL2CAPServerConnection;->transmitMTU:I

    .line 53
    :cond_0
    invoke-static {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->connected(Lcom/intel/bluetooth/BluetoothConnectionAccess;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    const/4 v1, 0x1

    .line 56
    if-nez v1, :cond_1

    .line 58
    :try_start_1
    iget-wide v2, p0, Lcom/intel/bluetooth/BluetoothL2CAPServerConnection;->handle:J

    invoke-interface {p1, v2, v3}, Lcom/intel/bluetooth/BluetoothStack;->l2CloseServerConnection(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    :cond_1
    :goto_0
    return-void

    .line 55
    :catchall_0
    move-exception v2

    .line 56
    if-nez v1, :cond_2

    .line 58
    :try_start_2
    iget-wide v3, p0, Lcom/intel/bluetooth/BluetoothL2CAPServerConnection;->handle:J

    invoke-interface {p1, v3, v4}, Lcom/intel/bluetooth/BluetoothStack;->l2CloseServerConnection(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 63
    :cond_2
    :goto_1
    throw v2

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "close error"

    invoke-static {v3, v0}, Lcom/intel/bluetooth/DebugLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 59
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 60
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
    .line 73
    invoke-static {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->disconnected(Lcom/intel/bluetooth/BluetoothConnectionAccess;)V

    .line 74
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPServerConnection;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    invoke-interface {v0, p1, p2}, Lcom/intel/bluetooth/BluetoothStack;->l2CloseServerConnection(J)V

    .line 75
    return-void
.end method

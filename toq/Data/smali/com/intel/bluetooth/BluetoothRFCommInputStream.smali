.class Lcom/intel/bluetooth/BluetoothRFCommInputStream;
.super Ljava/io/InputStream;
.source "BluetoothRFCommInputStream.java"


# instance fields
.field private volatile conn:Lcom/intel/bluetooth/BluetoothRFCommConnection;


# direct methods
.method public constructor <init>(Lcom/intel/bluetooth/BluetoothRFCommConnection;)V
    .locals 0
    .param p1, "conn"    # Lcom/intel/bluetooth/BluetoothRFCommConnection;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/intel/bluetooth/BluetoothRFCommInputStream;->conn:Lcom/intel/bluetooth/BluetoothRFCommConnection;

    .line 35
    return-void
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommInputStream;->conn:Lcom/intel/bluetooth/BluetoothRFCommConnection;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 46
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommInputStream;->conn:Lcom/intel/bluetooth/BluetoothRFCommConnection;

    iget-object v0, v0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothRFCommInputStream;->conn:Lcom/intel/bluetooth/BluetoothRFCommConnection;

    iget-wide v1, v1, Lcom/intel/bluetooth/BluetoothRFCommConnection;->handle:J

    invoke-interface {v0, v1, v2}, Lcom/intel/bluetooth/BluetoothStack;->connectionRfReadAvailable(J)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommInputStream;->conn:Lcom/intel/bluetooth/BluetoothRFCommConnection;

    .line 165
    .local v0, "c":Lcom/intel/bluetooth/BluetoothRFCommConnection;
    if-eqz v0, :cond_0

    .line 166
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/intel/bluetooth/BluetoothRFCommInputStream;->conn:Lcom/intel/bluetooth/BluetoothRFCommConnection;

    .line 167
    invoke-virtual {v0}, Lcom/intel/bluetooth/BluetoothRFCommConnection;->streamClosed()V

    .line 169
    :cond_0
    return-void
.end method

.method isClosed()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommInputStream;->conn:Lcom/intel/bluetooth/BluetoothRFCommConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothRFCommInputStream;->conn:Lcom/intel/bluetooth/BluetoothRFCommConnection;

    if-nez v1, :cond_0

    .line 64
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Stream closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothRFCommInputStream;->conn:Lcom/intel/bluetooth/BluetoothRFCommConnection;

    iget-object v1, v1, Lcom/intel/bluetooth/BluetoothRFCommConnection;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    iget-object v2, p0, Lcom/intel/bluetooth/BluetoothRFCommInputStream;->conn:Lcom/intel/bluetooth/BluetoothRFCommConnection;

    iget-wide v2, v2, Lcom/intel/bluetooth/BluetoothRFCommConnection;->handle:J

    invoke-interface {v1, v2, v3}, Lcom/intel/bluetooth/BluetoothStack;->connectionRfRead(J)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 70
    :goto_0
    return v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothRFCommInputStream;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    const/4 v1, -0x1

    goto :goto_0

    .line 72
    :cond_1
    throw v0
.end method

.method public read([BII)I
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommInputStream;->conn:Lcom/intel/bluetooth/BluetoothRFCommConnection;

    if-nez v0, :cond_2

    .line 131
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_2
    if-nez p3, :cond_3

    .line 136
    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    .line 140
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommInputStream;->conn:Lcom/intel/bluetooth/BluetoothRFCommConnection;

    iget-object v0, v0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothRFCommInputStream;->conn:Lcom/intel/bluetooth/BluetoothRFCommConnection;

    iget-wide v1, v1, Lcom/intel/bluetooth/BluetoothRFCommConnection;->handle:J

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/intel/bluetooth/BluetoothStack;->connectionRfRead(J[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v6

    .line 143
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothRFCommInputStream;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 144
    const/4 v0, -0x1

    goto :goto_0

    .line 146
    :cond_4
    throw v6
.end method

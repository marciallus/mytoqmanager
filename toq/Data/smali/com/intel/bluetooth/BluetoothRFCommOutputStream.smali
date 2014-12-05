.class Lcom/intel/bluetooth/BluetoothRFCommOutputStream;
.super Ljava/io/OutputStream;
.source "BluetoothRFCommOutputStream.java"


# instance fields
.field private volatile conn:Lcom/intel/bluetooth/BluetoothRFCommConnection;


# direct methods
.method public constructor <init>(Lcom/intel/bluetooth/BluetoothRFCommConnection;)V
    .locals 0
    .param p1, "conn"    # Lcom/intel/bluetooth/BluetoothRFCommConnection;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/intel/bluetooth/BluetoothRFCommOutputStream;->conn:Lcom/intel/bluetooth/BluetoothRFCommConnection;

    .line 35
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommOutputStream;->conn:Lcom/intel/bluetooth/BluetoothRFCommConnection;

    .line 110
    .local v0, "c":Lcom/intel/bluetooth/BluetoothRFCommConnection;
    if-eqz v0, :cond_0

    .line 111
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/intel/bluetooth/BluetoothRFCommOutputStream;->conn:Lcom/intel/bluetooth/BluetoothRFCommConnection;

    .line 112
    invoke-virtual {v0}, Lcom/intel/bluetooth/BluetoothRFCommConnection;->streamClosed()V

    .line 114
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommOutputStream;->conn:Lcom/intel/bluetooth/BluetoothRFCommConnection;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    invoke-super {p0}, Ljava/io/OutputStream;->flush()V

    .line 93
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommOutputStream;->conn:Lcom/intel/bluetooth/BluetoothRFCommConnection;

    iget-object v0, v0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothRFCommOutputStream;->conn:Lcom/intel/bluetooth/BluetoothRFCommConnection;

    iget-wide v1, v1, Lcom/intel/bluetooth/BluetoothRFCommConnection;->handle:J

    invoke-interface {v0, v1, v2}, Lcom/intel/bluetooth/BluetoothStack;->connectionRfFlush(J)V

    .line 95
    return-void
.end method

.method isClosed()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommOutputStream;->conn:Lcom/intel/bluetooth/BluetoothRFCommConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommOutputStream;->conn:Lcom/intel/bluetooth/BluetoothRFCommConnection;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommOutputStream;->conn:Lcom/intel/bluetooth/BluetoothRFCommConnection;

    iget-object v0, v0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothRFCommOutputStream;->conn:Lcom/intel/bluetooth/BluetoothRFCommConnection;

    iget-wide v1, v1, Lcom/intel/bluetooth/BluetoothRFCommConnection;->handle:J

    invoke-interface {v0, v1, v2, p1}, Lcom/intel/bluetooth/BluetoothStack;->connectionRfWrite(JI)V

    .line 55
    return-void
.end method

.method public write([BII)V
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommOutputStream;->conn:Lcom/intel/bluetooth/BluetoothRFCommConnection;

    if-nez v0, :cond_2

    .line 82
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommOutputStream;->conn:Lcom/intel/bluetooth/BluetoothRFCommConnection;

    iget-object v0, v0, Lcom/intel/bluetooth/BluetoothRFCommConnection;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothRFCommOutputStream;->conn:Lcom/intel/bluetooth/BluetoothRFCommConnection;

    iget-wide v1, v1, Lcom/intel/bluetooth/BluetoothRFCommConnection;->handle:J

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/intel/bluetooth/BluetoothStack;->connectionRfWrite(J[BII)V

    .line 86
    return-void
.end method

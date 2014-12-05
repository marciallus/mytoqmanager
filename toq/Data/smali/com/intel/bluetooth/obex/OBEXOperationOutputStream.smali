.class Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;
.super Ljava/io/OutputStream;
.source "OBEXOperationOutputStream.java"


# instance fields
.field private buffer:[B

.field private bufferLength:I

.field private isClosed:Z

.field private lock:Ljava/lang/Object;

.field private final operation:Lcom/intel/bluetooth/obex/OBEXOperationDelivery;


# direct methods
.method constructor <init>(ILcom/intel/bluetooth/obex/OBEXOperationDelivery;)V
    .locals 2
    .param p1, "mtu"    # I
    .param p2, "op"    # Lcom/intel/bluetooth/obex/OBEXOperationDelivery;

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->lock:Ljava/lang/Object;

    .line 39
    iput-boolean v1, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->isClosed:Z

    .line 42
    iput-object p2, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->operation:Lcom/intel/bluetooth/obex/OBEXOperationDelivery;

    .line 43
    add-int/lit8 v0, p1, -0xb

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->buffer:[B

    .line 44
    iput v1, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->bufferLength:I

    .line 45
    return-void
.end method


# virtual methods
.method abort()V
    .locals 2

    .prologue
    .line 98
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->isClosed:Z

    .line 98
    monitor-exit v1

    .line 101
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->isClosed:Z

    if-nez v0, :cond_1

    .line 105
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->isClosed:Z

    .line 107
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->operation:Lcom/intel/bluetooth/obex/OBEXOperationDelivery;

    invoke-interface {v0}, Lcom/intel/bluetooth/obex/OBEXOperationDelivery;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->deliverBuffer(Z)V

    .line 105
    :cond_0
    monitor-exit v1

    .line 112
    :cond_1
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method deliverBuffer(Z)V
    .locals 6
    .param p1, "finalPacket"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v2, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 90
    :try_start_0
    iget v1, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->bufferLength:I

    new-array v0, v1, [B

    .line 91
    .local v0, "b":[B
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->buffer:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->bufferLength:I

    invoke-static {v1, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->operation:Lcom/intel/bluetooth/obex/OBEXOperationDelivery;

    invoke-interface {v1, p1, v0}, Lcom/intel/bluetooth/obex/OBEXOperationDelivery;->deliverPacket(Z[B)V

    .line 93
    const/4 v1, 0x0

    iput v1, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->bufferLength:I

    .line 89
    monitor-exit v2

    .line 95
    return-void

    .line 89
    .end local v0    # "b":[B
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget v0, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->bufferLength:I

    if-lez v0, :cond_0

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->deliverBuffer(Z)V

    .line 86
    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-array v0, v3, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->write([BII)V

    .line 49
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
    .line 52
    iget-object v2, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->operation:Lcom/intel/bluetooth/obex/OBEXOperationDelivery;

    invoke-interface {v2}, Lcom/intel/bluetooth/obex/OBEXOperationDelivery;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->isClosed:Z

    if-eqz v2, :cond_1

    .line 53
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "stream closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_1
    if-nez p1, :cond_2

    .line 56
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 57
    :cond_2
    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_4

    .line 58
    :cond_3
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 59
    :cond_4
    if-nez p3, :cond_5

    .line 80
    :goto_0
    return-void

    .line 63
    :cond_5
    iget-object v3, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, "written":I
    :cond_6
    :goto_1
    if-lt v1, p3, :cond_7

    .line 63
    :try_start_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 66
    :cond_7
    :try_start_1
    iget-object v2, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->buffer:[B

    array-length v2, v2

    iget v4, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->bufferLength:I

    sub-int v0, v2, v4

    .line 67
    .local v0, "available":I
    sub-int v2, p3, v1

    if-ge v2, v0, :cond_8

    .line 68
    sub-int v0, p3, v1

    .line 70
    :cond_8
    add-int v2, p2, v1

    iget-object v4, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->buffer:[B

    iget v5, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->bufferLength:I

    invoke-static {p1, v2, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    iget v2, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->bufferLength:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->bufferLength:I

    .line 73
    add-int/2addr v1, v0

    .line 74
    iget v2, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->bufferLength:I

    iget-object v4, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->buffer:[B

    array-length v4, v4

    if-ne v2, v4, :cond_6

    .line 75
    iget-object v2, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->operation:Lcom/intel/bluetooth/obex/OBEXOperationDelivery;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->buffer:[B

    invoke-interface {v2, v4, v5}, Lcom/intel/bluetooth/obex/OBEXOperationDelivery;->deliverPacket(Z[B)V

    .line 76
    const/4 v2, 0x0

    iput v2, p0, Lcom/intel/bluetooth/obex/OBEXOperationOutputStream;->bufferLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

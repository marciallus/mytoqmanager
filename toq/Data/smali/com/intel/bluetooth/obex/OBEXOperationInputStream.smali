.class Lcom/intel/bluetooth/obex/OBEXOperationInputStream;
.super Ljava/io/InputStream;
.source "OBEXOperationInputStream.java"


# instance fields
.field private appendPos:I

.field private buffer:[B

.field private eofReceived:Z

.field private isClosed:Z

.field private lock:Ljava/lang/Object;

.field private final operation:Lcom/intel/bluetooth/obex/OBEXOperation;

.field private readPos:I


# direct methods
.method constructor <init>(Lcom/intel/bluetooth/obex/OBEXOperation;)V
    .locals 2
    .param p1, "op"    # Lcom/intel/bluetooth/obex/OBEXOperation;

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 37
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->buffer:[B

    .line 39
    iput v1, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->readPos:I

    .line 41
    iput v1, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->appendPos:I

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->lock:Ljava/lang/Object;

    .line 45
    iput-boolean v1, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->isClosed:Z

    .line 47
    iput-boolean v1, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->eofReceived:Z

    .line 34
    iput-object p1, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->operation:Lcom/intel/bluetooth/obex/OBEXOperation;

    .line 35
    return-void
.end method


# virtual methods
.method appendData([BZ)V
    .locals 8
    .param p1, "b"    # [B
    .param p2, "eof"    # Z

    .prologue
    .line 99
    iget-boolean v2, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->isClosed:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->eofReceived:Z

    if-eqz v2, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v3, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 103
    if-eqz p2, :cond_2

    .line 104
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->eofReceived:Z

    .line 106
    :cond_2
    if-eqz p1, :cond_5

    array-length v2, p1

    if-eqz v2, :cond_5

    .line 107
    iget v2, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->appendPos:I

    array-length v4, p1

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->buffer:[B

    array-length v4, v4

    if-le v2, v4, :cond_4

    .line 108
    array-length v2, p1

    iget v4, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->appendPos:I

    iget v5, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->readPos:I

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    mul-int/lit8 v1, v2, 0x2

    .line 109
    .local v1, "newSize":I
    iget-object v2, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->buffer:[B

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 110
    iget-object v2, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->buffer:[B

    array-length v1, v2

    .line 112
    :cond_3
    new-array v0, v1, [B

    .line 113
    .local v0, "newBuffer":[B
    iget-object v2, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->buffer:[B

    iget v4, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->readPos:I

    const/4 v5, 0x0

    iget v6, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->appendPos:I

    .line 114
    iget v7, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->readPos:I

    sub-int/2addr v6, v7

    .line 113
    invoke-static {v2, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->buffer:[B

    .line 116
    iget v2, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->appendPos:I

    iget v4, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->readPos:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->appendPos:I

    .line 117
    const/4 v2, 0x0

    iput v2, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->readPos:I

    .line 119
    .end local v0    # "newBuffer":[B
    .end local v1    # "newSize":I
    :cond_4
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->buffer:[B

    iget v5, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->appendPos:I

    array-length v6, p1

    invoke-static {p1, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    iget v2, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->appendPos:I

    array-length v4, p1

    add-int/2addr v2, v4

    iput v2, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->appendPos:I

    .line 122
    :cond_5
    iget-object v2, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 102
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iget v0, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->appendPos:I

    iget v2, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->readPos:I

    sub-int/2addr v0, v2

    monitor-exit v1

    return v0

    .line 81
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
    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->isClosed:Z

    .line 93
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 93
    monitor-exit v1

    .line 96
    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 55
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->isClosed:Z

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->operation:Lcom/intel/bluetooth/obex/OBEXOperation;

    invoke-interface {v0}, Lcom/intel/bluetooth/obex/OBEXOperation;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->appendPos:I

    iget v2, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->readPos:I

    if-ne v0, v2, :cond_1

    move v0, v1

    .line 71
    :goto_0
    return v0

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 62
    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->eofReceived:Z

    if-nez v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->operation:Lcom/intel/bluetooth/obex/OBEXOperation;

    instance-of v0, v0, Lcom/intel/bluetooth/obex/OBEXOperationReceive;

    if-eqz v0, :cond_2

    .line 64
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->isClosed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->operation:Lcom/intel/bluetooth/obex/OBEXOperation;

    invoke-interface {v0}, Lcom/intel/bluetooth/obex/OBEXOperation;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 65
    iget v0, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->appendPos:I

    iget v3, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->readPos:I

    if-eq v0, v3, :cond_3

    .line 68
    :cond_2
    iget v0, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->appendPos:I

    iget v3, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->readPos:I

    if-ne v0, v3, :cond_4

    .line 69
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 66
    :cond_3
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->operation:Lcom/intel/bluetooth/obex/OBEXOperation;

    check-cast v0, Lcom/intel/bluetooth/obex/OBEXOperationReceive;

    invoke-interface {v0, p0}, Lcom/intel/bluetooth/obex/OBEXOperationReceive;->receiveData(Lcom/intel/bluetooth/obex/OBEXOperationInputStream;)V

    goto :goto_1

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 71
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->buffer:[B

    iget v1, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->readPos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/intel/bluetooth/obex/OBEXOperationInputStream;->readPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

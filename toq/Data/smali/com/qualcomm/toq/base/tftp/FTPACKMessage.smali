.class public Lcom/qualcomm/toq/base/tftp/FTPACKMessage;
.super Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
.source "FTPACKMessage.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;-><init>()V

    .line 12
    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/qualcomm/toq/base/tftp/FTPACKMessage;->opCode:B

    .line 13
    iput v1, p0, Lcom/qualcomm/toq/base/tftp/FTPACKMessage;->srcTID:I

    .line 14
    iput v1, p0, Lcom/qualcomm/toq/base/tftp/FTPACKMessage;->desTID:I

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qualcomm/toq/base/tftp/FTPACKMessage;->blockNumber:J

    .line 16
    return-void
.end method

.method public constructor <init>(IIJ)V
    .locals 1
    .param p1, "srcTID"    # I
    .param p2, "destTID"    # I
    .param p3, "blockNumber"    # J

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;-><init>()V

    .line 20
    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/qualcomm/toq/base/tftp/FTPACKMessage;->opCode:B

    .line 21
    iput p1, p0, Lcom/qualcomm/toq/base/tftp/FTPACKMessage;->srcTID:I

    .line 22
    iput p2, p0, Lcom/qualcomm/toq/base/tftp/FTPACKMessage;->desTID:I

    .line 23
    iput-wide p3, p0, Lcom/qualcomm/toq/base/tftp/FTPACKMessage;->blockNumber:J

    .line 24
    return-void
.end method


# virtual methods
.method public pack()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/base/tftp/FTPMessageException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 30
    const/16 v7, 0x8

    new-array v3, v7, [B

    .line 31
    .local v3, "data":[B
    iget-byte v7, p0, Lcom/qualcomm/toq/base/tftp/FTPACKMessage;->opCode:B

    aput-byte v7, v3, v9

    .line 32
    const/4 v7, 0x1

    iget v8, p0, Lcom/qualcomm/toq/base/tftp/FTPACKMessage;->srcTID:I

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    .line 33
    const/4 v7, 0x2

    iget v8, p0, Lcom/qualcomm/toq/base/tftp/FTPACKMessage;->desTID:I

    int-to-byte v8, v8

    aput-byte v8, v3, v7

    .line 34
    const/4 v7, 0x3

    aput-byte v9, v3, v7

    .line 36
    iget-wide v7, p0, Lcom/qualcomm/toq/base/tftp/FTPACKMessage;->blockNumber:J

    const/4 v9, 0x4

    invoke-static {v7, v8, v9}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertUnsignedNumbersToBytes(JI)[B

    move-result-object v2

    .line 39
    .local v2, "blockNumberInByteArray":[B
    const/4 v5, 0x4

    .line 40
    .local v5, "index":I
    if-eqz v2, :cond_0

    .line 41
    move-object v0, v2

    .local v0, "arr$":[B
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-byte v1, v0, v4

    .line 42
    .local v1, "b":B
    aput-byte v1, v3, v5

    .line 43
    add-int/lit8 v5, v5, 0x1

    .line 41
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    :cond_0
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    const-string v0, "[ACK] {"

    .line 89
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "src: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/toq/base/tftp/FTPACKMessage;->srcTID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dst: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/toq/base/tftp/FTPACKMessage;->desTID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " block_num: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/qualcomm/toq/base/tftp/FTPACKMessage;->blockNumber:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    return-object v0
.end method

.method public unpack([B)V
    .locals 8
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/base/tftp/FTPMessageException;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v6, 0x0

    aget-byte v4, p1, v6

    .line 59
    .local v4, "opcode":B
    const/4 v6, 0x1

    aget-byte v5, p1, v6

    .line 60
    .local v5, "source":B
    const/4 v6, 0x2

    aget-byte v3, p1, v6

    .line 62
    .local v3, "destination":B
    const/4 v6, 0x4

    const/16 v7, 0x8

    invoke-static {p1, v6, v7}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v2

    .line 63
    .local v2, "block_number":[B
    invoke-static {v2}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoLong([B)J

    move-result-wide v0

    .line 65
    .local v0, "blockNumber":J
    const/4 v6, 0x5

    if-eq v4, v6, :cond_0

    .line 66
    new-instance v6, Lcom/qualcomm/toq/base/tftp/FTPMessageException;

    const-string v7, "Bad Opcode Error. FTP Message is not ack type"

    invoke-direct {v6, v7}, Lcom/qualcomm/toq/base/tftp/FTPMessageException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 69
    :cond_0
    iput-byte v4, p0, Lcom/qualcomm/toq/base/tftp/FTPACKMessage;->opCode:B

    .line 70
    and-int/lit16 v6, v5, 0xff

    iput v6, p0, Lcom/qualcomm/toq/base/tftp/FTPACKMessage;->srcTID:I

    .line 71
    and-int/lit16 v6, v3, 0xff

    iput v6, p0, Lcom/qualcomm/toq/base/tftp/FTPACKMessage;->desTID:I

    .line 72
    iput-wide v0, p0, Lcom/qualcomm/toq/base/tftp/FTPACKMessage;->blockNumber:J

    .line 85
    return-void
.end method

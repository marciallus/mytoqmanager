.class public Lcom/qualcomm/toq/base/tftp/FTPDATMessage;
.super Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
.source "FTPDATMessage.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;-><init>()V

    .line 14
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;->opCode:B

    .line 15
    iput v1, p0, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;->srcTID:I

    .line 16
    iput v1, p0, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;->desTID:I

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;->blockNumber:J

    .line 19
    return-void
.end method

.method public constructor <init>(IIJ[B)V
    .locals 1
    .param p1, "srcTID"    # I
    .param p2, "dstTID"    # I
    .param p3, "blockNumber"    # J
    .param p5, "payload"    # [B

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;-><init>()V

    .line 24
    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;->opCode:B

    .line 25
    iput p1, p0, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;->srcTID:I

    .line 26
    iput p2, p0, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;->desTID:I

    .line 27
    iput-wide p3, p0, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;->blockNumber:J

    .line 28
    iput-object p5, p0, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;->payload:[B

    .line 29
    return-void
.end method


# virtual methods
.method public pack()[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/base/tftp/FTPMessageException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 34
    iget-object v9, p0, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;->payload:[B

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;->payload:[B

    array-length v9, v9

    sget v10, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->BLOCK_SIZE:I

    if-le v9, v10, :cond_0

    .line 35
    new-instance v9, Lcom/qualcomm/toq/base/tftp/FTPMessageException;

    const-string v10, "Block length is more than 512 bytes"

    invoke-direct {v9, v10}, Lcom/qualcomm/toq/base/tftp/FTPMessageException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 38
    :cond_0
    iget-object v9, p0, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;->payload:[B

    array-length v9, v9

    add-int/lit8 v8, v9, 0x8

    .line 44
    .local v8, "msgLength":I
    new-array v3, v8, [B

    .line 46
    .local v3, "data":[B
    iget-byte v9, p0, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;->opCode:B

    aput-byte v9, v3, v11

    .line 47
    const/4 v9, 0x1

    iget v10, p0, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;->srcTID:I

    int-to-byte v10, v10

    aput-byte v10, v3, v9

    .line 48
    const/4 v9, 0x2

    iget v10, p0, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;->desTID:I

    int-to-byte v10, v10

    aput-byte v10, v3, v9

    .line 49
    const/4 v9, 0x3

    aput-byte v11, v3, v9

    .line 51
    iget-wide v9, p0, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;->blockNumber:J

    const/4 v11, 0x4

    invoke-static {v9, v10, v11}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertUnsignedNumbersToBytes(JI)[B

    move-result-object v2

    .line 54
    .local v2, "blockNumberInByteArray":[B
    const/4 v5, 0x4

    .line 55
    .local v5, "index":I
    if-eqz v2, :cond_1

    .line 56
    move-object v0, v2

    .local v0, "arr$":[B
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_1

    aget-byte v1, v0, v4

    .line 57
    .local v1, "b":B
    aput-byte v1, v3, v5

    .line 58
    add-int/lit8 v5, v5, 0x1

    .line 56
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    :cond_1
    iget-object v7, p0, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;->payload:[B

    .line 63
    .local v7, "messagebytes":[B
    const/16 v5, 0x8

    .line 64
    if-eqz v7, :cond_2

    .line 65
    move-object v0, v7

    .restart local v0    # "arr$":[B
    array-length v6, v0

    .restart local v6    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v6, :cond_2

    aget-byte v1, v0, v4

    .line 66
    .restart local v1    # "b":B
    aput-byte v1, v3, v5

    .line 67
    add-int/lit8 v5, v5, 0x1

    .line 65
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 71
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    :cond_2
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 126
    const-string v0, "[DAT] {"

    .line 127
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "src: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;->srcTID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dst: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;->desTID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " block_num: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;->blockNumber:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " payload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;->payload:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    return-object v0
.end method

.method public unpack([B)V
    .locals 10
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/base/tftp/FTPMessageException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x4

    .line 89
    const/4 v7, 0x0

    aget-byte v5, p1, v7

    .line 90
    .local v5, "opcode":B
    const/4 v7, 0x1

    aget-byte v6, p1, v7

    .line 91
    .local v6, "source":B
    const/4 v7, 0x2

    aget-byte v3, p1, v7

    .line 93
    .local v3, "destination":B
    invoke-static {p1, v8, v9}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v2

    .line 94
    .local v2, "block_number":[B
    invoke-static {v2}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoLong([B)J

    move-result-wide v0

    .line 96
    .local v0, "blockNumber":J
    array-length v7, p1

    invoke-static {p1, v9, v7}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v4

    .line 99
    .local v4, "msgBuffer":[B
    if-eq v5, v8, :cond_0

    .line 100
    new-instance v7, Lcom/qualcomm/toq/base/tftp/FTPMessageException;

    const-string v8, "Bad Opcode Error.FTP Message is not data type"

    invoke-direct {v7, v8}, Lcom/qualcomm/toq/base/tftp/FTPMessageException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 103
    :cond_0
    iput-byte v5, p0, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;->opCode:B

    .line 104
    and-int/lit16 v7, v6, 0xff

    iput v7, p0, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;->srcTID:I

    .line 105
    and-int/lit16 v7, v3, 0xff

    iput v7, p0, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;->desTID:I

    .line 106
    iput-wide v0, p0, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;->blockNumber:J

    .line 107
    iput-object v4, p0, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;->payload:[B

    .line 123
    return-void
.end method

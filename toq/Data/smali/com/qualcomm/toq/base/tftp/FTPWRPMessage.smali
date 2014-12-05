.class public Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;
.super Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
.source "FTPWRPMessage.java"


# instance fields
.field protected windowSize:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;-><init>()V

    .line 10
    iput v2, p0, Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;->windowSize:I

    .line 14
    const/4 v0, 0x7

    iput-byte v0, p0, Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;->opCode:B

    .line 15
    iput v1, p0, Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;->srcTID:I

    .line 16
    iput v1, p0, Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;->desTID:I

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;->blockNumber:J

    .line 18
    iput v2, p0, Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;->windowSize:I

    .line 19
    return-void
.end method

.method constructor <init>(IIJI)V
    .locals 1
    .param p1, "srcTID"    # I
    .param p2, "desTID"    # I
    .param p3, "blockNumber"    # J
    .param p5, "windowSize"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;-><init>()V

    .line 10
    const/4 v0, 0x1

    iput v0, p0, Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;->windowSize:I

    .line 23
    const/4 v0, 0x7

    iput-byte v0, p0, Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;->opCode:B

    .line 24
    iput p1, p0, Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;->srcTID:I

    .line 25
    iput p2, p0, Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;->desTID:I

    .line 26
    iput-wide p3, p0, Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;->blockNumber:J

    .line 27
    iput p5, p0, Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;->windowSize:I

    .line 28
    return-void
.end method


# virtual methods
.method public pack()[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/base/tftp/FTPMessageException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 33
    iget-object v8, p0, Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;->fileName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xc8

    if-le v8, v9, :cond_0

    .line 34
    new-instance v8, Lcom/qualcomm/toq/base/tftp/FTPMessageException;

    const-string v9, "File Name is more than 200 bytes"

    invoke-direct {v8, v9}, Lcom/qualcomm/toq/base/tftp/FTPMessageException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 37
    :cond_0
    const/16 v7, 0x9

    .line 41
    .local v7, "msgLength":I
    new-array v3, v7, [B

    .line 43
    .local v3, "data":[B
    iget-byte v8, p0, Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;->opCode:B

    aput-byte v8, v3, v10

    .line 44
    const/4 v8, 0x1

    iget v9, p0, Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;->srcTID:I

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    .line 45
    const/4 v8, 0x2

    iget v9, p0, Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;->desTID:I

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    .line 46
    const/4 v8, 0x3

    aput-byte v10, v3, v8

    .line 48
    iget-wide v8, p0, Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;->blockNumber:J

    const/4 v10, 0x4

    invoke-static {v8, v9, v10}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertUnsignedNumbersToBytes(JI)[B

    move-result-object v2

    .line 50
    .local v2, "blockNumberInByteArray":[B
    const/4 v5, 0x4

    .line 51
    .local v5, "index":I
    if-eqz v2, :cond_1

    .line 52
    move-object v0, v2

    .local v0, "arr$":[B
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_1

    aget-byte v1, v0, v4

    .line 53
    .local v1, "b":B
    aput-byte v1, v3, v5

    .line 54
    add-int/lit8 v5, v5, 0x1

    .line 52
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    :cond_1
    const/16 v8, 0x8

    iget v9, p0, Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;->windowSize:I

    int-to-byte v9, v9

    aput-byte v9, v3, v8

    .line 60
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 111
    const-string v0, "[WRP] {"

    .line 112
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "src: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;->srcTID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dst: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;->desTID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " block_num: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;->blockNumber:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;->windowSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
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
    const/4 v9, 0x7

    .line 74
    const/4 v8, 0x0

    aget-byte v5, p1, v8

    .line 75
    .local v5, "opcode":B
    const/4 v8, 0x1

    aget-byte v6, p1, v8

    .line 76
    .local v6, "source":B
    const/4 v8, 0x2

    aget-byte v4, p1, v8

    .line 78
    .local v4, "destination":B
    const/4 v8, 0x4

    invoke-static {p1, v8, v9}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v3

    .line 79
    .local v3, "blockNumberArr":[B
    invoke-static {v3}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoLong([B)J

    move-result-wide v1

    .line 81
    .local v1, "blockNumber":J
    const/16 v8, 0x8

    aget-byte v7, p1, v8

    .line 83
    .local v7, "windowSize":B
    if-eq v5, v9, :cond_0

    .line 84
    new-instance v8, Lcom/qualcomm/toq/base/tftp/FTPMessageException;

    const-string v9, "Bad Opcode Error.FTP Message is not WRP type"

    invoke-direct {v8, v9}, Lcom/qualcomm/toq/base/tftp/FTPMessageException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 87
    :cond_0
    iput-byte v5, p0, Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;->opCode:B

    .line 88
    and-int/lit16 v8, v6, 0xff

    iput v8, p0, Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;->srcTID:I

    .line 89
    and-int/lit16 v8, v4, 0xff

    iput v8, p0, Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;->desTID:I

    .line 90
    iput-wide v1, p0, Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;->blockNumber:J

    .line 92
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v7}, Ljava/lang/Byte;-><init>(B)V

    .line 93
    .local v0, "bWindowSize":Ljava/lang/Byte;
    invoke-virtual {v0}, Ljava/lang/Byte;->intValue()I

    move-result v8

    iput v8, p0, Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;->windowSize:I

    .line 108
    return-void
.end method

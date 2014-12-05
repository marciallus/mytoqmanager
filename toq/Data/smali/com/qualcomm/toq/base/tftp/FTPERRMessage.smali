.class public Lcom/qualcomm/toq/base/tftp/FTPERRMessage;
.super Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
.source "FTPERRMessage.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;-><init>()V

    .line 12
    const/4 v0, 0x6

    iput-byte v0, p0, Lcom/qualcomm/toq/base/tftp/FTPERRMessage;->opCode:B

    .line 13
    iput v1, p0, Lcom/qualcomm/toq/base/tftp/FTPERRMessage;->srcTID:I

    .line 14
    iput v1, p0, Lcom/qualcomm/toq/base/tftp/FTPERRMessage;->desTID:I

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qualcomm/toq/base/tftp/FTPERRMessage;->errCode:J

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/qualcomm/toq/base/tftp/FTPERRMessage;->errMessage:Ljava/lang/String;

    .line 17
    return-void
.end method

.method constructor <init>(IISLjava/lang/String;)V
    .locals 2
    .param p1, "srcTID"    # I
    .param p2, "dstTID"    # I
    .param p3, "errCode"    # S
    .param p4, "errMessage"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;-><init>()V

    .line 21
    const/4 v0, 0x6

    iput-byte v0, p0, Lcom/qualcomm/toq/base/tftp/FTPERRMessage;->opCode:B

    .line 22
    iput p1, p0, Lcom/qualcomm/toq/base/tftp/FTPERRMessage;->srcTID:I

    .line 23
    iput p2, p0, Lcom/qualcomm/toq/base/tftp/FTPERRMessage;->desTID:I

    .line 24
    int-to-long v0, p3

    iput-wide v0, p0, Lcom/qualcomm/toq/base/tftp/FTPERRMessage;->errCode:J

    .line 25
    iput-object p4, p0, Lcom/qualcomm/toq/base/tftp/FTPERRMessage;->errMessage:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public pack()[B
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/base/tftp/FTPMessageException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 31
    iget-object v9, p0, Lcom/qualcomm/toq/base/tftp/FTPERRMessage;->errMessage:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0xc8

    if-le v9, v10, :cond_0

    .line 32
    new-instance v9, Lcom/qualcomm/toq/base/tftp/FTPMessageException;

    const-string v10, "Error message length is more than 200"

    invoke-direct {v9, v10}, Lcom/qualcomm/toq/base/tftp/FTPMessageException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 35
    :cond_0
    iget-object v9, p0, Lcom/qualcomm/toq/base/tftp/FTPERRMessage;->errMessage:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v8, v9, 0x6

    .line 41
    .local v8, "msgLength":I
    new-array v2, v8, [B

    .line 43
    .local v2, "data":[B
    iget-byte v9, p0, Lcom/qualcomm/toq/base/tftp/FTPERRMessage;->opCode:B

    aput-byte v9, v2, v11

    .line 44
    iget v9, p0, Lcom/qualcomm/toq/base/tftp/FTPERRMessage;->srcTID:I

    int-to-byte v9, v9

    aput-byte v9, v2, v12

    .line 45
    iget v9, p0, Lcom/qualcomm/toq/base/tftp/FTPERRMessage;->desTID:I

    int-to-byte v9, v9

    aput-byte v9, v2, v13

    .line 46
    const/4 v9, 0x3

    aput-byte v11, v2, v9

    .line 49
    iget-wide v9, p0, Lcom/qualcomm/toq/base/tftp/FTPERRMessage;->errCode:J

    invoke-static {v9, v10, v13}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertUnsignedNumbersToBytes(JI)[B

    move-result-object v3

    .line 52
    .local v3, "errorCodeInByteArray":[B
    const/4 v9, 0x4

    aget-byte v10, v3, v11

    aput-byte v10, v2, v9

    .line 53
    const/4 v9, 0x5

    aget-byte v10, v3, v12

    aput-byte v10, v2, v9

    .line 55
    iget-object v9, p0, Lcom/qualcomm/toq/base/tftp/FTPERRMessage;->errMessage:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 56
    .local v7, "messagebytes":[B
    const/4 v5, 0x6

    .line 57
    .local v5, "index":I
    if-eqz v7, :cond_1

    .line 58
    move-object v0, v7

    .local v0, "arr$":[B
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_1

    aget-byte v1, v0, v4

    .line 59
    .local v1, "b":B
    aput-byte v1, v2, v5

    .line 60
    add-int/lit8 v5, v5, 0x1

    .line 58
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    :cond_1
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 121
    const-string v0, "[ERR] {"

    .line 122
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "src: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/toq/base/tftp/FTPERRMessage;->srcTID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dst: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/toq/base/tftp/FTPERRMessage;->desTID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/qualcomm/toq/base/tftp/FTPERRMessage;->errCode:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/base/tftp/FTPERRMessage;->errMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
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
    const/4 v9, 0x6

    .line 82
    const/4 v8, 0x0

    aget-byte v6, p1, v8

    .line 83
    .local v6, "opcode":B
    const/4 v8, 0x1

    aget-byte v7, p1, v8

    .line 84
    .local v7, "source":B
    const/4 v8, 0x2

    aget-byte v0, p1, v8

    .line 86
    .local v0, "destination":B
    const/4 v8, 0x4

    invoke-static {p1, v8, v9}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v1

    .line 89
    .local v1, "errCode":[B
    invoke-static {v1}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoLong([B)J

    move-result-wide v2

    .line 91
    .local v2, "errorCode":J
    array-length v8, p1

    invoke-static {p1, v9, v8}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v5

    .line 92
    .local v5, "msgBuffer":[B
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 94
    .local v4, "errorMsg":Ljava/lang/String;
    if-eq v6, v9, :cond_0

    .line 95
    new-instance v8, Lcom/qualcomm/toq/base/tftp/FTPMessageException;

    const-string v9, "Bad Opcode Error.FTP Message is not error type"

    invoke-direct {v8, v9}, Lcom/qualcomm/toq/base/tftp/FTPMessageException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 98
    :cond_0
    iput-byte v6, p0, Lcom/qualcomm/toq/base/tftp/FTPERRMessage;->opCode:B

    .line 99
    iput v7, p0, Lcom/qualcomm/toq/base/tftp/FTPERRMessage;->srcTID:I

    .line 100
    iput v0, p0, Lcom/qualcomm/toq/base/tftp/FTPERRMessage;->desTID:I

    .line 101
    iput-wide v2, p0, Lcom/qualcomm/toq/base/tftp/FTPERRMessage;->errCode:J

    .line 103
    iput-object v4, p0, Lcom/qualcomm/toq/base/tftp/FTPERRMessage;->errMessage:Ljava/lang/String;

    .line 118
    return-void
.end method

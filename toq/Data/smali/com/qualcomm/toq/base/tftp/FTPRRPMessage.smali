.class public Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;
.super Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
.source "FTPRRPMessage.java"


# instance fields
.field protected windowSize:I


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;-><init>()V

    .line 10
    iput v2, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->windowSize:I

    .line 14
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->opCode:B

    .line 15
    iput v1, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->srcTID:I

    .line 16
    iput v1, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->desTID:I

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->fileName:Ljava/lang/String;

    .line 18
    iput-wide v3, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->fileSize:J

    .line 19
    iput-wide v3, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->crc:J

    .line 20
    iput v2, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->windowSize:I

    .line 21
    return-void
.end method

.method constructor <init>(IILjava/lang/String;JJI)V
    .locals 1
    .param p1, "srcTID"    # I
    .param p2, "dstTID"    # I
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "fileSize"    # J
    .param p6, "crc"    # J
    .param p8, "windowSize"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;-><init>()V

    .line 10
    const/4 v0, 0x1

    iput v0, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->windowSize:I

    .line 26
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->opCode:B

    .line 27
    iput p1, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->srcTID:I

    .line 28
    iput p2, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->desTID:I

    .line 29
    iput-object p3, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->fileName:Ljava/lang/String;

    .line 30
    iput-wide p4, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->fileSize:J

    .line 31
    iput-wide p6, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->crc:J

    .line 32
    iput p8, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->windowSize:I

    .line 33
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
    const/4 v13, 0x4

    const/4 v12, 0x0

    .line 38
    iget-object v10, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->fileName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xc8

    if-le v10, v11, :cond_0

    .line 39
    new-instance v10, Lcom/qualcomm/toq/base/tftp/FTPMessageException;

    const-string v11, "File Name is more than 200 bytes"

    invoke-direct {v10, v11}, Lcom/qualcomm/toq/base/tftp/FTPMessageException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 42
    :cond_0
    const/16 v9, 0xd5

    .line 49
    .local v9, "msgLength":I
    new-array v3, v9, [B

    .line 51
    .local v3, "data":[B
    iget-byte v10, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->opCode:B

    aput-byte v10, v3, v12

    .line 52
    const/4 v10, 0x1

    iget v11, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->srcTID:I

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 53
    const/4 v10, 0x2

    iget v11, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->desTID:I

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 54
    const/4 v10, 0x3

    aput-byte v12, v3, v10

    .line 56
    iget-object v10, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->fileName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 57
    .local v8, "messagebytes":[B
    const/4 v6, 0x4

    .line 58
    .local v6, "index":I
    if-eqz v8, :cond_1

    .line 59
    move-object v0, v8

    .local v0, "arr$":[B
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_1

    aget-byte v1, v0, v5

    .line 60
    .local v1, "b":B
    aput-byte v1, v3, v6

    .line 61
    add-int/lit8 v6, v6, 0x1

    .line 59
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    :cond_1
    iget-wide v10, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->fileSize:J

    invoke-static {v10, v11, v13}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertUnsignedNumbersToBytes(JI)[B

    move-result-object v4

    .line 68
    .local v4, "fileSizeInByteArray":[B
    const/16 v6, 0xcc

    .line 69
    if-eqz v4, :cond_2

    .line 70
    move-object v0, v4

    .restart local v0    # "arr$":[B
    array-length v7, v0

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_1
    if-ge v5, v7, :cond_2

    aget-byte v1, v0, v5

    .line 71
    .restart local v1    # "b":B
    aput-byte v1, v3, v6

    .line 72
    add-int/lit8 v6, v6, 0x1

    .line 70
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 76
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    :cond_2
    iget-wide v10, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->crc:J

    invoke-static {v10, v11, v13}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertUnsignedNumbersToBytes(JI)[B

    move-result-object v2

    .line 78
    .local v2, "crcInByteArray":[B
    const/16 v6, 0xd0

    .line 79
    if-eqz v2, :cond_3

    .line 80
    move-object v0, v2

    .restart local v0    # "arr$":[B
    array-length v7, v0

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_2
    if-ge v5, v7, :cond_3

    aget-byte v1, v0, v5

    .line 81
    .restart local v1    # "b":B
    aput-byte v1, v3, v6

    .line 82
    add-int/lit8 v6, v6, 0x1

    .line 80
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 86
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    :cond_3
    const/16 v10, 0xd4

    iget v11, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->windowSize:I

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 88
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 155
    const-string v0, "[RRP] {"

    .line 156
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "src: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->srcTID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dst: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->desTID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->fileSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " crc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->crc:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->windowSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    return-object v0
.end method

.method public unpack([B)V
    .locals 16
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/base/tftp/FTPMessageException;
        }
    .end annotation

    .prologue
    .line 106
    const/4 v14, 0x0

    aget-byte v11, p1, v14

    .line 107
    .local v11, "opcode":B
    const/4 v14, 0x1

    aget-byte v12, p1, v14

    .line 108
    .local v12, "source":B
    const/4 v14, 0x2

    aget-byte v5, p1, v14

    .line 110
    .local v5, "destination":B
    const/4 v14, 0x4

    const/16 v15, 0xcc

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v7

    .line 111
    .local v7, "fileNameArr":[B
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .line 113
    .local v6, "fileName":Ljava/lang/String;
    const/16 v14, 0xcc

    const/16 v15, 0xd0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v10

    .line 114
    .local v10, "fileSizeArr":[B
    invoke-static {v10}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoLong([B)J

    move-result-wide v8

    .line 116
    .local v8, "fileSize":J
    const/16 v14, 0xd0

    const/16 v15, 0xd4

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v4

    .line 117
    .local v4, "crcArr":[B
    invoke-static {v4}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoLong([B)J

    move-result-wide v2

    .line 119
    .local v2, "crc":J
    const-wide/16 v14, 0xff

    and-long/2addr v2, v14

    .line 121
    const/16 v14, 0xd4

    aget-byte v13, p1, v14

    .line 123
    .local v13, "windowSize":B
    const/4 v14, 0x2

    if-eq v11, v14, :cond_0

    .line 124
    new-instance v14, Lcom/qualcomm/toq/base/tftp/FTPMessageException;

    const-string v15, "Bad Opcode Error.FTP Message is not RRP type"

    invoke-direct {v14, v15}, Lcom/qualcomm/toq/base/tftp/FTPMessageException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 127
    :cond_0
    move-object/from16 v0, p0

    iput-byte v11, v0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->opCode:B

    .line 128
    and-int/lit16 v14, v12, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->srcTID:I

    .line 129
    and-int/lit16 v14, v5, 0xff

    move-object/from16 v0, p0

    iput v14, v0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->desTID:I

    .line 131
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->fileName:Ljava/lang/String;

    .line 132
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->fileSize:J

    .line 133
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->crc:J

    .line 135
    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, v13}, Ljava/lang/Byte;-><init>(B)V

    .line 136
    .local v1, "bWindowSize":Ljava/lang/Byte;
    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;->windowSize:I

    .line 152
    return-void
.end method

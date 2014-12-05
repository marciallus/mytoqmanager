.class public Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;
.super Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
.source "FTPWRQMessage.java"


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
    iput v2, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->windowSize:I

    .line 14
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->opCode:B

    .line 15
    iput v1, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->srcTID:I

    .line 16
    iput v1, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->desTID:I

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->fileName:Ljava/lang/String;

    .line 18
    iput-wide v3, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->fileSize:J

    .line 19
    iput-wide v3, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->crc:J

    .line 20
    iput-short v1, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->priority:S

    .line 21
    iput v2, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->windowSize:I

    .line 22
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;JJSI)V
    .locals 1
    .param p1, "srcTID"    # I
    .param p2, "dstTID"    # I
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "fileSize"    # J
    .param p6, "crc"    # J
    .param p8, "priority"    # S
    .param p9, "windowSize"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;-><init>()V

    .line 10
    const/4 v0, 0x1

    iput v0, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->windowSize:I

    .line 27
    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->opCode:B

    .line 28
    iput p1, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->srcTID:I

    .line 29
    iput p2, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->desTID:I

    .line 30
    iput-object p3, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->fileName:Ljava/lang/String;

    .line 31
    iput-wide p4, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->fileSize:J

    .line 32
    iput-wide p6, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->crc:J

    .line 33
    iput-short p8, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->priority:S

    .line 34
    iput p9, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->windowSize:I

    .line 35
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

    .line 40
    iget-object v10, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->fileName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xc8

    if-le v10, v11, :cond_0

    .line 41
    new-instance v10, Lcom/qualcomm/toq/base/tftp/FTPMessageException;

    const-string v11, "File Name is more than 200 bytes"

    invoke-direct {v10, v11}, Lcom/qualcomm/toq/base/tftp/FTPMessageException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 50
    :cond_0
    const/16 v9, 0xd6

    .line 52
    .local v9, "msgLength":I
    new-array v3, v9, [B

    .line 54
    .local v3, "data":[B
    iget-byte v10, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->opCode:B

    aput-byte v10, v3, v12

    .line 55
    const/4 v10, 0x1

    iget v11, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->srcTID:I

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 56
    const/4 v10, 0x2

    iget v11, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->desTID:I

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 57
    const/4 v10, 0x3

    aput-byte v12, v3, v10

    .line 59
    iget-object v10, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->fileName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 60
    .local v8, "messagebytes":[B
    const/4 v6, 0x4

    .line 61
    .local v6, "index":I
    if-eqz v8, :cond_1

    .line 62
    move-object v0, v8

    .local v0, "arr$":[B
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_1

    aget-byte v1, v0, v5

    .line 63
    .local v1, "b":B
    aput-byte v1, v3, v6

    .line 64
    add-int/lit8 v6, v6, 0x1

    .line 62
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    :cond_1
    iget-wide v10, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->fileSize:J

    invoke-static {v10, v11, v13}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertUnsignedNumbersToBytes(JI)[B

    move-result-object v4

    .line 71
    .local v4, "fileSizeInByteArray":[B
    const/16 v6, 0xcc

    .line 72
    if-eqz v4, :cond_2

    .line 73
    move-object v0, v4

    .restart local v0    # "arr$":[B
    array-length v7, v0

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_1
    if-ge v5, v7, :cond_2

    aget-byte v1, v0, v5

    .line 74
    .restart local v1    # "b":B
    aput-byte v1, v3, v6

    .line 75
    add-int/lit8 v6, v6, 0x1

    .line 73
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 79
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    :cond_2
    iget-wide v10, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->crc:J

    invoke-static {v10, v11, v13}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertUnsignedNumbersToBytes(JI)[B

    move-result-object v2

    .line 81
    .local v2, "crcInByteArray":[B
    const/16 v6, 0xd0

    .line 82
    if-eqz v2, :cond_3

    .line 83
    move-object v0, v2

    .restart local v0    # "arr$":[B
    array-length v7, v0

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .restart local v5    # "i$":I
    :goto_2
    if-ge v5, v7, :cond_3

    aget-byte v1, v0, v5

    .line 84
    .restart local v1    # "b":B
    aput-byte v1, v3, v6

    .line 85
    add-int/lit8 v6, v6, 0x1

    .line 83
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 89
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    :cond_3
    const/16 v10, 0xd4

    iget-short v11, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->priority:S

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 90
    const/16 v10, 0xd5

    iget v11, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->windowSize:I

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 92
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 139
    const-string v0, "[WRQ] {"

    .line 140
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "src: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->srcTID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dst: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->desTID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->fileSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " crc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->crc:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->priority:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->windowSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    return-object v0
.end method

.method public unpack([B)V
    .locals 20
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/base/tftp/FTPMessageException;
        }
    .end annotation

    .prologue
    .line 102
    const/16 v18, 0x0

    aget-byte v14, p1, v18

    .line 103
    .local v14, "opcode":B
    const/16 v18, 0x1

    aget-byte v16, p1, v18

    .line 104
    .local v16, "source":B
    const/16 v18, 0x2

    aget-byte v8, p1, v18

    .line 106
    .local v8, "destination":B
    const/16 v18, 0x4

    const/16 v19, 0xcb

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v10

    .line 107
    .local v10, "fileNameArr":[B
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    .line 109
    .local v9, "fileName":Ljava/lang/String;
    const/16 v18, 0xcc

    const/16 v19, 0xcf

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v13

    .line 110
    .local v13, "fileSizeArr":[B
    invoke-static {v13}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoLong([B)J

    move-result-wide v11

    .line 112
    .local v11, "fileSize":J
    const/16 v18, 0xd0

    const/16 v19, 0xd3

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v7

    .line 113
    .local v7, "crcArr":[B
    invoke-static {v7}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoLong([B)J

    move-result-wide v5

    .line 115
    .local v5, "crc":J
    const/16 v18, 0xd4

    aget-byte v15, p1, v18

    .line 116
    .local v15, "priority":B
    const/16 v18, 0xd5

    aget-byte v17, p1, v18

    .line 118
    .local v17, "windowSize":B
    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v14, v0, :cond_0

    .line 119
    new-instance v18, Lcom/qualcomm/toq/base/tftp/FTPMessageException;

    const-string v19, "Bad Opcode Error.FTP Message is not WRQ type"

    invoke-direct/range {v18 .. v19}, Lcom/qualcomm/toq/base/tftp/FTPMessageException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 122
    :cond_0
    move-object/from16 v0, p0

    iput-byte v14, v0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->opCode:B

    .line 123
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->srcTID:I

    .line 124
    move-object/from16 v0, p0

    iput v8, v0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->desTID:I

    .line 126
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->fileName:Ljava/lang/String;

    .line 127
    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->fileSize:J

    .line 128
    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->crc:J

    .line 130
    new-instance v3, Ljava/lang/Byte;

    invoke-direct {v3, v15}, Ljava/lang/Byte;-><init>(B)V

    .line 131
    .local v3, "bPriority":Ljava/lang/Byte;
    invoke-virtual {v3}, Ljava/lang/Byte;->intValue()I

    move-result v18

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-short v0, v1, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->priority:S

    .line 133
    new-instance v4, Ljava/lang/Byte;

    move/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/lang/Byte;-><init>(B)V

    .line 134
    .local v4, "bWindowSize":Ljava/lang/Byte;
    invoke-virtual {v4}, Ljava/lang/Byte;->intValue()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;->windowSize:I

    .line 136
    return-void
.end method

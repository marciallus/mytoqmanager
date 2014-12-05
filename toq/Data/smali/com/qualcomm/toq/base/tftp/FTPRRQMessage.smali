.class public Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;
.super Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
.source "FTPRRQMessage.java"


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
    iput v2, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->windowSize:I

    .line 14
    iput-byte v2, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->opCode:B

    .line 15
    iput v1, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->srcTID:I

    .line 16
    iput v1, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->desTID:I

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->fileName:Ljava/lang/String;

    .line 18
    iput-short v1, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->priority:S

    .line 19
    iput v2, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->windowSize:I

    .line 20
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;SI)V
    .locals 1
    .param p1, "srcTID"    # I
    .param p2, "dstTID"    # I
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "priority"    # S
    .param p5, "windowSize"    # I

    .prologue
    const/4 v0, 0x1

    .line 24
    invoke-direct {p0}, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;-><init>()V

    .line 10
    iput v0, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->windowSize:I

    .line 25
    iput-byte v0, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->opCode:B

    .line 26
    iput p1, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->srcTID:I

    .line 27
    iput p2, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->desTID:I

    .line 28
    iput-object p3, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->fileName:Ljava/lang/String;

    .line 29
    iput-short p4, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->priority:S

    .line 30
    iput p5, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->windowSize:I

    .line 31
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

    .line 36
    iget-object v8, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->fileName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xc8

    if-le v8, v9, :cond_0

    .line 37
    new-instance v8, Lcom/qualcomm/toq/base/tftp/FTPMessageException;

    const-string v9, "File Name is more than 200 bytes"

    invoke-direct {v8, v9}, Lcom/qualcomm/toq/base/tftp/FTPMessageException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 40
    :cond_0
    const/16 v7, 0xce

    .line 46
    .local v7, "msgLength":I
    new-array v2, v7, [B

    .line 48
    .local v2, "data":[B
    iget-byte v8, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->opCode:B

    aput-byte v8, v2, v10

    .line 49
    const/4 v8, 0x1

    iget v9, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->srcTID:I

    int-to-byte v9, v9

    aput-byte v9, v2, v8

    .line 50
    const/4 v8, 0x2

    iget v9, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->desTID:I

    int-to-byte v9, v9

    aput-byte v9, v2, v8

    .line 51
    const/4 v8, 0x3

    aput-byte v10, v2, v8

    .line 53
    iget-object v8, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->fileName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 54
    .local v6, "messagebytes":[B
    const/4 v4, 0x4

    .line 55
    .local v4, "index":I
    if-eqz v6, :cond_1

    .line 56
    move-object v0, v6

    .local v0, "arr$":[B
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-byte v1, v0, v3

    .line 57
    .local v1, "b":B
    aput-byte v1, v2, v4

    .line 58
    add-int/lit8 v4, v4, 0x1

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    const/16 v8, 0xcc

    iget-short v9, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->priority:S

    int-to-byte v9, v9

    aput-byte v9, v2, v8

    .line 63
    const/16 v8, 0xcd

    iget v9, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->windowSize:I

    int-to-byte v9, v9

    aput-byte v9, v2, v8

    .line 65
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 126
    const-string v0, "[RRQ] {"

    .line 127
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "src: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->srcTID:I

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

    iget v2, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->desTID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->priority:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->windowSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    return-object v0
.end method

.method public unpack([B)V
    .locals 12
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/base/tftp/FTPMessageException;
        }
    .end annotation

    .prologue
    const/16 v11, 0xcc

    const/4 v10, 0x1

    .line 84
    const/4 v9, 0x0

    aget-byte v5, p1, v9

    .line 85
    .local v5, "opcode":B
    aget-byte v7, p1, v10

    .line 86
    .local v7, "source":B
    const/4 v9, 0x2

    aget-byte v2, p1, v9

    .line 88
    .local v2, "destination":B
    const/4 v9, 0x4

    invoke-static {p1, v9, v11}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v4

    .line 89
    .local v4, "fileNameArr":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 91
    .local v3, "fileName":Ljava/lang/String;
    aget-byte v6, p1, v11

    .line 92
    .local v6, "priority":B
    const/16 v9, 0xcd

    aget-byte v8, p1, v9

    .line 94
    .local v8, "windowSize":B
    if-eq v5, v10, :cond_0

    .line 95
    new-instance v9, Lcom/qualcomm/toq/base/tftp/FTPMessageException;

    const-string v10, "Bad Opcode Error.FTP Message is not RRQ type"

    invoke-direct {v9, v10}, Lcom/qualcomm/toq/base/tftp/FTPMessageException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 98
    :cond_0
    iput-byte v5, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->opCode:B

    .line 99
    iput v7, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->srcTID:I

    .line 100
    iput v2, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->desTID:I

    .line 102
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->fileName:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v6}, Ljava/lang/Byte;-><init>(B)V

    .line 105
    .local v0, "bPriority":Ljava/lang/Byte;
    invoke-virtual {v0}, Ljava/lang/Byte;->intValue()I

    move-result v9

    int-to-short v9, v9

    iput-short v9, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->priority:S

    .line 107
    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, v8}, Ljava/lang/Byte;-><init>(B)V

    .line 108
    .local v1, "bWindowSize":Ljava/lang/Byte;
    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v9

    iput v9, p0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;->windowSize:I

    .line 123
    return-void
.end method

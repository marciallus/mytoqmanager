.class public abstract Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
.super Ljava/lang/Object;
.source "FTPBaseMessage.java"


# static fields
.field public static final ACK_ID:B = 0x5t

.field public static final BAD_TID:B = -0x1t

.field public static BLOCK_SIZE:I = 0x0

.field public static final DAT_ID:B = 0x4t

.field public static final ERROR_MESSAGE_SIZE:I = 0xc8

.field public static final ERR_ID:B = 0x6t

.field public static final FILE_NAME_SIZE:I = 0xc8

.field public static final NO_MSG:B = 0x0t

.field public static final RRP_ID:B = 0x2t

.field public static final RRQ_ID:B = 0x1t

.field public static final SERVER_TID:B = 0x45t

.field public static final WRP_ID:B = 0x7t

.field public static final WRQ_ID:B = 0x3t


# instance fields
.field protected blockNumber:J

.field protected crc:J

.field protected desTID:I

.field protected errCode:J

.field protected errMessage:Ljava/lang/String;

.field protected fileName:Ljava/lang/String;

.field protected fileSize:J

.field protected opCode:B

.field protected payload:[B

.field protected priority:S

.field protected srcTID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/16 v0, 0x2000

    sput v0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->BLOCK_SIZE:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->initialize()V

    .line 49
    return-void
.end method

.method public static final generateMessage([B)Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    .locals 3
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/base/tftp/FTPMessageException;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 180
    .local v0, "packet":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    packed-switch v1, :pswitch_data_0

    .line 203
    new-instance v1, Lcom/qualcomm/toq/base/tftp/FTPMessageException;

    const-string v2, "Bad packet.  Invalid TFTP operator code."

    invoke-direct {v1, v2}, Lcom/qualcomm/toq/base/tftp/FTPMessageException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :pswitch_0
    new-instance v0, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;

    .end local v0    # "packet":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    invoke-direct {v0}, Lcom/qualcomm/toq/base/tftp/FTPRRQMessage;-><init>()V

    .line 206
    .restart local v0    # "packet":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    :goto_0
    invoke-virtual {v0, p0}, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->unpack([B)V

    .line 209
    return-object v0

    .line 185
    :pswitch_1
    new-instance v0, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;

    .end local v0    # "packet":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    invoke-direct {v0}, Lcom/qualcomm/toq/base/tftp/FTPRRPMessage;-><init>()V

    .line 186
    .restart local v0    # "packet":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    goto :goto_0

    .line 188
    :pswitch_2
    new-instance v0, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;

    .end local v0    # "packet":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    invoke-direct {v0}, Lcom/qualcomm/toq/base/tftp/FTPWRQMessage;-><init>()V

    .line 189
    .restart local v0    # "packet":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    goto :goto_0

    .line 191
    :pswitch_3
    new-instance v0, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;

    .end local v0    # "packet":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    invoke-direct {v0}, Lcom/qualcomm/toq/base/tftp/FTPDATMessage;-><init>()V

    .line 192
    .restart local v0    # "packet":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    goto :goto_0

    .line 194
    :pswitch_4
    new-instance v0, Lcom/qualcomm/toq/base/tftp/FTPACKMessage;

    .end local v0    # "packet":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    invoke-direct {v0}, Lcom/qualcomm/toq/base/tftp/FTPACKMessage;-><init>()V

    .line 195
    .restart local v0    # "packet":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    goto :goto_0

    .line 197
    :pswitch_5
    new-instance v0, Lcom/qualcomm/toq/base/tftp/FTPERRMessage;

    .end local v0    # "packet":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    invoke-direct {v0}, Lcom/qualcomm/toq/base/tftp/FTPERRMessage;-><init>()V

    .line 198
    .restart local v0    # "packet":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    goto :goto_0

    .line 200
    :pswitch_6
    new-instance v0, Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;

    .end local v0    # "packet":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    invoke-direct {v0}, Lcom/qualcomm/toq/base/tftp/FTPWRPMessage;-><init>()V

    .line 201
    .restart local v0    # "packet":Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    goto :goto_0

    .line 180
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public getBlockNumber()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->blockNumber:J

    return-wide v0
.end method

.method public getCrc()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->crc:J

    return-wide v0
.end method

.method public getDesTID()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->desTID:I

    return v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->fileSize:J

    return-wide v0
.end method

.method public getPayload()[B
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->payload:[B

    return-object v0
.end method

.method public getSrcTID()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->srcTID:I

    return v0
.end method

.method protected initialize()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 52
    iput-byte v1, p0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->opCode:B

    .line 53
    iput v1, p0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->srcTID:I

    .line 54
    iput v1, p0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->desTID:I

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->fileName:Ljava/lang/String;

    .line 56
    iput-wide v2, p0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->crc:J

    .line 57
    iput-wide v2, p0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->fileSize:J

    .line 58
    iput-wide v2, p0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->blockNumber:J

    .line 60
    iput-wide v2, p0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->errCode:J

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->errMessage:Ljava/lang/String;

    .line 62
    iput-short v1, p0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->priority:S

    .line 63
    return-void
.end method

.method public isACK(Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;)Z
    .locals 2
    .param p1, "ftpMsg"    # Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;

    .prologue
    .line 130
    iget-byte v0, p0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->opCode:B

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDAT(Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;)Z
    .locals 2
    .param p1, "ftpMsg"    # Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;

    .prologue
    .line 126
    iget-byte v0, p0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->opCode:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isERR(Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;)Z
    .locals 2
    .param p1, "ftpMsg"    # Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;

    .prologue
    .line 134
    iget-byte v0, p0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->opCode:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRRP(Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;)Z
    .locals 2
    .param p1, "ftpMsg"    # Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;

    .prologue
    .line 118
    iget-byte v0, p0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->opCode:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRRQ(Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;)Z
    .locals 2
    .param p1, "ftpMsg"    # Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;

    .prologue
    const/4 v0, 0x1

    .line 114
    iget-byte v1, p0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->opCode:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWRP(Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;)Z
    .locals 2
    .param p1, "ftpMsg"    # Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;

    .prologue
    .line 138
    iget-byte v0, p0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->opCode:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWRQ(Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;)Z
    .locals 2
    .param p1, "ftpMsg"    # Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;

    .prologue
    .line 122
    iget-byte v0, p0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->opCode:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public messageOpcode(Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;II)B
    .locals 2
    .param p1, "msg"    # Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;
    .param p2, "srcTID"    # I
    .param p3, "desTID"    # I

    .prologue
    const/4 v0, -0x1

    .line 214
    if-nez p1, :cond_1

    .line 215
    const/4 v0, 0x0

    .line 224
    :cond_0
    :goto_0
    return v0

    .line 218
    :cond_1
    if-eqz p2, :cond_2

    iget v1, p1, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->srcTID:I

    if-ne v1, p2, :cond_0

    .line 221
    :cond_2
    if-eqz p3, :cond_3

    iget v1, p1, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->desTID:I

    if-ne v1, p3, :cond_0

    .line 224
    :cond_3
    iget-byte v0, p1, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->opCode:B

    goto :goto_0
.end method

.method public abstract pack()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/base/tftp/FTPMessageException;
        }
    .end annotation
.end method

.method public setBlockNumber(J)V
    .locals 0
    .param p1, "blockNumber"    # J

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->blockNumber:J

    .line 87
    return-void
.end method

.method public setCrc(J)V
    .locals 0
    .param p1, "crc"    # J

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->crc:J

    .line 95
    return-void
.end method

.method public setDesTID(I)V
    .locals 0
    .param p1, "desTID"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->desTID:I

    .line 79
    return-void
.end method

.method public setFileSize(J)V
    .locals 0
    .param p1, "fileSize"    # J

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->fileSize:J

    .line 103
    return-void
.end method

.method public setPayload([B)V
    .locals 0
    .param p1, "payload"    # [B

    .prologue
    .line 110
    iput-object p1, p0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->payload:[B

    .line 111
    return-void
.end method

.method public setSrcTID(I)V
    .locals 0
    .param p1, "srcTID"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/qualcomm/toq/base/tftp/FTPBaseMessage;->srcTID:I

    .line 71
    return-void
.end method

.method public abstract unpack([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/base/tftp/FTPMessageException;
        }
    .end annotation
.end method

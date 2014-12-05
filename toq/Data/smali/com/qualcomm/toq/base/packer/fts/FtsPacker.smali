.class public Lcom/qualcomm/toq/base/packer/fts/FtsPacker;
.super Ljava/lang/Object;
.source "FtsPacker.java"

# interfaces
.implements Lcom/qualcomm/toq/base/packer/IPacker;


# static fields
.field private static final TAG:Ljava/lang/String; = "BinaryPacker"

.field private static mInstance:Lcom/qualcomm/toq/base/packer/fts/FtsPacker;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getPacker()Lcom/qualcomm/toq/base/packer/fts/FtsPacker;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/qualcomm/toq/base/packer/fts/FtsPacker;->mInstance:Lcom/qualcomm/toq/base/packer/fts/FtsPacker;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/qualcomm/toq/base/packer/fts/FtsPacker;

    invoke-direct {v0}, Lcom/qualcomm/toq/base/packer/fts/FtsPacker;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/base/packer/fts/FtsPacker;->mInstance:Lcom/qualcomm/toq/base/packer/fts/FtsPacker;

    .line 24
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/base/packer/fts/FtsPacker;->mInstance:Lcom/qualcomm/toq/base/packer/fts/FtsPacker;

    return-object v0
.end method


# virtual methods
.method public createPackedMessage(Lcom/qualcomm/toq/base/message/Message;)[B
    .locals 1
    .param p1, "message"    # Lcom/qualcomm/toq/base/message/Message;

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public parseMessage([B)Lcom/qualcomm/toq/base/message/Message;
    .locals 21
    .param p1, "data"    # [B

    .prologue
    .line 82
    const/16 v18, 0x0

    .line 83
    .local v18, "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v7, v8}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v19

    .line 84
    .local v19, "source_address_bytes":[B
    invoke-static/range {v19 .. v19}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v2

    .line 85
    .local v2, "source_address":I
    const-string v7, "BinaryPacker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "source_address:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v7, 0x1

    const/4 v8, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v7, v8}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v13

    .line 89
    .local v13, "dest_address_bytes":[B
    invoke-static {v13}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v3

    .line 90
    .local v3, "dest_address":I
    const-string v7, "BinaryPacker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dest_address_bytes:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/4 v7, 0x2

    const/4 v8, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v7, v8}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v17

    .line 94
    .local v17, "msg_length_bytes":[B
    invoke-static/range {v17 .. v17}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v16

    .line 95
    .local v16, "msgLen":I
    const-string v7, "BinaryPacker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "msgLen:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v7, 0x4

    const/4 v8, 0x6

    move-object/from16 v0, p1

    invoke-static {v0, v7, v8}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v20

    .line 99
    .local v20, "transaction_ID_address_bytes":[B
    invoke-static/range {v20 .. v20}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v6

    .line 100
    .local v6, "transaction_ID":I
    const-string v7, "BinaryPacker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "transId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    if-lez v16, :cond_1

    .line 105
    move-object/from16 v0, p1

    array-length v7, v0

    add-int/lit8 v8, v16, 0x6

    if-lt v7, v8, :cond_0

    .line 107
    const/4 v7, 0x6

    const/16 v8, 0xa

    move-object/from16 v0, p1

    invoke-static {v0, v7, v8}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v15

    .line 108
    .local v15, "messageType_bytes":[B
    invoke-static {v15}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v5

    .line 109
    .local v5, "messageType":I
    const-string v7, "BinaryPacker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "messageType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/16 v7, 0xa

    add-int/lit8 v8, v16, 0x6

    move-object/from16 v0, p1

    invoke-static {v0, v7, v8}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v4

    .line 115
    .local v4, "msgBuffer":[B
    :try_start_0
    new-instance v1, Lcom/qualcomm/toq/base/message/Message;

    invoke-direct/range {v1 .. v6}, Lcom/qualcomm/toq/base/message/Message;-><init>(IILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v18    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    .local v1, "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    add-int/lit8 v7, v16, -0x4

    :try_start_1
    iput v7, v1, Lcom/qualcomm/toq/base/message/Message;->payloadLength:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 138
    .end local v4    # "msgBuffer":[B
    .end local v5    # "messageType":I
    .end local v15    # "messageType_bytes":[B
    :goto_0
    return-object v1

    .line 122
    .end local v1    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    .restart local v4    # "msgBuffer":[B
    .restart local v5    # "messageType":I
    .restart local v15    # "messageType_bytes":[B
    .restart local v18    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    :catch_0
    move-exception v14

    move-object/from16 v1, v18

    .line 123
    .end local v18    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    .restart local v1    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    .local v14, "e":Ljava/lang/Exception;
    :goto_1
    const-string v7, "BinaryPacker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in FTS payload: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 128
    .end local v1    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    .end local v4    # "msgBuffer":[B
    .end local v5    # "messageType":I
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v15    # "messageType_bytes":[B
    .restart local v18    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    :cond_0
    const/4 v1, 0x0

    .end local v18    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    .restart local v1    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    goto :goto_0

    .line 132
    .end local v1    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    .restart local v18    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    :cond_1
    new-instance v1, Lcom/qualcomm/toq/base/message/Message;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v1

    move v8, v2

    move v9, v3

    move v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/qualcomm/toq/base/message/Message;-><init>(IILjava/lang/Object;II)V

    .end local v18    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    .restart local v1    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    goto :goto_0

    .line 122
    .restart local v4    # "msgBuffer":[B
    .restart local v5    # "messageType":I
    .restart local v15    # "messageType_bytes":[B
    :catch_1
    move-exception v14

    goto :goto_1
.end method

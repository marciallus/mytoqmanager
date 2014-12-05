.class public Lcom/qualcomm/toq/base/packer/tftp/TFTPPacker;
.super Ljava/lang/Object;
.source "TFTPPacker.java"

# interfaces
.implements Lcom/qualcomm/toq/base/packer/IPacker;


# static fields
.field private static mInstance:Lcom/qualcomm/toq/base/packer/tftp/TFTPPacker;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getPacker()Lcom/qualcomm/toq/base/packer/tftp/TFTPPacker;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/qualcomm/toq/base/packer/tftp/TFTPPacker;->mInstance:Lcom/qualcomm/toq/base/packer/tftp/TFTPPacker;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/qualcomm/toq/base/packer/tftp/TFTPPacker;

    invoke-direct {v0}, Lcom/qualcomm/toq/base/packer/tftp/TFTPPacker;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/base/packer/tftp/TFTPPacker;->mInstance:Lcom/qualcomm/toq/base/packer/tftp/TFTPPacker;

    .line 138
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/base/packer/tftp/TFTPPacker;->mInstance:Lcom/qualcomm/toq/base/packer/tftp/TFTPPacker;

    return-object v0
.end method


# virtual methods
.method public createPackedMessage(Lcom/qualcomm/toq/base/message/Message;)[B
    .locals 17
    .param p1, "message"    # Lcom/qualcomm/toq/base/message/Message;

    .prologue
    .line 21
    const/4 v8, 0x0

    .line 22
    .local v8, "messageLength":I
    const/4 v10, 0x0

    .line 24
    .local v10, "messagebytes":[B
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/qualcomm/toq/base/message/Message;->payload:Ljava/lang/Object;

    if-eqz v14, :cond_1

    .line 26
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Payload = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/qualcomm/toq/base/message/Message;->payload:Ljava/lang/Object;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/qualcomm/toq/base/message/Message;->payload:Ljava/lang/Object;

    if-eqz v14, :cond_0

    .line 32
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/qualcomm/toq/base/message/Message;->payload:Ljava/lang/Object;

    check-cast v14, [B

    move-object v10, v14

    check-cast v10, [B

    .line 34
    array-length v8, v10

    .line 38
    :cond_0
    move-object/from16 v0, p1

    iget v14, v0, Lcom/qualcomm/toq/base/message/Message;->srcAdd:I

    int-to-long v14, v14

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertUnsignedNumbersToBytes(JI)[B

    move-result-object v12

    .line 40
    .local v12, "srcAddInByteArray":[B
    move-object/from16 v0, p1

    iget v14, v0, Lcom/qualcomm/toq/base/message/Message;->destAdd:I

    int-to-long v14, v14

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertUnsignedNumbersToBytes(JI)[B

    move-result-object v4

    .line 44
    .local v4, "destAddInByteArray":[B
    int-to-long v14, v8

    const/16 v16, 0x2

    invoke-static/range {v14 .. v16}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertUnsignedNumbersToBytes(JI)[B

    move-result-object v9

    .line 47
    .local v9, "messageLengthInByteArray":[B
    move-object/from16 v0, p1

    iget v14, v0, Lcom/qualcomm/toq/base/message/Message;->transactionId:I

    int-to-long v14, v14

    const/16 v16, 0x2

    invoke-static/range {v14 .. v16}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertUnsignedNumbersToBytes(JI)[B

    move-result-object v13

    .line 50
    .local v13, "transIDByteArray":[B
    add-int/lit8 v3, v8, 0x6

    .line 51
    .local v3, "bufferLength":I
    new-array v11, v3, [B

    .line 52
    .local v11, "outputbuffer":[B
    const/4 v14, 0x0

    const/4 v15, 0x0

    aget-byte v15, v12, v15

    aput-byte v15, v11, v14

    .line 53
    const/4 v14, 0x1

    const/4 v15, 0x0

    aget-byte v15, v4, v15

    aput-byte v15, v11, v14

    .line 54
    const/4 v14, 0x2

    const/4 v15, 0x0

    aget-byte v15, v9, v15

    aput-byte v15, v11, v14

    .line 55
    const/4 v14, 0x3

    const/4 v15, 0x1

    aget-byte v15, v9, v15

    aput-byte v15, v11, v14

    .line 56
    const/4 v14, 0x4

    const/4 v15, 0x0

    aget-byte v15, v13, v15

    aput-byte v15, v11, v14

    .line 57
    const/4 v14, 0x5

    const/4 v15, 0x1

    aget-byte v15, v13, v15

    aput-byte v15, v11, v14

    .line 59
    const/4 v6, 0x6

    .line 60
    .local v6, "index":I
    if-eqz v10, :cond_2

    .line 61
    move-object v1, v10

    .local v1, "arr$":[B
    array-length v7, v1

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_2

    aget-byte v2, v1, v5

    .line 62
    .local v2, "b":B
    aput-byte v2, v11, v6

    .line 63
    add-int/lit8 v6, v6, 0x1

    .line 61
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "arr$":[B
    .end local v2    # "b":B
    .end local v3    # "bufferLength":I
    .end local v4    # "destAddInByteArray":[B
    .end local v5    # "i$":I
    .end local v6    # "index":I
    .end local v7    # "len$":I
    .end local v9    # "messageLengthInByteArray":[B
    .end local v11    # "outputbuffer":[B
    .end local v12    # "srcAddInByteArray":[B
    .end local v13    # "transIDByteArray":[B
    :cond_1
    const/4 v11, 0x0

    :cond_2
    return-object v11
.end method

.method public parseMessage([B)Lcom/qualcomm/toq/base/message/Message;
    .locals 19
    .param p1, "data"    # [B

    .prologue
    .line 76
    const/16 v16, 0x0

    .line 77
    .local v16, "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v5, v7}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v17

    .line 78
    .local v17, "source_address_bytes":[B
    invoke-static/range {v17 .. v17}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v2

    .line 81
    .local v2, "source_address":I
    const/4 v5, 0x1

    const/4 v7, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v5, v7}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v13

    .line 82
    .local v13, "dest_address_bytes":[B
    invoke-static {v13}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v3

    .line 89
    .local v3, "dest_address":I
    const/4 v5, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p1

    invoke-static {v0, v5, v7}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v18

    .line 90
    .local v18, "transaction_ID_address_bytes":[B
    invoke-static/range {v18 .. v18}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v6

    .line 93
    .local v6, "transaction_ID":I
    move-object/from16 v0, p1

    array-length v5, v0

    add-int/lit8 v15, v5, -0x6

    .line 95
    .local v15, "payloadLen":I
    if-lez v15, :cond_1

    .line 97
    move-object/from16 v0, p1

    array-length v5, v0

    add-int/lit8 v7, v15, 0x6

    if-lt v5, v7, :cond_0

    .line 104
    const/4 v5, 0x6

    add-int/lit8 v7, v15, 0x6

    move-object/from16 v0, p1

    invoke-static {v0, v5, v7}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v4

    .line 108
    .local v4, "payload":[B
    :try_start_0
    new-instance v1, Lcom/qualcomm/toq/base/message/Message;

    const/4 v5, -0x1

    invoke-direct/range {v1 .. v6}, Lcom/qualcomm/toq/base/message/Message;-><init>(IILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v16    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    .local v1, "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    :try_start_1
    iput v15, v1, Lcom/qualcomm/toq/base/message/Message;->payloadLength:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    .end local v4    # "payload":[B
    :goto_0
    return-object v1

    .line 115
    .end local v1    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    .restart local v4    # "payload":[B
    .restart local v16    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    :catch_0
    move-exception v14

    move-object/from16 v1, v16

    .line 116
    .end local v16    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    .restart local v1    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    .local v14, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v1    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    .end local v4    # "payload":[B
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v16    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    :cond_0
    const/4 v1, 0x0

    .end local v16    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    .restart local v1    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    goto :goto_0

    .line 124
    .end local v1    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    .restart local v16    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    :cond_1
    new-instance v1, Lcom/qualcomm/toq/base/message/Message;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v1

    move v8, v2

    move v9, v3

    move v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/qualcomm/toq/base/message/Message;-><init>(IILjava/lang/Object;II)V

    .end local v16    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    .restart local v1    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    goto :goto_0

    .line 115
    .restart local v4    # "payload":[B
    :catch_1
    move-exception v14

    goto :goto_1
.end method

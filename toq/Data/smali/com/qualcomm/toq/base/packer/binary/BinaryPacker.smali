.class public Lcom/qualcomm/toq/base/packer/binary/BinaryPacker;
.super Ljava/lang/Object;
.source "BinaryPacker.java"

# interfaces
.implements Lcom/qualcomm/toq/base/packer/IPacker;


# static fields
.field private static final TAG:Ljava/lang/String; = "BinaryPacker"

.field private static mInstance:Lcom/qualcomm/toq/base/packer/binary/BinaryPacker;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static getPacker()Lcom/qualcomm/toq/base/packer/binary/BinaryPacker;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/qualcomm/toq/base/packer/binary/BinaryPacker;->mInstance:Lcom/qualcomm/toq/base/packer/binary/BinaryPacker;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/qualcomm/toq/base/packer/binary/BinaryPacker;

    invoke-direct {v0}, Lcom/qualcomm/toq/base/packer/binary/BinaryPacker;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/base/packer/binary/BinaryPacker;->mInstance:Lcom/qualcomm/toq/base/packer/binary/BinaryPacker;

    .line 23
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/base/packer/binary/BinaryPacker;->mInstance:Lcom/qualcomm/toq/base/packer/binary/BinaryPacker;

    return-object v0
.end method


# virtual methods
.method public createPackedMessage(Lcom/qualcomm/toq/base/message/Message;)[B
    .locals 18
    .param p1, "message"    # Lcom/qualcomm/toq/base/message/Message;

    .prologue
    .line 29
    if-eqz p1, :cond_2

    .line 35
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/qualcomm/toq/base/message/Message;->payload:Ljava/lang/Object;

    if-nez v15, :cond_0

    const/4 v11, 0x0

    .line 37
    .local v11, "messagebytes":[B
    :goto_0
    if-nez v11, :cond_1

    const/4 v8, 0x4

    .line 40
    .local v8, "messageLength":I
    :goto_1
    move-object/from16 v0, p1

    iget v15, v0, Lcom/qualcomm/toq/base/message/Message;->srcAdd:I

    int-to-long v15, v15

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertUnsignedNumbersToBytes(JI)[B

    move-result-object v13

    .line 42
    .local v13, "srcAddInByteArray":[B
    move-object/from16 v0, p1

    iget v15, v0, Lcom/qualcomm/toq/base/message/Message;->destAdd:I

    int-to-long v15, v15

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertUnsignedNumbersToBytes(JI)[B

    move-result-object v4

    .line 44
    .local v4, "destAddInByteArray":[B
    int-to-long v15, v8

    const/16 v17, 0x2

    invoke-static/range {v15 .. v17}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertUnsignedNumbersToBytes(JI)[B

    move-result-object v9

    .line 46
    .local v9, "messageLengthInByteArray":[B
    move-object/from16 v0, p1

    iget v15, v0, Lcom/qualcomm/toq/base/message/Message;->transactionId:I

    int-to-long v15, v15

    const/16 v17, 0x2

    invoke-static/range {v15 .. v17}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertUnsignedNumbersToBytes(JI)[B

    move-result-object v14

    .line 48
    .local v14, "transIDByteArray":[B
    move-object/from16 v0, p1

    iget v15, v0, Lcom/qualcomm/toq/base/message/Message;->messageType:I

    int-to-long v15, v15

    const/16 v17, 0x4

    invoke-static/range {v15 .. v17}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertUnsignedNumbersToBytes(JI)[B

    move-result-object v10

    .line 51
    .local v10, "messageTypeInByteArray":[B
    add-int/lit8 v3, v8, 0x6

    .line 52
    .local v3, "bufferLength":I
    new-array v12, v3, [B

    .line 53
    .local v12, "outputbuffer":[B
    const/4 v15, 0x0

    const/16 v16, 0x0

    aget-byte v16, v13, v16

    aput-byte v16, v12, v15

    .line 54
    const/4 v15, 0x1

    const/16 v16, 0x0

    aget-byte v16, v4, v16

    aput-byte v16, v12, v15

    .line 55
    const/4 v15, 0x2

    const/16 v16, 0x0

    aget-byte v16, v9, v16

    aput-byte v16, v12, v15

    .line 56
    const/4 v15, 0x3

    const/16 v16, 0x1

    aget-byte v16, v9, v16

    aput-byte v16, v12, v15

    .line 57
    const/4 v15, 0x4

    const/16 v16, 0x0

    aget-byte v16, v14, v16

    aput-byte v16, v12, v15

    .line 58
    const/4 v15, 0x5

    const/16 v16, 0x1

    aget-byte v16, v14, v16

    aput-byte v16, v12, v15

    .line 59
    const/4 v15, 0x6

    const/16 v16, 0x0

    aget-byte v16, v10, v16

    aput-byte v16, v12, v15

    .line 60
    const/4 v15, 0x7

    const/16 v16, 0x1

    aget-byte v16, v10, v16

    aput-byte v16, v12, v15

    .line 61
    const/16 v15, 0x8

    const/16 v16, 0x2

    aget-byte v16, v10, v16

    aput-byte v16, v12, v15

    .line 62
    const/16 v15, 0x9

    const/16 v16, 0x3

    aget-byte v16, v10, v16

    aput-byte v16, v12, v15

    .line 63
    const/16 v6, 0xa

    .line 64
    .local v6, "index":I
    if-eqz v11, :cond_3

    .line 65
    move-object v1, v11

    .local v1, "arr$":[B
    array-length v7, v1

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v7, :cond_3

    aget-byte v2, v1, v5

    .line 66
    .local v2, "b":B
    aput-byte v2, v12, v6

    .line 67
    add-int/lit8 v6, v6, 0x1

    .line 65
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 35
    .end local v1    # "arr$":[B
    .end local v2    # "b":B
    .end local v3    # "bufferLength":I
    .end local v4    # "destAddInByteArray":[B
    .end local v5    # "i$":I
    .end local v6    # "index":I
    .end local v7    # "len$":I
    .end local v8    # "messageLength":I
    .end local v9    # "messageLengthInByteArray":[B
    .end local v10    # "messageTypeInByteArray":[B
    .end local v11    # "messagebytes":[B
    .end local v12    # "outputbuffer":[B
    .end local v13    # "srcAddInByteArray":[B
    .end local v14    # "transIDByteArray":[B
    :cond_0
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/qualcomm/toq/base/message/Message;->payload:Ljava/lang/Object;

    check-cast v15, [B

    check-cast v15, [B

    move-object v11, v15

    goto/16 :goto_0

    .line 37
    .restart local v11    # "messagebytes":[B
    :cond_1
    array-length v15, v11

    add-int/lit8 v8, v15, 0x4

    goto/16 :goto_1

    .line 73
    .end local v11    # "messagebytes":[B
    :cond_2
    const/4 v12, 0x0

    :cond_3
    return-object v12
.end method

.method public parseMessage([B)Lcom/qualcomm/toq/base/message/Message;
    .locals 19
    .param p1, "data"    # [B

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v7, v8}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v17

    .line 82
    .local v17, "source_address_bytes":[B
    invoke-static/range {v17 .. v17}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v2

    .line 85
    .local v2, "source_address":I
    const/4 v7, 0x1

    const/4 v8, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v7, v8}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v13

    .line 86
    .local v13, "dest_address_bytes":[B
    invoke-static {v13}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v3

    .line 89
    .local v3, "dest_address":I
    const/4 v7, 0x2

    const/4 v8, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v7, v8}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v16

    .line 90
    .local v16, "msg_length_bytes":[B
    invoke-static/range {v16 .. v16}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v15

    .line 93
    .local v15, "msgLen":I
    const/4 v7, 0x4

    const/4 v8, 0x6

    move-object/from16 v0, p1

    invoke-static {v0, v7, v8}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v18

    .line 94
    .local v18, "transaction_ID_address_bytes":[B
    invoke-static/range {v18 .. v18}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v6

    .line 97
    .local v6, "transaction_ID":I
    if-lez v15, :cond_1

    .line 99
    move-object/from16 v0, p1

    array-length v7, v0

    add-int/lit8 v8, v15, 0x6

    if-lt v7, v8, :cond_0

    .line 101
    const/4 v7, 0x6

    const/16 v8, 0xa

    move-object/from16 v0, p1

    invoke-static {v0, v7, v8}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v14

    .line 102
    .local v14, "messageType_bytes":[B
    invoke-static {v14}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v5

    .line 105
    .local v5, "messageType":I
    const/16 v7, 0xa

    add-int/lit8 v8, v15, 0x6

    move-object/from16 v0, p1

    invoke-static {v0, v7, v8}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v4

    .line 109
    .local v4, "msgBytes":[B
    new-instance v1, Lcom/qualcomm/toq/base/message/Message;

    .end local v1    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    invoke-direct/range {v1 .. v6}, Lcom/qualcomm/toq/base/message/Message;-><init>(IILjava/lang/Object;II)V

    .line 114
    .restart local v1    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    add-int/lit8 v7, v15, -0x4

    iput v7, v1, Lcom/qualcomm/toq/base/message/Message;->payloadLength:I

    .line 128
    .end local v4    # "msgBytes":[B
    .end local v5    # "messageType":I
    .end local v14    # "messageType_bytes":[B
    :goto_0
    return-object v1

    .line 118
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 122
    :cond_1
    new-instance v1, Lcom/qualcomm/toq/base/message/Message;

    .end local v1    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v1

    move v8, v2

    move v9, v3

    move v12, v6

    invoke-direct/range {v7 .. v12}, Lcom/qualcomm/toq/base/message/Message;-><init>(IILjava/lang/Object;II)V

    .restart local v1    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    goto :goto_0
.end method

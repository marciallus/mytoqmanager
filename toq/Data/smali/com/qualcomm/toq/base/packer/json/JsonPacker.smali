.class public Lcom/qualcomm/toq/base/packer/json/JsonPacker;
.super Ljava/lang/Object;
.source "JsonPacker.java"

# interfaces
.implements Lcom/qualcomm/toq/base/packer/IPacker;


# static fields
.field private static final TAG:Ljava/lang/String; = "JsonPacker"

.field private static mInstance:Lcom/qualcomm/toq/base/packer/json/JsonPacker;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPacker()Lcom/qualcomm/toq/base/packer/json/JsonPacker;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/qualcomm/toq/base/packer/json/JsonPacker;->mInstance:Lcom/qualcomm/toq/base/packer/json/JsonPacker;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/qualcomm/toq/base/packer/json/JsonPacker;

    invoke-direct {v0}, Lcom/qualcomm/toq/base/packer/json/JsonPacker;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/base/packer/json/JsonPacker;->mInstance:Lcom/qualcomm/toq/base/packer/json/JsonPacker;

    .line 145
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/base/packer/json/JsonPacker;->mInstance:Lcom/qualcomm/toq/base/packer/json/JsonPacker;

    return-object v0
.end method


# virtual methods
.method public createPackedMessage(Lcom/qualcomm/toq/base/message/Message;)[B
    .locals 18
    .param p1, "message"    # Lcom/qualcomm/toq/base/message/Message;

    .prologue
    .line 23
    if-eqz p1, :cond_2

    .line 25
    const-string v15, "JsonPacker"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Payload = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/qualcomm/toq/base/message/Message;->payload:Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/qualcomm/toq/base/message/Message;->payload:Ljava/lang/Object;

    if-nez v15, :cond_0

    const/4 v11, 0x0

    .line 30
    .local v11, "messagebytes":[B
    :goto_0
    if-nez v11, :cond_1

    const/4 v8, 0x4

    .line 33
    .local v8, "messageLength":I
    :goto_1
    move-object/from16 v0, p1

    iget v15, v0, Lcom/qualcomm/toq/base/message/Message;->srcAdd:I

    int-to-long v15, v15

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertUnsignedNumbersToBytes(JI)[B

    move-result-object v13

    .line 35
    .local v13, "srcAddInByteArray":[B
    move-object/from16 v0, p1

    iget v15, v0, Lcom/qualcomm/toq/base/message/Message;->destAdd:I

    int-to-long v15, v15

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertUnsignedNumbersToBytes(JI)[B

    move-result-object v4

    .line 37
    .local v4, "destAddInByteArray":[B
    int-to-long v15, v8

    const/16 v17, 0x2

    invoke-static/range {v15 .. v17}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertUnsignedNumbersToBytes(JI)[B

    move-result-object v9

    .line 39
    .local v9, "messageLengthInByteArray":[B
    move-object/from16 v0, p1

    iget v15, v0, Lcom/qualcomm/toq/base/message/Message;->transactionId:I

    int-to-long v15, v15

    const/16 v17, 0x2

    invoke-static/range {v15 .. v17}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertUnsignedNumbersToBytes(JI)[B

    move-result-object v14

    .line 41
    .local v14, "transIDByteArray":[B
    move-object/from16 v0, p1

    iget v15, v0, Lcom/qualcomm/toq/base/message/Message;->messageType:I

    int-to-long v15, v15

    const/16 v17, 0x4

    invoke-static/range {v15 .. v17}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertUnsignedNumbersToBytes(JI)[B

    move-result-object v10

    .line 44
    .local v10, "messageTypeInByteArray":[B
    add-int/lit8 v3, v8, 0x6

    .line 45
    .local v3, "bufferLength":I
    new-array v12, v3, [B

    .line 46
    .local v12, "outputbuffer":[B
    const/4 v15, 0x0

    const/16 v16, 0x0

    aget-byte v16, v13, v16

    aput-byte v16, v12, v15

    .line 47
    const/4 v15, 0x1

    const/16 v16, 0x0

    aget-byte v16, v4, v16

    aput-byte v16, v12, v15

    .line 48
    const/4 v15, 0x2

    const/16 v16, 0x0

    aget-byte v16, v9, v16

    aput-byte v16, v12, v15

    .line 49
    const/4 v15, 0x3

    const/16 v16, 0x1

    aget-byte v16, v9, v16

    aput-byte v16, v12, v15

    .line 50
    const/4 v15, 0x4

    const/16 v16, 0x0

    aget-byte v16, v14, v16

    aput-byte v16, v12, v15

    .line 51
    const/4 v15, 0x5

    const/16 v16, 0x1

    aget-byte v16, v14, v16

    aput-byte v16, v12, v15

    .line 52
    const/4 v15, 0x6

    const/16 v16, 0x0

    aget-byte v16, v10, v16

    aput-byte v16, v12, v15

    .line 53
    const/4 v15, 0x7

    const/16 v16, 0x1

    aget-byte v16, v10, v16

    aput-byte v16, v12, v15

    .line 54
    const/16 v15, 0x8

    const/16 v16, 0x2

    aget-byte v16, v10, v16

    aput-byte v16, v12, v15

    .line 55
    const/16 v15, 0x9

    const/16 v16, 0x3

    aget-byte v16, v10, v16

    aput-byte v16, v12, v15

    .line 56
    const/16 v6, 0xa

    .line 57
    .local v6, "index":I
    if-eqz v11, :cond_3

    .line 58
    move-object v1, v11

    .local v1, "arr$":[B
    array-length v7, v1

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v7, :cond_3

    aget-byte v2, v1, v5

    .line 59
    .local v2, "b":B
    aput-byte v2, v12, v6

    .line 60
    add-int/lit8 v6, v6, 0x1

    .line 58
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 27
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

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    goto/16 :goto_0

    .line 30
    .restart local v11    # "messagebytes":[B
    :cond_1
    array-length v15, v11

    add-int/lit8 v8, v15, 0x4

    goto/16 :goto_1

    .line 66
    .end local v11    # "messagebytes":[B
    :cond_2
    const/4 v12, 0x0

    :cond_3
    return-object v12
.end method

.method public parseMessage([B)Lcom/qualcomm/toq/base/message/Message;
    .locals 25
    .param p1, "data"    # [B

    .prologue
    .line 73
    const/16 v21, 0x0

    .line 74
    .local v21, "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v23

    .line 75
    .local v23, "source_address_bytes":[B
    invoke-static/range {v23 .. v23}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v3

    .line 76
    .local v3, "source_address":I
    const-string v8, "JsonPacker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "source_address:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v8, 0x1

    const/4 v9, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v14

    .line 80
    .local v14, "dest_address_bytes":[B
    invoke-static {v14}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v4

    .line 81
    .local v4, "dest_address":I
    const-string v8, "JsonPacker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dest_address_bytes:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v8, 0x2

    const/4 v9, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v19

    .line 85
    .local v19, "msg_length_bytes":[B
    invoke-static/range {v19 .. v19}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v18

    .line 86
    .local v18, "msgLen":I
    const-string v8, "JsonPacker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "msgLen:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v8, 0x4

    const/4 v9, 0x6

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v24

    .line 90
    .local v24, "transaction_ID_address_bytes":[B
    invoke-static/range {v24 .. v24}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v7

    .line 91
    .local v7, "transaction_ID":I
    const-string v8, "JsonPacker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "transId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    if-lez v18, :cond_1

    .line 96
    move-object/from16 v0, p1

    array-length v8, v0

    add-int/lit8 v9, v18, 0x6

    if-lt v8, v9, :cond_0

    .line 98
    const/4 v8, 0x6

    const/16 v9, 0xa

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v16

    .line 99
    .local v16, "messageType_bytes":[B
    invoke-static/range {v16 .. v16}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v6

    .line 100
    .local v6, "messageType":I
    const-string v8, "JsonPacker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "messageType:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/16 v8, 0xa

    add-int/lit8 v9, v18, 0x6

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v17

    .line 104
    .local v17, "msgBuffer":[B
    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 105
    .local v22, "readMessage":Ljava/lang/String;
    const-string v8, "JsonPacker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readMessage:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/16 v20, 0x0

    .line 110
    .local v20, "payload":Lorg/json/JSONObject;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v20    # "payload":Lorg/json/JSONObject;
    .local v5, "payload":Lorg/json/JSONObject;
    :try_start_1
    const-string v8, "JsonPacker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "payload:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v2, Lcom/qualcomm/toq/base/message/Message;

    invoke-direct/range {v2 .. v7}, Lcom/qualcomm/toq/base/message/Message;-><init>(IILjava/lang/Object;II)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    .end local v21    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    .local v2, "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    add-int/lit8 v8, v18, -0x4

    :try_start_2
    iput v8, v2, Lcom/qualcomm/toq/base/message/Message;->payloadLength:I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 137
    .end local v5    # "payload":Lorg/json/JSONObject;
    .end local v6    # "messageType":I
    .end local v16    # "messageType_bytes":[B
    .end local v17    # "msgBuffer":[B
    .end local v22    # "readMessage":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 120
    .end local v2    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    .restart local v6    # "messageType":I
    .restart local v16    # "messageType_bytes":[B
    .restart local v17    # "msgBuffer":[B
    .restart local v20    # "payload":Lorg/json/JSONObject;
    .restart local v21    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    .restart local v22    # "readMessage":Ljava/lang/String;
    :catch_0
    move-exception v15

    move-object/from16 v5, v20

    .end local v20    # "payload":Lorg/json/JSONObject;
    .restart local v5    # "payload":Lorg/json/JSONObject;
    move-object/from16 v2, v21

    .line 121
    .end local v21    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    .restart local v2    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    .local v15, "e":Lorg/json/JSONException;
    :goto_1
    const-string v8, "JsonPacker"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in JSON payload: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v15}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v15}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 127
    .end local v2    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    .end local v5    # "payload":Lorg/json/JSONObject;
    .end local v6    # "messageType":I
    .end local v15    # "e":Lorg/json/JSONException;
    .end local v16    # "messageType_bytes":[B
    .end local v17    # "msgBuffer":[B
    .end local v22    # "readMessage":Ljava/lang/String;
    .restart local v21    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    :cond_0
    const/4 v2, 0x0

    .end local v21    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    .restart local v2    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    goto :goto_0

    .line 131
    .end local v2    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    .restart local v21    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    :cond_1
    new-instance v2, Lcom/qualcomm/toq/base/message/Message;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v2

    move v9, v3

    move v10, v4

    move v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/qualcomm/toq/base/message/Message;-><init>(IILjava/lang/Object;II)V

    .end local v21    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    .restart local v2    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    goto :goto_0

    .line 120
    .end local v2    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    .restart local v5    # "payload":Lorg/json/JSONObject;
    .restart local v6    # "messageType":I
    .restart local v16    # "messageType_bytes":[B
    .restart local v17    # "msgBuffer":[B
    .restart local v21    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    .restart local v22    # "readMessage":Ljava/lang/String;
    :catch_1
    move-exception v15

    move-object/from16 v2, v21

    .end local v21    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    .restart local v2    # "protocolMessage":Lcom/qualcomm/toq/base/message/Message;
    goto :goto_1

    :catch_2
    move-exception v15

    goto :goto_1
.end method

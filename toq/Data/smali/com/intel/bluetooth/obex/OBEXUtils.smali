.class abstract Lcom/intel/bluetooth/obex/OBEXUtils;
.super Ljava/lang/Object;
.source "OBEXUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bytesToShort(BB)I
    .locals 2
    .param p0, "valueHi"    # B
    .param p1, "valueLo"    # B

    .prologue
    .line 141
    shl-int/lit8 v0, p0, 0x8

    const v1, 0xff00

    and-int/2addr v0, v1

    and-int/lit16 v1, p1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method static getUTF16Bytes(Ljava/lang/String;)[B
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 122
    :try_start_0
    const-string v1, "UTF-16BE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 128
    :goto_0
    return-object v1

    .line 123
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {p0}, Lcom/intel/bluetooth/obex/OBEXUtils;->getUTF16BytesSimple(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0

    .line 126
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {p0}, Lcom/intel/bluetooth/obex/OBEXUtils;->getUTF16BytesSimple(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0
.end method

.method static getUTF16BytesSimple(Ljava/lang/String;)[B
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 111
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 112
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 117
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 113
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 114
    .local v1, "c":C
    invoke-static {v1}, Lcom/intel/bluetooth/obex/OBEXUtils;->hiByte(I)B

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 115
    invoke-static {v1}, Lcom/intel/bluetooth/obex/OBEXUtils;->loByte(I)B

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static hiByte(I)B
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 133
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method static loByte(I)B
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 137
    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method static newStringUTF16([B)Ljava/lang/String;
    .locals 3
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 98
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-16BE"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    :goto_0
    return-object v1

    .line 99
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {p0}, Lcom/intel/bluetooth/obex/OBEXUtils;->newStringUTF16Simple([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 102
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-static {p0}, Lcom/intel/bluetooth/obex/OBEXUtils;->newStringUTF16Simple([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static newStringUTF16Simple([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 89
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 90
    :cond_0
    aget-byte v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    invoke-static {v2, v3}, Lcom/intel/bluetooth/obex/OBEXUtils;->bytesToShort(BB)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 89
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method static readFully(Ljava/io/InputStream;Lcom/intel/bluetooth/obex/OBEXConnectionParams;[B)V
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "obexConnectionParams"    # Lcom/intel/bluetooth/obex/OBEXConnectionParams;
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p0, p1, p2, v0, v1}, Lcom/intel/bluetooth/obex/OBEXUtils;->readFully(Ljava/io/InputStream;Lcom/intel/bluetooth/obex/OBEXConnectionParams;[BII)V

    .line 46
    return-void
.end method

.method static readFully(Ljava/io/InputStream;Lcom/intel/bluetooth/obex/OBEXConnectionParams;[BII)V
    .locals 10
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "obexConnectionParams"    # Lcom/intel/bluetooth/obex/OBEXConnectionParams;
    .param p2, "b"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/EOFException;
        }
    .end annotation

    .prologue
    .line 51
    if-gez p4, :cond_0

    .line 52
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v6}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v6

    .line 54
    :cond_0
    const/4 v4, 0x0

    .line 55
    .local v4, "got":I
    :goto_0
    if-lt v4, p4, :cond_1

    .line 84
    return-void

    .line 56
    :cond_1
    iget-boolean v6, p1, Lcom/intel/bluetooth/obex/OBEXConnectionParams;->timeouts:Z

    if-eqz v6, :cond_5

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 58
    iget v8, p1, Lcom/intel/bluetooth/obex/OBEXConnectionParams;->timeout:I

    int-to-long v8, v8

    .line 57
    add-long v2, v6, v8

    .line 59
    .local v2, "endOfDellay":J
    const/4 v0, 0x0

    .line 61
    .local v0, "available":I
    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 62
    if-nez v0, :cond_4

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-lez v6, :cond_3

    .line 64
    new-instance v6, Ljava/io/InterruptedIOException;

    .line 65
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "OBEX read timeout; received "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 66
    const-string v8, " form "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " expected"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 65
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 64
    invoke-direct {v6, v7}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 69
    :cond_3
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_4
    if-eqz v0, :cond_2

    .line 76
    .end local v0    # "available":I
    .end local v2    # "endOfDellay":J
    :cond_5
    add-int v6, p3, v4

    sub-int v7, p4, v4

    invoke-virtual {p0, p2, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 77
    .local v5, "rc":I
    if-gez v5, :cond_6

    .line 78
    new-instance v6, Ljava/io/EOFException;

    .line 79
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "EOF while reading OBEX packet; received "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 80
    const-string v8, " form "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " expected"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 79
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 78
    invoke-direct {v6, v7}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 70
    .end local v5    # "rc":I
    .restart local v0    # "available":I
    .restart local v2    # "endOfDellay":J
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v6, Ljava/io/InterruptedIOException;

    invoke-direct {v6}, Ljava/io/InterruptedIOException;-><init>()V

    throw v6

    .line 82
    .end local v0    # "available":I
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "endOfDellay":J
    .restart local v5    # "rc":I
    :cond_6
    add-int/2addr v4, v5

    goto/16 :goto_0
.end method

.method public static toStringObexResponseCodes(B)Ljava/lang/String;
    .locals 1
    .param p0, "code"    # B

    .prologue
    .line 145
    and-int/lit16 v0, p0, 0xff

    invoke-static {v0}, Lcom/intel/bluetooth/obex/OBEXUtils;->toStringObexResponseCodes(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringObexResponseCodes(I)Ljava/lang/String;
    .locals 2
    .param p0, "code"    # I

    .prologue
    .line 149
    sparse-switch p0, :sswitch_data_0

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 151
    :sswitch_0
    const-string v0, "CONNECT"

    goto :goto_0

    .line 153
    :sswitch_1
    const-string v0, "DISCONNECT"

    goto :goto_0

    .line 155
    :sswitch_2
    const-string v0, "ABORT"

    goto :goto_0

    .line 157
    :sswitch_3
    const-string v0, "SESSION"

    goto :goto_0

    .line 159
    :sswitch_4
    const-string v0, "SESSION FINAL"

    goto :goto_0

    .line 161
    :sswitch_5
    const-string v0, "PUT"

    goto :goto_0

    .line 163
    :sswitch_6
    const-string v0, "PUT FINAL"

    goto :goto_0

    .line 165
    :sswitch_7
    const-string v0, "GET"

    goto :goto_0

    .line 167
    :sswitch_8
    const-string v0, "GET FINAL"

    goto :goto_0

    .line 169
    :sswitch_9
    const-string v0, "SETPATH"

    goto :goto_0

    .line 171
    :sswitch_a
    const-string v0, "SETPATH FINAL"

    goto :goto_0

    .line 173
    :sswitch_b
    const-string v0, "OBEX_RESPONSE_CONTINUE"

    goto :goto_0

    .line 175
    :sswitch_c
    const-string v0, "OBEX_HTTP_OK"

    goto :goto_0

    .line 177
    :sswitch_d
    const-string v0, "OBEX_HTTP_CREATED"

    goto :goto_0

    .line 179
    :sswitch_e
    const-string v0, "OBEX_HTTP_ACCEPTED"

    goto :goto_0

    .line 181
    :sswitch_f
    const-string v0, "OBEX_HTTP_NOT_AUTHORITATIVE"

    goto :goto_0

    .line 183
    :sswitch_10
    const-string v0, "OBEX_HTTP_NO_CONTENT"

    goto :goto_0

    .line 185
    :sswitch_11
    const-string v0, "OBEX_HTTP_RESET"

    goto :goto_0

    .line 187
    :sswitch_12
    const-string v0, "OBEX_HTTP_PARTIAL"

    goto :goto_0

    .line 189
    :sswitch_13
    const-string v0, "OBEX_HTTP_MULT_CHOICE"

    goto :goto_0

    .line 191
    :sswitch_14
    const-string v0, "OBEX_HTTP_MOVED_PERM"

    goto :goto_0

    .line 193
    :sswitch_15
    const-string v0, "OBEX_HTTP_MOVED_TEMP"

    goto :goto_0

    .line 195
    :sswitch_16
    const-string v0, "OBEX_HTTP_SEE_OTHER"

    goto :goto_0

    .line 197
    :sswitch_17
    const-string v0, "OBEX_HTTP_NOT_MODIFIED"

    goto :goto_0

    .line 199
    :sswitch_18
    const-string v0, "OBEX_HTTP_USE_PROXY"

    goto :goto_0

    .line 201
    :sswitch_19
    const-string v0, "OBEX_HTTP_BAD_REQUEST"

    goto :goto_0

    .line 203
    :sswitch_1a
    const-string v0, "OBEX_HTTP_UNAUTHORIZED"

    goto :goto_0

    .line 205
    :sswitch_1b
    const-string v0, "OBEX_HTTP_PAYMENT_REQUIRED"

    goto :goto_0

    .line 207
    :sswitch_1c
    const-string v0, "OBEX_HTTP_FORBIDDEN"

    goto :goto_0

    .line 209
    :sswitch_1d
    const-string v0, "OBEX_HTTP_NOT_FOUND"

    goto :goto_0

    .line 211
    :sswitch_1e
    const-string v0, "OBEX_HTTP_BAD_METHOD"

    goto :goto_0

    .line 213
    :sswitch_1f
    const-string v0, "OBEX_HTTP_NOT_ACCEPTABLE"

    goto :goto_0

    .line 215
    :sswitch_20
    const-string v0, "OBEX_HTTP_PROXY_AUTH"

    goto :goto_0

    .line 217
    :sswitch_21
    const-string v0, "OBEX_HTTP_TIMEOUT"

    goto :goto_0

    .line 219
    :sswitch_22
    const-string v0, "OBEX_HTTP_CONFLICT"

    goto :goto_0

    .line 221
    :sswitch_23
    const-string v0, "OBEX_HTTP_GONE"

    goto :goto_0

    .line 223
    :sswitch_24
    const-string v0, "OBEX_HTTP_LENGTH_REQUIRED"

    goto :goto_0

    .line 225
    :sswitch_25
    const-string v0, "OBEX_HTTP_PRECON_FAILED"

    goto :goto_0

    .line 227
    :sswitch_26
    const-string v0, "OBEX_HTTP_ENTITY_TOO_LARGE"

    goto :goto_0

    .line 229
    :sswitch_27
    const-string v0, "OBEX_HTTP_REQ_TOO_LARGE"

    goto :goto_0

    .line 231
    :sswitch_28
    const-string v0, "OBEX_HTTP_UNSUPPORTED_TYPE"

    goto :goto_0

    .line 233
    :sswitch_29
    const-string v0, "OBEX_HTTP_INTERNAL_ERROR"

    goto :goto_0

    .line 235
    :sswitch_2a
    const-string v0, "OBEX_HTTP_NOT_IMPLEMENTED"

    goto/16 :goto_0

    .line 237
    :sswitch_2b
    const-string v0, "OBEX_HTTP_BAD_GATEWAY"

    goto/16 :goto_0

    .line 239
    :sswitch_2c
    const-string v0, "OBEX_HTTP_UNAVAILABLE"

    goto/16 :goto_0

    .line 241
    :sswitch_2d
    const-string v0, "OBEX_HTTP_GATEWAY_TIMEOUT"

    goto/16 :goto_0

    .line 243
    :sswitch_2e
    const-string v0, "OBEX_HTTP_VERSION"

    goto/16 :goto_0

    .line 245
    :sswitch_2f
    const-string v0, "OBEX_DATABASE_FULL"

    goto/16 :goto_0

    .line 247
    :sswitch_30
    const-string v0, "OBEX_DATABASE_LOCKED"

    goto/16 :goto_0

    .line 149
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_5
        0x3 -> :sswitch_7
        0x5 -> :sswitch_9
        0x7 -> :sswitch_3
        0x80 -> :sswitch_0
        0x81 -> :sswitch_1
        0x82 -> :sswitch_6
        0x83 -> :sswitch_8
        0x85 -> :sswitch_a
        0x87 -> :sswitch_4
        0x90 -> :sswitch_b
        0xa0 -> :sswitch_c
        0xa1 -> :sswitch_d
        0xa2 -> :sswitch_e
        0xa3 -> :sswitch_f
        0xa4 -> :sswitch_10
        0xa5 -> :sswitch_11
        0xa6 -> :sswitch_12
        0xb0 -> :sswitch_13
        0xb1 -> :sswitch_14
        0xb2 -> :sswitch_15
        0xb3 -> :sswitch_16
        0xb4 -> :sswitch_17
        0xb5 -> :sswitch_18
        0xc0 -> :sswitch_19
        0xc1 -> :sswitch_1a
        0xc2 -> :sswitch_1b
        0xc3 -> :sswitch_1c
        0xc4 -> :sswitch_1d
        0xc5 -> :sswitch_1e
        0xc6 -> :sswitch_1f
        0xc7 -> :sswitch_20
        0xc8 -> :sswitch_21
        0xc9 -> :sswitch_22
        0xca -> :sswitch_23
        0xcb -> :sswitch_24
        0xcc -> :sswitch_25
        0xcd -> :sswitch_26
        0xce -> :sswitch_27
        0xcf -> :sswitch_28
        0xd0 -> :sswitch_29
        0xd1 -> :sswitch_2a
        0xd2 -> :sswitch_2b
        0xd3 -> :sswitch_2c
        0xd4 -> :sswitch_2d
        0xd5 -> :sswitch_2e
        0xe0 -> :sswitch_2f
        0xe1 -> :sswitch_30
        0xff -> :sswitch_2
    .end sparse-switch
.end method

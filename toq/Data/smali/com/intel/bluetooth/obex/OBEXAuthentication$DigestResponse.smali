.class Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;
.super Ljava/lang/Object;
.source "OBEXAuthentication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/bluetooth/obex/OBEXAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DigestResponse"
.end annotation


# instance fields
.field nonce:[B

.field requestDigest:[B

.field userName:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method read([B)V
    .locals 7
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x10

    .line 195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_0

    .line 223
    return-void

    .line 196
    :cond_0
    aget-byte v3, p1, v0

    and-int/lit16 v2, v3, 0xff

    .line 197
    .local v2, "tag":I
    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v1, v3, 0xff

    .line 198
    .local v1, "len":I
    add-int/lit8 v0, v0, 0x2

    .line 199
    packed-switch v2, :pswitch_data_0

    .line 221
    :goto_1
    add-int/2addr v0, v1

    goto :goto_0

    .line 201
    :pswitch_0
    if-eq v1, v5, :cond_1

    .line 202
    new-instance v3, Ljava/io/IOException;

    .line 203
    const-string v4, "OBEX Digest Response error in tag request-digest"

    .line 202
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 205
    :cond_1
    new-array v3, v5, [B

    iput-object v3, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;->requestDigest:[B

    .line 206
    iget-object v3, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;->requestDigest:[B

    invoke-static {p1, v0, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 209
    :pswitch_1
    new-array v3, v1, [B

    iput-object v3, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;->userName:[B

    .line 210
    iget-object v3, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;->userName:[B

    iget-object v4, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;->userName:[B

    array-length v4, v4

    invoke-static {p1, v0, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 213
    :pswitch_2
    if-eq v1, v5, :cond_2

    .line 214
    new-instance v3, Ljava/io/IOException;

    .line 215
    const-string v4, "OBEX Digest Response error in tag Nonce"

    .line 214
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 217
    :cond_2
    new-array v3, v5, [B

    iput-object v3, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;->nonce:[B

    .line 218
    iget-object v3, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;->nonce:[B

    invoke-static {p1, v0, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method write()[B
    .locals 5

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x0

    .line 175
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 177
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 178
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 179
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;->requestDigest:[B

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 181
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;->userName:[B

    if-eqz v1, :cond_0

    .line 182
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 183
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;->userName:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 184
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;->userName:[B

    iget-object v2, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;->userName:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 187
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 188
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 189
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$DigestResponse;->nonce:[B

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 191
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

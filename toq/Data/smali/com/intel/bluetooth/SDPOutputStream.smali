.class Lcom/intel/bluetooth/SDPOutputStream;
.super Ljava/io/OutputStream;
.source "SDPOutputStream.java"


# instance fields
.field dst:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/intel/bluetooth/SDPOutputStream;->dst:Ljava/io/OutputStream;

    .line 39
    return-void
.end method

.method static getLength(Ljavax/bluetooth/DataElement;)I
    .locals 10
    .param p0, "d"    # Ljavax/bluetooth/DataElement;

    .prologue
    const/high16 v9, 0x10000

    const/16 v8, 0x100

    const/16 v7, 0x11

    const/4 v6, 0x5

    const/4 v2, 0x3

    .line 59
    invoke-virtual {p0}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 143
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 61
    :sswitch_0
    const/4 v2, 0x1

    .line 139
    :cond_0
    :goto_0
    :sswitch_1
    return v2

    .line 66
    :sswitch_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    move v2, v6

    .line 74
    goto :goto_0

    .line 78
    :sswitch_4
    const/16 v2, 0x9

    goto :goto_0

    :sswitch_5
    move v2, v7

    .line 82
    goto :goto_0

    .line 85
    :sswitch_6
    invoke-virtual {p0}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/bluetooth/UUID;

    invoke-static {v5}, Lcom/intel/bluetooth/Utils;->UUIDTo32Bit(Ljavax/bluetooth/UUID;)J

    move-result-wide v3

    .line 86
    .local v3, "uuid":J
    const-wide/16 v8, -0x1

    cmp-long v5, v3, v8

    if-nez v5, :cond_1

    move v2, v7

    .line 87
    goto :goto_0

    .line 88
    :cond_1
    const-wide/32 v7, 0xffff

    cmp-long v5, v3, v7

    if-lez v5, :cond_0

    move v2, v6

    .line 91
    goto :goto_0

    .line 97
    .end local v3    # "uuid":J
    :sswitch_7
    const-string v5, "bluecove.sdp.string_encoding_ascii"

    .line 98
    const/4 v6, 0x0

    .line 96
    invoke-static {v5, v6}, Lcom/intel/bluetooth/BlueCoveImpl;->getConfigProperty(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 99
    invoke-virtual {p0}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/intel/bluetooth/Utils;->getASCIIBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 103
    .local v0, "b":[B
    :goto_1
    array-length v5, v0

    if-ge v5, v8, :cond_3

    .line 104
    array-length v5, v0

    add-int/lit8 v2, v5, 0x2

    goto :goto_0

    .line 101
    .end local v0    # "b":[B
    :cond_2
    invoke-virtual {p0}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/intel/bluetooth/Utils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    .restart local v0    # "b":[B
    goto :goto_1

    .line 105
    :cond_3
    array-length v5, v0

    if-ge v5, v9, :cond_4

    .line 106
    array-length v5, v0

    add-int/lit8 v2, v5, 0x3

    goto :goto_0

    .line 108
    :cond_4
    array-length v5, v0

    add-int/lit8 v2, v5, 0x5

    goto :goto_0

    .line 112
    .end local v0    # "b":[B
    :sswitch_8
    invoke-virtual {p0}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/intel/bluetooth/Utils;->getASCIIBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 114
    .restart local v0    # "b":[B
    array-length v5, v0

    if-ge v5, v8, :cond_5

    .line 115
    array-length v5, v0

    add-int/lit8 v2, v5, 0x2

    goto :goto_0

    .line 116
    :cond_5
    array-length v5, v0

    if-ge v5, v9, :cond_6

    .line 117
    array-length v5, v0

    add-int/lit8 v2, v5, 0x3

    goto :goto_0

    .line 119
    :cond_6
    array-length v5, v0

    add-int/lit8 v2, v5, 0x5

    goto :goto_0

    .line 125
    .end local v0    # "b":[B
    :sswitch_9
    const/4 v2, 0x1

    .line 127
    .local v2, "result":I
    invoke-virtual {p0}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Enumeration;

    .line 128
    .local v1, "e":Ljava/util/Enumeration;
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    .line 127
    if-nez v5, :cond_7

    .line 131
    const/16 v5, 0xff

    if-ge v2, v5, :cond_8

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 129
    :cond_7
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/bluetooth/DataElement;

    invoke-static {v5}, Lcom/intel/bluetooth/SDPOutputStream;->getLength(Ljavax/bluetooth/DataElement;)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_2

    .line 133
    :cond_8
    const v5, 0xffff

    if-ge v2, v5, :cond_9

    .line 134
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_0

    .line 136
    :cond_9
    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_0

    .line 59
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_2
        0x9 -> :sswitch_1
        0xa -> :sswitch_3
        0xb -> :sswitch_4
        0xc -> :sswitch_5
        0x10 -> :sswitch_2
        0x11 -> :sswitch_1
        0x12 -> :sswitch_3
        0x13 -> :sswitch_4
        0x14 -> :sswitch_5
        0x18 -> :sswitch_6
        0x20 -> :sswitch_7
        0x28 -> :sswitch_2
        0x30 -> :sswitch_9
        0x38 -> :sswitch_9
        0x40 -> :sswitch_8
    .end sparse-switch
.end method

.method private writeBytes([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 56
    return-void

    .line 54
    :cond_0
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/intel/bluetooth/SDPOutputStream;->write(I)V

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private writeLong(JI)V
    .locals 3
    .param p1, "l"    # J
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p3, :cond_0

    .line 50
    return-void

    .line 47
    :cond_0
    add-int/lit8 v1, p3, -0x1

    shl-int/lit8 v1, v1, 0x3

    shr-long v1, p1, v1

    long-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/intel/bluetooth/SDPOutputStream;->write(I)V

    .line 48
    const/16 v1, 0x8

    shl-long/2addr p1, v1

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public write(I)V
    .locals 1
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/intel/bluetooth/SDPOutputStream;->dst:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 43
    return-void
.end method

.method writeElement(Ljavax/bluetooth/DataElement;)V
    .locals 13
    .param p1, "d"    # Ljavax/bluetooth/DataElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x8

    const/4 v7, 0x0

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v8, 0x1

    .line 148
    invoke-virtual {p1}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 308
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7

    .line 150
    :sswitch_0
    invoke-virtual {p0, v7}, Lcom/intel/bluetooth/SDPOutputStream;->write(I)V

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 154
    :sswitch_1
    invoke-virtual {p0, v12}, Lcom/intel/bluetooth/SDPOutputStream;->write(I)V

    .line 155
    invoke-virtual {p1}, Ljavax/bluetooth/DataElement;->getLong()J

    move-result-wide v9

    invoke-direct {p0, v9, v10, v8}, Lcom/intel/bluetooth/SDPOutputStream;->writeLong(JI)V

    goto :goto_0

    .line 158
    :sswitch_2
    const/16 v7, 0x9

    invoke-virtual {p0, v7}, Lcom/intel/bluetooth/SDPOutputStream;->write(I)V

    .line 159
    invoke-virtual {p1}, Ljavax/bluetooth/DataElement;->getLong()J

    move-result-wide v7

    invoke-direct {p0, v7, v8, v10}, Lcom/intel/bluetooth/SDPOutputStream;->writeLong(JI)V

    goto :goto_0

    .line 162
    :sswitch_3
    const/16 v7, 0xa

    invoke-virtual {p0, v7}, Lcom/intel/bluetooth/SDPOutputStream;->write(I)V

    .line 163
    invoke-virtual {p1}, Ljavax/bluetooth/DataElement;->getLong()J

    move-result-wide v7

    invoke-direct {p0, v7, v8, v11}, Lcom/intel/bluetooth/SDPOutputStream;->writeLong(JI)V

    goto :goto_0

    .line 166
    :sswitch_4
    const/16 v7, 0xb

    invoke-virtual {p0, v7}, Lcom/intel/bluetooth/SDPOutputStream;->write(I)V

    .line 167
    invoke-virtual {p1}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-direct {p0, v7}, Lcom/intel/bluetooth/SDPOutputStream;->writeBytes([B)V

    goto :goto_0

    .line 170
    :sswitch_5
    const/16 v7, 0xc

    invoke-virtual {p0, v7}, Lcom/intel/bluetooth/SDPOutputStream;->write(I)V

    .line 171
    invoke-virtual {p1}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-direct {p0, v7}, Lcom/intel/bluetooth/SDPOutputStream;->writeBytes([B)V

    goto :goto_0

    .line 175
    :sswitch_6
    const/16 v7, 0x10

    invoke-virtual {p0, v7}, Lcom/intel/bluetooth/SDPOutputStream;->write(I)V

    .line 176
    invoke-virtual {p1}, Ljavax/bluetooth/DataElement;->getLong()J

    move-result-wide v9

    invoke-direct {p0, v9, v10, v8}, Lcom/intel/bluetooth/SDPOutputStream;->writeLong(JI)V

    goto :goto_0

    .line 179
    :sswitch_7
    const/16 v7, 0x11

    invoke-virtual {p0, v7}, Lcom/intel/bluetooth/SDPOutputStream;->write(I)V

    .line 180
    invoke-virtual {p1}, Ljavax/bluetooth/DataElement;->getLong()J

    move-result-wide v7

    invoke-direct {p0, v7, v8, v10}, Lcom/intel/bluetooth/SDPOutputStream;->writeLong(JI)V

    goto :goto_0

    .line 183
    :sswitch_8
    const/16 v7, 0x12

    invoke-virtual {p0, v7}, Lcom/intel/bluetooth/SDPOutputStream;->write(I)V

    .line 184
    invoke-virtual {p1}, Ljavax/bluetooth/DataElement;->getLong()J

    move-result-wide v7

    invoke-direct {p0, v7, v8, v11}, Lcom/intel/bluetooth/SDPOutputStream;->writeLong(JI)V

    goto :goto_0

    .line 187
    :sswitch_9
    const/16 v7, 0x13

    invoke-virtual {p0, v7}, Lcom/intel/bluetooth/SDPOutputStream;->write(I)V

    .line 188
    invoke-virtual {p1}, Ljavax/bluetooth/DataElement;->getLong()J

    move-result-wide v7

    invoke-direct {p0, v7, v8, v12}, Lcom/intel/bluetooth/SDPOutputStream;->writeLong(JI)V

    goto :goto_0

    .line 191
    :sswitch_a
    const/16 v7, 0x14

    invoke-virtual {p0, v7}, Lcom/intel/bluetooth/SDPOutputStream;->write(I)V

    .line 192
    invoke-virtual {p1}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-direct {p0, v7}, Lcom/intel/bluetooth/SDPOutputStream;->writeBytes([B)V

    goto/16 :goto_0

    .line 196
    :sswitch_b
    invoke-virtual {p1}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/bluetooth/UUID;

    invoke-static {v7}, Lcom/intel/bluetooth/Utils;->UUIDTo32Bit(Ljavax/bluetooth/UUID;)J

    move-result-wide v5

    .line 197
    .local v5, "uuid":J
    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-nez v7, :cond_1

    .line 198
    const/16 v7, 0x1c

    invoke-virtual {p0, v7}, Lcom/intel/bluetooth/SDPOutputStream;->write(I)V

    .line 199
    invoke-virtual {p1}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/bluetooth/UUID;

    invoke-static {v7}, Lcom/intel/bluetooth/Utils;->UUIDToByteArray(Ljavax/bluetooth/UUID;)[B

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/intel/bluetooth/SDPOutputStream;->writeBytes([B)V

    goto/16 :goto_0

    .line 200
    :cond_1
    const-wide/32 v7, 0xffff

    cmp-long v7, v5, v7

    if-gtz v7, :cond_2

    .line 201
    const/16 v7, 0x19

    invoke-virtual {p0, v7}, Lcom/intel/bluetooth/SDPOutputStream;->write(I)V

    .line 202
    invoke-direct {p0, v5, v6, v10}, Lcom/intel/bluetooth/SDPOutputStream;->writeLong(JI)V

    goto/16 :goto_0

    .line 204
    :cond_2
    const/16 v7, 0x1a

    invoke-virtual {p0, v7}, Lcom/intel/bluetooth/SDPOutputStream;->write(I)V

    .line 205
    invoke-direct {p0, v5, v6, v11}, Lcom/intel/bluetooth/SDPOutputStream;->writeLong(JI)V

    goto/16 :goto_0

    .line 213
    .end local v5    # "uuid":J
    :sswitch_c
    const-string v9, "bluecove.sdp.string_encoding_ascii"

    .line 212
    invoke-static {v9, v7}, Lcom/intel/bluetooth/BlueCoveImpl;->getConfigProperty(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 215
    invoke-virtual {p1}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/intel/bluetooth/Utils;->getASCIIBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 220
    .local v0, "b":[B
    :goto_1
    array-length v7, v0

    const/16 v9, 0x100

    if-ge v7, v9, :cond_4

    .line 221
    const/16 v7, 0x25

    invoke-virtual {p0, v7}, Lcom/intel/bluetooth/SDPOutputStream;->write(I)V

    .line 222
    array-length v7, v0

    int-to-long v9, v7

    invoke-direct {p0, v9, v10, v8}, Lcom/intel/bluetooth/SDPOutputStream;->writeLong(JI)V

    .line 231
    :goto_2
    invoke-direct {p0, v0}, Lcom/intel/bluetooth/SDPOutputStream;->writeBytes([B)V

    goto/16 :goto_0

    .line 217
    .end local v0    # "b":[B
    :cond_3
    invoke-virtual {p1}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/intel/bluetooth/Utils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v0

    .restart local v0    # "b":[B
    goto :goto_1

    .line 223
    :cond_4
    array-length v7, v0

    const/high16 v8, 0x10000

    if-ge v7, v8, :cond_5

    .line 224
    const/16 v7, 0x26

    invoke-virtual {p0, v7}, Lcom/intel/bluetooth/SDPOutputStream;->write(I)V

    .line 225
    array-length v7, v0

    int-to-long v7, v7

    invoke-direct {p0, v7, v8, v10}, Lcom/intel/bluetooth/SDPOutputStream;->writeLong(JI)V

    goto :goto_2

    .line 227
    :cond_5
    const/16 v7, 0x27

    invoke-virtual {p0, v7}, Lcom/intel/bluetooth/SDPOutputStream;->write(I)V

    .line 228
    array-length v7, v0

    int-to-long v7, v7

    invoke-direct {p0, v7, v8, v11}, Lcom/intel/bluetooth/SDPOutputStream;->writeLong(JI)V

    goto :goto_2

    .line 236
    .end local v0    # "b":[B
    :sswitch_d
    const/16 v9, 0x28

    invoke-virtual {p0, v9}, Lcom/intel/bluetooth/SDPOutputStream;->write(I)V

    .line 237
    invoke-virtual {p1}, Ljavax/bluetooth/DataElement;->getBoolean()Z

    move-result v9

    if-eqz v9, :cond_6

    move v7, v8

    :cond_6
    int-to-long v9, v7

    invoke-direct {p0, v9, v10, v8}, Lcom/intel/bluetooth/SDPOutputStream;->writeLong(JI)V

    goto/16 :goto_0

    .line 242
    :sswitch_e
    invoke-static {p1}, Lcom/intel/bluetooth/SDPOutputStream;->getLength(Ljavax/bluetooth/DataElement;)I

    move-result v2

    .line 244
    .local v2, "len":I
    const/16 v7, 0x101

    if-ge v2, v7, :cond_7

    .line 245
    const/4 v4, 0x5

    .line 246
    .local v4, "sizeDescriptor":I
    const/4 v3, 0x1

    .line 254
    .local v3, "lenSize":I
    :goto_3
    add-int/lit8 v7, v3, 0x1

    sub-int/2addr v2, v7

    .line 255
    or-int/lit8 v7, v4, 0x30

    invoke-virtual {p0, v7}, Lcom/intel/bluetooth/SDPOutputStream;->write(I)V

    .line 256
    int-to-long v7, v2

    invoke-direct {p0, v7, v8, v3}, Lcom/intel/bluetooth/SDPOutputStream;->writeLong(JI)V

    .line 258
    invoke-virtual {p1}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Enumeration;

    .line 259
    .local v1, "e":Ljava/util/Enumeration;
    :goto_4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    .line 258
    if-eqz v7, :cond_0

    .line 260
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/bluetooth/DataElement;

    invoke-virtual {p0, v7}, Lcom/intel/bluetooth/SDPOutputStream;->writeElement(Ljavax/bluetooth/DataElement;)V

    goto :goto_4

    .line 247
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v3    # "lenSize":I
    .end local v4    # "sizeDescriptor":I
    :cond_7
    const v7, 0x10002

    if-ge v2, v7, :cond_8

    .line 248
    const/4 v4, 0x6

    .line 249
    .restart local v4    # "sizeDescriptor":I
    const/4 v3, 0x2

    .restart local v3    # "lenSize":I
    goto :goto_3

    .line 251
    .end local v3    # "lenSize":I
    .end local v4    # "sizeDescriptor":I
    :cond_8
    const/4 v4, 0x7

    .line 252
    .restart local v4    # "sizeDescriptor":I
    const/4 v3, 0x4

    .restart local v3    # "lenSize":I
    goto :goto_3

    .line 267
    .end local v2    # "len":I
    .end local v3    # "lenSize":I
    .end local v4    # "sizeDescriptor":I
    :sswitch_f
    invoke-static {p1}, Lcom/intel/bluetooth/SDPOutputStream;->getLength(Ljavax/bluetooth/DataElement;)I

    move-result v7

    add-int/lit8 v2, v7, -0x5

    .line 269
    .restart local v2    # "len":I
    const/16 v7, 0xff

    if-ge v2, v7, :cond_9

    .line 270
    const/4 v4, 0x5

    .line 271
    .restart local v4    # "sizeDescriptor":I
    const/4 v3, 0x1

    .line 279
    .restart local v3    # "lenSize":I
    :goto_5
    or-int/lit8 v7, v4, 0x38

    invoke-virtual {p0, v7}, Lcom/intel/bluetooth/SDPOutputStream;->write(I)V

    .line 280
    int-to-long v7, v2

    invoke-direct {p0, v7, v8, v3}, Lcom/intel/bluetooth/SDPOutputStream;->writeLong(JI)V

    .line 282
    invoke-virtual {p1}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Enumeration;

    .line 283
    .restart local v1    # "e":Ljava/util/Enumeration;
    :goto_6
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    .line 282
    if-eqz v7, :cond_0

    .line 284
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/bluetooth/DataElement;

    invoke-virtual {p0, v7}, Lcom/intel/bluetooth/SDPOutputStream;->writeElement(Ljavax/bluetooth/DataElement;)V

    goto :goto_6

    .line 272
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v3    # "lenSize":I
    .end local v4    # "sizeDescriptor":I
    :cond_9
    const v7, 0xffff

    if-ge v2, v7, :cond_a

    .line 273
    const/4 v4, 0x6

    .line 274
    .restart local v4    # "sizeDescriptor":I
    const/4 v3, 0x2

    .restart local v3    # "lenSize":I
    goto :goto_5

    .line 276
    .end local v3    # "lenSize":I
    .end local v4    # "sizeDescriptor":I
    :cond_a
    const/4 v4, 0x7

    .line 277
    .restart local v4    # "sizeDescriptor":I
    const/4 v3, 0x4

    .restart local v3    # "lenSize":I
    goto :goto_5

    .line 290
    .end local v2    # "len":I
    .end local v3    # "lenSize":I
    .end local v4    # "sizeDescriptor":I
    :sswitch_10
    invoke-virtual {p1}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/intel/bluetooth/Utils;->getASCIIBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 292
    .restart local v0    # "b":[B
    array-length v7, v0

    const/16 v9, 0x100

    if-ge v7, v9, :cond_b

    .line 293
    const/16 v7, 0x45

    invoke-virtual {p0, v7}, Lcom/intel/bluetooth/SDPOutputStream;->write(I)V

    .line 294
    array-length v7, v0

    int-to-long v9, v7

    invoke-direct {p0, v9, v10, v8}, Lcom/intel/bluetooth/SDPOutputStream;->writeLong(JI)V

    .line 303
    :goto_7
    invoke-direct {p0, v0}, Lcom/intel/bluetooth/SDPOutputStream;->writeBytes([B)V

    goto/16 :goto_0

    .line 295
    :cond_b
    array-length v7, v0

    const/high16 v8, 0x10000

    if-ge v7, v8, :cond_c

    .line 296
    const/16 v7, 0x46

    invoke-virtual {p0, v7}, Lcom/intel/bluetooth/SDPOutputStream;->write(I)V

    .line 297
    array-length v7, v0

    int-to-long v7, v7

    invoke-direct {p0, v7, v8, v10}, Lcom/intel/bluetooth/SDPOutputStream;->writeLong(JI)V

    goto :goto_7

    .line 299
    :cond_c
    const/16 v7, 0x47

    invoke-virtual {p0, v7}, Lcom/intel/bluetooth/SDPOutputStream;->write(I)V

    .line 300
    array-length v7, v0

    int-to-long v7, v7

    invoke-direct {p0, v7, v8, v11}, Lcom/intel/bluetooth/SDPOutputStream;->writeLong(JI)V

    goto :goto_7

    .line 148
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_2
        0xa -> :sswitch_3
        0xb -> :sswitch_4
        0xc -> :sswitch_5
        0x10 -> :sswitch_6
        0x11 -> :sswitch_7
        0x12 -> :sswitch_8
        0x13 -> :sswitch_9
        0x14 -> :sswitch_a
        0x18 -> :sswitch_b
        0x20 -> :sswitch_c
        0x28 -> :sswitch_d
        0x30 -> :sswitch_e
        0x38 -> :sswitch_f
        0x40 -> :sswitch_10
    .end sparse-switch
.end method

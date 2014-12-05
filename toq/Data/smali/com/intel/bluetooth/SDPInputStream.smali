.class Lcom/intel/bluetooth/SDPInputStream;
.super Ljava/io/InputStream;
.source "SDPInputStream.java"


# instance fields
.field private pos:I

.field private source:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/intel/bluetooth/SDPInputStream;->source:Ljava/io/InputStream;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/intel/bluetooth/SDPInputStream;->pos:I

    .line 41
    return-void
.end method

.method private hexString([B)Ljava/lang/String;
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 67
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 68
    :cond_0
    aget-byte v2, p1, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private readBytes(I)[B
    .locals 3
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    new-array v1, p1, [B

    .line 76
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 79
    iget v2, p0, Lcom/intel/bluetooth/SDPInputStream;->pos:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/intel/bluetooth/SDPInputStream;->pos:I

    .line 80
    return-object v1

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/intel/bluetooth/SDPInputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readInteger(I)I
    .locals 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 61
    iget v2, p0, Lcom/intel/bluetooth/SDPInputStream;->pos:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/intel/bluetooth/SDPInputStream;->pos:I

    .line 62
    return v1

    .line 59
    :cond_0
    shl-int/lit8 v2, v1, 0x8

    invoke-virtual {p0}, Lcom/intel/bluetooth/SDPInputStream;->read()I

    move-result v3

    or-int v1, v2, v3

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readLong(I)J
    .locals 7
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    const-wide/16 v1, 0x0

    .line 49
    .local v1, "result":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 52
    iget v3, p0, Lcom/intel/bluetooth/SDPInputStream;->pos:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/intel/bluetooth/SDPInputStream;->pos:I

    .line 53
    return-wide v1

    .line 50
    :cond_0
    const/16 v3, 0x8

    shl-long v3, v1, v3

    invoke-virtual {p0}, Lcom/intel/bluetooth/SDPInputStream;->read()I

    move-result v5

    int-to-long v5, v5

    or-long v1, v3, v5

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/intel/bluetooth/SDPInputStream;->source:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public readElement()Ljavax/bluetooth/DataElement;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/intel/bluetooth/SDPInputStream;->read()I

    move-result v3

    .line 85
    .local v3, "header":I
    shr-int/lit8 v10, v3, 0x3

    and-int/lit8 v8, v10, 0x1f

    .line 86
    .local v8, "type":I
    and-int/lit8 v5, v3, 0x7

    .line 88
    .local v5, "sizeDescriptor":I
    iget v10, p0, Lcom/intel/bluetooth/SDPInputStream;->pos:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/intel/bluetooth/SDPInputStream;->pos:I

    .line 90
    packed-switch v8, :pswitch_data_0

    .line 254
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Unknown type "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 92
    :pswitch_0
    new-instance v0, Ljavax/bluetooth/DataElement;

    const/4 v10, 0x0

    invoke-direct {v0, v10}, Ljavax/bluetooth/DataElement;-><init>(I)V

    .line 250
    :cond_0
    :goto_0
    return-object v0

    .line 94
    :pswitch_1
    packed-switch v5, :pswitch_data_1

    .line 106
    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10}, Ljava/io/IOException;-><init>()V

    throw v10

    .line 96
    :pswitch_2
    new-instance v0, Ljavax/bluetooth/DataElement;

    const/16 v10, 0x8

    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/intel/bluetooth/SDPInputStream;->readLong(I)J

    move-result-wide v11

    invoke-direct {v0, v10, v11, v12}, Ljavax/bluetooth/DataElement;-><init>(IJ)V

    goto :goto_0

    .line 98
    :pswitch_3
    new-instance v0, Ljavax/bluetooth/DataElement;

    const/16 v10, 0x9

    const/4 v11, 0x2

    invoke-direct {p0, v11}, Lcom/intel/bluetooth/SDPInputStream;->readLong(I)J

    move-result-wide v11

    invoke-direct {v0, v10, v11, v12}, Ljavax/bluetooth/DataElement;-><init>(IJ)V

    goto :goto_0

    .line 100
    :pswitch_4
    new-instance v0, Ljavax/bluetooth/DataElement;

    const/16 v10, 0xa

    const/4 v11, 0x4

    invoke-direct {p0, v11}, Lcom/intel/bluetooth/SDPInputStream;->readLong(I)J

    move-result-wide v11

    invoke-direct {v0, v10, v11, v12}, Ljavax/bluetooth/DataElement;-><init>(IJ)V

    goto :goto_0

    .line 102
    :pswitch_5
    new-instance v0, Ljavax/bluetooth/DataElement;

    const/16 v10, 0xb

    const/16 v11, 0x8

    invoke-direct {p0, v11}, Lcom/intel/bluetooth/SDPInputStream;->readBytes(I)[B

    move-result-object v11

    invoke-direct {v0, v10, v11}, Ljavax/bluetooth/DataElement;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    .line 104
    :pswitch_6
    new-instance v0, Ljavax/bluetooth/DataElement;

    const/16 v10, 0xc

    const/16 v11, 0x10

    invoke-direct {p0, v11}, Lcom/intel/bluetooth/SDPInputStream;->readBytes(I)[B

    move-result-object v11

    invoke-direct {v0, v10, v11}, Ljavax/bluetooth/DataElement;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    .line 109
    :pswitch_7
    packed-switch v5, :pswitch_data_2

    .line 124
    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10}, Ljava/io/IOException;-><init>()V

    throw v10

    .line 111
    :pswitch_8
    new-instance v0, Ljavax/bluetooth/DataElement;

    const/16 v10, 0x10

    .line 112
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/intel/bluetooth/SDPInputStream;->readLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    int-to-byte v11, v11

    int-to-long v11, v11

    .line 111
    invoke-direct {v0, v10, v11, v12}, Ljavax/bluetooth/DataElement;-><init>(IJ)V

    goto :goto_0

    .line 114
    :pswitch_9
    new-instance v0, Ljavax/bluetooth/DataElement;

    const/16 v10, 0x11

    .line 115
    const/4 v11, 0x2

    invoke-direct {p0, v11}, Lcom/intel/bluetooth/SDPInputStream;->readLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    int-to-short v11, v11

    int-to-long v11, v11

    .line 114
    invoke-direct {v0, v10, v11, v12}, Ljavax/bluetooth/DataElement;-><init>(IJ)V

    goto :goto_0

    .line 117
    :pswitch_a
    new-instance v0, Ljavax/bluetooth/DataElement;

    const/16 v10, 0x12

    .line 118
    const/4 v11, 0x4

    invoke-direct {p0, v11}, Lcom/intel/bluetooth/SDPInputStream;->readLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    int-to-long v11, v11

    .line 117
    invoke-direct {v0, v10, v11, v12}, Ljavax/bluetooth/DataElement;-><init>(IJ)V

    goto/16 :goto_0

    .line 120
    :pswitch_b
    new-instance v0, Ljavax/bluetooth/DataElement;

    const/16 v10, 0x13

    const/16 v11, 0x8

    invoke-direct {p0, v11}, Lcom/intel/bluetooth/SDPInputStream;->readLong(I)J

    move-result-wide v11

    invoke-direct {v0, v10, v11, v12}, Ljavax/bluetooth/DataElement;-><init>(IJ)V

    goto/16 :goto_0

    .line 122
    :pswitch_c
    new-instance v0, Ljavax/bluetooth/DataElement;

    const/16 v10, 0x14

    const/16 v11, 0x10

    invoke-direct {p0, v11}, Lcom/intel/bluetooth/SDPInputStream;->readBytes(I)[B

    move-result-object v11

    invoke-direct {v0, v10, v11}, Ljavax/bluetooth/DataElement;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 128
    :pswitch_d
    const/4 v9, 0x0

    .line 130
    .local v9, "uuid":Ljavax/bluetooth/UUID;
    packed-switch v5, :pswitch_data_3

    .line 141
    :pswitch_e
    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10}, Ljava/io/IOException;-><init>()V

    throw v10

    .line 132
    :pswitch_f
    new-instance v9, Ljavax/bluetooth/UUID;

    .end local v9    # "uuid":Ljavax/bluetooth/UUID;
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/intel/bluetooth/SDPInputStream;->readLong(I)J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljavax/bluetooth/UUID;-><init>(J)V

    .line 144
    .restart local v9    # "uuid":Ljavax/bluetooth/UUID;
    :goto_1
    new-instance v0, Ljavax/bluetooth/DataElement;

    const/16 v10, 0x18

    invoke-direct {v0, v10, v9}, Ljavax/bluetooth/DataElement;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 135
    :pswitch_10
    new-instance v9, Ljavax/bluetooth/UUID;

    .end local v9    # "uuid":Ljavax/bluetooth/UUID;
    const/4 v10, 0x4

    invoke-direct {p0, v10}, Lcom/intel/bluetooth/SDPInputStream;->readLong(I)J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljavax/bluetooth/UUID;-><init>(J)V

    .line 136
    .restart local v9    # "uuid":Ljavax/bluetooth/UUID;
    goto :goto_1

    .line 138
    :pswitch_11
    new-instance v9, Ljavax/bluetooth/UUID;

    .end local v9    # "uuid":Ljavax/bluetooth/UUID;
    const/16 v10, 0x10

    invoke-direct {p0, v10}, Lcom/intel/bluetooth/SDPInputStream;->readBytes(I)[B

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/intel/bluetooth/SDPInputStream;->hexString([B)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Ljavax/bluetooth/UUID;-><init>(Ljava/lang/String;Z)V

    .line 139
    .restart local v9    # "uuid":Ljavax/bluetooth/UUID;
    goto :goto_1

    .line 148
    .end local v9    # "uuid":Ljavax/bluetooth/UUID;
    :pswitch_12
    const/4 v4, -0x1

    .line 150
    .local v4, "length":I
    packed-switch v5, :pswitch_data_4

    .line 161
    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10}, Ljava/io/IOException;-><init>()V

    throw v10

    .line 152
    :pswitch_13
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/intel/bluetooth/SDPInputStream;->readInteger(I)I

    move-result v4

    .line 163
    :goto_2
    invoke-direct {p0, v4}, Lcom/intel/bluetooth/SDPInputStream;->readBytes(I)[B

    move-result-object v10

    invoke-static {v10}, Lcom/intel/bluetooth/Utils;->newStringUTF8([B)Ljava/lang/String;

    move-result-object v7

    .line 164
    .local v7, "strValue":Ljava/lang/String;
    const-string v10, "DataElement.STRING"

    .line 165
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v11, v4, v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 164
    invoke-static {v10, v7, v11}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v0, Ljavax/bluetooth/DataElement;

    const/16 v10, 0x20

    invoke-direct {v0, v10, v7}, Ljavax/bluetooth/DataElement;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 155
    .end local v7    # "strValue":Ljava/lang/String;
    :pswitch_14
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/intel/bluetooth/SDPInputStream;->readInteger(I)I

    move-result v4

    .line 156
    goto :goto_2

    .line 158
    :pswitch_15
    const/4 v10, 0x4

    invoke-direct {p0, v10}, Lcom/intel/bluetooth/SDPInputStream;->readInteger(I)I

    move-result v4

    .line 159
    goto :goto_2

    .line 169
    .end local v4    # "length":I
    :pswitch_16
    new-instance v0, Ljavax/bluetooth/DataElement;

    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/intel/bluetooth/SDPInputStream;->readLong(I)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :goto_3
    invoke-direct {v0, v10}, Ljavax/bluetooth/DataElement;-><init>(Z)V

    goto/16 :goto_0

    :cond_1
    const/4 v10, 0x0

    goto :goto_3

    .line 174
    :pswitch_17
    packed-switch v5, :pswitch_data_5

    .line 185
    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10}, Ljava/io/IOException;-><init>()V

    throw v10

    .line 176
    :pswitch_18
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/intel/bluetooth/SDPInputStream;->readInteger(I)I

    move-result v4

    .line 188
    .restart local v4    # "length":I
    :goto_4
    new-instance v0, Ljavax/bluetooth/DataElement;

    const/16 v10, 0x30

    invoke-direct {v0, v10}, Ljavax/bluetooth/DataElement;-><init>(I)V

    .line 190
    .local v0, "element":Ljavax/bluetooth/DataElement;
    iget v6, p0, Lcom/intel/bluetooth/SDPInputStream;->pos:I

    .line 192
    .local v6, "started":I
    iget v10, p0, Lcom/intel/bluetooth/SDPInputStream;->pos:I

    add-int v1, v10, v4

    .local v1, "end":I
    :goto_5
    iget v10, p0, Lcom/intel/bluetooth/SDPInputStream;->pos:I

    if-lt v10, v1, :cond_2

    .line 195
    add-int v10, v6, v4

    iget v11, p0, Lcom/intel/bluetooth/SDPInputStream;->pos:I

    if-eq v10, v11, :cond_0

    .line 196
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "DATSEQ size corruption "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    add-int v12, v6, v4

    iget v13, p0, Lcom/intel/bluetooth/SDPInputStream;->pos:I

    sub-int/2addr v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 196
    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 179
    .end local v0    # "element":Ljavax/bluetooth/DataElement;
    .end local v1    # "end":I
    .end local v4    # "length":I
    .end local v6    # "started":I
    :pswitch_19
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/intel/bluetooth/SDPInputStream;->readInteger(I)I

    move-result v4

    .line 180
    .restart local v4    # "length":I
    goto :goto_4

    .line 182
    .end local v4    # "length":I
    :pswitch_1a
    const/4 v10, 0x4

    invoke-direct {p0, v10}, Lcom/intel/bluetooth/SDPInputStream;->readInteger(I)I

    move-result v4

    .line 183
    .restart local v4    # "length":I
    goto :goto_4

    .line 193
    .restart local v0    # "element":Ljavax/bluetooth/DataElement;
    .restart local v1    # "end":I
    .restart local v6    # "started":I
    :cond_2
    invoke-virtual {p0}, Lcom/intel/bluetooth/SDPInputStream;->readElement()Ljavax/bluetooth/DataElement;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljavax/bluetooth/DataElement;->addElement(Ljavax/bluetooth/DataElement;)V

    goto :goto_5

    .line 205
    .end local v0    # "element":Ljavax/bluetooth/DataElement;
    .end local v1    # "end":I
    .end local v4    # "length":I
    .end local v6    # "started":I
    :pswitch_1b
    packed-switch v5, :pswitch_data_6

    .line 216
    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10}, Ljava/io/IOException;-><init>()V

    throw v10

    .line 207
    :pswitch_1c
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/intel/bluetooth/SDPInputStream;->readInteger(I)I

    move-result v4

    .line 219
    .restart local v4    # "length":I
    :goto_6
    new-instance v0, Ljavax/bluetooth/DataElement;

    const/16 v10, 0x38

    invoke-direct {v0, v10}, Ljavax/bluetooth/DataElement;-><init>(I)V

    .line 221
    .restart local v0    # "element":Ljavax/bluetooth/DataElement;
    iget v6, p0, Lcom/intel/bluetooth/SDPInputStream;->pos:I

    .line 223
    .restart local v6    # "started":I
    iget v10, p0, Lcom/intel/bluetooth/SDPInputStream;->pos:I

    add-int/2addr v10, v4

    int-to-long v1, v10

    .local v1, "end":J
    :goto_7
    iget v10, p0, Lcom/intel/bluetooth/SDPInputStream;->pos:I

    int-to-long v10, v10

    cmp-long v10, v10, v1

    if-ltz v10, :cond_3

    .line 226
    add-int v10, v6, v4

    iget v11, p0, Lcom/intel/bluetooth/SDPInputStream;->pos:I

    if-eq v10, v11, :cond_0

    .line 227
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "DATALT size corruption "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    add-int v12, v6, v4

    iget v13, p0, Lcom/intel/bluetooth/SDPInputStream;->pos:I

    sub-int/2addr v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 227
    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 210
    .end local v0    # "element":Ljavax/bluetooth/DataElement;
    .end local v1    # "end":J
    .end local v4    # "length":I
    .end local v6    # "started":I
    :pswitch_1d
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/intel/bluetooth/SDPInputStream;->readInteger(I)I

    move-result v4

    .line 211
    .restart local v4    # "length":I
    goto :goto_6

    .line 213
    .end local v4    # "length":I
    :pswitch_1e
    const/4 v10, 0x4

    invoke-direct {p0, v10}, Lcom/intel/bluetooth/SDPInputStream;->readInteger(I)I

    move-result v4

    .line 214
    .restart local v4    # "length":I
    goto :goto_6

    .line 224
    .restart local v0    # "element":Ljavax/bluetooth/DataElement;
    .restart local v1    # "end":J
    .restart local v6    # "started":I
    :cond_3
    invoke-virtual {p0}, Lcom/intel/bluetooth/SDPInputStream;->readElement()Ljavax/bluetooth/DataElement;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljavax/bluetooth/DataElement;->addElement(Ljavax/bluetooth/DataElement;)V

    goto :goto_7

    .line 236
    .end local v0    # "element":Ljavax/bluetooth/DataElement;
    .end local v1    # "end":J
    .end local v4    # "length":I
    .end local v6    # "started":I
    :pswitch_1f
    packed-switch v5, :pswitch_data_7

    .line 247
    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10}, Ljava/io/IOException;-><init>()V

    throw v10

    .line 238
    :pswitch_20
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/intel/bluetooth/SDPInputStream;->readInteger(I)I

    move-result v4

    .line 250
    .restart local v4    # "length":I
    :goto_8
    new-instance v0, Ljavax/bluetooth/DataElement;

    const/16 v10, 0x40

    .line 251
    invoke-direct {p0, v4}, Lcom/intel/bluetooth/SDPInputStream;->readBytes(I)[B

    move-result-object v11

    invoke-static {v11}, Lcom/intel/bluetooth/Utils;->newStringASCII([B)Ljava/lang/String;

    move-result-object v11

    .line 250
    invoke-direct {v0, v10, v11}, Ljavax/bluetooth/DataElement;-><init>(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 241
    .end local v4    # "length":I
    :pswitch_21
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/intel/bluetooth/SDPInputStream;->readInteger(I)I

    move-result v4

    .line 242
    .restart local v4    # "length":I
    goto :goto_8

    .line 244
    .end local v4    # "length":I
    :pswitch_22
    const/4 v10, 0x4

    invoke-direct {p0, v10}, Lcom/intel/bluetooth/SDPInputStream;->readInteger(I)I

    move-result v4

    .line 245
    .restart local v4    # "length":I
    goto :goto_8

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_d
        :pswitch_12
        :pswitch_16
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
    .end packed-switch

    .line 94
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 109
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 130
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_f
        :pswitch_10
        :pswitch_e
        :pswitch_11
    .end packed-switch

    .line 150
    :pswitch_data_4
    .packed-switch 0x5
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch

    .line 174
    :pswitch_data_5
    .packed-switch 0x5
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch

    .line 205
    :pswitch_data_6
    .packed-switch 0x5
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
    .end packed-switch

    .line 236
    :pswitch_data_7
    .packed-switch 0x5
        :pswitch_20
        :pswitch_21
        :pswitch_22
    .end packed-switch
.end method

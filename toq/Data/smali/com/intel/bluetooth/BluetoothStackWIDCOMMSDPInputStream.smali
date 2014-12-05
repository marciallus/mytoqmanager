.class Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;
.super Ljava/io/InputStream;
.source "BluetoothStackWIDCOMMSDPInputStream.java"


# static fields
.field static final ATTR_TYPE_ARRAY:I = 0x4

.field static final ATTR_TYPE_BOOL:I = 0x3

.field static final ATTR_TYPE_INT:I = 0x0

.field static final ATTR_TYPE_TWO_COMP:I = 0x1

.field static final ATTR_TYPE_UUID:I = 0x2

.field static final MAX_ATTR_LEN_OLD:I = 0x100

.field static final MAX_SEQ_ENTRIES:I = 0x14

.field public static final debug:Z


# instance fields
.field private source:Ljava/io/InputStream;

.field private valueSize:I


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->valueSize:I

    .line 44
    iput-object p1, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->source:Ljava/io/InputStream;

    .line 45
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->readVersionInfo()V

    .line 46
    return-void
.end method

.method static getUUIDHexBytes(Ljavax/bluetooth/UUID;)[B
    .locals 1
    .param p0, "uuid"    # Ljavax/bluetooth/UUID;

    .prologue
    .line 94
    invoke-static {p0}, Lcom/intel/bluetooth/Utils;->UUIDToByteArray(Ljavax/bluetooth/UUID;)[B

    move-result-object v0

    return-object v0
.end method

.method static hexString([B)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # [B

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 86
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 87
    :cond_0
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
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
    .line 77
    new-array v1, p1, [B

    .line 78
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 81
    return-object v1

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->readLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private readLong(I)J
    .locals 6
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    const-wide/16 v1, 0x0

    .line 54
    .local v1, "result":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 57
    return-wide v1

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->read()I

    move-result v3

    int-to-long v3, v3

    mul-int/lit8 v5, v0, 0x8

    shl-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readLongDebug(I)J
    .locals 7
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    const-wide/16 v2, 0x0

    .line 62
    .local v2, "result":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, p1, :cond_0

    .line 69
    return-wide v2

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->read()I

    move-result v0

    .line 67
    .local v0, "data":I
    int-to-long v4, v0

    mul-int/lit8 v6, v1, 0x8

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private readVersionInfo()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->valueSize:I

    .line 119
    return-void
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
    .line 49
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->source:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public readElement()Ljavax/bluetooth/DataElement;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    const/4 v7, 0x0

    .line 124
    .local v7, "result":Ljavax/bluetooth/DataElement;
    const/4 v5, 0x0

    .line 125
    .local v5, "mainSeq":Ljavax/bluetooth/DataElement;
    const/4 v0, 0x0

    .line 126
    .local v0, "currentSeq":Ljavax/bluetooth/DataElement;
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->readInt()I

    move-result v2

    .line 127
    .local v2, "elements":I
    if-ltz v2, :cond_0

    const/16 v11, 0x14

    if-le v2, v11, :cond_1

    .line 128
    :cond_0
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Unexpected number of elements "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 133
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v2, :cond_2

    .line 265
    return-object v7

    .line 137
    :cond_2
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->readInt()I

    move-result v9

    .line 138
    .local v9, "type":I
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->readInt()I

    move-result v4

    .line 139
    .local v4, "length":I
    invoke-direct {p0}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->readInt()I

    move-result v11

    if-eqz v11, :cond_4

    const/4 v8, 0x1

    .line 145
    .local v8, "start_of_seq":Z
    :goto_1
    if-ltz v4, :cond_3

    iget v11, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->valueSize:I

    if-ge v11, v4, :cond_5

    .line 146
    :cond_3
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Unexpected length "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 139
    .end local v8    # "start_of_seq":Z
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 149
    .restart local v8    # "start_of_seq":Z
    :cond_5
    packed-switch v9, :pswitch_data_0

    .line 227
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Unknown data type "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 151
    :pswitch_0
    sparse-switch v4, :sswitch_data_0

    .line 173
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Unknown U_INT length "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 153
    :sswitch_0
    new-instance v1, Ljavax/bluetooth/DataElement;

    const/16 v11, 0x8

    .line 154
    const/4 v12, 0x1

    invoke-direct {p0, v12}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->readLong(I)J

    move-result-wide v12

    .line 153
    invoke-direct {v1, v11, v12, v13}, Ljavax/bluetooth/DataElement;-><init>(IJ)V

    .line 234
    .local v1, "dataElement":Ljavax/bluetooth/DataElement;
    :goto_2
    if-eqz v8, :cond_b

    .line 235
    new-instance v6, Ljavax/bluetooth/DataElement;

    const/16 v11, 0x30

    invoke-direct {v6, v11}, Ljavax/bluetooth/DataElement;-><init>(I)V

    .line 236
    .local v6, "newSeq":Ljavax/bluetooth/DataElement;
    invoke-virtual {v6, v1}, Ljavax/bluetooth/DataElement;->addElement(Ljavax/bluetooth/DataElement;)V

    .line 237
    move-object v1, v6

    .line 239
    if-eqz v3, :cond_6

    .line 241
    if-eqz v5, :cond_a

    .line 242
    invoke-virtual {v5, v6}, Ljavax/bluetooth/DataElement;->addElement(Ljavax/bluetooth/DataElement;)V

    .line 251
    :cond_6
    :goto_3
    move-object v0, v6

    .line 256
    .end local v6    # "newSeq":Ljavax/bluetooth/DataElement;
    :cond_7
    :goto_4
    if-nez v7, :cond_8

    .line 257
    move-object v7, v1

    .line 260
    :cond_8
    add-int/lit8 v11, v2, -0x1

    if-ge v3, v11, :cond_c

    .line 261
    iget v11, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->valueSize:I

    sub-int/2addr v11, v4

    int-to-long v11, v11

    invoke-virtual {p0, v11, v12}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->skip(J)J

    move-result-wide v11

    iget v13, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->valueSize:I

    sub-int/2addr v13, v4

    int-to-long v13, v13

    cmp-long v11, v11, v13

    if-eqz v11, :cond_c

    .line 262
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Unexpected end of data"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 157
    .end local v1    # "dataElement":Ljavax/bluetooth/DataElement;
    :sswitch_1
    new-instance v1, Ljavax/bluetooth/DataElement;

    const/16 v11, 0x9

    .line 158
    const/4 v12, 0x2

    invoke-direct {p0, v12}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->readLong(I)J

    move-result-wide v12

    .line 157
    invoke-direct {v1, v11, v12, v13}, Ljavax/bluetooth/DataElement;-><init>(IJ)V

    .line 159
    .restart local v1    # "dataElement":Ljavax/bluetooth/DataElement;
    goto :goto_2

    .line 161
    .end local v1    # "dataElement":Ljavax/bluetooth/DataElement;
    :sswitch_2
    new-instance v1, Ljavax/bluetooth/DataElement;

    const/16 v11, 0xa

    .line 162
    const/4 v12, 0x4

    invoke-direct {p0, v12}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->readLong(I)J

    move-result-wide v12

    .line 161
    invoke-direct {v1, v11, v12, v13}, Ljavax/bluetooth/DataElement;-><init>(IJ)V

    .line 163
    .restart local v1    # "dataElement":Ljavax/bluetooth/DataElement;
    goto :goto_2

    .line 165
    .end local v1    # "dataElement":Ljavax/bluetooth/DataElement;
    :sswitch_3
    new-instance v1, Ljavax/bluetooth/DataElement;

    const/16 v11, 0xb

    .line 166
    const/16 v12, 0x8

    invoke-direct {p0, v12}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->readBytes(I)[B

    move-result-object v12

    .line 165
    invoke-direct {v1, v11, v12}, Ljavax/bluetooth/DataElement;-><init>(ILjava/lang/Object;)V

    .line 167
    .restart local v1    # "dataElement":Ljavax/bluetooth/DataElement;
    goto :goto_2

    .line 169
    .end local v1    # "dataElement":Ljavax/bluetooth/DataElement;
    :sswitch_4
    new-instance v1, Ljavax/bluetooth/DataElement;

    const/16 v11, 0xc

    .line 170
    const/16 v12, 0x10

    invoke-direct {p0, v12}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->readBytes(I)[B

    move-result-object v12

    .line 169
    invoke-direct {v1, v11, v12}, Ljavax/bluetooth/DataElement;-><init>(ILjava/lang/Object;)V

    .line 171
    .restart local v1    # "dataElement":Ljavax/bluetooth/DataElement;
    goto :goto_2

    .line 177
    .end local v1    # "dataElement":Ljavax/bluetooth/DataElement;
    :pswitch_1
    sparse-switch v4, :sswitch_data_1

    .line 199
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Unknown INT length "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 179
    :sswitch_5
    new-instance v1, Ljavax/bluetooth/DataElement;

    const/16 v11, 0x10

    .line 180
    const/4 v12, 0x1

    invoke-direct {p0, v12}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->readLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    int-to-byte v12, v12

    int-to-long v12, v12

    .line 179
    invoke-direct {v1, v11, v12, v13}, Ljavax/bluetooth/DataElement;-><init>(IJ)V

    .line 181
    .restart local v1    # "dataElement":Ljavax/bluetooth/DataElement;
    goto/16 :goto_2

    .line 183
    .end local v1    # "dataElement":Ljavax/bluetooth/DataElement;
    :sswitch_6
    new-instance v1, Ljavax/bluetooth/DataElement;

    const/16 v11, 0x11

    .line 184
    const/4 v12, 0x2

    invoke-direct {p0, v12}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->readLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    int-to-short v12, v12

    int-to-long v12, v12

    .line 183
    invoke-direct {v1, v11, v12, v13}, Ljavax/bluetooth/DataElement;-><init>(IJ)V

    .line 185
    .restart local v1    # "dataElement":Ljavax/bluetooth/DataElement;
    goto/16 :goto_2

    .line 187
    .end local v1    # "dataElement":Ljavax/bluetooth/DataElement;
    :sswitch_7
    new-instance v1, Ljavax/bluetooth/DataElement;

    const/16 v11, 0x12

    .line 188
    const/4 v12, 0x4

    invoke-direct {p0, v12}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->readLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    int-to-long v12, v12

    .line 187
    invoke-direct {v1, v11, v12, v13}, Ljavax/bluetooth/DataElement;-><init>(IJ)V

    .line 189
    .restart local v1    # "dataElement":Ljavax/bluetooth/DataElement;
    goto/16 :goto_2

    .line 191
    .end local v1    # "dataElement":Ljavax/bluetooth/DataElement;
    :sswitch_8
    new-instance v1, Ljavax/bluetooth/DataElement;

    const/16 v11, 0x13

    .line 192
    const/16 v12, 0x8

    invoke-direct {p0, v12}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->readLongDebug(I)J

    move-result-wide v12

    .line 191
    invoke-direct {v1, v11, v12, v13}, Ljavax/bluetooth/DataElement;-><init>(IJ)V

    .line 193
    .restart local v1    # "dataElement":Ljavax/bluetooth/DataElement;
    goto/16 :goto_2

    .line 195
    .end local v1    # "dataElement":Ljavax/bluetooth/DataElement;
    :sswitch_9
    new-instance v1, Ljavax/bluetooth/DataElement;

    const/16 v11, 0x14

    .line 196
    const/16 v12, 0x10

    invoke-direct {p0, v12}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->readBytes(I)[B

    move-result-object v12

    .line 195
    invoke-direct {v1, v11, v12}, Ljavax/bluetooth/DataElement;-><init>(ILjava/lang/Object;)V

    .line 197
    .restart local v1    # "dataElement":Ljavax/bluetooth/DataElement;
    goto/16 :goto_2

    .line 203
    .end local v1    # "dataElement":Ljavax/bluetooth/DataElement;
    :pswitch_2
    const/4 v10, 0x0

    .line 204
    .local v10, "uuid":Ljavax/bluetooth/UUID;
    sparse-switch v4, :sswitch_data_2

    .line 215
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Unknown UUID length "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 206
    :sswitch_a
    new-instance v10, Ljavax/bluetooth/UUID;

    .end local v10    # "uuid":Ljavax/bluetooth/UUID;
    const/4 v11, 0x2

    invoke-direct {p0, v11}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->readLong(I)J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljavax/bluetooth/UUID;-><init>(J)V

    .line 217
    .restart local v10    # "uuid":Ljavax/bluetooth/UUID;
    :goto_5
    new-instance v1, Ljavax/bluetooth/DataElement;

    const/16 v11, 0x18

    invoke-direct {v1, v11, v10}, Ljavax/bluetooth/DataElement;-><init>(ILjava/lang/Object;)V

    .line 218
    .restart local v1    # "dataElement":Ljavax/bluetooth/DataElement;
    goto/16 :goto_2

    .line 209
    .end local v1    # "dataElement":Ljavax/bluetooth/DataElement;
    :sswitch_b
    new-instance v10, Ljavax/bluetooth/UUID;

    .end local v10    # "uuid":Ljavax/bluetooth/UUID;
    const/4 v11, 0x4

    invoke-direct {p0, v11}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->readLong(I)J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljavax/bluetooth/UUID;-><init>(J)V

    .line 210
    .restart local v10    # "uuid":Ljavax/bluetooth/UUID;
    goto :goto_5

    .line 212
    :sswitch_c
    new-instance v10, Ljavax/bluetooth/UUID;

    .end local v10    # "uuid":Ljavax/bluetooth/UUID;
    const/16 v11, 0x10

    invoke-direct {p0, v11}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->readBytes(I)[B

    move-result-object v11

    invoke-static {v11}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->hexString([B)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Ljavax/bluetooth/UUID;-><init>(Ljava/lang/String;Z)V

    .line 213
    .restart local v10    # "uuid":Ljavax/bluetooth/UUID;
    goto :goto_5

    .line 220
    .end local v10    # "uuid":Ljavax/bluetooth/UUID;
    :pswitch_3
    new-instance v1, Ljavax/bluetooth/DataElement;

    invoke-direct {p0, v4}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->readLong(I)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_9

    const/4 v11, 0x1

    :goto_6
    invoke-direct {v1, v11}, Ljavax/bluetooth/DataElement;-><init>(Z)V

    .line 221
    .restart local v1    # "dataElement":Ljavax/bluetooth/DataElement;
    goto/16 :goto_2

    .line 220
    .end local v1    # "dataElement":Ljavax/bluetooth/DataElement;
    :cond_9
    const/4 v11, 0x0

    goto :goto_6

    .line 223
    :pswitch_4
    new-instance v1, Ljavax/bluetooth/DataElement;

    const/16 v11, 0x20

    .line 224
    invoke-direct {p0, v4}, Lcom/intel/bluetooth/BluetoothStackWIDCOMMSDPInputStream;->readBytes(I)[B

    move-result-object v12

    invoke-static {v12}, Lcom/intel/bluetooth/Utils;->newStringUTF8([B)Ljava/lang/String;

    move-result-object v12

    .line 223
    invoke-direct {v1, v11, v12}, Ljavax/bluetooth/DataElement;-><init>(ILjava/lang/Object;)V

    .line 225
    .restart local v1    # "dataElement":Ljavax/bluetooth/DataElement;
    goto/16 :goto_2

    .line 245
    .restart local v6    # "newSeq":Ljavax/bluetooth/DataElement;
    :cond_a
    new-instance v5, Ljavax/bluetooth/DataElement;

    .end local v5    # "mainSeq":Ljavax/bluetooth/DataElement;
    const/16 v11, 0x30

    invoke-direct {v5, v11}, Ljavax/bluetooth/DataElement;-><init>(I)V

    .line 246
    .restart local v5    # "mainSeq":Ljavax/bluetooth/DataElement;
    move-object v7, v5

    .line 247
    invoke-virtual {v5, v0}, Ljavax/bluetooth/DataElement;->addElement(Ljavax/bluetooth/DataElement;)V

    .line 248
    invoke-virtual {v5, v6}, Ljavax/bluetooth/DataElement;->addElement(Ljavax/bluetooth/DataElement;)V

    goto/16 :goto_3

    .line 252
    .end local v6    # "newSeq":Ljavax/bluetooth/DataElement;
    :cond_b
    if-eqz v0, :cond_7

    .line 253
    invoke-virtual {v0, v1}, Ljavax/bluetooth/DataElement;->addElement(Ljavax/bluetooth/DataElement;)V

    goto/16 :goto_4

    .line 133
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 151
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch

    .line 177
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_6
        0x4 -> :sswitch_7
        0x8 -> :sswitch_8
        0x10 -> :sswitch_9
    .end sparse-switch

    .line 204
    :sswitch_data_2
    .sparse-switch
        0x2 -> :sswitch_a
        0x4 -> :sswitch_b
        0x10 -> :sswitch_c
    .end sparse-switch
.end method

.class public Ljavax/bluetooth/UUID;
.super Ljava/lang/Object;
.source "UUID.java"


# instance fields
.field private uuidValue:[B


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .param p1, "uuidValue"    # J

    .prologue
    .line 164
    invoke-static {p1, p2}, Lcom/intel/bluetooth/Utils;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljavax/bluetooth/UUID;-><init>(Ljava/lang/String;Z)V

    .line 165
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 167
    const-string v1, "uuidValue is not in the range [0, 2^32 -1]"

    .line 166
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "uuidValue"    # Ljava/lang/String;
    .param p2, "shortUUID"    # Z

    .prologue
    const/4 v1, 0x1

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    if-nez p1, :cond_0

    .line 218
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "uuidValue is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 221
    .local v0, "length":I
    if-eqz p2, :cond_3

    .line 222
    if-lt v0, v1, :cond_1

    const/16 v1, 0x8

    if-le v0, v1, :cond_2

    .line 223
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 225
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "00000000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "00001000800000805F9B34FB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {v1}, Lcom/intel/bluetooth/Utils;->UUIDToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Ljavax/bluetooth/UUID;->uuidValue:[B

    .line 235
    :goto_0
    return-void

    .line 228
    :cond_3
    if-lt v0, v1, :cond_4

    const/16 v1, 0x20

    if-le v0, v1, :cond_5

    .line 229
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 232
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "00000000000000000000000000000000"

    .line 233
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/intel/bluetooth/Utils;->UUIDToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 231
    iput-object v1, p0, Ljavax/bluetooth/UUID;->uuidValue:[B

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 268
    if-eqz p1, :cond_0

    instance-of v1, p1, Ljavax/bluetooth/UUID;

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    .line 278
    :goto_0
    return v1

    .line 272
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 278
    const/4 v1, 0x1

    goto :goto_0

    .line 273
    :cond_2
    iget-object v1, p0, Ljavax/bluetooth/UUID;->uuidValue:[B

    aget-byte v3, v1, v0

    move-object v1, p1

    check-cast v1, Ljavax/bluetooth/UUID;

    iget-object v1, v1, Ljavax/bluetooth/UUID;->uuidValue:[B

    aget-byte v1, v1, v0

    if-eq v3, v1, :cond_3

    move v1, v2

    .line 274
    goto :goto_0

    .line 272
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 289
    iget-object v0, p0, Ljavax/bluetooth/UUID;->uuidValue:[B

    const/16 v1, 0xc

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    iget-object v1, p0, Ljavax/bluetooth/UUID;->uuidValue:[B

    const/16 v2, 0xd

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x10

    .line 290
    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    .line 289
    or-int/2addr v0, v1

    .line 290
    iget-object v1, p0, Ljavax/bluetooth/UUID;->uuidValue:[B

    const/16 v2, 0xe

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    .line 289
    or-int/2addr v0, v1

    .line 290
    iget-object v1, p0, Ljavax/bluetooth/UUID;->uuidValue:[B

    const/16 v2, 0xf

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 289
    or-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Ljavax/bluetooth/UUID;->uuidValue:[B

    invoke-static {v0}, Lcom/intel/bluetooth/Utils;->UUIDByteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

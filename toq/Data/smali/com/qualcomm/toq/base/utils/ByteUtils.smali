.class public Lcom/qualcomm/toq/base/utils/ByteUtils;
.super Ljava/lang/Object;
.source "ByteUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertBytestoLong([B)J
    .locals 9
    .param p0, "inputByteArray"    # [B

    .prologue
    .line 96
    const-wide/16 v5, 0x0

    .line 97
    .local v5, "value":J
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v3, v7, 0x8

    .line 98
    .local v3, "leftShiftMask":I
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-byte v1, v0, v2

    .line 99
    .local v1, "b":B
    and-int/lit16 v7, v1, 0xff

    shl-int/2addr v7, v3

    int-to-long v7, v7

    add-long/2addr v5, v7

    .line 100
    add-int/lit8 v3, v3, -0x8

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v1    # "b":B
    :cond_0
    return-wide v5
.end method

.method public static convertBytestoNumber([B)I
    .locals 9
    .param p0, "inputByteArray"    # [B

    .prologue
    .line 78
    const-wide/16 v5, 0x0

    .line 79
    .local v5, "value":J
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v3, v7, 0x8

    .line 80
    .local v3, "leftShiftMask":I
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-byte v1, v0, v2

    .line 81
    .local v1, "b":B
    and-int/lit16 v7, v1, 0xff

    shl-int/2addr v7, v3

    int-to-long v7, v7

    add-long/2addr v5, v7

    .line 82
    add-int/lit8 v3, v3, -0x8

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    .end local v1    # "b":B
    :cond_0
    long-to-int v7, v5

    return v7
.end method

.method public static convertUnsignedNumbersToBytes(JI)[B
    .locals 5
    .param p0, "inputNumber"    # J
    .param p2, "outputByteArraySize"    # I

    .prologue
    .line 60
    new-array v1, p2, [B

    .line 61
    .local v1, "result":[B
    add-int/lit8 v3, p2, -0x1

    mul-int/lit8 v2, v3, 0x8

    .line 62
    .local v2, "rightShiftMask":I
    const/4 v0, 0x0

    .line 64
    .local v0, "index":I
    :goto_0
    if-eqz v2, :cond_0

    .line 65
    shr-long v3, p0, v2

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 71
    add-int/lit8 v2, v2, -0x8

    goto :goto_0

    .line 67
    :cond_0
    long-to-int v3, p0

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 73
    return-object v1
.end method

.method public static getBytes([BII[BI)V
    .locals 1
    .param p0, "source"    # [B
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "destination"    # [B
    .param p4, "dstBegin"    # I

    .prologue
    .line 54
    sub-int v0, p2, p1

    invoke-static {p0, p1, p3, p4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    return-void
.end method

.method public static subbytes([BI)[B
    .locals 1
    .param p0, "source"    # [B
    .param p1, "srcBegin"    # I

    .prologue
    .line 19
    array-length v0, p0

    invoke-static {p0, p1, v0}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static subbytes([BII)[B
    .locals 2
    .param p0, "source"    # [B
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I

    .prologue
    .line 33
    sub-int v1, p2, p1

    new-array v0, v1, [B

    .line 34
    .local v0, "destination":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/qualcomm/toq/base/utils/ByteUtils;->getBytes([BII[BI)V

    .line 35
    return-object v0
.end method

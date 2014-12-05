.class Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;
.super Ljava/lang/Object;
.source "OBEXAuthentication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/bluetooth/obex/OBEXAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Challenge"
.end annotation


# instance fields
.field private isFullAccess:Z

.field private isUserIdRequired:Z

.field nonce:[B

.field private realm:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZZ[B)V
    .locals 0
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "isUserIdRequired"    # Z
    .param p3, "isFullAccess"    # Z
    .param p4, "nonce"    # [B

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;->realm:Ljava/lang/String;

    .line 64
    iput-boolean p2, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;->isUserIdRequired:Z

    .line 65
    iput-boolean p3, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;->isFullAccess:Z

    .line 66
    iput-object p4, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;->nonce:[B

    .line 67
    return-void
.end method

.method constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p0, p1}, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;->read([B)V

    .line 59
    return-void
.end method


# virtual methods
.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public isFullAccess()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;->isFullAccess:Z

    return v0
.end method

.method public isUserIdRequired()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;->isUserIdRequired:Z

    return v0
.end method

.method read([B)V
    .locals 12
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/16 v11, 0x10

    const/4 v8, 0x0

    .line 106
    const-string v6, "authChallenge"

    invoke-static {v6, p1}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;[B)V

    .line 107
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, p1

    if-lt v2, v6, :cond_0

    .line 150
    return-void

    .line 108
    :cond_0
    aget-byte v6, p1, v2

    and-int/lit16 v5, v6, 0xff

    .line 109
    .local v5, "tag":I
    add-int/lit8 v6, v2, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v3, v6, 0xff

    .line 110
    .local v3, "len":I
    add-int/lit8 v2, v2, 0x2

    .line 111
    packed-switch v5, :pswitch_data_0

    .line 146
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "invalid authChallenge tag "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/intel/bluetooth/DebugLog;->error(Ljava/lang/String;)V

    .line 148
    :goto_1
    add-int/2addr v2, v3

    goto :goto_0

    .line 113
    :pswitch_0
    if-eq v3, v11, :cond_1

    .line 114
    new-instance v6, Ljava/io/IOException;

    .line 115
    const-string v7, "OBEX Digest Challenge error in tag Nonce"

    .line 114
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 117
    :cond_1
    new-array v6, v11, [B

    iput-object v6, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;->nonce:[B

    .line 118
    iget-object v6, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;->nonce:[B

    invoke-static {p1, v2, v6, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 121
    :pswitch_1
    aget-byte v4, p1, v2

    .line 122
    .local v4, "options":B
    const-string v6, "authChallenge options"

    int-to-long v9, v4

    invoke-static {v6, v9, v10}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    .line 123
    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_2

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;->isUserIdRequired:Z

    .line 124
    and-int/lit8 v6, v4, 0x2

    if-nez v6, :cond_3

    move v6, v7

    :goto_3
    iput-boolean v6, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;->isFullAccess:Z

    goto :goto_1

    :cond_2
    move v6, v8

    .line 123
    goto :goto_2

    :cond_3
    move v6, v8

    .line 124
    goto :goto_3

    .line 127
    .end local v4    # "options":B
    :pswitch_2
    aget-byte v6, p1, v2

    and-int/lit16 v0, v6, 0xff

    .line 128
    .local v0, "charSetCode":I
    add-int/lit8 v6, v3, -0x1

    new-array v1, v6, [B

    .line 129
    .local v1, "chars":[B
    add-int/lit8 v6, v2, 0x1

    array-length v9, v1

    invoke-static {p1, v6, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    const/16 v6, 0xff

    if-ne v0, v6, :cond_4

    .line 131
    invoke-static {v1}, Lcom/intel/bluetooth/obex/OBEXUtils;->newStringUTF16([B)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;->realm:Ljava/lang/String;

    goto :goto_1

    .line 132
    :cond_4
    if-nez v0, :cond_5

    .line 133
    new-instance v6, Ljava/lang/String;

    const-string v9, "ASCII"

    invoke-direct {v6, v1, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v6, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;->realm:Ljava/lang/String;

    goto :goto_1

    .line 134
    :cond_5
    const/16 v6, 0x9

    if-gt v0, v6, :cond_6

    .line 135
    new-instance v6, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ISO-8859-"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v1, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v6, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;->realm:Ljava/lang/String;

    goto :goto_1

    .line 137
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "Unsupported charset code "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " in Challenge"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 137
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/intel/bluetooth/DebugLog;->error(Ljava/lang/String;)V

    .line 142
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v9, v3, -0x1

    const-string v10, "ASCII"

    invoke-direct {v6, v1, v8, v9, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v6, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;->realm:Ljava/lang/String;

    goto/16 :goto_1

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method write()[B
    .locals 11

    .prologue
    const/16 v9, 0x10

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 70
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 72
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 73
    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 74
    iget-object v6, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;->nonce:[B

    invoke-virtual {v0, v6, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 76
    iget-boolean v6, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;->isUserIdRequired:Z

    if-eqz v6, :cond_1

    move v6, v7

    :goto_0
    iget-boolean v9, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;->isFullAccess:Z

    if-nez v9, :cond_2

    move v9, v10

    :goto_1
    or-int/2addr v6, v9

    int-to-byte v4, v6

    .line 78
    .local v4, "options":B
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 79
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 80
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 82
    iget-object v6, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;->realm:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 86
    :try_start_0
    iget-object v6, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;->realm:Ljava/lang/String;

    invoke-static {v6}, Lcom/intel/bluetooth/obex/OBEXUtils;->getUTF16Bytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 87
    .local v5, "realmArray":[B
    const/4 v1, -0x1

    .line 96
    .local v1, "charSetCode":B
    :goto_2
    invoke-virtual {v0, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 97
    array-length v6, v5

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 98
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 99
    array-length v6, v5

    invoke-virtual {v0, v5, v8, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 102
    .end local v1    # "charSetCode":B
    .end local v5    # "realmArray":[B
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6

    .end local v4    # "options":B
    :cond_1
    move v6, v8

    .line 76
    goto :goto_0

    :cond_2
    move v9, v8

    .line 77
    goto :goto_1

    .line 88
    .restart local v4    # "options":B
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_1
    iget-object v6, p0, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;->realm:Ljava/lang/String;

    const-string v7, "iso-8859-1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 94
    .restart local v5    # "realmArray":[B
    :goto_3
    const/4 v1, 0x1

    .restart local v1    # "charSetCode":B
    goto :goto_2

    .line 91
    .end local v1    # "charSetCode":B
    .end local v5    # "realmArray":[B
    :catch_1
    move-exception v3

    .line 92
    .local v3, "e1":Ljava/io/UnsupportedEncodingException;
    new-array v5, v8, [B

    .restart local v5    # "realmArray":[B
    goto :goto_3
.end method

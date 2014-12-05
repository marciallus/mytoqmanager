.class public abstract Lcom/intel/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/bluetooth/Utils$TimerThread;
    }
.end annotation


# static fields
.field private static final blueCoveImplPackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/intel/bluetooth/MicroeditionConnector;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Lcom/intel/bluetooth/Utils;->getPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intel/bluetooth/Utils;->blueCoveImplPackage:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static UUIDByteArrayToString([B)Ljava/lang/String;
    .locals 3
    .param p0, "uuidValue"    # [B

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 81
    :cond_0
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static UUIDTo32Bit(Ljavax/bluetooth/UUID;)J
    .locals 6
    .param p0, "uuid"    # Ljavax/bluetooth/UUID;

    .prologue
    const-wide/16 v2, -0x1

    .line 88
    if-nez p0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-wide v2

    .line 91
    :cond_1
    invoke-virtual {p0}, Ljavax/bluetooth/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "str":Ljava/lang/String;
    const-string v4, "00001000800000805F9B34FB"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, "shortIdx":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 94
    const-string v4, "00001000800000805F9B34FB"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    .line 95
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    .line 94
    if-ne v4, v5, :cond_0

    .line 97
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static UUIDToByteArray(Ljava/lang/String;)[B
    .locals 5
    .param p0, "uuidStringValue"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x10

    .line 61
    new-array v1, v4, [B

    .line 62
    .local v1, "uuidValue":[B
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 63
    new-instance v2, Ljava/lang/NumberFormatException;

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The \'-\' character is not allowed in UUID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_1

    .line 71
    return-object v1

    .line 69
    :cond_1
    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static UUIDToByteArray(Ljavax/bluetooth/UUID;)[B
    .locals 1
    .param p0, "uuid"    # Ljavax/bluetooth/UUID;

    .prologue
    .line 75
    invoke-virtual {p0}, Ljavax/bluetooth/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/intel/bluetooth/Utils;->UUIDToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static clone(Ljava/util/Enumeration;)Ljava/util/Vector;
    .locals 2
    .param p0, "en"    # Ljava/util/Enumeration;

    .prologue
    .line 176
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 177
    .local v0, "copy":Ljava/util/Vector;
    :goto_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    return-object v0

    .line 178
    :cond_0
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static clone([B)[B
    .locals 3
    .param p0, "value"    # [B

    .prologue
    const/4 v2, 0x0

    .line 166
    if-nez p0, :cond_0

    .line 167
    const/4 v0, 0x0

    .line 172
    :goto_0
    return-object v0

    .line 169
    :cond_0
    array-length v1, p0

    .line 170
    .local v1, "length":I
    new-array v0, v1, [B

    .line 171
    .local v0, "bClone":[B
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method static getASCIIBytes(Ljava/lang/String;)[B
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 215
    :try_start_0
    const-string v1, "US-ASCII"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 219
    :goto_0
    return-object v1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0

    .line 218
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 219
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0
.end method

.method private static getPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 52
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 53
    .local v0, "pStart":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 54
    const-string v1, ""

    .line 56
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static getResourceProperty(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "owner"    # Ljava/lang/Class;
    .param p1, "resourceName"    # Ljava/lang/String;

    .prologue
    .line 144
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-virtual {p0, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/intel/bluetooth/Utils;->loadString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 147
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 148
    .local v0, "cr":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 149
    const/4 v3, 0x0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 154
    .end local v0    # "cr":I
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/Throwable;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static getUTF8Bytes(Ljava/lang/String;)[B
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 195
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 199
    :goto_0
    return-object v1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0

    .line 198
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 199
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0
.end method

.method static is32Bit(Ljavax/bluetooth/UUID;)Z
    .locals 4
    .param p0, "uuid"    # Ljavax/bluetooth/UUID;

    .prologue
    .line 103
    invoke-static {p0}, Lcom/intel/bluetooth/Utils;->UUIDTo32Bit(Ljavax/bluetooth/UUID;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLegalAPICall(Ljava/util/Vector;)V
    .locals 4
    .param p0, "fqcnSet"    # Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    .prologue
    .line 295
    invoke-static {p0}, Lcom/intel/bluetooth/UtilsJavaSE;->getLocation(Ljava/util/Vector;)Lcom/intel/bluetooth/UtilsJavaSE$StackTraceLocation;

    move-result-object v0

    .line 296
    .local v0, "ste":Lcom/intel/bluetooth/UtilsJavaSE$StackTraceLocation;
    if-eqz v0, :cond_0

    .line 297
    iget-object v1, v0, Lcom/intel/bluetooth/UtilsJavaSE$StackTraceLocation;->className:Ljava/lang/String;

    const-string v2, "javax.bluetooth."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    :cond_0
    return-void

    .line 300
    :cond_1
    iget-object v1, v0, Lcom/intel/bluetooth/UtilsJavaSE$StackTraceLocation;->className:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/intel/bluetooth/Utils;->blueCoveImplPackage:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Illegal use of the JSR-82 API"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static isStringSet(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 121
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static j2meUsagePatternDellay()V
    .locals 2

    .prologue
    .line 252
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static loadString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p0, "inputstream"    # Ljava/io/InputStream;

    .prologue
    const/4 v3, 0x0

    .line 125
    if-nez p0, :cond_0

    .line 133
    :goto_0
    return-object v3

    .line 129
    :cond_0
    const/16 v4, 0x100

    :try_start_0
    new-array v0, v4, [B

    .line 130
    .local v0, "buf":[B
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 131
    .local v2, "len":I
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v2}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    move-object v3, v4

    .line 131
    goto :goto_0

    .line 132
    .end local v0    # "buf":[B
    .end local v2    # "len":I
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 137
    :catch_1
    move-exception v4

    goto :goto_0

    .line 134
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 136
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 139
    :goto_2
    throw v3

    .line 137
    .restart local v0    # "buf":[B
    .restart local v2    # "len":I
    :catch_2
    move-exception v3

    goto :goto_1

    .end local v0    # "buf":[B
    .end local v2    # "len":I
    :catch_3
    move-exception v4

    goto :goto_2
.end method

.method static newStringASCII([B)Ljava/lang/String;
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 205
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 209
    :goto_0
    return-object v1

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 208
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 209
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method static newStringUTF8([B)Ljava/lang/String;
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 185
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 189
    :goto_0
    return-object v1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 188
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 189
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method static schedule(JLjava/lang/Runnable;)Lcom/intel/bluetooth/Utils$TimerThread;
    .locals 1
    .param p0, "delay"    # J
    .param p2, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 288
    new-instance v0, Lcom/intel/bluetooth/Utils$TimerThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/intel/bluetooth/Utils$TimerThread;-><init>(JLjava/lang/Runnable;)V

    .line 289
    .local v0, "t":Lcom/intel/bluetooth/Utils$TimerThread;
    invoke-static {v0}, Lcom/intel/bluetooth/UtilsJavaSE;->threadSetDaemon(Ljava/lang/Thread;)V

    .line 290
    invoke-virtual {v0}, Lcom/intel/bluetooth/Utils$TimerThread;->start()V

    .line 291
    return-object v0
.end method

.method public static securityOpt(ZZ)I
    .locals 3
    .param p0, "authenticate"    # Z
    .param p1, "encrypt"    # Z

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, "security":I
    if-eqz p0, :cond_2

    .line 109
    if-eqz p1, :cond_1

    .line 110
    const/4 v0, 0x2

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 112
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 114
    :cond_2
    if-eqz p1, :cond_0

    .line 115
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal encrypt configuration"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static toHexString(J)Ljava/lang/String;
    .locals 6
    .param p0, "l"    # J

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 238
    .local v0, "buf":Ljava/lang/StringBuffer;
    long-to-int v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, "lo":Ljava/lang/String;
    const-wide v4, 0xffffffffL

    cmp-long v4, p0, v4

    if-lez v4, :cond_0

    .line 240
    const/16 v4, 0x20

    shr-long v4, p0, v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "hi":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "i":I
    :goto_0
    const/16 v4, 0x8

    if-lt v2, v4, :cond_1

    .line 246
    .end local v1    # "hi":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 243
    .restart local v1    # "hi":Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_1
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static vector2toArray(Ljava/util/Vector;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .param p0, "vector"    # Ljava/util/Vector;
    .param p1, "anArray"    # [Ljava/lang/Object;

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 229
    return-object p1
.end method

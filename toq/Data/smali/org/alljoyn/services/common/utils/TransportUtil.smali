.class public Lorg/alljoyn/services/common/utils/TransportUtil;
.super Ljava/lang/Object;
.source "TransportUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToUUID([B)Ljava/util/UUID;
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    const/16 v8, 0x10

    const/16 v1, 0x8

    .line 193
    .line 196
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eq v0, v8, :cond_1

    .line 197
    :cond_0
    const/4 v0, 0x0

    .line 210
    :goto_0
    return-object v0

    .line 200
    :cond_1
    const/4 v0, 0x0

    move-wide v4, v2

    :goto_1
    if-ge v0, v1, :cond_2

    .line 201
    shl-long/2addr v4, v1

    aget-byte v6, p0, v0

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 204
    :goto_2
    if-ge v0, v8, :cond_3

    .line 205
    shl-long/2addr v2, v1

    aget-byte v6, p0, v0

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v2, v6

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 208
    :cond_3
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    goto :goto_0
.end method

.method public static fromVariantMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/alljoyn/bus/Variant;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 96
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 97
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/alljoyn/bus/Variant;

    .line 101
    const-string v4, "SupportedLanguages"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    const-class v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 115
    :goto_1
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 106
    :cond_0
    const-string v4, "AppId"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 107
    const-class v4, [B

    invoke-virtual {v1, v4}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 108
    invoke-static {v1}, Lorg/alljoyn/services/common/utils/TransportUtil;->byteArrayToUUID([B)Ljava/util/UUID;

    move-result-object v1

    goto :goto_1

    .line 113
    :cond_1
    const-class v4, Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 118
    :cond_2
    return-object v2
.end method

.method public static toByteArray([C)[B
    .locals 3

    .prologue
    .line 128
    if-nez p0, :cond_0

    .line 129
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    .line 132
    :cond_0
    array-length v0, p0

    new-array v1, v0, [B

    .line 133
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 135
    aget-char v2, p0, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 138
    goto :goto_0
.end method

.method public static toCharArray([B)[C
    .locals 3

    .prologue
    .line 148
    if-nez p0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 158
    :goto_0
    return-object v0

    .line 152
    :cond_0
    array-length v0, p0

    new-array v1, v0, [C

    .line 153
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 155
    aget-byte v2, p0, v0

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 158
    goto :goto_0
.end method

.method public static toVariantMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/alljoyn/bus/Variant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 44
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    const-string v1, "SupportedLanguages"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 51
    if-nez v1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed in creating toVariantMap, the key: \'SupportedLanguages\' was found but the value is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    instance-of v4, v1, Ljava/util/Set;

    if-eqz v4, :cond_1

    .line 57
    check-cast v1, Ljava/util/Set;

    .line 58
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 59
    new-instance v4, Lorg/alljoyn/bus/Variant;

    invoke-direct {v4, v1}, Lorg/alljoyn/bus/Variant;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 62
    :cond_1
    new-instance v4, Lorg/alljoyn/bus/Variant;

    invoke-direct {v4, v1}, Lorg/alljoyn/bus/Variant;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 68
    :cond_2
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 70
    if-nez v1, :cond_3

    .line 71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed in creating toVariantMap, the key: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' was found but the value is NULL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_3
    instance-of v4, v1, Ljava/util/UUID;

    if-eqz v4, :cond_4

    .line 76
    check-cast v1, Ljava/util/UUID;

    invoke-static {v1}, Lorg/alljoyn/services/common/utils/TransportUtil;->uuidToByteArray(Ljava/util/UUID;)[B

    move-result-object v1

    .line 77
    new-instance v4, Lorg/alljoyn/bus/Variant;

    const-string v5, "ay"

    invoke-direct {v4, v1, v5}, Lorg/alljoyn/bus/Variant;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 80
    :cond_4
    new-instance v4, Lorg/alljoyn/bus/Variant;

    invoke-direct {v4, v1}, Lorg/alljoyn/bus/Variant;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 85
    :cond_5
    return-object v2
.end method

.method public static uuidToByteArray(Ljava/util/UUID;)[B
    .locals 10

    .prologue
    const/16 v9, 0x10

    const/16 v1, 0x8

    .line 169
    if-nez p0, :cond_1

    .line 170
    const/4 v0, 0x0

    .line 184
    :cond_0
    return-object v0

    .line 173
    :cond_1
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    .line 174
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v5

    .line 175
    new-array v0, v9, [B

    .line 177
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 178
    rsub-int/lit8 v7, v2, 0x7

    mul-int/lit8 v7, v7, 0x8

    ushr-long v7, v3, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v0, v2

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    :cond_2
    :goto_1
    if-ge v1, v9, :cond_0

    .line 181
    rsub-int/lit8 v2, v1, 0x7

    mul-int/lit8 v2, v2, 0x8

    ushr-long v2, v5, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

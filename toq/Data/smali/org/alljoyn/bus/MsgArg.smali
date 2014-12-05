.class final Lorg/alljoyn/bus/MsgArg;
.super Ljava/lang/Object;
.source "MsgArg.java"


# static fields
.field private static final ALLJOYN_ARRAY:I = 0x61

.field private static final ALLJOYN_BOOLEAN:I = 0x62

.field private static final ALLJOYN_BOOLEAN_ARRAY:I = 0x6261

.field private static final ALLJOYN_BYTE:I = 0x79

.field private static final ALLJOYN_BYTE_ARRAY:I = 0x7961

.field private static final ALLJOYN_DICT_ENTRY:I = 0x65

.field private static final ALLJOYN_DICT_ENTRY_CLOSE:I = 0x7d

.field private static final ALLJOYN_DICT_ENTRY_OPEN:I = 0x7b

.field private static final ALLJOYN_DOUBLE:I = 0x64

.field private static final ALLJOYN_DOUBLE_ARRAY:I = 0x6461

.field private static final ALLJOYN_INT16:I = 0x6e

.field private static final ALLJOYN_INT16_ARRAY:I = 0x6e61

.field private static final ALLJOYN_INT32:I = 0x69

.field private static final ALLJOYN_INT32_ARRAY:I = 0x6961

.field private static final ALLJOYN_INT64:I = 0x78

.field private static final ALLJOYN_INT64_ARRAY:I = 0x7861

.field private static final ALLJOYN_INVALID:I = 0x0

.field private static final ALLJOYN_OBJECT_PATH:I = 0x6f

.field private static final ALLJOYN_SIGNATURE:I = 0x67

.field private static final ALLJOYN_STRING:I = 0x73

.field private static final ALLJOYN_STRUCT:I = 0x72

.field private static final ALLJOYN_STRUCT_CLOSE:I = 0x29

.field private static final ALLJOYN_STRUCT_OPEN:I = 0x28

.field private static final ALLJOYN_UINT16:I = 0x71

.field private static final ALLJOYN_UINT16_ARRAY:I = 0x7161

.field private static final ALLJOYN_UINT32:I = 0x75

.field private static final ALLJOYN_UINT32_ARRAY:I = 0x7561

.field private static final ALLJOYN_UINT64:I = 0x74

.field private static final ALLJOYN_UINT64_ARRAY:I = 0x7461

.field private static final ALLJOYN_VARIANT:I = 0x76


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getBool(J)Z
.end method

.method public static native getBoolArray(J)[Z
.end method

.method public static native getByte(J)B
.end method

.method public static native getByteArray(J)[B
.end method

.method public static native getDouble(J)D
.end method

.method public static native getDoubleArray(J)[D
.end method

.method public static native getElemSig(J)Ljava/lang/String;
.end method

.method public static native getElement(JI)J
.end method

.method private static getEnumObject(Ljava/lang/reflect/Type;I)Ljava/lang/Enum;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 88
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 89
    check-cast p0, Ljava/lang/Class;

    .line 90
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    :try_start_0
    const-string v0, "values"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 93
    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/Enum;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 105
    :cond_0
    return-object v0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    new-instance v1, Lorg/alljoyn/bus/BusException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/alljoyn/bus/BusException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 96
    :catch_1
    move-exception v0

    .line 97
    new-instance v1, Lorg/alljoyn/bus/BusException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/alljoyn/bus/BusException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 98
    :catch_2
    move-exception v0

    .line 99
    new-instance v1, Lorg/alljoyn/bus/BusException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/alljoyn/bus/BusException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 100
    :catch_3
    move-exception v0

    .line 101
    new-instance v1, Lorg/alljoyn/bus/BusException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/alljoyn/bus/BusException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getEnumValue(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 118
    if-eqz p0, :cond_2

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    :try_start_0
    const-string v2, "values"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 123
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 124
    aget-object v2, v0, v1

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 138
    :goto_1
    return v0

    .line 123
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_1
    new-instance v0, Lorg/alljoyn/bus/BusException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get ordinal value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/alljoyn/bus/BusException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 129
    :catch_0
    move-exception v0

    .line 130
    new-instance v1, Lorg/alljoyn/bus/BusException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to get ordinal value for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/alljoyn/bus/BusException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 131
    :catch_1
    move-exception v0

    .line 132
    new-instance v1, Lorg/alljoyn/bus/BusException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to get ordinal value for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/alljoyn/bus/BusException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 133
    :catch_2
    move-exception v0

    .line 134
    new-instance v1, Lorg/alljoyn/bus/BusException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to get ordinal value for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/alljoyn/bus/BusException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 138
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static native getInt16(J)S
.end method

.method public static native getInt16Array(J)[S
.end method

.method public static native getInt32(J)I
.end method

.method public static native getInt32Array(J)[I
.end method

.method public static native getInt64(J)J
.end method

.method public static native getInt64Array(J)[J
.end method

.method public static native getKey(J)J
.end method

.method public static native getMember(JI)J
.end method

.method public static native getNumElements(J)I
.end method

.method public static native getNumMembers(J)I
.end method

.method public static native getObjPath(J)Ljava/lang/String;
.end method

.method public static native getSignature(J)Ljava/lang/String;
.end method

.method public static native getSignature([J)Ljava/lang/String;
.end method

.method public static native getString(J)Ljava/lang/String;
.end method

.method public static native getTypeId(J)I
.end method

.method public static native getUint16(J)S
.end method

.method public static native getUint16Array(J)[S
.end method

.method public static native getUint32(J)I
.end method

.method public static native getUint32Array(J)[I
.end method

.method public static native getUint64(J)J
.end method

.method public static native getUint64Array(J)[J
.end method

.method public static native getVal(J)J
.end method

.method public static marshal(JLjava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 392
    :try_start_0
    invoke-static {p3}, Lorg/alljoyn/bus/MsgArg;->getEnumValue(Ljava/lang/Object;)I

    move-result v1

    .line 393
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 512
    new-instance v1, Lorg/alljoyn/bus/MarshalBusException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unimplemented \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/alljoyn/bus/MarshalBusException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :catch_0
    move-exception v1

    move-object v2, v1

    .line 515
    :goto_0
    new-instance v3, Lorg/alljoyn/bus/MarshalBusException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot marshal "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p3, :cond_a

    const-string v1, "null"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " into \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Lorg/alljoyn/bus/MarshalBusException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 395
    :sswitch_0
    if-eq v1, v4, :cond_1

    .line 396
    int-to-byte v1, v1

    :try_start_1
    invoke-static {p0, p1, p2, v1}, Lorg/alljoyn/bus/MsgArg;->set(JLjava/lang/String;B)J

    .line 519
    :cond_0
    :goto_2
    return-void

    .line 398
    :cond_1
    move-object v0, p3

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-static {p0, p1, p2, v1}, Lorg/alljoyn/bus/MsgArg;->set(JLjava/lang/String;B)J

    goto :goto_2

    .line 402
    :sswitch_1
    move-object v0, p3

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {p0, p1, p2, v1}, Lorg/alljoyn/bus/MsgArg;->set(JLjava/lang/String;Z)J

    goto :goto_2

    .line 406
    :sswitch_2
    if-eq v1, v4, :cond_2

    .line 407
    int-to-short v1, v1

    invoke-static {p0, p1, p2, v1}, Lorg/alljoyn/bus/MsgArg;->set(JLjava/lang/String;S)J

    goto :goto_2

    .line 409
    :cond_2
    move-object v0, p3

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-static {p0, p1, p2, v1}, Lorg/alljoyn/bus/MsgArg;->set(JLjava/lang/String;S)J

    goto :goto_2

    .line 414
    :sswitch_3
    if-eq v1, v4, :cond_3

    .line 415
    invoke-static {p0, p1, p2, v1}, Lorg/alljoyn/bus/MsgArg;->set(JLjava/lang/String;I)J

    goto :goto_2

    .line 417
    :cond_3
    move-object v0, p3

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {p0, p1, p2, v1}, Lorg/alljoyn/bus/MsgArg;->set(JLjava/lang/String;I)J

    goto :goto_2

    .line 422
    :sswitch_4
    if-eq v1, v4, :cond_4

    .line 423
    int-to-long v1, v1

    invoke-static {p0, p1, p2, v1, v2}, Lorg/alljoyn/bus/MsgArg;->set(JLjava/lang/String;J)J

    goto :goto_2

    .line 425
    :cond_4
    move-object v0, p3

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {p0, p1, p2, v1, v2}, Lorg/alljoyn/bus/MsgArg;->set(JLjava/lang/String;J)J

    goto :goto_2

    .line 429
    :sswitch_5
    move-object v0, p3

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {p0, p1, p2, v1, v2}, Lorg/alljoyn/bus/MsgArg;->set(JLjava/lang/String;D)J

    goto :goto_2

    .line 434
    :sswitch_6
    if-nez p3, :cond_5

    .line 435
    new-instance v1, Lorg/alljoyn/bus/MarshalBusException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot marshal null into \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/alljoyn/bus/MarshalBusException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 437
    :cond_5
    move-object v0, p3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-static {p0, p1, p2, v1}, Lorg/alljoyn/bus/MsgArg;->set(JLjava/lang/String;Ljava/lang/String;)J

    goto/16 :goto_2

    .line 440
    :sswitch_7
    if-nez p3, :cond_6

    .line 441
    new-instance v1, Lorg/alljoyn/bus/MarshalBusException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot marshal null into \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/alljoyn/bus/MarshalBusException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    :cond_6
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 444
    const/16 v1, 0x7b

    if-ne v1, v4, :cond_b

    .line 445
    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 447
    :goto_3
    sparse-switch v4, :sswitch_data_1

    .line 470
    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 471
    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    .line 472
    array-length v5, v1

    invoke-static {p0, p1, v4, v5}, Lorg/alljoyn/bus/MsgArg;->setArray(JLjava/lang/String;I)J

    .line 473
    :goto_4
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getNumElements(J)I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 474
    invoke-static {p0, p1, v3}, Lorg/alljoyn/bus/MsgArg;->getElement(JI)J

    move-result-wide v5

    aget-object v7, v1, v3

    invoke-static {v5, v6, v4, v7}, Lorg/alljoyn/bus/MsgArg;->marshal(JLjava/lang/String;Ljava/lang/Object;)V

    .line 473
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 449
    :sswitch_8
    move-object v0, v2

    check-cast v0, [B

    move-object v1, v0

    check-cast v1, [B

    invoke-static {p0, p1, p2, v1}, Lorg/alljoyn/bus/MsgArg;->set(JLjava/lang/String;[B)J

    goto/16 :goto_2

    .line 514
    :catch_1
    move-exception v1

    move-object p3, v2

    move-object v2, v1

    goto/16 :goto_0

    .line 452
    :sswitch_9
    move-object v0, v2

    check-cast v0, [Z

    move-object v1, v0

    check-cast v1, [Z

    invoke-static {p0, p1, p2, v1}, Lorg/alljoyn/bus/MsgArg;->set(JLjava/lang/String;[Z)J

    goto/16 :goto_2

    .line 456
    :sswitch_a
    move-object v0, v2

    check-cast v0, [S

    move-object v1, v0

    check-cast v1, [S

    invoke-static {p0, p1, p2, v1}, Lorg/alljoyn/bus/MsgArg;->set(JLjava/lang/String;[S)J

    goto/16 :goto_2

    .line 460
    :sswitch_b
    move-object v0, v2

    check-cast v0, [I

    move-object v1, v0

    check-cast v1, [I

    invoke-static {p0, p1, p2, v1}, Lorg/alljoyn/bus/MsgArg;->set(JLjava/lang/String;[I)J

    goto/16 :goto_2

    .line 464
    :sswitch_c
    move-object v0, v2

    check-cast v0, [J

    move-object v1, v0

    check-cast v1, [J

    invoke-static {p0, p1, p2, v1}, Lorg/alljoyn/bus/MsgArg;->set(JLjava/lang/String;[J)J

    goto/16 :goto_2

    .line 467
    :sswitch_d
    move-object v0, v2

    check-cast v0, [D

    move-object v1, v0

    check-cast v1, [D

    invoke-static {p0, p1, p2, v1}, Lorg/alljoyn/bus/MsgArg;->set(JLjava/lang/String;[D)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 480
    :sswitch_e
    :try_start_3
    invoke-static {p3}, Lorg/alljoyn/bus/Signature;->structArgs(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 481
    const/4 v1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/alljoyn/bus/Signature;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 482
    if-nez v4, :cond_7

    .line 483
    new-instance v1, Lorg/alljoyn/bus/MarshalBusException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot marshal "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " into \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/alljoyn/bus/MarshalBusException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 486
    :cond_7
    array-length v1, v4

    invoke-static {p0, p1, v1}, Lorg/alljoyn/bus/MsgArg;->setStruct(JI)J

    move v1, v3

    .line 487
    :goto_5
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getNumMembers(J)I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 488
    invoke-static {p0, p1, v1}, Lorg/alljoyn/bus/MsgArg;->getMember(JI)J

    move-result-wide v5

    aget-object v3, v4, v1

    aget-object v7, v2, v1

    invoke-static {v5, v6, v3, v7}, Lorg/alljoyn/bus/MsgArg;->marshal(JLjava/lang/String;Ljava/lang/Object;)V

    .line 487
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 492
    :sswitch_f
    move-object v0, p3

    check-cast v0, Lorg/alljoyn/bus/Variant;

    move-object v1, v0

    .line 493
    invoke-virtual {v1}, Lorg/alljoyn/bus/Variant;->getMsgArg()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    .line 494
    invoke-virtual {v1}, Lorg/alljoyn/bus/Variant;->getMsgArg()J

    move-result-wide v1

    invoke-static {p0, p1, p2, v1, v2}, Lorg/alljoyn/bus/MsgArg;->setVariant(JLjava/lang/String;J)J

    goto/16 :goto_2

    .line 496
    :cond_8
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->setVariant(J)J

    .line 497
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getVal(J)J

    move-result-wide v2

    invoke-virtual {v1}, Lorg/alljoyn/bus/Variant;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/alljoyn/bus/Variant;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lorg/alljoyn/bus/MsgArg;->marshal(JLjava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 501
    :sswitch_10
    move-object v0, p3

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 502
    const/4 v2, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/alljoyn/bus/Signature;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 503
    if-nez v2, :cond_9

    .line 504
    new-instance v1, Lorg/alljoyn/bus/MarshalBusException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot marshal "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " into \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/alljoyn/bus/MarshalBusException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 507
    :cond_9
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->setDictEntry(J)J

    .line 508
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getKey(J)J

    move-result-wide v3

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lorg/alljoyn/bus/MsgArg;->marshal(JLjava/lang/String;Ljava/lang/Object;)V

    .line 509
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getVal(J)J

    move-result-wide v3

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, v2, v1}, Lorg/alljoyn/bus/MsgArg;->marshal(JLjava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 515
    :cond_a
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto/16 :goto_1

    :cond_b
    move-object v2, p3

    goto/16 :goto_3

    .line 393
    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_e
        0x61 -> :sswitch_7
        0x62 -> :sswitch_1
        0x64 -> :sswitch_5
        0x67 -> :sswitch_6
        0x69 -> :sswitch_3
        0x6e -> :sswitch_2
        0x6f -> :sswitch_6
        0x71 -> :sswitch_2
        0x73 -> :sswitch_6
        0x74 -> :sswitch_4
        0x75 -> :sswitch_3
        0x76 -> :sswitch_f
        0x78 -> :sswitch_4
        0x79 -> :sswitch_0
        0x7b -> :sswitch_10
    .end sparse-switch

    .line 447
    :sswitch_data_1
    .sparse-switch
        0x62 -> :sswitch_9
        0x64 -> :sswitch_d
        0x69 -> :sswitch_b
        0x6e -> :sswitch_a
        0x71 -> :sswitch_a
        0x74 -> :sswitch_c
        0x75 -> :sswitch_b
        0x78 -> :sswitch_c
        0x79 -> :sswitch_8
    .end sparse-switch
.end method

.method public static marshal(JLjava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 531
    invoke-static {p2}, Lorg/alljoyn/bus/Signature;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 532
    if-nez v2, :cond_0

    .line 533
    new-instance v0, Lorg/alljoyn/bus/MarshalBusException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot marshal args into \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', bad signature"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/alljoyn/bus/MarshalBusException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_0
    if-nez p3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {p0, p1, v0}, Lorg/alljoyn/bus/MsgArg;->setStruct(JI)J

    .line 536
    :goto_1
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getNumMembers(J)I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 537
    invoke-static {p0, p1, v1}, Lorg/alljoyn/bus/MsgArg;->getMember(JI)J

    move-result-wide v3

    aget-object v0, v2, v1

    aget-object v5, p3, v1

    invoke-static {v3, v4, v0, v5}, Lorg/alljoyn/bus/MsgArg;->marshal(JLjava/lang/String;Ljava/lang/Object;)V

    .line 536
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 535
    :cond_1
    array-length v0, p3

    goto :goto_0

    .line 539
    :cond_2
    return-void
.end method

.method public static native set(JLjava/lang/String;B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

.method public static native set(JLjava/lang/String;D)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

.method public static native set(JLjava/lang/String;I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

.method public static native set(JLjava/lang/String;J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

.method public static native set(JLjava/lang/String;Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

.method public static native set(JLjava/lang/String;S)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

.method public static native set(JLjava/lang/String;Z)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

.method public static native set(JLjava/lang/String;[B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

.method public static native set(JLjava/lang/String;[D)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

.method public static native set(JLjava/lang/String;[I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

.method public static native set(JLjava/lang/String;[J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

.method public static native set(JLjava/lang/String;[S)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

.method public static native set(JLjava/lang/String;[Z)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

.method public static native setArray(JLjava/lang/String;I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

.method public static native setDictEntry(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

.method public static native setStruct(JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

.method public static native setVariant(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

.method public static native setVariant(JLjava/lang/String;J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

.method public static unmarshal(JLjava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/MarshalBusException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    .line 219
    :try_start_0
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getTypeId(J)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 349
    new-instance v1, Lorg/alljoyn/bus/MarshalBusException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unimplemented \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide p0, v4, v5

    invoke-static {v4}, Lorg/alljoyn/bus/MsgArg;->getSignature([J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/alljoyn/bus/MarshalBusException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :catch_0
    move-exception v1

    .line 353
    new-instance v2, Lorg/alljoyn/bus/MarshalBusException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot marshal \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-array v5, v11, [J

    aput-wide p0, v5, v3

    invoke-static {v5}, Lorg/alljoyn/bus/MsgArg;->getSignature([J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/alljoyn/bus/MarshalBusException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 221
    :sswitch_0
    :try_start_1
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getElemSig(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_1

    .line 222
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    move-object v1, v0

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 223
    const-class v2, Ljava/util/Map;

    if-ne v1, v2, :cond_0

    const-class v1, Ljava/util/HashMap;

    .line 224
    :cond_0
    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move v4, v3

    .line 225
    :goto_0
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getNumElements(J)I

    move-result v1

    if-ge v4, v1, :cond_7

    .line 226
    invoke-static {p0, p1, v4}, Lorg/alljoyn/bus/MsgArg;->getElement(JI)J

    move-result-wide v5

    .line 227
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    move-object v1, v0

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    .line 229
    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    invoke-static {v5, v6}, Lorg/alljoyn/bus/MsgArg;->getKey(J)J

    move-result-wide v8

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-static {v8, v9, v10}, Lorg/alljoyn/bus/MsgArg;->unmarshal(JLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5, v6}, Lorg/alljoyn/bus/MsgArg;->getVal(J)J

    move-result-wide v5

    const/4 v9, 0x1

    aget-object v7, v7, v9

    invoke-static {v5, v6, v7}, Lorg/alljoyn/bus/MsgArg;->unmarshal(JLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 234
    :cond_1
    instance-of v1, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_3

    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    move-object v1, v0

    invoke-interface {v1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 238
    :goto_1
    instance-of v1, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_4

    .line 239
    move-object v0, v2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    move-object v1, v0

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 240
    const-class v4, Ljava/util/Map;

    if-ne v1, v4, :cond_2

    const-class v1, Ljava/util/HashMap;

    .line 241
    :cond_2
    check-cast v1, Ljava/lang/Class;

    move-object v5, v1

    .line 245
    :goto_2
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getNumElements(J)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    move v4, v3

    .line 246
    :goto_3
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getNumElements(J)I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 251
    invoke-static {p0, p1, v4}, Lorg/alljoyn/bus/MsgArg;->getElement(JI)J

    move-result-wide v6

    invoke-static {v6, v7, v2}, Lorg/alljoyn/bus/MsgArg;->unmarshal(JLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .line 252
    invoke-virtual {v5, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 253
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "argument type mismatch"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 234
    :cond_3
    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    .line 243
    :cond_4
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    move-object v5, v1

    goto :goto_2

    .line 255
    :cond_5
    invoke-static {v1, v4, v6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 246
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    move-object v2, v1

    .line 347
    :cond_7
    :goto_4
    return-object v2

    .line 260
    :sswitch_1
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getBool(J)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_4

    .line 262
    :sswitch_2
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getBoolArray(J)[Z

    move-result-object v2

    goto :goto_4

    .line 264
    :sswitch_3
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getByte(J)B

    move-result v1

    invoke-static {p2, v1}, Lorg/alljoyn/bus/MsgArg;->getEnumObject(Ljava/lang/reflect/Type;I)Ljava/lang/Enum;

    move-result-object v2

    .line 265
    if-nez v2, :cond_7

    .line 266
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getByte(J)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    goto :goto_4

    .line 270
    :sswitch_4
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getByteArray(J)[B

    move-result-object v2

    goto :goto_4

    .line 272
    :sswitch_5
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getDouble(J)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_4

    .line 274
    :sswitch_6
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getDoubleArray(J)[D

    move-result-object v2

    goto :goto_4

    .line 276
    :sswitch_7
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getInt16(J)S

    move-result v1

    invoke-static {p2, v1}, Lorg/alljoyn/bus/MsgArg;->getEnumObject(Ljava/lang/reflect/Type;I)Ljava/lang/Enum;

    move-result-object v2

    .line 277
    if-nez v2, :cond_7

    .line 278
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getInt16(J)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    goto :goto_4

    .line 282
    :sswitch_8
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getInt16Array(J)[S

    move-result-object v2

    goto :goto_4

    .line 284
    :sswitch_9
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getInt32(J)I

    move-result v1

    invoke-static {p2, v1}, Lorg/alljoyn/bus/MsgArg;->getEnumObject(Ljava/lang/reflect/Type;I)Ljava/lang/Enum;

    move-result-object v2

    .line 285
    if-nez v2, :cond_7

    .line 286
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getInt32(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_4

    .line 290
    :sswitch_a
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getInt32Array(J)[I

    move-result-object v2

    goto :goto_4

    .line 292
    :sswitch_b
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getInt64(J)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {p2, v1}, Lorg/alljoyn/bus/MsgArg;->getEnumObject(Ljava/lang/reflect/Type;I)Ljava/lang/Enum;

    move-result-object v2

    .line 293
    if-nez v2, :cond_7

    .line 294
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getInt64(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_4

    .line 298
    :sswitch_c
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getInt64Array(J)[J

    move-result-object v2

    goto :goto_4

    .line 300
    :sswitch_d
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getObjPath(J)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    .line 302
    :sswitch_e
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getSignature(J)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    .line 304
    :sswitch_f
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getString(J)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    .line 306
    :sswitch_10
    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    invoke-static {v1}, Lorg/alljoyn/bus/Signature;->structTypes(Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 307
    array-length v1, v4

    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getNumMembers(J)I

    move-result v2

    if-eq v1, v2, :cond_8

    .line 308
    new-instance v1, Lorg/alljoyn/bus/MarshalBusException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot marshal \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x1

    new-array v5, v5, [J

    const/4 v6, 0x0

    aput-wide p0, v5, v6

    invoke-static {v5}, Lorg/alljoyn/bus/MsgArg;->getSignature([J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\' with "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getNumMembers(J)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " members into "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " with "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " fields"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/alljoyn/bus/MarshalBusException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 313
    :cond_8
    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 314
    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    invoke-static {v1}, Lorg/alljoyn/bus/Signature;->structFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v5

    move v1, v3

    .line 315
    :goto_5
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getNumMembers(J)I

    move-result v6

    if-ge v1, v6, :cond_7

    .line 316
    invoke-static {p0, p1, v1}, Lorg/alljoyn/bus/MsgArg;->getMember(JI)J

    move-result-wide v6

    aget-object v8, v4, v1

    invoke-static {v6, v7, v8}, Lorg/alljoyn/bus/MsgArg;->unmarshal(JLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .line 317
    aget-object v7, v5, v1

    invoke-virtual {v7, v2, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 321
    :sswitch_11
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getUint16(J)S

    move-result v1

    invoke-static {p2, v1}, Lorg/alljoyn/bus/MsgArg;->getEnumObject(Ljava/lang/reflect/Type;I)Ljava/lang/Enum;

    move-result-object v2

    .line 322
    if-nez v2, :cond_7

    .line 323
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getUint16(J)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    goto/16 :goto_4

    .line 327
    :sswitch_12
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getUint16Array(J)[S

    move-result-object v2

    goto/16 :goto_4

    .line 329
    :sswitch_13
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getUint32(J)I

    move-result v1

    invoke-static {p2, v1}, Lorg/alljoyn/bus/MsgArg;->getEnumObject(Ljava/lang/reflect/Type;I)Ljava/lang/Enum;

    move-result-object v2

    .line 330
    if-nez v2, :cond_7

    .line 331
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getUint32(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_4

    .line 335
    :sswitch_14
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getUint32Array(J)[I

    move-result-object v2

    goto/16 :goto_4

    .line 337
    :sswitch_15
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getUint64(J)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {p2, v1}, Lorg/alljoyn/bus/MsgArg;->getEnumObject(Ljava/lang/reflect/Type;I)Ljava/lang/Enum;

    move-result-object v2

    .line 338
    if-nez v2, :cond_7

    .line 339
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getUint64(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_4

    .line 343
    :sswitch_16
    invoke-static {p0, p1}, Lorg/alljoyn/bus/MsgArg;->getUint64Array(J)[J

    move-result-object v2

    goto/16 :goto_4

    .line 345
    :sswitch_17
    new-instance v2, Lorg/alljoyn/bus/Variant;

    invoke-direct {v2}, Lorg/alljoyn/bus/Variant;-><init>()V

    .line 346
    invoke-virtual {v2, p0, p1}, Lorg/alljoyn/bus/Variant;->setMsgArg(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 219
    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_0
        0x62 -> :sswitch_1
        0x64 -> :sswitch_5
        0x67 -> :sswitch_e
        0x69 -> :sswitch_9
        0x6e -> :sswitch_7
        0x6f -> :sswitch_d
        0x71 -> :sswitch_11
        0x72 -> :sswitch_10
        0x73 -> :sswitch_f
        0x74 -> :sswitch_15
        0x75 -> :sswitch_13
        0x76 -> :sswitch_17
        0x78 -> :sswitch_b
        0x79 -> :sswitch_3
        0x6261 -> :sswitch_2
        0x6461 -> :sswitch_6
        0x6961 -> :sswitch_a
        0x6e61 -> :sswitch_8
        0x7161 -> :sswitch_12
        0x7461 -> :sswitch_16
        0x7561 -> :sswitch_14
        0x7861 -> :sswitch_c
        0x7961 -> :sswitch_4
    .end sparse-switch
.end method

.method public static unmarshal(Ljava/lang/reflect/Method;J)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/MarshalBusException;
        }
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 370
    invoke-static {p1, p2}, Lorg/alljoyn/bus/MsgArg;->getNumMembers(J)I

    move-result v2

    .line 371
    array-length v0, v1

    if-eq v0, v2, :cond_0

    .line 372
    new-instance v0, Lorg/alljoyn/bus/MarshalBusException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot marshal "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " args into "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parameters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/alljoyn/bus/MarshalBusException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_0
    new-array v3, v2, [Ljava/lang/Object;

    .line 376
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 377
    invoke-static {p1, p2, v0}, Lorg/alljoyn/bus/MsgArg;->getMember(JI)J

    move-result-wide v4

    aget-object v6, v1, v0

    invoke-static {v4, v5, v6}, Lorg/alljoyn/bus/MsgArg;->unmarshal(JLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_1
    return-object v3
.end method

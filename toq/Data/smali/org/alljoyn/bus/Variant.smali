.class public Lorg/alljoyn/bus/Variant;
.super Ljava/lang/Object;
.source "Variant.java"


# instance fields
.field private handle:J

.field private signature:Ljava/lang/String;

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/alljoyn/bus/Variant;->value:Ljava/lang/Object;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/alljoyn/bus/Variant;->value:Ljava/lang/Object;

    .line 69
    iput-object p2, p0, Lorg/alljoyn/bus/Variant;->signature:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private synchronized native declared-synchronized destroy()V
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 170
    :try_start_0
    iget-object v1, p0, Lorg/alljoyn/bus/Variant;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 171
    check-cast p1, Lorg/alljoyn/bus/Variant;

    iget-object v2, p0, Lorg/alljoyn/bus/Variant;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 176
    :goto_0
    return v0

    .line 175
    :catch_0
    move-exception v1

    goto :goto_0

    .line 173
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 78
    :try_start_0
    invoke-direct {p0}, Lorg/alljoyn/bus/Variant;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 82
    return-void

    .line 80
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getMsgArg()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lorg/alljoyn/bus/Variant;->handle:J

    return-wide v0
.end method

.method public getObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lorg/alljoyn/bus/Variant;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 135
    iget-wide v0, p0, Lorg/alljoyn/bus/Variant;->handle:J

    invoke-static {v0, v1, p1}, Lorg/alljoyn/bus/MsgArg;->unmarshal(JLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/bus/Variant;->value:Ljava/lang/Object;

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/alljoyn/bus/Variant;->value:Ljava/lang/Object;

    .line 139
    return-object v0
.end method

.method public getObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lorg/alljoyn/bus/Variant;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 118
    iget-wide v0, p0, Lorg/alljoyn/bus/Variant;->handle:J

    invoke-static {v0, v1, p1}, Lorg/alljoyn/bus/MsgArg;->unmarshal(JLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/bus/Variant;->value:Ljava/lang/Object;

    .line 121
    :cond_0
    iget-object v0, p0, Lorg/alljoyn/bus/Variant;->value:Ljava/lang/Object;

    .line 122
    return-object v0
.end method

.method public getObject(Lorg/alljoyn/bus/VariantTypeReference;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/alljoyn/bus/VariantTypeReference",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lorg/alljoyn/bus/Variant;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 155
    iget-wide v1, p0, Lorg/alljoyn/bus/Variant;->handle:J

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-static {v1, v2, v0}, Lorg/alljoyn/bus/MsgArg;->unmarshal(JLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/bus/Variant;->value:Ljava/lang/Object;

    .line 158
    :cond_0
    iget-object v0, p0, Lorg/alljoyn/bus/Variant;->value:Ljava/lang/Object;

    .line 159
    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/AnnotationBusException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lorg/alljoyn/bus/Variant;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/alljoyn/bus/Variant;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/alljoyn/bus/Variant;->signature:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/alljoyn/bus/Signature;->typeSig(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    .line 101
    :cond_0
    iget-wide v0, p0, Lorg/alljoyn/bus/Variant;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 102
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    iget-wide v2, p0, Lorg/alljoyn/bus/Variant;->handle:J

    aput-wide v2, v0, v1

    invoke-static {v0}, Lorg/alljoyn/bus/MsgArg;->getSignature([J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/alljoyn/bus/Variant;->value:Ljava/lang/Object;

    return-object v0
.end method

.method native setMsgArg(J)V
.end method

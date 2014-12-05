.class public Lorg/apache/log4j/MDC;
.super Ljava/lang/Object;
.source "MDC.java"


# static fields
.field static final HT_SIZE:I = 0x7

.field static class$java$lang$ThreadLocal:Ljava/lang/Class;

.field static final mdc:Lorg/apache/log4j/MDC;


# instance fields
.field java1:Z

.field private removeMethod:Ljava/lang/reflect/Method;

.field tlm:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lorg/apache/log4j/MDC;

    invoke-direct {v0}, Lorg/apache/log4j/MDC;-><init>()V

    sput-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Lorg/apache/log4j/helpers/Loader;->isJava1()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/log4j/MDC;->java1:Z

    .line 61
    iget-boolean v0, p0, Lorg/apache/log4j/MDC;->java1:Z

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-direct {v0}, Lorg/apache/log4j/helpers/ThreadLocalMap;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    .line 66
    :cond_0
    :try_start_0
    sget-object v0, Lorg/apache/log4j/MDC;->class$java$lang$ThreadLocal:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.lang.ThreadLocal"

    invoke-static {v0}, Lorg/apache/log4j/MDC;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/MDC;->class$java$lang$ThreadLocal:Ljava/lang/Class;

    :goto_0
    const-string v1, "remove"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/MDC;->removeMethod:Ljava/lang/reflect/Method;

    .line 70
    :goto_1
    return-void

    .line 66
    :cond_1
    sget-object v0, Lorg/apache/log4j/MDC;->class$java$lang$ThreadLocal:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 66
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    invoke-direct {v0}, Lorg/apache/log4j/MDC;->clear0()V

    .line 137
    :cond_0
    return-void
.end method

.method private clear0()V
    .locals 4

    .prologue
    .line 194
    iget-boolean v1, p0, Lorg/apache/log4j/MDC;->java1:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 195
    iget-object v1, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    check-cast v1, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-virtual {v1}, Lorg/apache/log4j/helpers/ThreadLocalMap;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 196
    .local v0, "ht":Ljava/util/Hashtable;
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 199
    :cond_0
    iget-object v1, p0, Lorg/apache/log4j/MDC;->removeMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 202
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/MDC;->removeMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v0    # "ht":Ljava/util/Hashtable;
    :cond_1
    :goto_0
    return-void

    .line 205
    .restart local v0    # "ht":Ljava/util/Hashtable;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 203
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 97
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    invoke-direct {v0, p0}, Lorg/apache/log4j/MDC;->get0(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private get0(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-boolean v1, p0, Lorg/apache/log4j/MDC;->java1:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v2

    .line 163
    :goto_0
    return-object v1

    .line 159
    :cond_1
    iget-object v1, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    check-cast v1, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-virtual {v1}, Lorg/apache/log4j/helpers/ThreadLocalMap;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 160
    .local v0, "ht":Ljava/util/Hashtable;
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 161
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 163
    goto :goto_0
.end method

.method public static getContext()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    invoke-direct {v0}, Lorg/apache/log4j/MDC;->getContext0()Ljava/util/Hashtable;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getContext0()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lorg/apache/log4j/MDC;->java1:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 186
    :cond_0
    const/4 v0, 0x0

    .line 188
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    check-cast v0, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/ThreadLocalMap;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    goto :goto_0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 84
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/MDC;->put0(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    :cond_0
    return-void
.end method

.method private put0(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 142
    iget-boolean v1, p0, Lorg/apache/log4j/MDC;->java1:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v1, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    check-cast v1, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-virtual {v1}, Lorg/apache/log4j/helpers/ThreadLocalMap;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 146
    .local v0, "ht":Ljava/util/Hashtable;
    if-nez v0, :cond_2

    .line 147
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "ht":Ljava/util/Hashtable;
    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 148
    .restart local v0    # "ht":Ljava/util/Hashtable;
    iget-object v1, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    check-cast v1, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-virtual {v1, v0}, Lorg/apache/log4j/helpers/ThreadLocalMap;->set(Ljava/lang/Object;)V

    .line 150
    :cond_2
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 111
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lorg/apache/log4j/MDC;->mdc:Lorg/apache/log4j/MDC;

    invoke-direct {v0, p0}, Lorg/apache/log4j/MDC;->remove0(Ljava/lang/String;)V

    .line 114
    :cond_0
    return-void
.end method

.method private remove0(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-boolean v1, p0, Lorg/apache/log4j/MDC;->java1:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lorg/apache/log4j/MDC;->tlm:Ljava/lang/Object;

    check-cast v1, Lorg/apache/log4j/helpers/ThreadLocalMap;

    invoke-virtual {v1}, Lorg/apache/log4j/helpers/ThreadLocalMap;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 172
    .local v0, "ht":Ljava/util/Hashtable;
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-direct {p0}, Lorg/apache/log4j/MDC;->clear0()V

    .line 180
    .end local v0    # "ht":Ljava/util/Hashtable;
    :cond_0
    return-void
.end method

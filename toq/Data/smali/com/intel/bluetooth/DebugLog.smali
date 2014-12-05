.class public abstract Lcom/intel/bluetooth/DebugLog;
.super Ljava/lang/Object;
.source "DebugLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intel/bluetooth/DebugLog$LoggerAppender;,
        Lcom/intel/bluetooth/DebugLog$LoggerAppenderExt;
    }
.end annotation


# static fields
.field public static final DEBUG:I = 0x1

.field public static final ERROR:I = 0x4

.field private static final FQCN:Ljava/lang/String;

.field private static final debugCompiledOut:Z

.field private static debugEnabled:Z

.field private static debugInternalEnabled:Z

.field private static final fqcnSet:Ljava/util/Vector;

.field private static initialized:Z

.field private static java13:Z

.field private static loggerAppenders:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    sput-boolean v1, Lcom/intel/bluetooth/DebugLog;->debugEnabled:Z

    .line 55
    sput-boolean v1, Lcom/intel/bluetooth/DebugLog;->initialized:Z

    .line 57
    sput-boolean v1, Lcom/intel/bluetooth/DebugLog;->debugInternalEnabled:Z

    .line 59
    const-class v0, Lcom/intel/bluetooth/DebugLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intel/bluetooth/DebugLog;->FQCN:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/intel/bluetooth/DebugLog;->fqcnSet:Ljava/util/Vector;

    .line 63
    sput-boolean v1, Lcom/intel/bluetooth/DebugLog;->java13:Z

    .line 65
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/intel/bluetooth/DebugLog;->loggerAppenders:Ljava/util/Vector;

    .line 81
    sget-object v0, Lcom/intel/bluetooth/DebugLog;->fqcnSet:Ljava/util/Vector;

    sget-object v1, Lcom/intel/bluetooth/DebugLog;->FQCN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public static addAppender(Lcom/intel/bluetooth/DebugLog$LoggerAppender;)V
    .locals 1
    .param p0, "newAppender"    # Lcom/intel/bluetooth/DebugLog$LoggerAppender;

    .prologue
    .line 380
    sget-object v0, Lcom/intel/bluetooth/DebugLog;->loggerAppenders:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 381
    return-void
.end method

.method private static callAppenders(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "level"    # I
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 372
    sget-object v2, Lcom/intel/bluetooth/DebugLog;->loggerAppenders:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 373
    .local v1, "iter":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    .line 372
    if-nez v2, :cond_0

    .line 377
    return-void

    .line 374
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/bluetooth/DebugLog$LoggerAppender;

    .line 375
    .local v0, "a":Lcom/intel/bluetooth/DebugLog$LoggerAppender;
    invoke-interface {v0, p0, p1, p2}, Lcom/intel/bluetooth/DebugLog$LoggerAppender;->appendLog(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static d00(I)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 388
    const/16 v0, 0x9

    if-le p0, v0, :cond_0

    .line 389
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static d000(I)Ljava/lang/String;
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 396
    const/16 v0, 0x63

    if-le p0, v0, :cond_0

    .line 397
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 401
    :goto_0
    return-object v0

    .line 398
    :cond_0
    const/16 v0, 0x9

    if-le p0, v0, :cond_1

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 401
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {p0, v1, v1}, Lcom/intel/bluetooth/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->printLocation()V

    .line 146
    const/4 v0, 0x1

    invoke-static {v0, p0, v1}, Lcom/intel/bluetooth/DebugLog;->callAppenders(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 148
    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;J)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "v"    # J

    .prologue
    .line 193
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string v0, " "

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/intel/bluetooth/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->printLocation()V

    .line 196
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/intel/bluetooth/DebugLog;->callAppenders(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 177
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string v0, " "

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/intel/bluetooth/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->printLocation()V

    .line 180
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/intel/bluetooth/DebugLog;->callAppenders(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const-string v0, " "

    invoke-static {p0, v0, p1}, Lcom/intel/bluetooth/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->printLocation()V

    .line 154
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/intel/bluetooth/DebugLog;->callAppenders(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "v"    # Ljava/lang/String;
    .param p2, "v2"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const-string v0, " "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/intel/bluetooth/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->printLocation()V

    .line 188
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/intel/bluetooth/DebugLog;->callAppenders(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 159
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    const-string v0, " "

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/intel/bluetooth/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->printLocation()V

    .line 164
    sget-boolean v0, Lcom/intel/bluetooth/UtilsJavaSE;->ibmJ9midp:Z

    if-nez v0, :cond_2

    .line 165
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 172
    :cond_0
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/intel/bluetooth/DebugLog;->callAppenders(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    :cond_1
    return-void

    .line 166
    :cond_2
    sget-boolean v0, Lcom/intel/bluetooth/DebugLog;->debugInternalEnabled:Z

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static debug(Ljava/lang/String;Z)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "v"    # Z

    .prologue
    .line 218
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const-string v0, " "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/intel/bluetooth/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->printLocation()V

    .line 221
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/intel/bluetooth/DebugLog;->callAppenders(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;[B)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 226
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, p1, v1, v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;[BII)V

    .line 227
    return-void

    .line 226
    :cond_0
    array-length v0, p1

    goto :goto_0
.end method

.method public static debug(Ljava/lang/String;[BII)V
    .locals 6
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v5, 0x0

    .line 230
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 232
    .local v0, "buf":Ljava/lang/StringBuffer;
    if-nez p1, :cond_2

    .line 233
    const-string v2, " null byte[]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Lcom/intel/bluetooth/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->printLocation()V

    .line 249
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/intel/bluetooth/DebugLog;->callAppenders(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_1
    return-void

    .line 235
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_2
    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    move v1, p2

    .local v1, "i":I
    :goto_1
    add-int v2, p2, p3

    if-lt v1, v2, :cond_3

    .line 242
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    const/4 v2, 0x4

    if-le p3, v2, :cond_0

    .line 244
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 237
    :cond_3
    if-eq v1, p2, :cond_4

    .line 238
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    :cond_4
    new-instance v2, Ljava/lang/Byte;

    aget-byte v3, p1, v1

    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v2}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static debug(Ljava/lang/String;[I)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "data"    # [I

    .prologue
    const/4 v1, 0x0

    .line 254
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, p1, v1, v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;[III)V

    .line 255
    return-void

    .line 254
    :cond_0
    array-length v0, p1

    goto :goto_0
.end method

.method public static debug(Ljava/lang/String;[III)V
    .locals 6
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "data"    # [I
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v5, 0x0

    .line 258
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 260
    .local v0, "buf":Ljava/lang/StringBuffer;
    if-nez p1, :cond_2

    .line 261
    const-string v2, " null int[]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Lcom/intel/bluetooth/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->printLocation()V

    .line 277
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/intel/bluetooth/DebugLog;->callAppenders(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_1
    return-void

    .line 263
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_2
    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    move v1, p2

    .local v1, "i":I
    :goto_1
    add-int v2, p2, p3

    if-lt v1, v2, :cond_3

    .line 270
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    const/4 v2, 0x4

    if-le p3, v2, :cond_0

    .line 272
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 265
    :cond_3
    if-eq v1, p2, :cond_4

    .line 266
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    :cond_4
    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static debug0x(Ljava/lang/String;J)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "v"    # J

    .prologue
    .line 201
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const-string v0, " 0x"

    invoke-static {p1, p2}, Lcom/intel/bluetooth/Utils;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/intel/bluetooth/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->printLocation()V

    .line 204
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/intel/bluetooth/Utils;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/intel/bluetooth/DebugLog;->callAppenders(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    :cond_0
    return-void
.end method

.method public static debug0x(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "v"    # J

    .prologue
    .line 209
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/intel/bluetooth/Utils;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/intel/bluetooth/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->printLocation()V

    .line 212
    const/4 v0, 0x1

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Lcom/intel/bluetooth/Utils;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 212
    invoke-static {v0, v1, v2}, Lcom/intel/bluetooth/DebugLog;->callAppenders(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 215
    :cond_0
    return-void
.end method

.method public static debugNative(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "location"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 298
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    const-string v0, "\n\t  "

    invoke-static {p1, v0, p0}, Lcom/intel/bluetooth/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/intel/bluetooth/DebugLog;->callAppenders(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 302
    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 305
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    const-string v0, "error "

    invoke-static {v0, p0, v1}, Lcom/intel/bluetooth/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->printLocation()V

    .line 308
    const/4 v0, 0x4

    invoke-static {v0, p0, v1}, Lcom/intel/bluetooth/DebugLog;->callAppenders(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 310
    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;J)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "v"    # J

    .prologue
    .line 313
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    const-string v0, "error "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/intel/bluetooth/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->printLocation()V

    .line 316
    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/intel/bluetooth/DebugLog;->callAppenders(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 321
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const-string v0, "error "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/intel/bluetooth/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->printLocation()V

    .line 324
    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/intel/bluetooth/DebugLog;->callAppenders(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 329
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    const-string v0, "error "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/intel/bluetooth/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->printLocation()V

    .line 334
    sget-boolean v0, Lcom/intel/bluetooth/UtilsJavaSE;->ibmJ9midp:Z

    if-nez v0, :cond_2

    .line 335
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 343
    :cond_0
    :goto_0
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/intel/bluetooth/DebugLog;->callAppenders(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 345
    :cond_1
    return-void

    .line 336
    :cond_2
    sget-boolean v0, Lcom/intel/bluetooth/DebugLog;->debugInternalEnabled:Z

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static fatal(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 348
    const-string v0, "error "

    invoke-static {v0, p0, v1}, Lcom/intel/bluetooth/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->printLocation()V

    .line 350
    const/4 v0, 0x4

    invoke-static {v0, p0, v1}, Lcom/intel/bluetooth/DebugLog;->callAppenders(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 351
    return-void
.end method

.method public static fatal(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 354
    const-string v0, "error "

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/intel/bluetooth/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->printLocation()V

    .line 358
    sget-boolean v0, Lcom/intel/bluetooth/UtilsJavaSE;->ibmJ9midp:Z

    if-nez v0, :cond_1

    .line 359
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 367
    :cond_0
    :goto_0
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/intel/bluetooth/DebugLog;->callAppenders(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 368
    return-void

    .line 360
    :cond_1
    sget-boolean v0, Lcom/intel/bluetooth/DebugLog;->debugInternalEnabled:Z

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static formatLocation(Lcom/intel/bluetooth/UtilsJavaSE$StackTraceLocation;)Ljava/lang/String;
    .locals 2
    .param p0, "ste"    # Lcom/intel/bluetooth/UtilsJavaSE$StackTraceLocation;

    .prologue
    .line 449
    if-nez p0, :cond_0

    .line 450
    const-string v0, ""

    .line 453
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/intel/bluetooth/UtilsJavaSE$StackTraceLocation;->className:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intel/bluetooth/UtilsJavaSE$StackTraceLocation;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/intel/bluetooth/UtilsJavaSE$StackTraceLocation;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 454
    iget v1, p0, Lcom/intel/bluetooth/UtilsJavaSE$StackTraceLocation;->lineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static declared-synchronized initialize()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 89
    const-class v5, Lcom/intel/bluetooth/DebugLog;

    monitor-enter v5

    :try_start_0
    sget-boolean v6, Lcom/intel/bluetooth/DebugLog;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    .line 118
    .local v1, "useLog4j":Z
    .local v2, "useStdOut":Z
    :cond_0
    :goto_0
    monitor-exit v5

    return-void

    .line 92
    .end local v1    # "useLog4j":Z
    .end local v2    # "useStdOut":Z
    :cond_1
    const/4 v6, 0x1

    :try_start_1
    sput-boolean v6, Lcom/intel/bluetooth/DebugLog;->initialized:Z

    .line 94
    const-string v6, "bluecove.debug"

    const/4 v7, 0x0

    .line 93
    invoke-static {v6, v7}, Lcom/intel/bluetooth/BlueCoveImpl;->getConfigProperty(Ljava/lang/String;Z)Z

    move-result v6

    sput-boolean v6, Lcom/intel/bluetooth/DebugLog;->debugEnabled:Z

    .line 101
    const-string v6, "bluecove.debug.stdout"

    const/4 v7, 0x1

    .line 100
    invoke-static {v6, v7}, Lcom/intel/bluetooth/BlueCoveImpl;->getConfigProperty(Ljava/lang/String;Z)Z

    move-result v2

    .line 102
    .restart local v2    # "useStdOut":Z
    if-eqz v2, :cond_2

    sget-boolean v6, Lcom/intel/bluetooth/DebugLog;->debugEnabled:Z

    if-eqz v6, :cond_2

    :goto_1
    sput-boolean v3, Lcom/intel/bluetooth/DebugLog;->debugInternalEnabled:Z

    .line 104
    const-string v3, "bluecove.debug.log4j"

    const/4 v4, 0x1

    .line 103
    invoke-static {v3, v4}, Lcom/intel/bluetooth/BlueCoveImpl;->getConfigProperty(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 105
    .restart local v1    # "useLog4j":Z
    if-eqz v1, :cond_0

    .line 108
    :try_start_2
    const-string v3, "com.intel.bluetooth.DebugLog4jAppender"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 109
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/bluetooth/DebugLog$LoggerAppenderExt;

    .line 110
    .local v0, "log4jAppender":Lcom/intel/bluetooth/DebugLog$LoggerAppenderExt;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "BlueCove log redirected to log4j"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    invoke-static {v0}, Lcom/intel/bluetooth/DebugLog;->addAppender(Lcom/intel/bluetooth/DebugLog$LoggerAppender;)V

    .line 112
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lcom/intel/bluetooth/DebugLog$LoggerAppenderExt;->isLogEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    const/4 v3, 0x1

    sput-boolean v3, Lcom/intel/bluetooth/DebugLog;->debugEnabled:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 115
    .end local v0    # "log4jAppender":Lcom/intel/bluetooth/DebugLog$LoggerAppenderExt;
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v1    # "useLog4j":Z
    :cond_2
    move v3, v4

    .line 102
    goto :goto_1

    .line 89
    :catchall_0
    move-exception v3

    monitor-exit v5

    throw v3
.end method

.method public static isDebugEnabled()Z
    .locals 1

    .prologue
    .line 121
    sget-boolean v0, Lcom/intel/bluetooth/DebugLog;->initialized:Z

    if-nez v0, :cond_0

    .line 122
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->initialize()V

    .line 124
    :cond_0
    sget-boolean v0, Lcom/intel/bluetooth/DebugLog;->debugEnabled:Z

    return v0
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "va1"    # Ljava/lang/String;
    .param p2, "va2"    # Ljava/lang/String;

    .prologue
    .line 406
    sget-boolean v2, Lcom/intel/bluetooth/DebugLog;->debugInternalEnabled:Z

    if-nez v2, :cond_0

    .line 431
    :goto_0
    return-void

    .line 410
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 411
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 414
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 415
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/intel/bluetooth/DebugLog;->d00(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/intel/bluetooth/DebugLog;->d00(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/intel/bluetooth/DebugLog;->d00(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/intel/bluetooth/DebugLog;->d000(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    if-eqz p1, :cond_1

    .line 422
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    :cond_1
    if-eqz p2, :cond_2

    .line 425
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 429
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static nativeDebugCallback(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "lineN"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 284
    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, ".\\"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 287
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/intel/bluetooth/DebugLog;->debugNative(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error when calling debug "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 291
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static printLocation()V
    .locals 5

    .prologue
    .line 434
    sget-boolean v2, Lcom/intel/bluetooth/DebugLog;->java13:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/intel/bluetooth/DebugLog;->debugInternalEnabled:Z

    if-nez v2, :cond_1

    .line 446
    .local v1, "ste":Lcom/intel/bluetooth/UtilsJavaSE$StackTraceLocation;
    :cond_0
    :goto_0
    return-void

    .line 439
    .end local v1    # "ste":Lcom/intel/bluetooth/UtilsJavaSE$StackTraceLocation;
    :cond_1
    :try_start_0
    sget-object v2, Lcom/intel/bluetooth/DebugLog;->fqcnSet:Ljava/util/Vector;

    invoke-static {v2}, Lcom/intel/bluetooth/UtilsJavaSE;->getLocation(Ljava/util/Vector;)Lcom/intel/bluetooth/UtilsJavaSE$StackTraceLocation;

    move-result-object v1

    .line 440
    .restart local v1    # "ste":Lcom/intel/bluetooth/UtilsJavaSE$StackTraceLocation;
    if-eqz v1, :cond_0

    .line 441
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\t  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/intel/bluetooth/DebugLog;->formatLocation(Lcom/intel/bluetooth/UtilsJavaSE$StackTraceLocation;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v2, 0x1

    sput-boolean v2, Lcom/intel/bluetooth/DebugLog;->java13:Z

    goto :goto_0
.end method

.method public static removeAppender(Lcom/intel/bluetooth/DebugLog$LoggerAppender;)V
    .locals 1
    .param p0, "newAppender"    # Lcom/intel/bluetooth/DebugLog$LoggerAppender;

    .prologue
    .line 384
    sget-object v0, Lcom/intel/bluetooth/DebugLog;->loggerAppenders:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 385
    return-void
.end method

.method public static setDebugEnabled(Z)V
    .locals 1
    .param p0, "debugEnabled"    # Z

    .prologue
    .line 128
    sget-boolean v0, Lcom/intel/bluetooth/DebugLog;->initialized:Z

    if-nez v0, :cond_0

    .line 129
    invoke-static {}, Lcom/intel/bluetooth/DebugLog;->initialize()V

    .line 136
    :cond_0
    invoke-static {}, Lcom/intel/bluetooth/BlueCoveImpl;->instance()Lcom/intel/bluetooth/BlueCoveImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/intel/bluetooth/BlueCoveImpl;->enableNativeDebug(Z)V

    .line 137
    sput-boolean p0, Lcom/intel/bluetooth/DebugLog;->debugEnabled:Z

    .line 138
    sget-boolean v0, Lcom/intel/bluetooth/DebugLog;->debugEnabled:Z

    sput-boolean v0, Lcom/intel/bluetooth/DebugLog;->debugInternalEnabled:Z

    .line 140
    return-void
.end method

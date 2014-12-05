.class public Lorg/apache/log4j/NDC;
.super Ljava/lang/Object;
.source "NDC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/NDC$DiagnosticContext;
    }
.end annotation


# static fields
.field static final REAP_THRESHOLD:I = 0x5

.field static ht:Ljava/util/Hashtable;

.field static pushCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    .line 116
    const/4 v0, 0x0

    sput v0, Lorg/apache/log4j/NDC;->pushCounter:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 2

    .prologue
    .line 153
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    .line 154
    .local v0, "stack":Ljava/util/Stack;
    if-eqz v0, :cond_0

    .line 155
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->setSize(I)V

    .line 156
    :cond_0
    return-void
.end method

.method public static cloneStack()Ljava/util/Stack;
    .locals 2

    .prologue
    .line 176
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    .line 177
    .local v0, "stack":Ljava/util/Stack;
    if-nez v0, :cond_0

    .line 178
    const/4 v1, 0x0

    .line 180
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    goto :goto_0
.end method

.method public static get()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    .line 221
    .local v0, "s":Ljava/util/Stack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/NDC$DiagnosticContext;

    iget-object v1, v1, Lorg/apache/log4j/NDC$DiagnosticContext;->fullMessage:Ljava/lang/String;

    .line 224
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getCurrentStack()Ljava/util/Stack;
    .locals 2

    .prologue
    .line 134
    sget-object v0, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 137
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDepth()I
    .locals 2

    .prologue
    .line 236
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    .line 237
    .local v0, "stack":Ljava/util/Stack;
    if-nez v0, :cond_0

    .line 238
    const/4 v1, 0x0

    .line 240
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v1

    goto :goto_0
.end method

.method public static inherit(Ljava/util/Stack;)V
    .locals 2
    .param p0, "stack"    # Ljava/util/Stack;

    .prologue
    .line 208
    if-eqz p0, :cond_0

    .line 209
    sget-object v0, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_0
    return-void
.end method

.method private static lazyRemove()V
    .locals 9

    .prologue
    .line 246
    sget-object v6, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    if-nez v6, :cond_1

    .line 286
    .local v0, "enumeration":Ljava/util/Enumeration;
    .local v1, "i":I
    .local v2, "misses":I
    .local v3, "size":I
    .local v5, "v":Ljava/util/Vector;
    :cond_0
    :goto_0
    return-void

    .line 253
    .end local v0    # "enumeration":Ljava/util/Enumeration;
    .end local v1    # "i":I
    .end local v2    # "misses":I
    .end local v3    # "size":I
    .end local v5    # "v":Ljava/util/Vector;
    :cond_1
    sget-object v7, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    monitor-enter v7

    .line 255
    :try_start_0
    sget v6, Lorg/apache/log4j/NDC;->pushCounter:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lorg/apache/log4j/NDC;->pushCounter:I

    const/4 v8, 0x5

    if-gt v6, v8, :cond_2

    .line 256
    monitor-exit v7

    goto :goto_0

    .line 277
    .restart local v2    # "misses":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 258
    .end local v2    # "misses":I
    :cond_2
    const/4 v6, 0x0

    :try_start_1
    sput v6, Lorg/apache/log4j/NDC;->pushCounter:I

    .line 261
    const/4 v2, 0x0

    .line 262
    .restart local v2    # "misses":I
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 263
    .restart local v5    # "v":Ljava/util/Vector;
    sget-object v6, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 268
    .restart local v0    # "enumeration":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x4

    if-gt v2, v6, :cond_4

    .line 269
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    .line 270
    .local v4, "t":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 271
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 273
    :cond_3
    const/4 v2, 0x0

    .line 274
    invoke-virtual {v5, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 277
    .end local v4    # "t":Ljava/lang/Thread;
    :cond_4
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v3

    .line 280
    .restart local v3    # "size":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v3, :cond_0

    .line 281
    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    .line 282
    .restart local v4    # "t":Ljava/lang/Thread;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Lazy NDC removal for thread ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "] ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sget-object v7, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 284
    sget-object v6, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static peek()Ljava/lang/String;
    .locals 2

    .prologue
    .line 321
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    .line 322
    .local v0, "stack":Ljava/util/Stack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/NDC$DiagnosticContext;

    iget-object v1, v1, Lorg/apache/log4j/NDC$DiagnosticContext;->message:Ljava/lang/String;

    .line 325
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static pop()Ljava/lang/String;
    .locals 2

    .prologue
    .line 301
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    .line 302
    .local v0, "stack":Ljava/util/Stack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 303
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/NDC$DiagnosticContext;

    iget-object v1, v1, Lorg/apache/log4j/NDC$DiagnosticContext;->message:Ljava/lang/String;

    .line 305
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static push(Ljava/lang/String;)V
    .locals 6
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 338
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v3

    .line 340
    .local v3, "stack":Ljava/util/Stack;
    if-nez v3, :cond_0

    .line 341
    new-instance v0, Lorg/apache/log4j/NDC$DiagnosticContext;

    invoke-direct {v0, p0, v5}, Lorg/apache/log4j/NDC$DiagnosticContext;-><init>(Ljava/lang/String;Lorg/apache/log4j/NDC$DiagnosticContext;)V

    .line 342
    .local v0, "dc":Lorg/apache/log4j/NDC$DiagnosticContext;
    new-instance v3, Ljava/util/Stack;

    .end local v3    # "stack":Ljava/util/Stack;
    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 343
    .restart local v3    # "stack":Ljava/util/Stack;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 344
    .local v1, "key":Ljava/lang/Thread;
    sget-object v4, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-virtual {v4, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .end local v0    # "dc":Lorg/apache/log4j/NDC$DiagnosticContext;
    .end local v1    # "key":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 347
    new-instance v0, Lorg/apache/log4j/NDC$DiagnosticContext;

    invoke-direct {v0, p0, v5}, Lorg/apache/log4j/NDC$DiagnosticContext;-><init>(Ljava/lang/String;Lorg/apache/log4j/NDC$DiagnosticContext;)V

    .line 348
    .restart local v0    # "dc":Lorg/apache/log4j/NDC$DiagnosticContext;
    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 350
    .end local v0    # "dc":Lorg/apache/log4j/NDC$DiagnosticContext;
    :cond_1
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/NDC$DiagnosticContext;

    .line 351
    .local v2, "parent":Lorg/apache/log4j/NDC$DiagnosticContext;
    new-instance v4, Lorg/apache/log4j/NDC$DiagnosticContext;

    invoke-direct {v4, p0, v2}, Lorg/apache/log4j/NDC$DiagnosticContext;-><init>(Ljava/lang/String;Lorg/apache/log4j/NDC$DiagnosticContext;)V

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static remove()V
    .locals 2

    .prologue
    .line 377
    sget-object v0, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 378
    sget-object v0, Lorg/apache/log4j/NDC;->ht:Ljava/util/Hashtable;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-static {}, Lorg/apache/log4j/NDC;->lazyRemove()V

    .line 383
    :cond_0
    return-void
.end method

.method public static setMaxDepth(I)V
    .locals 2
    .param p0, "maxDepth"    # I

    .prologue
    .line 415
    invoke-static {}, Lorg/apache/log4j/NDC;->getCurrentStack()Ljava/util/Stack;

    move-result-object v0

    .line 416
    .local v0, "stack":Ljava/util/Stack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 417
    invoke-virtual {v0, p0}, Ljava/util/Stack;->setSize(I)V

    .line 418
    :cond_0
    return-void
.end method

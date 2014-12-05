.class public Lorg/apache/log4j/pattern/LogEvent;
.super Ljava/lang/Object;
.source "LogEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final PARAM_ARRAY:[Ljava/lang/Integer;

.field static final TO_LEVEL:Ljava/lang/String; = "toLevel"

.field static final TO_LEVEL_PARAMS:[Ljava/lang/Class;

.field static class$org$apache$log4j$Level:Ljava/lang/Class; = null

.field static final methodCache:Ljava/util/Hashtable;

.field static final serialVersionUID:J = -0xc0d46dc8bf44ac1L

.field private static startTime:J


# instance fields
.field public final categoryName:Ljava/lang/String;

.field public final transient fqnOfCategoryClass:Ljava/lang/String;

.field public transient level:Lorg/apache/log4j/Priority;

.field private locationInfo:Lorg/apache/log4j/spi/LocationInfo;

.field private transient logger:Lorg/apache/log4j/Category;

.field private mdcCopy:Ljava/util/Hashtable;

.field private mdcCopyLookupRequired:Z

.field private transient message:Ljava/lang/Object;

.field private ndc:Ljava/lang/String;

.field private ndcLookupRequired:Z

.field private renderedMessage:Ljava/lang/String;

.field private threadName:Ljava/lang/String;

.field private throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

.field public final timeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/apache/log4j/pattern/LogEvent;->startTime:J

    .line 142
    new-array v0, v2, [Ljava/lang/Integer;

    sput-object v0, Lorg/apache/log4j/pattern/LogEvent;->PARAM_ARRAY:[Ljava/lang/Integer;

    .line 144
    new-array v0, v2, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/log4j/pattern/LogEvent;->TO_LEVEL_PARAMS:[Ljava/lang/Class;

    .line 145
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lorg/apache/log4j/pattern/LogEvent;->methodCache:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/Category;JLorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "fqnOfCategoryClass"    # Ljava/lang/String;
    .param p2, "logger"    # Lorg/apache/log4j/Category;
    .param p3, "timeStamp"    # J
    .param p5, "level"    # Lorg/apache/log4j/Priority;
    .param p6, "message"    # Ljava/lang/Object;
    .param p7, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-boolean v0, p0, Lorg/apache/log4j/pattern/LogEvent;->ndcLookupRequired:Z

    .line 115
    iput-boolean v0, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopyLookupRequired:Z

    .line 184
    iput-object p1, p0, Lorg/apache/log4j/pattern/LogEvent;->fqnOfCategoryClass:Ljava/lang/String;

    .line 185
    iput-object p2, p0, Lorg/apache/log4j/pattern/LogEvent;->logger:Lorg/apache/log4j/Category;

    .line 186
    invoke-virtual {p2}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->categoryName:Ljava/lang/String;

    .line 187
    iput-object p5, p0, Lorg/apache/log4j/pattern/LogEvent;->level:Lorg/apache/log4j/Priority;

    .line 188
    iput-object p6, p0, Lorg/apache/log4j/pattern/LogEvent;->message:Ljava/lang/Object;

    .line 189
    if-eqz p7, :cond_0

    .line 190
    new-instance v0, Lorg/apache/log4j/spi/ThrowableInformation;

    invoke-direct {v0, p7}, Lorg/apache/log4j/spi/ThrowableInformation;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

    .line 193
    :cond_0
    iput-wide p3, p0, Lorg/apache/log4j/pattern/LogEvent;->timeStamp:J

    .line 194
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/Category;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "fqnOfCategoryClass"    # Ljava/lang/String;
    .param p2, "logger"    # Lorg/apache/log4j/Category;
    .param p3, "level"    # Lorg/apache/log4j/Priority;
    .param p4, "message"    # Ljava/lang/Object;
    .param p5, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-boolean v0, p0, Lorg/apache/log4j/pattern/LogEvent;->ndcLookupRequired:Z

    .line 115
    iput-boolean v0, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopyLookupRequired:Z

    .line 159
    iput-object p1, p0, Lorg/apache/log4j/pattern/LogEvent;->fqnOfCategoryClass:Ljava/lang/String;

    .line 160
    iput-object p2, p0, Lorg/apache/log4j/pattern/LogEvent;->logger:Lorg/apache/log4j/Category;

    .line 161
    invoke-virtual {p2}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->categoryName:Ljava/lang/String;

    .line 162
    iput-object p3, p0, Lorg/apache/log4j/pattern/LogEvent;->level:Lorg/apache/log4j/Priority;

    .line 163
    iput-object p4, p0, Lorg/apache/log4j/pattern/LogEvent;->message:Ljava/lang/Object;

    .line 164
    if-eqz p5, :cond_0

    .line 165
    new-instance v0, Lorg/apache/log4j/spi/ThrowableInformation;

    invoke-direct {v0, p5}, Lorg/apache/log4j/spi/ThrowableInformation;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

    .line 167
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/log4j/pattern/LogEvent;->timeStamp:J

    .line 168
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/Logger;JLorg/apache/log4j/Level;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/log4j/spi/ThrowableInformation;Ljava/lang/String;Lorg/apache/log4j/spi/LocationInfo;Ljava/util/Map;)V
    .locals 2
    .param p1, "fqnOfCategoryClass"    # Ljava/lang/String;
    .param p2, "logger"    # Lorg/apache/log4j/Logger;
    .param p3, "timeStamp"    # J
    .param p5, "level"    # Lorg/apache/log4j/Level;
    .param p6, "message"    # Ljava/lang/Object;
    .param p7, "threadName"    # Ljava/lang/String;
    .param p8, "throwable"    # Lorg/apache/log4j/spi/ThrowableInformation;
    .param p9, "ndc"    # Ljava/lang/String;
    .param p10, "info"    # Lorg/apache/log4j/spi/LocationInfo;
    .param p11, "properties"    # Ljava/util/Map;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-boolean v0, p0, Lorg/apache/log4j/pattern/LogEvent;->ndcLookupRequired:Z

    .line 115
    iput-boolean v0, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopyLookupRequired:Z

    .line 222
    iput-object p1, p0, Lorg/apache/log4j/pattern/LogEvent;->fqnOfCategoryClass:Ljava/lang/String;

    .line 223
    iput-object p2, p0, Lorg/apache/log4j/pattern/LogEvent;->logger:Lorg/apache/log4j/Category;

    .line 224
    if-eqz p2, :cond_2

    .line 225
    invoke-virtual {p2}, Lorg/apache/log4j/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->categoryName:Ljava/lang/String;

    .line 229
    :goto_0
    iput-object p5, p0, Lorg/apache/log4j/pattern/LogEvent;->level:Lorg/apache/log4j/Priority;

    .line 230
    iput-object p6, p0, Lorg/apache/log4j/pattern/LogEvent;->message:Ljava/lang/Object;

    .line 231
    if-eqz p8, :cond_0

    .line 232
    iput-object p8, p0, Lorg/apache/log4j/pattern/LogEvent;->throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

    .line 235
    :cond_0
    iput-wide p3, p0, Lorg/apache/log4j/pattern/LogEvent;->timeStamp:J

    .line 236
    iput-object p7, p0, Lorg/apache/log4j/pattern/LogEvent;->threadName:Ljava/lang/String;

    .line 237
    iput-boolean v1, p0, Lorg/apache/log4j/pattern/LogEvent;->ndcLookupRequired:Z

    .line 238
    iput-object p9, p0, Lorg/apache/log4j/pattern/LogEvent;->ndc:Ljava/lang/String;

    .line 239
    iput-object p10, p0, Lorg/apache/log4j/pattern/LogEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    .line 240
    iput-boolean v1, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopyLookupRequired:Z

    .line 241
    if-eqz p11, :cond_1

    .line 242
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, p11}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopy:Ljava/util/Hashtable;

    .line 244
    :cond_1
    return-void

    .line 227
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->categoryName:Ljava/lang/String;

    goto :goto_0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 480
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

.method public static getStartTime()J
    .locals 2

    .prologue
    .line 371
    sget-wide v0, Lorg/apache/log4j/pattern/LogEvent;->startTime:J

    return-wide v0
.end method

.method private readLevel(Ljava/io/ObjectInputStream;)V
    .locals 8
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 411
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    .line 413
    .local v4, "p":I
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 414
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 415
    invoke-static {v4}, Lorg/apache/log4j/Level;->toLevel(I)Lorg/apache/log4j/Level;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/log4j/pattern/LogEvent;->level:Lorg/apache/log4j/Priority;

    .line 436
    .end local v0    # "className":Ljava/lang/String;
    :goto_0
    return-void

    .line 417
    .restart local v0    # "className":Ljava/lang/String;
    :cond_0
    sget-object v5, Lorg/apache/log4j/pattern/LogEvent;->methodCache:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 418
    .local v3, "m":Ljava/lang/reflect/Method;
    if-nez v3, :cond_1

    .line 419
    invoke-static {v0}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 426
    .local v1, "clazz":Ljava/lang/Class;
    const-string v5, "toLevel"

    sget-object v6, Lorg/apache/log4j/pattern/LogEvent;->TO_LEVEL_PARAMS:[Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 427
    sget-object v5, Lorg/apache/log4j/pattern/LogEvent;->methodCache:Ljava/util/Hashtable;

    invoke-virtual {v5, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .end local v1    # "clazz":Ljava/lang/Class;
    :cond_1
    sget-object v5, Lorg/apache/log4j/pattern/LogEvent;->PARAM_ARRAY:[Ljava/lang/Integer;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    .line 430
    const/4 v5, 0x0

    sget-object v6, Lorg/apache/log4j/pattern/LogEvent;->PARAM_ARRAY:[Ljava/lang/Integer;

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/log4j/Level;

    iput-object v5, p0, Lorg/apache/log4j/pattern/LogEvent;->level:Lorg/apache/log4j/Priority;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 432
    .end local v0    # "className":Ljava/lang/String;
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 433
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "Level deserialization failed, reverting to default."

    invoke-static {v5, v2}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 434
    invoke-static {v4}, Lorg/apache/log4j/Level;->toLevel(I)Lorg/apache/log4j/Level;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/log4j/pattern/LogEvent;->level:Lorg/apache/log4j/Priority;

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 440
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 441
    invoke-direct {p0, p1}, Lorg/apache/log4j/pattern/LogEvent;->readLevel(Ljava/io/ObjectInputStream;)V

    .line 444
    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    if-nez v0, :cond_0

    .line 445
    new-instance v0, Lorg/apache/log4j/spi/LocationInfo;

    invoke-direct {v0, v1, v1}, Lorg/apache/log4j/spi/LocationInfo;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    .line 446
    :cond_0
    return-void
.end method

.method private writeLevel(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 477
    iget-object v1, p0, Lorg/apache/log4j/pattern/LogEvent;->level:Lorg/apache/log4j/Priority;

    invoke-virtual {v1}, Lorg/apache/log4j/Priority;->toInt()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 479
    iget-object v1, p0, Lorg/apache/log4j/pattern/LogEvent;->level:Lorg/apache/log4j/Priority;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 480
    .local v0, "clazz":Ljava/lang/Class;
    sget-object v1, Lorg/apache/log4j/pattern/LogEvent;->class$org$apache$log4j$Level:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.log4j.Level"

    invoke-static {v1}, Lorg/apache/log4j/pattern/LogEvent;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/pattern/LogEvent;->class$org$apache$log4j$Level:Ljava/lang/Class;

    :goto_0
    if-ne v0, v1, :cond_1

    .line 481
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 488
    :goto_1
    return-void

    .line 480
    :cond_0
    sget-object v1, Lorg/apache/log4j/pattern/LogEvent;->class$org$apache$log4j$Level:Ljava/lang/Class;

    goto :goto_0

    .line 486
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 452
    invoke-virtual {p0}, Lorg/apache/log4j/pattern/LogEvent;->getThreadName()Ljava/lang/String;

    .line 455
    invoke-virtual {p0}, Lorg/apache/log4j/pattern/LogEvent;->getRenderedMessage()Ljava/lang/String;

    .line 459
    invoke-virtual {p0}, Lorg/apache/log4j/pattern/LogEvent;->getNDC()Ljava/lang/String;

    .line 463
    invoke-virtual {p0}, Lorg/apache/log4j/pattern/LogEvent;->getMDCCopy()V

    .line 466
    invoke-virtual {p0}, Lorg/apache/log4j/pattern/LogEvent;->getThrowableStrRep()[Ljava/lang/String;

    .line 468
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 471
    invoke-direct {p0, p1}, Lorg/apache/log4j/pattern/LogEvent;->writeLevel(Ljava/io/ObjectOutputStream;)V

    .line 472
    return-void
.end method


# virtual methods
.method public getFQNOfLoggerClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->fqnOfCategoryClass:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Lorg/apache/log4j/Level;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->level:Lorg/apache/log4j/Priority;

    check-cast v0, Lorg/apache/log4j/Level;

    return-object v0
.end method

.method public getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lorg/apache/log4j/spi/LocationInfo;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    iget-object v2, p0, Lorg/apache/log4j/pattern/LogEvent;->fqnOfCategoryClass:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/log4j/spi/LocationInfo;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    .line 254
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    return-object v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getMDC(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 322
    iget-object v1, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopy:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopy:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 324
    .local v0, "r":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 328
    .end local v0    # "r":Ljava/lang/Object;
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/apache/log4j/MDC;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getMDCCopy()V
    .locals 2

    .prologue
    .line 337
    iget-boolean v1, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopyLookupRequired:Z

    if-eqz v1, :cond_0

    .line 338
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopyLookupRequired:Z

    .line 341
    invoke-static {}, Lorg/apache/log4j/MDC;->getContext()Ljava/util/Hashtable;

    move-result-object v0

    .line 342
    .local v0, "t":Ljava/util/Hashtable;
    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    iput-object v1, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopy:Ljava/util/Hashtable;

    .line 346
    .end local v0    # "t":Ljava/util/Hashtable;
    :cond_0
    return-void
.end method

.method public getMessage()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->message:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->message:Ljava/lang/Object;

    .line 286
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/log4j/pattern/LogEvent;->getRenderedMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNDC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lorg/apache/log4j/pattern/LogEvent;->ndcLookupRequired:Z

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/pattern/LogEvent;->ndcLookupRequired:Z

    .line 299
    invoke-static {}, Lorg/apache/log4j/NDC;->get()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->ndc:Ljava/lang/String;

    .line 301
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->ndc:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 2

    .prologue
    .line 578
    invoke-virtual {p0}, Lorg/apache/log4j/pattern/LogEvent;->getMDCCopy()V

    .line 580
    iget-object v1, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopy:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 581
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 585
    .local v0, "properties":Ljava/util/Map;
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 583
    .end local v0    # "properties":Ljava/util/Map;
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopy:Ljava/util/Hashtable;

    .restart local v0    # "properties":Ljava/util/Map;
    goto :goto_0
.end method

.method public final getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 522
    invoke-virtual {p0, p1}, Lorg/apache/log4j/pattern/LogEvent;->getMDC(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 523
    .local v1, "value":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 524
    .local v0, "retval":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 525
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 527
    :cond_0
    return-object v0
.end method

.method public getPropertyKeySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0}, Lorg/apache/log4j/pattern/LogEvent;->getProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRenderedMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 350
    iget-object v2, p0, Lorg/apache/log4j/pattern/LogEvent;->renderedMessage:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/log4j/pattern/LogEvent;->message:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 351
    iget-object v2, p0, Lorg/apache/log4j/pattern/LogEvent;->message:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 352
    iget-object v2, p0, Lorg/apache/log4j/pattern/LogEvent;->message:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/log4j/pattern/LogEvent;->renderedMessage:Ljava/lang/String;

    .line 364
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/log4j/pattern/LogEvent;->renderedMessage:Ljava/lang/String;

    return-object v2

    .line 354
    :cond_1
    iget-object v2, p0, Lorg/apache/log4j/pattern/LogEvent;->logger:Lorg/apache/log4j/Category;

    invoke-virtual {v2}, Lorg/apache/log4j/Category;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    .line 356
    .local v0, "repository":Lorg/apache/log4j/spi/LoggerRepository;
    instance-of v2, v0, Lorg/apache/log4j/spi/RendererSupport;

    if-eqz v2, :cond_2

    move-object v1, v0

    .line 357
    check-cast v1, Lorg/apache/log4j/spi/RendererSupport;

    .line 358
    .local v1, "rs":Lorg/apache/log4j/spi/RendererSupport;
    invoke-interface {v1}, Lorg/apache/log4j/spi/RendererSupport;->getRendererMap()Lorg/apache/log4j/or/RendererMap;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/pattern/LogEvent;->message:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lorg/apache/log4j/or/RendererMap;->findAndRender(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/pattern/LogEvent;->renderedMessage:Ljava/lang/String;

    goto :goto_0

    .line 360
    .end local v1    # "rs":Lorg/apache/log4j/spi/RendererSupport;
    :cond_2
    iget-object v2, p0, Lorg/apache/log4j/pattern/LogEvent;->message:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/pattern/LogEvent;->renderedMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->threadName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 377
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->threadName:Ljava/lang/String;

    .line 378
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

    return-object v0
.end method

.method public getThrowableStrRep()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

    if-nez v0, :cond_0

    .line 401
    const/4 v0, 0x0

    .line 403
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

    invoke-virtual {v0}, Lorg/apache/log4j/spi/ThrowableInformation;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getTimeStamp()J
    .locals 2

    .prologue
    .line 548
    iget-wide v0, p0, Lorg/apache/log4j/pattern/LogEvent;->timeStamp:J

    return-wide v0
.end method

.method public final locationInformationExists()Z
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "propValue"    # Ljava/lang/String;

    .prologue
    .line 502
    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopy:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 503
    invoke-virtual {p0}, Lorg/apache/log4j/pattern/LogEvent;->getMDCCopy()V

    .line 505
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopy:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    .line 506
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopy:Ljava/util/Hashtable;

    .line 508
    :cond_1
    iget-object v0, p0, Lorg/apache/log4j/pattern/LogEvent;->mdcCopy:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    return-void
.end method

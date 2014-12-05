.class public Lorg/apache/log4j/lf5/Log4JLogRecord;
.super Lorg/apache/log4j/lf5/LogRecord;
.source "Log4JLogRecord.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/apache/log4j/lf5/LogRecord;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public isSevereLevel()Z
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, "isSevere":Z
    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->ERROR:Lorg/apache/log4j/lf5/LogLevel;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/Log4JLogRecord;->getLevel()Lorg/apache/log4j/lf5/LogLevel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/log4j/lf5/LogLevel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->FATAL:Lorg/apache/log4j/lf5/LogLevel;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/Log4JLogRecord;->getLevel()Lorg/apache/log4j/lf5/LogLevel;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/log4j/lf5/LogLevel;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    :cond_0
    const/4 v0, 0x1

    .line 74
    :cond_1
    return v0
.end method

.method public setThrownStackTrace(Lorg/apache/log4j/spi/ThrowableInformation;)V
    .locals 6
    .param p1, "throwableInfo"    # Lorg/apache/log4j/spi/ThrowableInformation;

    .prologue
    .line 88
    invoke-virtual {p1}, Lorg/apache/log4j/spi/ThrowableInformation;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "stackTraceArray":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 93
    .local v2, "stackTrace":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 94
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "nextLine":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "nextLine":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/log4j/lf5/Log4JLogRecord;->_thrownStackTrace:Ljava/lang/String;

    .line 99
    return-void
.end method

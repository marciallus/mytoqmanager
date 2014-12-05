.class public final Lorg/apache/log4j/spi/NOPLogger;
.super Lorg/apache/log4j/Logger;
.source "NOPLogger.java"


# direct methods
.method public constructor <init>(Lorg/apache/log4j/spi/NOPLoggerRepository;Ljava/lang/String;)V
    .locals 1
    .param p1, "repo"    # Lorg/apache/log4j/spi/NOPLoggerRepository;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p2}, Lorg/apache/log4j/Logger;-><init>(Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lorg/apache/log4j/spi/NOPLogger;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    .line 41
    sget-object v0, Lorg/apache/log4j/Level;->OFF:Lorg/apache/log4j/Level;

    iput-object v0, p0, Lorg/apache/log4j/spi/NOPLogger;->level:Lorg/apache/log4j/Level;

    .line 42
    iput-object p0, p0, Lorg/apache/log4j/spi/NOPLogger;->parent:Lorg/apache/log4j/Category;

    .line 43
    return-void
.end method


# virtual methods
.method public addAppender(Lorg/apache/log4j/Appender;)V
    .locals 0
    .param p1, "newAppender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 47
    return-void
.end method

.method public assertLog(ZLjava/lang/String;)V
    .locals 0
    .param p1, "assertion"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 51
    return-void
.end method

.method public callAppenders(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 0
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 56
    return-void
.end method

.method closeNestedAppenders()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public debug(Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 64
    return-void
.end method

.method public debug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 69
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 73
    return-void
.end method

.method public error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 77
    return-void
.end method

.method public fatal(Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 82
    return-void
.end method

.method public fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 86
    return-void
.end method

.method public getAllAppenders()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAppender(Ljava/lang/String;)Lorg/apache/log4j/Appender;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChainedPriority()Lorg/apache/log4j/Priority;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/apache/log4j/spi/NOPLogger;->getEffectiveLevel()Lorg/apache/log4j/Level;

    move-result-object v0

    return-object v0
.end method

.method public getEffectiveLevel()Lorg/apache/log4j/Level;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lorg/apache/log4j/Level;->OFF:Lorg/apache/log4j/Level;

    return-object v0
.end method

.method public getResourceBundle()Ljava/util/ResourceBundle;
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method public info(Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 117
    return-void
.end method

.method public info(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 121
    return-void
.end method

.method public isAttached(Lorg/apache/log4j/Appender;)Z
    .locals 1
    .param p1, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabledFor(Lorg/apache/log4j/Priority;)Z
    .locals 1
    .param p1, "level"    # Lorg/apache/log4j/Priority;

    .prologue
    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public l7dlog(Lorg/apache/log4j/Priority;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "priority"    # Lorg/apache/log4j/Priority;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 146
    return-void
.end method

.method public l7dlog(Lorg/apache/log4j/Priority;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "priority"    # Lorg/apache/log4j/Priority;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .param p4, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 150
    return-void
.end method

.method public log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "callerFQCN"    # Ljava/lang/String;
    .param p2, "level"    # Lorg/apache/log4j/Priority;
    .param p3, "message"    # Ljava/lang/Object;
    .param p4, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 162
    return-void
.end method

.method public log(Lorg/apache/log4j/Priority;Ljava/lang/Object;)V
    .locals 0
    .param p1, "priority"    # Lorg/apache/log4j/Priority;
    .param p2, "message"    # Ljava/lang/Object;

    .prologue
    .line 158
    return-void
.end method

.method public log(Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "priority"    # Lorg/apache/log4j/Priority;
    .param p2, "message"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 154
    return-void
.end method

.method public removeAllAppenders()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method

.method public removeAppender(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 175
    return-void
.end method

.method public removeAppender(Lorg/apache/log4j/Appender;)V
    .locals 0
    .param p1, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 171
    return-void
.end method

.method public setLevel(Lorg/apache/log4j/Level;)V
    .locals 0
    .param p1, "level"    # Lorg/apache/log4j/Level;

    .prologue
    .line 179
    return-void
.end method

.method public setPriority(Lorg/apache/log4j/Priority;)V
    .locals 0
    .param p1, "priority"    # Lorg/apache/log4j/Priority;

    .prologue
    .line 184
    return-void
.end method

.method public setResourceBundle(Ljava/util/ResourceBundle;)V
    .locals 0
    .param p1, "bundle"    # Ljava/util/ResourceBundle;

    .prologue
    .line 188
    return-void
.end method

.method public trace(Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 200
    return-void
.end method

.method public trace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 204
    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/Object;

    .prologue
    .line 192
    return-void
.end method

.method public warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 196
    return-void
.end method

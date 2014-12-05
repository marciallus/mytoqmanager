.class public Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;
.super Ljava/lang/Object;
.source "OnlyOnceErrorHandler.java"

# interfaces
.implements Lorg/apache/log4j/spi/ErrorHandler;


# instance fields
.field final ERROR_PREFIX:Ljava/lang/String;

.field final WARN_PREFIX:Ljava/lang/String;

.field firstTime:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "log4j warning: "

    iput-object v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->WARN_PREFIX:Ljava/lang/String;

    .line 44
    const-string v0, "log4j error: "

    iput-object v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->ERROR_PREFIX:Ljava/lang/String;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->firstTime:Z

    return-void
.end method


# virtual methods
.method public activateOptions()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-boolean v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->firstTime:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-static {p1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->firstTime:Z

    .line 99
    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "errorCode"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;ILorg/apache/log4j/spi/LoggingEvent;)V

    .line 71
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Exception;ILorg/apache/log4j/spi/LoggingEvent;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .param p3, "errorCode"    # I
    .param p4, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 79
    instance-of v0, p2, Ljava/io/InterruptedIOException;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 82
    :cond_1
    iget-boolean v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->firstTime:Z

    if-eqz v0, :cond_2

    .line 83
    invoke-static {p1, p2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->firstTime:Z

    .line 86
    :cond_2
    return-void
.end method

.method public setAppender(Lorg/apache/log4j/Appender;)V
    .locals 0
    .param p1, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 106
    return-void
.end method

.method public setBackupAppender(Lorg/apache/log4j/Appender;)V
    .locals 0
    .param p1, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 113
    return-void
.end method

.method public setLogger(Lorg/apache/log4j/Logger;)V
    .locals 0
    .param p1, "logger"    # Lorg/apache/log4j/Logger;

    .prologue
    .line 54
    return-void
.end method

.class public abstract Lorg/apache/log4j/pattern/LoggingEventPatternConverter;
.super Lorg/apache/log4j/pattern/PatternConverter;
.source "LoggingEventPatternConverter.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "style"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lorg/apache/log4j/pattern/PatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "output"    # Ljava/lang/StringBuffer;

    .prologue
    .line 53
    instance-of v0, p1, Lorg/apache/log4j/spi/LoggingEvent;

    if-eqz v0, :cond_0

    .line 54
    check-cast p1, Lorg/apache/log4j/spi/LoggingEvent;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;->format(Lorg/apache/log4j/spi/LoggingEvent;Ljava/lang/StringBuffer;)V

    .line 56
    :cond_0
    return-void
.end method

.method public abstract format(Lorg/apache/log4j/spi/LoggingEvent;Ljava/lang/StringBuffer;)V
.end method

.method public handlesThrowable()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

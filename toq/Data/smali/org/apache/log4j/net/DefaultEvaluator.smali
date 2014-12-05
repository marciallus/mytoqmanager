.class Lorg/apache/log4j/net/DefaultEvaluator;
.super Ljava/lang/Object;
.source "SMTPAppender.java"

# interfaces
.implements Lorg/apache/log4j/spi/TriggeringEventEvaluator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTriggeringEvent(Lorg/apache/log4j/spi/LoggingEvent;)Z
    .locals 2
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 785
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v0

    sget-object v1, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Level;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v0

    return v0
.end method

.class public Lorg/apache/log4j/pattern/ThreadPatternConverter;
.super Lorg/apache/log4j/pattern/LoggingEventPatternConverter;
.source "ThreadPatternConverter.java"


# static fields
.field private static final INSTANCE:Lorg/apache/log4j/pattern/ThreadPatternConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lorg/apache/log4j/pattern/ThreadPatternConverter;

    invoke-direct {v0}, Lorg/apache/log4j/pattern/ThreadPatternConverter;-><init>()V

    sput-object v0, Lorg/apache/log4j/pattern/ThreadPatternConverter;->INSTANCE:Lorg/apache/log4j/pattern/ThreadPatternConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "Thread"

    const-string v1, "thread"

    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/log4j/pattern/ThreadPatternConverter;
    .locals 1
    .param p0, "options"    # [Ljava/lang/String;

    .prologue
    .line 49
    sget-object v0, Lorg/apache/log4j/pattern/ThreadPatternConverter;->INSTANCE:Lorg/apache/log4j/pattern/ThreadPatternConverter;

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/log4j/spi/LoggingEvent;Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;

    .prologue
    .line 56
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    return-void
.end method

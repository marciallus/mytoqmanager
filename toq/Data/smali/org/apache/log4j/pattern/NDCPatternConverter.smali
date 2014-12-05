.class public final Lorg/apache/log4j/pattern/NDCPatternConverter;
.super Lorg/apache/log4j/pattern/LoggingEventPatternConverter;
.source "NDCPatternConverter.java"


# static fields
.field private static final INSTANCE:Lorg/apache/log4j/pattern/NDCPatternConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lorg/apache/log4j/pattern/NDCPatternConverter;

    invoke-direct {v0}, Lorg/apache/log4j/pattern/NDCPatternConverter;-><init>()V

    sput-object v0, Lorg/apache/log4j/pattern/NDCPatternConverter;->INSTANCE:Lorg/apache/log4j/pattern/NDCPatternConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "NDC"

    const-string v1, "ndc"

    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/log4j/pattern/NDCPatternConverter;
    .locals 1
    .param p0, "options"    # [Ljava/lang/String;

    .prologue
    .line 49
    sget-object v0, Lorg/apache/log4j/pattern/NDCPatternConverter;->INSTANCE:Lorg/apache/log4j/pattern/NDCPatternConverter;

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/log4j/spi/LoggingEvent;Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;

    .prologue
    .line 56
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    return-void
.end method

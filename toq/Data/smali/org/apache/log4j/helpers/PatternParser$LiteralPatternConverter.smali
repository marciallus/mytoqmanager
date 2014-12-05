.class Lorg/apache/log4j/helpers/PatternParser$LiteralPatternConverter;
.super Lorg/apache/log4j/helpers/PatternConverter;
.source "PatternParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/helpers/PatternParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LiteralPatternConverter"
.end annotation


# instance fields
.field private literal:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 412
    invoke-direct {p0}, Lorg/apache/log4j/helpers/PatternConverter;-><init>()V

    .line 413
    iput-object p1, p0, Lorg/apache/log4j/helpers/PatternParser$LiteralPatternConverter;->literal:Ljava/lang/String;

    .line 414
    return-void
.end method


# virtual methods
.method public convert(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 424
    iget-object v0, p0, Lorg/apache/log4j/helpers/PatternParser$LiteralPatternConverter;->literal:Ljava/lang/String;

    return-object v0
.end method

.method public final format(Ljava/lang/StringBuffer;Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 1
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;
    .param p2, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 419
    iget-object v0, p0, Lorg/apache/log4j/helpers/PatternParser$LiteralPatternConverter;->literal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    return-void
.end method

.class public final Lorg/apache/log4j/pattern/LiteralPatternConverter;
.super Lorg/apache/log4j/pattern/LoggingEventPatternConverter;
.source "LiteralPatternConverter.java"


# instance fields
.field private final literal:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "literal"    # Ljava/lang/String;

    .prologue
    .line 40
    const-string v0, "Literal"

    const-string v1, "literal"

    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lorg/apache/log4j/pattern/LiteralPatternConverter;->literal:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/log4j/pattern/LiteralPatternConverter;->literal:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    return-void
.end method

.method public format(Lorg/apache/log4j/spi/LoggingEvent;Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/log4j/pattern/LiteralPatternConverter;->literal:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    return-void
.end method

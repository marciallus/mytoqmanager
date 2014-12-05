.class public final Lorg/apache/log4j/pattern/LineSeparatorPatternConverter;
.super Lorg/apache/log4j/pattern/LoggingEventPatternConverter;
.source "LineSeparatorPatternConverter.java"


# static fields
.field private static final INSTANCE:Lorg/apache/log4j/pattern/LineSeparatorPatternConverter;


# instance fields
.field private final lineSep:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lorg/apache/log4j/pattern/LineSeparatorPatternConverter;

    invoke-direct {v0}, Lorg/apache/log4j/pattern/LineSeparatorPatternConverter;-><init>()V

    sput-object v0, Lorg/apache/log4j/pattern/LineSeparatorPatternConverter;->INSTANCE:Lorg/apache/log4j/pattern/LineSeparatorPatternConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 46
    const-string v0, "Line Sep"

    const-string v1, "lineSep"

    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lorg/apache/log4j/Layout;->LINE_SEP:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/log4j/pattern/LineSeparatorPatternConverter;->lineSep:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/log4j/pattern/LineSeparatorPatternConverter;
    .locals 1
    .param p0, "options"    # [Ljava/lang/String;

    .prologue
    .line 57
    sget-object v0, Lorg/apache/log4j/pattern/LineSeparatorPatternConverter;->INSTANCE:Lorg/apache/log4j/pattern/LineSeparatorPatternConverter;

    return-object v0
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/log4j/pattern/LineSeparatorPatternConverter;->lineSep:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    return-void
.end method

.method public format(Lorg/apache/log4j/spi/LoggingEvent;Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/log4j/pattern/LineSeparatorPatternConverter;->lineSep:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    return-void
.end method

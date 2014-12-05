.class public final Lorg/apache/log4j/pattern/LevelPatternConverter;
.super Lorg/apache/log4j/pattern/LoggingEventPatternConverter;
.source "LevelPatternConverter.java"


# static fields
.field private static final INSTANCE:Lorg/apache/log4j/pattern/LevelPatternConverter;

.field private static final TRACE_INT:I = 0x1388


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lorg/apache/log4j/pattern/LevelPatternConverter;

    invoke-direct {v0}, Lorg/apache/log4j/pattern/LevelPatternConverter;-><init>()V

    sput-object v0, Lorg/apache/log4j/pattern/LevelPatternConverter;->INSTANCE:Lorg/apache/log4j/pattern/LevelPatternConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "Level"

    const-string v1, "level"

    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/log4j/pattern/LevelPatternConverter;
    .locals 1
    .param p0, "options"    # [Ljava/lang/String;

    .prologue
    .line 55
    sget-object v0, Lorg/apache/log4j/pattern/LevelPatternConverter;->INSTANCE:Lorg/apache/log4j/pattern/LevelPatternConverter;

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/log4j/spi/LoggingEvent;Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;
    .param p2, "output"    # Ljava/lang/StringBuffer;

    .prologue
    .line 62
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/Level;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    return-void
.end method

.method public getStyleClass(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 69
    instance-of v1, p1, Lorg/apache/log4j/spi/LoggingEvent;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 70
    check-cast v1, Lorg/apache/log4j/spi/LoggingEvent;

    invoke-virtual {v1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/log4j/Level;->toInt()I

    move-result v0

    .line 72
    .local v0, "lint":I
    sparse-switch v0, :sswitch_data_0

    .line 92
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    check-cast p1, Lorg/apache/log4j/spi/LoggingEvent;

    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/log4j/Level;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .end local v0    # "lint":I
    :goto_0
    return-object v1

    .line 74
    .restart local v0    # "lint":I
    .restart local p1    # "e":Ljava/lang/Object;
    :sswitch_0
    const-string v1, "level trace"

    goto :goto_0

    .line 77
    :sswitch_1
    const-string v1, "level debug"

    goto :goto_0

    .line 80
    :sswitch_2
    const-string v1, "level info"

    goto :goto_0

    .line 83
    :sswitch_3
    const-string v1, "level warn"

    goto :goto_0

    .line 86
    :sswitch_4
    const-string v1, "level error"

    goto :goto_0

    .line 89
    :sswitch_5
    const-string v1, "level fatal"

    goto :goto_0

    .line 96
    .end local v0    # "lint":I
    :cond_0
    const-string v1, "level"

    goto :goto_0

    .line 72
    nop

    :sswitch_data_0
    .sparse-switch
        0x1388 -> :sswitch_0
        0x2710 -> :sswitch_1
        0x4e20 -> :sswitch_2
        0x7530 -> :sswitch_3
        0x9c40 -> :sswitch_4
        0xc350 -> :sswitch_5
    .end sparse-switch
.end method

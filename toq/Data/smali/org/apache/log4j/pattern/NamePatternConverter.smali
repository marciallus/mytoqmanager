.class public abstract Lorg/apache/log4j/pattern/NamePatternConverter;
.super Lorg/apache/log4j/pattern/LoggingEventPatternConverter;
.source "NamePatternConverter.java"


# instance fields
.field private final abbreviator:Lorg/apache/log4j/pattern/NameAbbreviator;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "style"    # Ljava/lang/String;
    .param p3, "options"    # [Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    aget-object v0, p3, v0

    invoke-static {v0}, Lorg/apache/log4j/pattern/NameAbbreviator;->getAbbreviator(Ljava/lang/String;)Lorg/apache/log4j/pattern/NameAbbreviator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/pattern/NamePatternConverter;->abbreviator:Lorg/apache/log4j/pattern/NameAbbreviator;

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-static {}, Lorg/apache/log4j/pattern/NameAbbreviator;->getDefaultAbbreviator()Lorg/apache/log4j/pattern/NameAbbreviator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/pattern/NamePatternConverter;->abbreviator:Lorg/apache/log4j/pattern/NameAbbreviator;

    goto :goto_0
.end method


# virtual methods
.method protected final abbreviate(ILjava/lang/StringBuffer;)V
    .locals 1
    .param p1, "nameStart"    # I
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/log4j/pattern/NamePatternConverter;->abbreviator:Lorg/apache/log4j/pattern/NameAbbreviator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/pattern/NameAbbreviator;->abbreviate(ILjava/lang/StringBuffer;)V

    .line 60
    return-void
.end method

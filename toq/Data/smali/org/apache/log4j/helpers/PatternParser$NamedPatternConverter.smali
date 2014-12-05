.class abstract Lorg/apache/log4j/helpers/PatternParser$NamedPatternConverter;
.super Lorg/apache/log4j/helpers/PatternConverter;
.source "PatternParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/helpers/PatternParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NamedPatternConverter"
.end annotation


# instance fields
.field precision:I


# direct methods
.method constructor <init>(Lorg/apache/log4j/helpers/FormattingInfo;I)V
    .locals 0
    .param p1, "formattingInfo"    # Lorg/apache/log4j/helpers/FormattingInfo;
    .param p2, "precision"    # I

    .prologue
    .line 519
    invoke-direct {p0, p1}, Lorg/apache/log4j/helpers/PatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;)V

    .line 520
    iput p2, p0, Lorg/apache/log4j/helpers/PatternParser$NamedPatternConverter;->precision:I

    .line 521
    return-void
.end method


# virtual methods
.method public convert(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
    .locals 6
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 528
    invoke-virtual {p0, p1}, Lorg/apache/log4j/helpers/PatternParser$NamedPatternConverter;->getFullyQualifiedName(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v3

    .line 529
    .local v3, "n":Ljava/lang/String;
    iget v4, p0, Lorg/apache/log4j/helpers/PatternParser$NamedPatternConverter;->precision:I

    if-gtz v4, :cond_1

    .line 543
    .end local v3    # "n":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 532
    .restart local v3    # "n":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 537
    .local v2, "len":I
    add-int/lit8 v0, v2, -0x1

    .line 538
    .local v0, "end":I
    iget v1, p0, Lorg/apache/log4j/helpers/PatternParser$NamedPatternConverter;->precision:I

    .local v1, "i":I
    :goto_1
    if-lez v1, :cond_2

    .line 539
    const/16 v4, 0x2e

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    .line 540
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 538
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 543
    :cond_2
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method abstract getFullyQualifiedName(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
.end method

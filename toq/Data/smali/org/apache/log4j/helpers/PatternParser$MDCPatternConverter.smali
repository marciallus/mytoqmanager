.class Lorg/apache/log4j/helpers/PatternParser$MDCPatternConverter;
.super Lorg/apache/log4j/helpers/PatternConverter;
.source "PatternParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/helpers/PatternParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MDCPatternConverter"
.end annotation


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/log4j/helpers/FormattingInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "formattingInfo"    # Lorg/apache/log4j/helpers/FormattingInfo;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 456
    invoke-direct {p0, p1}, Lorg/apache/log4j/helpers/PatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;)V

    .line 457
    iput-object p2, p0, Lorg/apache/log4j/helpers/PatternParser$MDCPatternConverter;->key:Ljava/lang/String;

    .line 458
    return-void
.end method


# virtual methods
.method public convert(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
    .locals 7
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    const/16 v6, 0x7d

    .line 462
    iget-object v5, p0, Lorg/apache/log4j/helpers/PatternParser$MDCPatternConverter;->key:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 463
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v5, "{"

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 464
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getProperties()Ljava/util/Map;

    move-result-object v3

    .line 465
    .local v3, "properties":Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 466
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 467
    .local v2, "keys":[Ljava/lang/Object;
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 468
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_0

    .line 469
    const/16 v5, 0x7b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 470
    aget-object v5, v2, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 471
    const/16 v5, 0x2c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 472
    aget-object v5, v2, v1

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 473
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 468
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    .end local v1    # "i":I
    .end local v2    # "keys":[Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 477
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 483
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v3    # "properties":Ljava/util/Map;
    :goto_1
    return-object v5

    .line 479
    :cond_1
    iget-object v5, p0, Lorg/apache/log4j/helpers/PatternParser$MDCPatternConverter;->key:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lorg/apache/log4j/spi/LoggingEvent;->getMDC(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 480
    .local v4, "val":Ljava/lang/Object;
    if-nez v4, :cond_2

    .line 481
    const/4 v5, 0x0

    goto :goto_1

    .line 483
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

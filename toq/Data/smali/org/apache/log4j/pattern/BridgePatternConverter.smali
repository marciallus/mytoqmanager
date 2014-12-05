.class public final Lorg/apache/log4j/pattern/BridgePatternConverter;
.super Lorg/apache/log4j/helpers/PatternConverter;
.source "BridgePatternConverter.java"


# instance fields
.field private handlesExceptions:Z

.field private patternConverters:[Lorg/apache/log4j/pattern/LoggingEventPatternConverter;

.field private patternFields:[Lorg/apache/log4j/pattern/FormattingInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 10
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/apache/log4j/helpers/PatternConverter;-><init>()V

    .line 59
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/apache/log4j/pattern/BridgePatternConverter;->next:Lorg/apache/log4j/helpers/PatternConverter;

    .line 60
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/apache/log4j/pattern/BridgePatternConverter;->handlesExceptions:Z

    .line 62
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v3, "converters":Ljava/util/List;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v5, "fields":Ljava/util/List;
    const/4 v2, 0x0

    .line 66
    .local v2, "converterRegistry":Ljava/util/Map;
    invoke-static {}, Lorg/apache/log4j/pattern/PatternParser;->getPatternLayoutRules()Ljava/util/Map;

    move-result-object v7

    invoke-static {p1, v3, v5, v2, v7}, Lorg/apache/log4j/pattern/PatternParser;->parse(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    .line 70
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lorg/apache/log4j/pattern/LoggingEventPatternConverter;

    iput-object v7, p0, Lorg/apache/log4j/pattern/BridgePatternConverter;->patternConverters:[Lorg/apache/log4j/pattern/LoggingEventPatternConverter;

    .line 71
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lorg/apache/log4j/pattern/FormattingInfo;

    iput-object v7, p0, Lorg/apache/log4j/pattern/BridgePatternConverter;->patternFields:[Lorg/apache/log4j/pattern/FormattingInfo;

    .line 73
    const/4 v6, 0x0

    .line 74
    .local v6, "i":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 75
    .local v1, "converterIter":Ljava/util/Iterator;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 77
    .local v4, "fieldIter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 80
    .local v0, "converter":Ljava/lang/Object;
    instance-of v7, v0, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;

    if-eqz v7, :cond_0

    .line 81
    iget-object v7, p0, Lorg/apache/log4j/pattern/BridgePatternConverter;->patternConverters:[Lorg/apache/log4j/pattern/LoggingEventPatternConverter;

    check-cast v0, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;

    .end local v0    # "converter":Ljava/lang/Object;
    aput-object v0, v7, v6

    .line 82
    iget-boolean v7, p0, Lorg/apache/log4j/pattern/BridgePatternConverter;->handlesExceptions:Z

    iget-object v8, p0, Lorg/apache/log4j/pattern/BridgePatternConverter;->patternConverters:[Lorg/apache/log4j/pattern/LoggingEventPatternConverter;

    aget-object v8, v8, v6

    invoke-virtual {v8}, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;->handlesThrowable()Z

    move-result v8

    or-int/2addr v7, v8

    iput-boolean v7, p0, Lorg/apache/log4j/pattern/BridgePatternConverter;->handlesExceptions:Z

    .line 88
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 89
    iget-object v8, p0, Lorg/apache/log4j/pattern/BridgePatternConverter;->patternFields:[Lorg/apache/log4j/pattern/FormattingInfo;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/log4j/pattern/FormattingInfo;

    aput-object v7, v8, v6

    .line 94
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 95
    goto :goto_0

    .line 84
    .restart local v0    # "converter":Ljava/lang/Object;
    :cond_0
    iget-object v7, p0, Lorg/apache/log4j/pattern/BridgePatternConverter;->patternConverters:[Lorg/apache/log4j/pattern/LoggingEventPatternConverter;

    new-instance v8, Lorg/apache/log4j/pattern/LiteralPatternConverter;

    const-string v9, ""

    invoke-direct {v8, v9}, Lorg/apache/log4j/pattern/LiteralPatternConverter;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v6

    goto :goto_1

    .line 91
    .end local v0    # "converter":Ljava/lang/Object;
    :cond_1
    iget-object v7, p0, Lorg/apache/log4j/pattern/BridgePatternConverter;->patternFields:[Lorg/apache/log4j/pattern/FormattingInfo;

    invoke-static {}, Lorg/apache/log4j/pattern/FormattingInfo;->getDefault()Lorg/apache/log4j/pattern/FormattingInfo;

    move-result-object v8

    aput-object v8, v7, v6

    goto :goto_2

    .line 96
    :cond_2
    return-void
.end method


# virtual methods
.method protected convert(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
    .locals 2
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0, p1}, Lorg/apache/log4j/pattern/BridgePatternConverter;->format(Ljava/lang/StringBuffer;Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public format(Ljava/lang/StringBuffer;Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 3
    .param p1, "sbuf"    # Ljava/lang/StringBuffer;
    .param p2, "e"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/log4j/pattern/BridgePatternConverter;->patternConverters:[Lorg/apache/log4j/pattern/LoggingEventPatternConverter;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 118
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 119
    .local v1, "startField":I
    iget-object v2, p0, Lorg/apache/log4j/pattern/BridgePatternConverter;->patternConverters:[Lorg/apache/log4j/pattern/LoggingEventPatternConverter;

    aget-object v2, v2, v0

    invoke-virtual {v2, p2, p1}, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;->format(Lorg/apache/log4j/spi/LoggingEvent;Ljava/lang/StringBuffer;)V

    .line 120
    iget-object v2, p0, Lorg/apache/log4j/pattern/BridgePatternConverter;->patternFields:[Lorg/apache/log4j/pattern/FormattingInfo;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1, p1}, Lorg/apache/log4j/pattern/FormattingInfo;->format(ILjava/lang/StringBuffer;)V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "startField":I
    :cond_0
    return-void
.end method

.method public ignoresThrowable()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lorg/apache/log4j/pattern/BridgePatternConverter;->handlesExceptions:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

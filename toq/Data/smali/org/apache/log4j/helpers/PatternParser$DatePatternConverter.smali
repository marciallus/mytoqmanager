.class Lorg/apache/log4j/helpers/PatternParser$DatePatternConverter;
.super Lorg/apache/log4j/helpers/PatternConverter;
.source "PatternParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/helpers/PatternParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatePatternConverter"
.end annotation


# instance fields
.field private date:Ljava/util/Date;

.field private df:Ljava/text/DateFormat;


# direct methods
.method constructor <init>(Lorg/apache/log4j/helpers/FormattingInfo;Ljava/text/DateFormat;)V
    .locals 1
    .param p1, "formattingInfo"    # Lorg/apache/log4j/helpers/FormattingInfo;
    .param p2, "df"    # Ljava/text/DateFormat;

    .prologue
    .line 433
    invoke-direct {p0, p1}, Lorg/apache/log4j/helpers/PatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;)V

    .line 434
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/helpers/PatternParser$DatePatternConverter;->date:Ljava/util/Date;

    .line 435
    iput-object p2, p0, Lorg/apache/log4j/helpers/PatternParser$DatePatternConverter;->df:Ljava/text/DateFormat;

    .line 436
    return-void
.end method


# virtual methods
.method public convert(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
    .locals 5
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 440
    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser$DatePatternConverter;->date:Ljava/util/Date;

    iget-wide v3, p1, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    invoke-virtual {v2, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 441
    const/4 v0, 0x0

    .line 443
    .local v0, "converted":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lorg/apache/log4j/helpers/PatternParser$DatePatternConverter;->df:Ljava/text/DateFormat;

    iget-object v3, p0, Lorg/apache/log4j/helpers/PatternParser$DatePatternConverter;->date:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 448
    :goto_0
    return-object v0

    .line 445
    :catch_0
    move-exception v1

    .line 446
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "Error occured while converting date."

    invoke-static {v2, v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

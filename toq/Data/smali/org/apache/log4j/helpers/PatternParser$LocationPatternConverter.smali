.class Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;
.super Lorg/apache/log4j/helpers/PatternConverter;
.source "PatternParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/helpers/PatternParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationPatternConverter"
.end annotation


# instance fields
.field private final this$0:Lorg/apache/log4j/helpers/PatternParser;

.field type:I


# direct methods
.method constructor <init>(Lorg/apache/log4j/helpers/PatternParser;Lorg/apache/log4j/helpers/FormattingInfo;I)V
    .locals 0
    .param p2, "formattingInfo"    # Lorg/apache/log4j/helpers/FormattingInfo;
    .param p3, "type"    # I

    .prologue
    .line 493
    iput-object p1, p0, Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;->this$0:Lorg/apache/log4j/helpers/PatternParser;

    .line 494
    invoke-direct {p0, p2}, Lorg/apache/log4j/helpers/PatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;)V

    .line 495
    iput p3, p0, Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;->type:I

    .line 496
    return-void
.end method


# virtual methods
.method public convert(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
    .locals 2
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 500
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    move-result-object v0

    .line 501
    .local v0, "locationInfo":Lorg/apache/log4j/spi/LocationInfo;
    iget v1, p0, Lorg/apache/log4j/helpers/PatternParser$LocationPatternConverter;->type:I

    packed-switch v1, :pswitch_data_0

    .line 510
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 503
    :pswitch_1
    iget-object v1, v0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    goto :goto_0

    .line 505
    :pswitch_2
    invoke-virtual {v0}, Lorg/apache/log4j/spi/LocationInfo;->getMethodName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 507
    :pswitch_3
    invoke-virtual {v0}, Lorg/apache/log4j/spi/LocationInfo;->getLineNumber()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 509
    :pswitch_4
    invoke-virtual {v0}, Lorg/apache/log4j/spi/LocationInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 501
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

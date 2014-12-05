.class Lorg/apache/log4j/helpers/PatternParser$ClassNamePatternConverter;
.super Lorg/apache/log4j/helpers/PatternParser$NamedPatternConverter;
.source "PatternParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/helpers/PatternParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClassNamePatternConverter"
.end annotation


# instance fields
.field private final this$0:Lorg/apache/log4j/helpers/PatternParser;


# direct methods
.method constructor <init>(Lorg/apache/log4j/helpers/PatternParser;Lorg/apache/log4j/helpers/FormattingInfo;I)V
    .locals 0
    .param p2, "formattingInfo"    # Lorg/apache/log4j/helpers/FormattingInfo;
    .param p3, "precision"    # I

    .prologue
    .line 550
    iput-object p1, p0, Lorg/apache/log4j/helpers/PatternParser$ClassNamePatternConverter;->this$0:Lorg/apache/log4j/helpers/PatternParser;

    .line 551
    invoke-direct {p0, p2, p3}, Lorg/apache/log4j/helpers/PatternParser$NamedPatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;I)V

    .line 552
    return-void
.end method


# virtual methods
.method getFullyQualifiedName(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
    .locals 1
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 555
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/spi/LocationInfo;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

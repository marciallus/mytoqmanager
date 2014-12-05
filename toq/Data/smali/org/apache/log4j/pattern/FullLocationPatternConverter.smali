.class public final Lorg/apache/log4j/pattern/FullLocationPatternConverter;
.super Lorg/apache/log4j/pattern/LoggingEventPatternConverter;
.source "FullLocationPatternConverter.java"


# static fields
.field private static final INSTANCE:Lorg/apache/log4j/pattern/FullLocationPatternConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lorg/apache/log4j/pattern/FullLocationPatternConverter;

    invoke-direct {v0}, Lorg/apache/log4j/pattern/FullLocationPatternConverter;-><init>()V

    sput-object v0, Lorg/apache/log4j/pattern/FullLocationPatternConverter;->INSTANCE:Lorg/apache/log4j/pattern/FullLocationPatternConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "Full Location"

    const-string v1, "fullLocation"

    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/log4j/pattern/FullLocationPatternConverter;
    .locals 1
    .param p0, "options"    # [Ljava/lang/String;

    .prologue
    .line 51
    sget-object v0, Lorg/apache/log4j/pattern/FullLocationPatternConverter;->INSTANCE:Lorg/apache/log4j/pattern/FullLocationPatternConverter;

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/log4j/spi/LoggingEvent;Ljava/lang/StringBuffer;)V
    .locals 2
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;
    .param p2, "output"    # Ljava/lang/StringBuffer;

    .prologue
    .line 58
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    move-result-object v0

    .line 60
    .local v0, "locationInfo":Lorg/apache/log4j/spi/LocationInfo;
    if-eqz v0, :cond_0

    .line 61
    iget-object v1, v0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    :cond_0
    return-void
.end method

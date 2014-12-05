.class Lorg/apache/log4j/chainsaw/EventDetails;
.super Ljava/lang/Object;
.source "EventDetails.java"


# instance fields
.field private final mCategoryName:Ljava/lang/String;

.field private final mLocationDetails:Ljava/lang/String;

.field private final mMessage:Ljava/lang/String;

.field private final mNDC:Ljava/lang/String;

.field private final mPriority:Lorg/apache/log4j/Priority;

.field private final mThreadName:Ljava/lang/String;

.field private final mThrowableStrRep:[Ljava/lang/String;

.field private final mTimeStamp:J


# direct methods
.method constructor <init>(JLorg/apache/log4j/Priority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "aTimeStamp"    # J
    .param p3, "aPriority"    # Lorg/apache/log4j/Priority;
    .param p4, "aCategoryName"    # Ljava/lang/String;
    .param p5, "aNDC"    # Ljava/lang/String;
    .param p6, "aThreadName"    # Ljava/lang/String;
    .param p7, "aMessage"    # Ljava/lang/String;
    .param p8, "aThrowableStrRep"    # [Ljava/lang/String;
    .param p9, "aLocationDetails"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-wide p1, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mTimeStamp:J

    .line 69
    iput-object p3, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mPriority:Lorg/apache/log4j/Priority;

    .line 70
    iput-object p4, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mCategoryName:Ljava/lang/String;

    .line 71
    iput-object p5, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mNDC:Ljava/lang/String;

    .line 72
    iput-object p6, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mThreadName:Ljava/lang/String;

    .line 73
    iput-object p7, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mMessage:Ljava/lang/String;

    .line 74
    iput-object p8, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mThrowableStrRep:[Ljava/lang/String;

    .line 75
    iput-object p9, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mLocationDetails:Ljava/lang/String;

    .line 76
    return-void
.end method

.method constructor <init>(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 10
    .param p1, "aEvent"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 85
    iget-wide v1, p1, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getRenderedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v9, 0x0

    :goto_0
    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lorg/apache/log4j/chainsaw/EventDetails;-><init>(JLorg/apache/log4j/Priority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void

    .line 85
    :cond_0
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    move-result-object v0

    iget-object v9, v0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method getCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mCategoryName:Ljava/lang/String;

    return-object v0
.end method

.method getLocationDetails()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mLocationDetails:Ljava/lang/String;

    return-object v0
.end method

.method getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method getNDC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mNDC:Ljava/lang/String;

    return-object v0
.end method

.method getPriority()Lorg/apache/log4j/Priority;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mPriority:Lorg/apache/log4j/Priority;

    return-object v0
.end method

.method getThreadName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mThreadName:Ljava/lang/String;

    return-object v0
.end method

.method getThrowableStrRep()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mThrowableStrRep:[Ljava/lang/String;

    return-object v0
.end method

.method getTimeStamp()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mTimeStamp:J

    return-wide v0
.end method

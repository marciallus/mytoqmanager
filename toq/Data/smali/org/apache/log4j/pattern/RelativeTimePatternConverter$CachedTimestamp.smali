.class final Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;
.super Ljava/lang/Object;
.source "RelativeTimePatternConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/pattern/RelativeTimePatternConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CachedTimestamp"
.end annotation


# instance fields
.field private final formatted:Ljava/lang/String;

.field private final timestamp:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0
    .param p1, "timestamp"    # J
    .param p3, "formatted"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-wide p1, p0, Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;->timestamp:J

    .line 87
    iput-object p3, p0, Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;->formatted:Ljava/lang/String;

    .line 88
    return-void
.end method


# virtual methods
.method public format(JLjava/lang/StringBuffer;)Z
    .locals 2
    .param p1, "newTimestamp"    # J
    .param p3, "toAppendTo"    # Ljava/lang/StringBuffer;

    .prologue
    .line 97
    iget-wide v0, p0, Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;->timestamp:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;->formatted:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

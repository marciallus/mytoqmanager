.class public Lorg/apache/log4j/helpers/CountingQuietWriter;
.super Lorg/apache/log4j/helpers/QuietWriter;
.source "CountingQuietWriter.java"


# instance fields
.field protected count:J


# direct methods
.method public constructor <init>(Ljava/io/Writer;Lorg/apache/log4j/spi/ErrorHandler;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "eh"    # Lorg/apache/log4j/spi/ErrorHandler;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/apache/log4j/helpers/QuietWriter;-><init>(Ljava/io/Writer;Lorg/apache/log4j/spi/ErrorHandler;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getCount()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/apache/log4j/helpers/CountingQuietWriter;->count:J

    return-wide v0
.end method

.method public setCount(J)V
    .locals 0
    .param p1, "count"    # J

    .prologue
    .line 60
    iput-wide p1, p0, Lorg/apache/log4j/helpers/CountingQuietWriter;->count:J

    .line 61
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 5
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 45
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/helpers/CountingQuietWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 46
    iget-wide v1, p0, Lorg/apache/log4j/helpers/CountingQuietWriter;->count:J

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/log4j/helpers/CountingQuietWriter;->count:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/log4j/helpers/CountingQuietWriter;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    const-string v2, "Write failure."

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v3}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0
.end method

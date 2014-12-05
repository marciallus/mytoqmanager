.class public Lorg/apache/log4j/net/TelnetAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "TelnetAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/net/TelnetAppender$SocketHandler;
    }
.end annotation


# instance fields
.field private port:I

.field private sh:Lorg/apache/log4j/net/TelnetAppender$SocketHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 64
    const/16 v0, 0x17

    iput v0, p0, Lorg/apache/log4j/net/TelnetAppender;->port:I

    .line 138
    return-void
.end method


# virtual methods
.method public activateOptions()V
    .locals 3

    .prologue
    .line 77
    :try_start_0
    new-instance v1, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;

    iget v2, p0, Lorg/apache/log4j/net/TelnetAppender;->port:I

    invoke-direct {v1, p0, v2}, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;-><init>(Lorg/apache/log4j/net/TelnetAppender;I)V

    iput-object v1, p0, Lorg/apache/log4j/net/TelnetAppender;->sh:Lorg/apache/log4j/net/TelnetAppender$SocketHandler;

    .line 78
    iget-object v1, p0, Lorg/apache/log4j/net/TelnetAppender;->sh:Lorg/apache/log4j/net/TelnetAppender$SocketHandler;

    invoke-virtual {v1}, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->start()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 88
    :goto_0
    invoke-super {p0}, Lorg/apache/log4j/AppenderSkeleton;->activateOptions()V

    .line 89
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 82
    invoke-virtual {v0}, Ljava/io/InterruptedIOException;->printStackTrace()V

    goto :goto_0

    .line 83
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method protected append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 5
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 117
    iget-object v3, p0, Lorg/apache/log4j/net/TelnetAppender;->sh:Lorg/apache/log4j/net/TelnetAppender$SocketHandler;

    if-eqz v3, :cond_1

    .line 118
    iget-object v3, p0, Lorg/apache/log4j/net/TelnetAppender;->sh:Lorg/apache/log4j/net/TelnetAppender$SocketHandler;

    iget-object v4, p0, Lorg/apache/log4j/net/TelnetAppender;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v4, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->send(Ljava/lang/String;)V

    .line 119
    iget-object v3, p0, Lorg/apache/log4j/net/TelnetAppender;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v3}, Lorg/apache/log4j/Layout;->ignoresThrowable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 120
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "s":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 122
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 123
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 124
    aget-object v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_0
    iget-object v3, p0, Lorg/apache/log4j/net/TelnetAppender;->sh:Lorg/apache/log4j/net/TelnetAppender$SocketHandler;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->send(Ljava/lang/String;)V

    .line 131
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "i":I
    .end local v2    # "s":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 104
    iget-object v1, p0, Lorg/apache/log4j/net/TelnetAppender;->sh:Lorg/apache/log4j/net/TelnetAppender$SocketHandler;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lorg/apache/log4j/net/TelnetAppender;->sh:Lorg/apache/log4j/net/TelnetAppender$SocketHandler;

    invoke-virtual {v1}, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->close()V

    .line 107
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/net/TelnetAppender;->sh:Lorg/apache/log4j/net/TelnetAppender$SocketHandler;

    invoke-virtual {v1}, Lorg/apache/log4j/net/TelnetAppender$SocketHandler;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lorg/apache/log4j/net/TelnetAppender;->port:I

    return v0
.end method

.method public requiresLayout()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 98
    iput p1, p0, Lorg/apache/log4j/net/TelnetAppender;->port:I

    .line 99
    return-void
.end method

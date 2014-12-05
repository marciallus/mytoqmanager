.class public final Lorg/apache/log4j/DefaultThrowableRenderer;
.super Ljava/lang/Object;
.source "DefaultThrowableRenderer.java"

# interfaces
.implements Lorg/apache/log4j/spi/ThrowableRenderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static render(Ljava/lang/Throwable;)[Ljava/lang/String;
    .locals 9
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 57
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 58
    .local v5, "sw":Ljava/io/StringWriter;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 60
    .local v3, "pw":Ljava/io/PrintWriter;
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    :goto_0
    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 64
    new-instance v4, Ljava/io/LineNumberReader;

    new-instance v7, Ljava/io/StringReader;

    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 66
    .local v4, "reader":Ljava/io/LineNumberReader;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v2, "lines":Ljava/util/ArrayList;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "line":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {v4}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 73
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "ex":Ljava/io/IOException;
    instance-of v7, v0, Ljava/io/InterruptedIOException;

    if-eqz v7, :cond_0

    .line 75
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 77
    :cond_0
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 80
    .local v6, "tempRep":[Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 81
    return-object v6

    .line 61
    .end local v2    # "lines":Ljava/util/ArrayList;
    .end local v4    # "reader":Ljava/io/LineNumberReader;
    .end local v6    # "tempRep":[Ljava/lang/String;
    :catch_1
    move-exception v7

    goto :goto_0
.end method


# virtual methods
.method public doRender(Ljava/lang/Throwable;)[Ljava/lang/String;
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    invoke-static {p1}, Lorg/apache/log4j/DefaultThrowableRenderer;->render(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

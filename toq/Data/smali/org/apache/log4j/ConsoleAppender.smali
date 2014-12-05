.class public Lorg/apache/log4j/ConsoleAppender;
.super Lorg/apache/log4j/WriterAppender;
.source "ConsoleAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/ConsoleAppender$SystemOutStream;,
        Lorg/apache/log4j/ConsoleAppender$SystemErrStream;
    }
.end annotation


# static fields
.field public static final SYSTEM_ERR:Ljava/lang/String; = "System.err"

.field public static final SYSTEM_OUT:Ljava/lang/String; = "System.out"


# instance fields
.field private follow:Z

.field protected target:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/apache/log4j/WriterAppender;-><init>()V

    .line 37
    const-string v0, "System.out"

    iput-object v0, p0, Lorg/apache/log4j/ConsoleAppender;->target:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/ConsoleAppender;->follow:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;)V
    .locals 1
    .param p1, "layout"    # Lorg/apache/log4j/Layout;

    .prologue
    .line 57
    const-string v0, "System.out"

    invoke-direct {p0, p1, v0}, Lorg/apache/log4j/ConsoleAppender;-><init>(Lorg/apache/log4j/Layout;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;Ljava/lang/String;)V
    .locals 1
    .param p1, "layout"    # Lorg/apache/log4j/Layout;
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/apache/log4j/WriterAppender;-><init>()V

    .line 37
    const-string v0, "System.out"

    iput-object v0, p0, Lorg/apache/log4j/ConsoleAppender;->target:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/ConsoleAppender;->follow:Z

    .line 66
    invoke-virtual {p0, p1}, Lorg/apache/log4j/ConsoleAppender;->setLayout(Lorg/apache/log4j/Layout;)V

    .line 67
    invoke-virtual {p0, p2}, Lorg/apache/log4j/ConsoleAppender;->setTarget(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lorg/apache/log4j/ConsoleAppender;->activateOptions()V

    .line 69
    return-void
.end method


# virtual methods
.method public activateOptions()V
    .locals 2

    .prologue
    .line 131
    iget-boolean v0, p0, Lorg/apache/log4j/ConsoleAppender;->follow:Z

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lorg/apache/log4j/ConsoleAppender;->target:Ljava/lang/String;

    const-string v1, "System.err"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Lorg/apache/log4j/ConsoleAppender$SystemErrStream;

    invoke-direct {v0}, Lorg/apache/log4j/ConsoleAppender$SystemErrStream;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/ConsoleAppender;->createWriter(Ljava/io/OutputStream;)Ljava/io/OutputStreamWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/ConsoleAppender;->setWriter(Ljava/io/Writer;)V

    .line 145
    :goto_0
    invoke-super {p0}, Lorg/apache/log4j/WriterAppender;->activateOptions()V

    .line 146
    return-void

    .line 135
    :cond_0
    new-instance v0, Lorg/apache/log4j/ConsoleAppender$SystemOutStream;

    invoke-direct {v0}, Lorg/apache/log4j/ConsoleAppender$SystemOutStream;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/ConsoleAppender;->createWriter(Ljava/io/OutputStream;)Ljava/io/OutputStreamWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/ConsoleAppender;->setWriter(Ljava/io/Writer;)V

    goto :goto_0

    .line 138
    :cond_1
    iget-object v0, p0, Lorg/apache/log4j/ConsoleAppender;->target:Ljava/lang/String;

    const-string v1, "System.err"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/ConsoleAppender;->createWriter(Ljava/io/OutputStream;)Ljava/io/OutputStreamWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/ConsoleAppender;->setWriter(Ljava/io/Writer;)V

    goto :goto_0

    .line 141
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/ConsoleAppender;->createWriter(Ljava/io/OutputStream;)Ljava/io/OutputStreamWriter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/ConsoleAppender;->setWriter(Ljava/io/Writer;)V

    goto :goto_0
.end method

.method protected final closeWriter()V
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lorg/apache/log4j/ConsoleAppender;->follow:Z

    if-eqz v0, :cond_0

    .line 155
    invoke-super {p0}, Lorg/apache/log4j/WriterAppender;->closeWriter()V

    .line 157
    :cond_0
    return-void
.end method

.method public final getFollow()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lorg/apache/log4j/ConsoleAppender;->follow:Z

    return v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/log4j/ConsoleAppender;->target:Ljava/lang/String;

    return-object v0
.end method

.method public final setFollow(Z)V
    .locals 0
    .param p1, "newValue"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Lorg/apache/log4j/ConsoleAppender;->follow:Z

    .line 109
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "v":Ljava/lang/String;
    const-string v1, "System.out"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const-string v1, "System.out"

    iput-object v1, p0, Lorg/apache/log4j/ConsoleAppender;->target:Ljava/lang/String;

    .line 87
    :goto_0
    return-void

    .line 82
    :cond_0
    const-string v1, "System.err"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    const-string v1, "System.err"

    iput-object v1, p0, Lorg/apache/log4j/ConsoleAppender;->target:Ljava/lang/String;

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/log4j/ConsoleAppender;->targetWarn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method targetWarn(Ljava/lang/String;)V
    .locals 2
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "] should be System.out or System.err."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 124
    const-string v0, "Using previously set target, System.out by default."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.class Lorg/apache/log4j/varia/HUP;
.super Ljava/lang/Thread;
.source "ExternallyRolledFileAppender.java"


# instance fields
.field er:Lorg/apache/log4j/varia/ExternallyRolledFileAppender;

.field port:I


# direct methods
.method constructor <init>(Lorg/apache/log4j/varia/ExternallyRolledFileAppender;I)V
    .locals 0
    .param p1, "er"    # Lorg/apache/log4j/varia/ExternallyRolledFileAppender;
    .param p2, "port"    # I

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 115
    iput-object p1, p0, Lorg/apache/log4j/varia/HUP;->er:Lorg/apache/log4j/varia/ExternallyRolledFileAppender;

    .line 116
    iput p2, p0, Lorg/apache/log4j/varia/HUP;->port:I

    .line 117
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 121
    :goto_0
    invoke-virtual {p0}, Lorg/apache/log4j/varia/HUP;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 123
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    iget v3, p0, Lorg/apache/log4j/varia/HUP;->port:I

    invoke-direct {v1, v3}, Ljava/net/ServerSocket;-><init>(I)V

    .line 125
    .local v1, "serverSocket":Ljava/net/ServerSocket;
    :goto_1
    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    .line 126
    .local v2, "socket":Ljava/net/Socket;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Connected to client at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 127
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lorg/apache/log4j/varia/HUPNode;

    iget-object v5, p0, Lorg/apache/log4j/varia/HUP;->er:Lorg/apache/log4j/varia/ExternallyRolledFileAppender;

    invoke-direct {v4, v2, v5}, Lorg/apache/log4j/varia/HUPNode;-><init>(Ljava/net/Socket;Lorg/apache/log4j/varia/ExternallyRolledFileAppender;)V

    const-string v5, "ExternallyRolledFileAppender-HUP"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 129
    .end local v1    # "serverSocket":Ljava/net/ServerSocket;
    .end local v2    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 131
    invoke-virtual {v0}, Ljava/io/InterruptedIOException;->printStackTrace()V

    goto :goto_0

    .line 132
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    .line 133
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 134
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    return-void
.end method

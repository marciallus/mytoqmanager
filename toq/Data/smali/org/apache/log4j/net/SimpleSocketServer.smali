.class public Lorg/apache/log4j/net/SimpleSocketServer;
.super Ljava/lang/Object;
.source "SimpleSocketServer.java"


# static fields
.field static cat:Lorg/apache/log4j/Logger;

.field static class$org$apache$log4j$net$SimpleSocketServer:Ljava/lang/Class;

.field static port:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lorg/apache/log4j/net/SimpleSocketServer;->class$org$apache$log4j$net$SimpleSocketServer:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.net.SimpleSocketServer"

    invoke-static {v0}, Lorg/apache/log4j/net/SimpleSocketServer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/SimpleSocketServer;->class$org$apache$log4j$net$SimpleSocketServer:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/SimpleSocketServer;->cat:Lorg/apache/log4j/Logger;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/log4j/net/SimpleSocketServer;->class$org$apache$log4j$net$SimpleSocketServer:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 46
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method static init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "portStr"    # Ljava/lang/String;
    .param p1, "configFile"    # Ljava/lang/String;

    .prologue
    .line 85
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/apache/log4j/net/SimpleSocketServer;->port:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    const-string v1, ".xml"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-static {p1}, Lorg/apache/log4j/xml/DOMConfigurator;->configure(Ljava/lang/String;)V

    .line 96
    :goto_1
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 88
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not interpret port number ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/net/SimpleSocketServer;->usage(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    invoke-static {p1}, Lorg/apache/log4j/PropertyConfigurator;->configure(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "argv"    # [Ljava/lang/String;

    .prologue
    .line 53
    array-length v3, p0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 54
    const/4 v3, 0x0

    aget-object v3, p0, v3

    const/4 v4, 0x1

    aget-object v4, p0, v4

    invoke-static {v3, v4}, Lorg/apache/log4j/net/SimpleSocketServer;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_0
    :try_start_0
    sget-object v3, Lorg/apache/log4j/net/SimpleSocketServer;->cat:Lorg/apache/log4j/Logger;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Listening on port "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget v5, Lorg/apache/log4j/net/SimpleSocketServer;->port:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 61
    new-instance v1, Ljava/net/ServerSocket;

    sget v3, Lorg/apache/log4j/net/SimpleSocketServer;->port:I

    invoke-direct {v1, v3}, Ljava/net/ServerSocket;-><init>(I)V

    .line 63
    .local v1, "serverSocket":Ljava/net/ServerSocket;
    :goto_1
    sget-object v3, Lorg/apache/log4j/net/SimpleSocketServer;->cat:Lorg/apache/log4j/Logger;

    const-string v4, "Waiting to accept a new client."

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    .line 65
    .local v2, "socket":Ljava/net/Socket;
    sget-object v3, Lorg/apache/log4j/net/SimpleSocketServer;->cat:Lorg/apache/log4j/Logger;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Connected to client at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 66
    sget-object v3, Lorg/apache/log4j/net/SimpleSocketServer;->cat:Lorg/apache/log4j/Logger;

    const-string v4, "Starting new socket node."

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 67
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lorg/apache/log4j/net/SocketNode;

    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lorg/apache/log4j/net/SocketNode;-><init>(Ljava/net/Socket;Lorg/apache/log4j/spi/LoggerRepository;)V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "SimpleSocketServer-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget v6, Lorg/apache/log4j/net/SimpleSocketServer;->port:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 70
    .end local v1    # "serverSocket":Ljava/net/ServerSocket;
    .end local v2    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    return-void

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v3, "Wrong number of arguments."

    invoke-static {v3}, Lorg/apache/log4j/net/SimpleSocketServer;->usage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static usage(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 77
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Usage: java "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v0, Lorg/apache/log4j/net/SimpleSocketServer;->class$org$apache$log4j$net$SimpleSocketServer:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.net.SimpleSocketServer"

    invoke-static {v0}, Lorg/apache/log4j/net/SimpleSocketServer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/SimpleSocketServer;->class$org$apache$log4j$net$SimpleSocketServer:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " port configFile"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 81
    return-void

    .line 78
    :cond_0
    sget-object v0, Lorg/apache/log4j/net/SimpleSocketServer;->class$org$apache$log4j$net$SimpleSocketServer:Ljava/lang/Class;

    goto :goto_0
.end method

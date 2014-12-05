.class public Lorg/apache/log4j/net/SocketServer;
.super Ljava/lang/Object;
.source "SocketServer.java"


# static fields
.field static CONFIG_FILE_EXT:Ljava/lang/String;

.field static GENERIC:Ljava/lang/String;

.field static cat:Lorg/apache/log4j/Logger;

.field static class$org$apache$log4j$net$SocketServer:Ljava/lang/Class;

.field static port:I

.field static server:Lorg/apache/log4j/net/SocketServer;


# instance fields
.field dir:Ljava/io/File;

.field genericHierarchy:Lorg/apache/log4j/spi/LoggerRepository;

.field hierarchyMap:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const-string v0, "generic"

    sput-object v0, Lorg/apache/log4j/net/SocketServer;->GENERIC:Ljava/lang/String;

    .line 91
    const-string v0, ".lcf"

    sput-object v0, Lorg/apache/log4j/net/SocketServer;->CONFIG_FILE_EXT:Ljava/lang/String;

    .line 93
    sget-object v0, Lorg/apache/log4j/net/SocketServer;->class$org$apache$log4j$net$SocketServer:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.net.SocketServer"

    invoke-static {v0}, Lorg/apache/log4j/net/SocketServer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/SocketServer;->class$org$apache$log4j$net$SocketServer:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/SocketServer;->cat:Lorg/apache/log4j/Logger;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/log4j/net/SocketServer;->class$org$apache$log4j$net$SocketServer:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "directory"    # Ljava/io/File;

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lorg/apache/log4j/net/SocketServer;->dir:Ljava/io/File;

    .line 165
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketServer;->hierarchyMap:Ljava/util/Hashtable;

    .line 166
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 93
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

.method static init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "portStr"    # Ljava/lang/String;
    .param p1, "configFile"    # Ljava/lang/String;
    .param p2, "dirStr"    # Ljava/lang/String;

    .prologue
    .line 145
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lorg/apache/log4j/net/SocketServer;->port:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    invoke-static {p1}, Lorg/apache/log4j/PropertyConfigurator;->configure(Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "] is not a directory."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/net/SocketServer;->usage(Ljava/lang/String;)V

    .line 158
    :cond_0
    new-instance v2, Lorg/apache/log4j/net/SocketServer;

    invoke-direct {v2, v0}, Lorg/apache/log4j/net/SocketServer;-><init>(Ljava/io/File;)V

    sput-object v2, Lorg/apache/log4j/net/SocketServer;->server:Lorg/apache/log4j/net/SocketServer;

    .line 159
    return-void

    .line 147
    .end local v0    # "dir":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 149
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not interpret port number ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/net/SocketServer;->usage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "argv"    # [Ljava/lang/String;

    .prologue
    .line 105
    array-length v5, p0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 106
    const/4 v5, 0x0

    aget-object v5, p0, v5

    const/4 v6, 0x1

    aget-object v6, p0, v6

    const/4 v7, 0x2

    aget-object v7, p0, v7

    invoke-static {v5, v6, v7}, Lorg/apache/log4j/net/SocketServer;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_0
    :try_start_0
    sget-object v5, Lorg/apache/log4j/net/SocketServer;->cat:Lorg/apache/log4j/Logger;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Listening on port "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sget v7, Lorg/apache/log4j/net/SocketServer;->port:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 112
    new-instance v3, Ljava/net/ServerSocket;

    sget v5, Lorg/apache/log4j/net/SocketServer;->port:I

    invoke-direct {v3, v5}, Ljava/net/ServerSocket;-><init>(I)V

    .line 114
    .local v3, "serverSocket":Ljava/net/ServerSocket;
    :goto_1
    sget-object v5, Lorg/apache/log4j/net/SocketServer;->cat:Lorg/apache/log4j/Logger;

    const-string v6, "Waiting to accept a new client."

    invoke-virtual {v5, v6}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 115
    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v4

    .line 116
    .local v4, "socket":Ljava/net/Socket;
    invoke-virtual {v4}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 117
    .local v2, "inetAddress":Ljava/net/InetAddress;
    sget-object v5, Lorg/apache/log4j/net/SocketServer;->cat:Lorg/apache/log4j/Logger;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Connected to client at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 119
    sget-object v5, Lorg/apache/log4j/net/SocketServer;->server:Lorg/apache/log4j/net/SocketServer;

    iget-object v5, v5, Lorg/apache/log4j/net/SocketServer;->hierarchyMap:Ljava/util/Hashtable;

    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/spi/LoggerRepository;

    .line 120
    .local v1, "h":Lorg/apache/log4j/spi/LoggerRepository;
    if-nez v1, :cond_0

    .line 121
    sget-object v5, Lorg/apache/log4j/net/SocketServer;->server:Lorg/apache/log4j/net/SocketServer;

    invoke-virtual {v5, v2}, Lorg/apache/log4j/net/SocketServer;->configureHierarchy(Ljava/net/InetAddress;)Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    .line 124
    :cond_0
    sget-object v5, Lorg/apache/log4j/net/SocketServer;->cat:Lorg/apache/log4j/Logger;

    const-string v6, "Starting new socket node."

    invoke-virtual {v5, v6}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 125
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lorg/apache/log4j/net/SocketNode;

    invoke-direct {v6, v4, v1}, Lorg/apache/log4j/net/SocketNode;-><init>(Ljava/net/Socket;Lorg/apache/log4j/spi/LoggerRepository;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 128
    .end local v1    # "h":Lorg/apache/log4j/spi/LoggerRepository;
    .end local v2    # "inetAddress":Ljava/net/InetAddress;
    .end local v3    # "serverSocket":Ljava/net/ServerSocket;
    .end local v4    # "socket":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    return-void

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v5, "Wrong number of arguments."

    invoke-static {v5}, Lorg/apache/log4j/net/SocketServer;->usage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static usage(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 136
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Usage: java "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v0, Lorg/apache/log4j/net/SocketServer;->class$org$apache$log4j$net$SocketServer:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.net.SocketServer"

    invoke-static {v0}, Lorg/apache/log4j/net/SocketServer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/SocketServer;->class$org$apache$log4j$net$SocketServer:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " port configFile directory"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 140
    return-void

    .line 137
    :cond_0
    sget-object v0, Lorg/apache/log4j/net/SocketServer;->class$org$apache$log4j$net$SocketServer:Ljava/lang/Class;

    goto :goto_0
.end method


# virtual methods
.method configureHierarchy(Ljava/net/InetAddress;)Lorg/apache/log4j/spi/LoggerRepository;
    .locals 8
    .param p1, "inetAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 171
    sget-object v5, Lorg/apache/log4j/net/SocketServer;->cat:Lorg/apache/log4j/Logger;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Locating configuration file for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 174
    invoke-virtual {p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "s":Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 176
    .local v2, "i":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 177
    sget-object v5, Lorg/apache/log4j/net/SocketServer;->cat:Lorg/apache/log4j/Logger;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Could not parse the inetAddress ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "]. Using default hierarchy."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;)V

    .line 179
    invoke-virtual {p0}, Lorg/apache/log4j/net/SocketServer;->genericHierarchy()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    .line 193
    :goto_0
    return-object v1

    .line 181
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, "key":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lorg/apache/log4j/net/SocketServer;->dir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sget-object v7, Lorg/apache/log4j/net/SocketServer;->CONFIG_FILE_EXT:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    .local v0, "configFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 185
    new-instance v1, Lorg/apache/log4j/Hierarchy;

    new-instance v5, Lorg/apache/log4j/spi/RootLogger;

    sget-object v6, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-direct {v5, v6}, Lorg/apache/log4j/spi/RootLogger;-><init>(Lorg/apache/log4j/Level;)V

    invoke-direct {v1, v5}, Lorg/apache/log4j/Hierarchy;-><init>(Lorg/apache/log4j/Logger;)V

    .line 186
    .local v1, "h":Lorg/apache/log4j/Hierarchy;
    iget-object v5, p0, Lorg/apache/log4j/net/SocketServer;->hierarchyMap:Ljava/util/Hashtable;

    invoke-virtual {v5, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance v5, Lorg/apache/log4j/PropertyConfigurator;

    invoke-direct {v5}, Lorg/apache/log4j/PropertyConfigurator;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lorg/apache/log4j/PropertyConfigurator;->doConfigure(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerRepository;)V

    goto :goto_0

    .line 192
    .end local v1    # "h":Lorg/apache/log4j/Hierarchy;
    :cond_1
    sget-object v5, Lorg/apache/log4j/net/SocketServer;->cat:Lorg/apache/log4j/Logger;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Could not find config file ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "]."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p0}, Lorg/apache/log4j/net/SocketServer;->genericHierarchy()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    goto :goto_0
.end method

.method genericHierarchy()Lorg/apache/log4j/spi/LoggerRepository;
    .locals 4

    .prologue
    .line 199
    iget-object v1, p0, Lorg/apache/log4j/net/SocketServer;->genericHierarchy:Lorg/apache/log4j/spi/LoggerRepository;

    if-nez v1, :cond_0

    .line 200
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/log4j/net/SocketServer;->dir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v3, Lorg/apache/log4j/net/SocketServer;->GENERIC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lorg/apache/log4j/net/SocketServer;->CONFIG_FILE_EXT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    new-instance v1, Lorg/apache/log4j/Hierarchy;

    new-instance v2, Lorg/apache/log4j/spi/RootLogger;

    sget-object v3, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-direct {v2, v3}, Lorg/apache/log4j/spi/RootLogger;-><init>(Lorg/apache/log4j/Level;)V

    invoke-direct {v1, v2}, Lorg/apache/log4j/Hierarchy;-><init>(Lorg/apache/log4j/Logger;)V

    iput-object v1, p0, Lorg/apache/log4j/net/SocketServer;->genericHierarchy:Lorg/apache/log4j/spi/LoggerRepository;

    .line 203
    new-instance v1, Lorg/apache/log4j/PropertyConfigurator;

    invoke-direct {v1}, Lorg/apache/log4j/PropertyConfigurator;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/net/SocketServer;->genericHierarchy:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-virtual {v1, v2, v3}, Lorg/apache/log4j/PropertyConfigurator;->doConfigure(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 210
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/log4j/net/SocketServer;->genericHierarchy:Lorg/apache/log4j/spi/LoggerRepository;

    return-object v1

    .line 205
    .restart local v0    # "f":Ljava/io/File;
    :cond_1
    sget-object v1, Lorg/apache/log4j/net/SocketServer;->cat:Lorg/apache/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not find config file ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]. Will use the default hierarchy."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;)V

    .line 207
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/log4j/net/SocketServer;->genericHierarchy:Lorg/apache/log4j/spi/LoggerRepository;

    goto :goto_0
.end method

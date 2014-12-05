.class public Lorg/apache/log4j/varia/Roller;
.super Ljava/lang/Object;
.source "Roller.java"


# static fields
.field static cat:Lorg/apache/log4j/Logger;

.field static class$org$apache$log4j$varia$Roller:Ljava/lang/Class;

.field static host:Ljava/lang/String;

.field static port:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lorg/apache/log4j/varia/Roller;->class$org$apache$log4j$varia$Roller:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.varia.Roller"

    invoke-static {v0}, Lorg/apache/log4j/varia/Roller;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/varia/Roller;->class$org$apache$log4j$varia$Roller:Ljava/lang/Class;

    :goto_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/varia/Roller;->cat:Lorg/apache/log4j/Logger;

    return-void

    :cond_0
    sget-object v0, Lorg/apache/log4j/varia/Roller;->class$org$apache$log4j$varia$Roller:Ljava/lang/Class;

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 41
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
    .param p0, "hostArg"    # Ljava/lang/String;
    .param p1, "portArg"    # Ljava/lang/String;

    .prologue
    .line 81
    sput-object p0, Lorg/apache/log4j/varia/Roller;->host:Ljava/lang/String;

    .line 83
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/apache/log4j/varia/Roller;->port:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Second argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " is not a valid integer."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/varia/Roller;->usage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "argv"    # [Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {}, Lorg/apache/log4j/BasicConfigurator;->configure()V

    .line 63
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 64
    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-static {v0, v1}, Lorg/apache/log4j/varia/Roller;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :goto_0
    invoke-static {}, Lorg/apache/log4j/varia/Roller;->roll()V

    .line 69
    return-void

    .line 66
    :cond_0
    const-string v0, "Wrong number of arguments."

    invoke-static {v0}, Lorg/apache/log4j/varia/Roller;->usage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static roll()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 93
    :try_start_0
    new-instance v4, Ljava/net/Socket;

    sget-object v5, Lorg/apache/log4j/varia/Roller;->host:Ljava/lang/String;

    sget v6, Lorg/apache/log4j/varia/Roller;->port:I

    invoke-direct {v4, v5, v6}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 94
    .local v4, "socket":Ljava/net/Socket;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 95
    .local v1, "dos":Ljava/io/DataOutputStream;
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 96
    .local v0, "dis":Ljava/io/DataInputStream;
    const-string v5, "RollOver"

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "rc":Ljava/lang/String;
    const-string v5, "OK"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 99
    sget-object v5, Lorg/apache/log4j/varia/Roller;->cat:Lorg/apache/log4j/Logger;

    const-string v6, "Roll over signal acknowledged by remote appender."

    invoke-virtual {v5, v6}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .end local v3    # "rc":Ljava/lang/String;
    :goto_0
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 110
    return-void

    .line 101
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v3    # "rc":Ljava/lang/String;
    :cond_0
    :try_start_1
    sget-object v5, Lorg/apache/log4j/varia/Roller;->cat:Lorg/apache/log4j/Logger;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Unexpected return code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " from remote entity."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;)V

    .line 102
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/System;->exit(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 104
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .end local v3    # "rc":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Ljava/io/IOException;
    sget-object v5, Lorg/apache/log4j/varia/Roller;->cat:Lorg/apache/log4j/Logger;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Could not send roll signal on host "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sget-object v7, Lorg/apache/log4j/varia/Roller;->host:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " port "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sget v7, Lorg/apache/log4j/varia/Roller;->port:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " ."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 107
    invoke-static {v8}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method static usage(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 73
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Usage: java "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v0, Lorg/apache/log4j/varia/Roller;->class$org$apache$log4j$varia$Roller:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.varia.Roller"

    invoke-static {v0}, Lorg/apache/log4j/varia/Roller;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/varia/Roller;->class$org$apache$log4j$varia$Roller:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "host_name port_number"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 77
    return-void

    .line 74
    :cond_0
    sget-object v0, Lorg/apache/log4j/varia/Roller;->class$org$apache$log4j$varia$Roller:Ljava/lang/Class;

    goto :goto_0
.end method

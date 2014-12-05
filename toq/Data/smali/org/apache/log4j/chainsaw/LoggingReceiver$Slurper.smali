.class Lorg/apache/log4j/chainsaw/LoggingReceiver$Slurper;
.super Ljava/lang/Object;
.source "LoggingReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/chainsaw/LoggingReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Slurper"
.end annotation


# instance fields
.field private final mClient:Ljava/net/Socket;

.field private final this$0:Lorg/apache/log4j/chainsaw/LoggingReceiver;


# direct methods
.method constructor <init>(Lorg/apache/log4j/chainsaw/LoggingReceiver;Ljava/net/Socket;)V
    .locals 0
    .param p2, "aClient"    # Ljava/net/Socket;

    .prologue
    .line 53
    iput-object p1, p0, Lorg/apache/log4j/chainsaw/LoggingReceiver$Slurper;->this$0:Lorg/apache/log4j/chainsaw/LoggingReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p2, p0, Lorg/apache/log4j/chainsaw/LoggingReceiver$Slurper;->mClient:Ljava/net/Socket;

    .line 55
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 59
    invoke-static {}, Lorg/apache/log4j/chainsaw/LoggingReceiver;->access$000()Lorg/apache/log4j/Logger;

    move-result-object v3

    const-string v4, "Starting to get data"

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Logger;->debug(Ljava/lang/Object;)V

    .line 61
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    iget-object v3, p0, Lorg/apache/log4j/chainsaw/LoggingReceiver$Slurper;->mClient:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 64
    .local v2, "ois":Ljava/io/ObjectInputStream;
    :goto_0
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/spi/LoggingEvent;

    .line 65
    .local v1, "event":Lorg/apache/log4j/spi/LoggingEvent;
    iget-object v3, p0, Lorg/apache/log4j/chainsaw/LoggingReceiver$Slurper;->this$0:Lorg/apache/log4j/chainsaw/LoggingReceiver;

    invoke-static {v3}, Lorg/apache/log4j/chainsaw/LoggingReceiver;->access$100(Lorg/apache/log4j/chainsaw/LoggingReceiver;)Lorg/apache/log4j/chainsaw/MyTableModel;

    move-result-object v3

    new-instance v4, Lorg/apache/log4j/chainsaw/EventDetails;

    invoke-direct {v4, v1}, Lorg/apache/log4j/chainsaw/EventDetails;-><init>(Lorg/apache/log4j/spi/LoggingEvent;)V

    invoke-virtual {v3, v4}, Lorg/apache/log4j/chainsaw/MyTableModel;->addEvent(Lorg/apache/log4j/chainsaw/EventDetails;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 67
    .end local v1    # "event":Lorg/apache/log4j/spi/LoggingEvent;
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/EOFException;
    invoke-static {}, Lorg/apache/log4j/chainsaw/LoggingReceiver;->access$000()Lorg/apache/log4j/Logger;

    move-result-object v3

    const-string v4, "Reached EOF, closing connection"

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 78
    .end local v0    # "e":Ljava/io/EOFException;
    :goto_1
    :try_start_1
    iget-object v3, p0, Lorg/apache/log4j/chainsaw/LoggingReceiver$Slurper;->mClient:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 82
    :goto_2
    return-void

    .line 69
    :catch_1
    move-exception v0

    .line 70
    .local v0, "e":Ljava/net/SocketException;
    invoke-static {}, Lorg/apache/log4j/chainsaw/LoggingReceiver;->access$000()Lorg/apache/log4j/Logger;

    move-result-object v3

    const-string v4, "Caught SocketException, closing connection"

    invoke-virtual {v3, v4}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    goto :goto_1

    .line 71
    .end local v0    # "e":Ljava/net/SocketException;
    :catch_2
    move-exception v0

    .line 72
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/apache/log4j/chainsaw/LoggingReceiver;->access$000()Lorg/apache/log4j/Logger;

    move-result-object v3

    const-string v4, "Got IOException, closing connection"

    invoke-virtual {v3, v4, v0}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 73
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Lorg/apache/log4j/chainsaw/LoggingReceiver;->access$000()Lorg/apache/log4j/Logger;

    move-result-object v3

    const-string v4, "Got ClassNotFoundException, closing connection"

    invoke-virtual {v3, v4, v0}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 79
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_4
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/apache/log4j/chainsaw/LoggingReceiver;->access$000()Lorg/apache/log4j/Logger;

    move-result-object v3

    const-string v4, "Error closing connection"

    invoke-virtual {v3, v4, v0}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

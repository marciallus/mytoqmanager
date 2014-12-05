.class public Lorg/apache/log4j/net/SocketHubAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "SocketHubAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;
    }
.end annotation


# static fields
.field static final DEFAULT_PORT:I = 0x11d0

.field public static final ZONE:Ljava/lang/String; = "_log4j_obj_tcpaccept_appender.local."


# instance fields
.field private advertiseViaMulticastDNS:Z

.field private application:Ljava/lang/String;

.field private buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

.field private locationInfo:Z

.field private oosList:Ljava/util/Vector;

.field private port:I

.field private serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

.field private serverSocket:Ljava/net/ServerSocket;

.field private zeroConf:Lorg/apache/log4j/net/ZeroConfSupport;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 114
    const/16 v0, 0x11d0

    iput v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    .line 115
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    .line 116
    iput-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender;->serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->locationInfo:Z

    .line 118
    iput-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    .line 130
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "_port"    # I

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 114
    const/16 v0, 0x11d0

    iput v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    .line 115
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    .line 116
    iput-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender;->serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->locationInfo:Z

    .line 118
    iput-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    .line 136
    iput p1, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    .line 137
    invoke-direct {p0}, Lorg/apache/log4j/net/SocketHubAppender;->startServer()V

    .line 138
    return-void
.end method

.method static access$000(Lorg/apache/log4j/net/SocketHubAppender;)Ljava/net/ServerSocket;
    .locals 1
    .param p0, "x0"    # Lorg/apache/log4j/net/SocketHubAppender;

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->serverSocket:Ljava/net/ServerSocket;

    return-object v0
.end method

.method static access$002(Lorg/apache/log4j/net/SocketHubAppender;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .locals 0
    .param p0, "x0"    # Lorg/apache/log4j/net/SocketHubAppender;
    .param p1, "x1"    # Ljava/net/ServerSocket;

    .prologue
    .line 108
    iput-object p1, p0, Lorg/apache/log4j/net/SocketHubAppender;->serverSocket:Ljava/net/ServerSocket;

    return-object p1
.end method

.method static access$100(Lorg/apache/log4j/net/SocketHubAppender;)Lorg/apache/log4j/helpers/CyclicBuffer;
    .locals 1
    .param p0, "x0"    # Lorg/apache/log4j/net/SocketHubAppender;

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    return-object v0
.end method

.method private startServer()V
    .locals 3

    .prologue
    .line 356
    new-instance v0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    iget v1, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    iget-object v2, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;-><init>(Lorg/apache/log4j/net/SocketHubAppender;ILjava/util/Vector;)V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    .line 357
    return-void
.end method


# virtual methods
.method public activateOptions()V
    .locals 4

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->advertiseViaMulticastDNS:Z

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Lorg/apache/log4j/net/ZeroConfSupport;

    const-string v1, "_log4j_obj_tcpaccept_appender.local."

    iget v2, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    invoke-virtual {p0}, Lorg/apache/log4j/net/SocketHubAppender;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/net/ZeroConfSupport;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->zeroConf:Lorg/apache/log4j/net/ZeroConfSupport;

    .line 146
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->zeroConf:Lorg/apache/log4j/net/ZeroConfSupport;

    invoke-virtual {v0}, Lorg/apache/log4j/net/ZeroConfSupport;->advertise()V

    .line 148
    :cond_0
    invoke-direct {p0}, Lorg/apache/log4j/net/SocketHubAppender;->startServer()V

    .line 149
    return-void
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 6
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 204
    if-eqz p1, :cond_2

    .line 206
    iget-boolean v4, p0, Lorg/apache/log4j/net/SocketHubAppender;->locationInfo:Z

    if-eqz v4, :cond_0

    .line 207
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    .line 209
    :cond_0
    iget-object v4, p0, Lorg/apache/log4j/net/SocketHubAppender;->application:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 210
    const-string v4, "application"

    iget-object v5, p0, Lorg/apache/log4j/net/SocketHubAppender;->application:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lorg/apache/log4j/spi/LoggingEvent;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_1
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getMDCCopy()V

    .line 215
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getRenderedMessage()Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    .line 218
    iget-object v4, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    if-eqz v4, :cond_2

    .line 219
    iget-object v4, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    invoke-virtual {v4, p1}, Lorg/apache/log4j/helpers/CyclicBuffer;->add(Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 224
    :cond_2
    if-eqz p1, :cond_3

    iget-object v4, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 265
    :cond_3
    return-void

    .line 229
    :cond_4
    const/4 v3, 0x0

    .local v3, "streamCount":I
    :goto_0
    iget-object v4, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 231
    const/4 v2, 0x0

    .line 233
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    iget-object v4, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/io/ObjectOutputStream;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 242
    :goto_1
    if-eqz v2, :cond_3

    .line 246
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 247
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 251
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 229
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/io/IOException;
    instance-of v4, v1, Ljava/io/InterruptedIOException;

    if-eqz v4, :cond_5

    .line 255
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 258
    :cond_5
    iget-object v4, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->removeElementAt(I)V

    .line 259
    const-string v4, "dropped connection"

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 262
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 235
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public cleanUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 177
    const-string v2, "stopping ServerSocket"

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Lorg/apache/log4j/net/SocketHubAppender;->serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    invoke-virtual {v2}, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->stopMonitor()V

    .line 179
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/log4j/net/SocketHubAppender;->serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    .line 182
    const-string v2, "closing client connections"

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 183
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    iget-object v2, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ObjectOutputStream;

    .line 185
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    if-eqz v1, :cond_0

    .line 187
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    :goto_1
    iget-object v2, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/io/InterruptedIOException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 190
    const-string v2, "could not close oos."

    invoke-static {v2, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 191
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "could not close oos."

    invoke-static {v2, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 198
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    :cond_1
    return-void
.end method

.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 169
    :goto_0
    monitor-exit p0

    return-void

    .line 161
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "closing SocketHubAppender "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/log4j/net/SocketHubAppender;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->closed:Z

    .line 163
    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->advertiseViaMulticastDNS:Z

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->zeroConf:Lorg/apache/log4j/net/ZeroConfSupport;

    invoke-virtual {v0}, Lorg/apache/log4j/net/ZeroConfSupport;->unadvertise()V

    .line 166
    :cond_1
    invoke-virtual {p0}, Lorg/apache/log4j/net/SocketHubAppender;->cleanUp()V

    .line 168
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SocketHubAppender "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/log4j/net/SocketHubAppender;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " closed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createServerSocket(I)Ljava/net/ServerSocket;
    .locals 1
    .param p1, "socketPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    return-object v0
.end method

.method public getApplication()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->application:Ljava/lang/String;

    return-object v0
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    if-nez v0, :cond_0

    .line 322
    const/4 v0, 0x0

    .line 324
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/CyclicBuffer;->getMaxSize()I

    move-result v0

    goto :goto_0
.end method

.method public getLocationInfo()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->locationInfo:Z

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    return v0
.end method

.method public isAdvertiseViaMulticastDNS()Z
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->advertiseViaMulticastDNS:Z

    return v0
.end method

.method public requiresLayout()Z
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public setAdvertiseViaMulticastDNS(Z)V
    .locals 0
    .param p1, "advertiseViaMulticastDNS"    # Z

    .prologue
    .line 345
    iput-boolean p1, p0, Lorg/apache/log4j/net/SocketHubAppender;->advertiseViaMulticastDNS:Z

    .line 346
    return-void
.end method

.method public setApplication(Ljava/lang/String;)V
    .locals 0
    .param p1, "lapp"    # Ljava/lang/String;

    .prologue
    .line 289
    iput-object p1, p0, Lorg/apache/log4j/net/SocketHubAppender;->application:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setBufferSize(I)V
    .locals 1
    .param p1, "_bufferSize"    # I

    .prologue
    .line 313
    new-instance v0, Lorg/apache/log4j/helpers/CyclicBuffer;

    invoke-direct {v0, p1}, Lorg/apache/log4j/helpers/CyclicBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    .line 314
    return-void
.end method

.method public setLocationInfo(Z)V
    .locals 0
    .param p1, "_locationInfo"    # Z

    .prologue
    .line 334
    iput-boolean p1, p0, Lorg/apache/log4j/net/SocketHubAppender;->locationInfo:Z

    .line 335
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "_port"    # I

    .prologue
    .line 280
    iput p1, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    .line 281
    return-void
.end method

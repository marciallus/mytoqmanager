.class public Lorg/apache/log4j/net/SocketAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "SocketAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/net/SocketAppender$Connector;
    }
.end annotation


# static fields
.field public static final DEFAULT_PORT:I = 0x11d0

.field static final DEFAULT_RECONNECTION_DELAY:I = 0x7530

.field private static final RESET_FREQUENCY:I = 0x1

.field public static final ZONE:Ljava/lang/String; = "_log4j_obj_tcpconnect_appender.local."


# instance fields
.field address:Ljava/net/InetAddress;

.field private advertiseViaMulticastDNS:Z

.field private application:Ljava/lang/String;

.field private connector:Lorg/apache/log4j/net/SocketAppender$Connector;

.field counter:I

.field locationInfo:Z

.field oos:Ljava/io/ObjectOutputStream;

.field port:I

.field reconnectionDelay:I

.field remoteHost:Ljava/lang/String;

.field private zeroConf:Lorg/apache/log4j/net/ZeroConfSupport;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 127
    const/16 v0, 0x11d0

    iput v0, p0, Lorg/apache/log4j/net/SocketAppender;->port:I

    .line 129
    const/16 v0, 0x7530

    iput v0, p0, Lorg/apache/log4j/net/SocketAppender;->reconnectionDelay:I

    .line 130
    iput-boolean v1, p0, Lorg/apache/log4j/net/SocketAppender;->locationInfo:Z

    .line 135
    iput v1, p0, Lorg/apache/log4j/net/SocketAppender;->counter:I

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 127
    const/16 v0, 0x11d0

    iput v0, p0, Lorg/apache/log4j/net/SocketAppender;->port:I

    .line 129
    const/16 v0, 0x7530

    iput v0, p0, Lorg/apache/log4j/net/SocketAppender;->reconnectionDelay:I

    .line 130
    iput-boolean v1, p0, Lorg/apache/log4j/net/SocketAppender;->locationInfo:Z

    .line 135
    iput v1, p0, Lorg/apache/log4j/net/SocketAppender;->counter:I

    .line 160
    iput p2, p0, Lorg/apache/log4j/net/SocketAppender;->port:I

    .line 161
    invoke-static {p1}, Lorg/apache/log4j/net/SocketAppender;->getAddressByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/net/SocketAppender;->address:Ljava/net/InetAddress;

    .line 162
    iput-object p1, p0, Lorg/apache/log4j/net/SocketAppender;->remoteHost:Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lorg/apache/log4j/net/SocketAppender;->address:Ljava/net/InetAddress;

    invoke-virtual {p0, v0, p2}, Lorg/apache/log4j/net/SocketAppender;->connect(Ljava/net/InetAddress;I)V

    .line 164
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 127
    const/16 v0, 0x11d0

    iput v0, p0, Lorg/apache/log4j/net/SocketAppender;->port:I

    .line 129
    const/16 v0, 0x7530

    iput v0, p0, Lorg/apache/log4j/net/SocketAppender;->reconnectionDelay:I

    .line 130
    iput-boolean v1, p0, Lorg/apache/log4j/net/SocketAppender;->locationInfo:Z

    .line 135
    iput v1, p0, Lorg/apache/log4j/net/SocketAppender;->counter:I

    .line 150
    iput-object p1, p0, Lorg/apache/log4j/net/SocketAppender;->address:Ljava/net/InetAddress;

    .line 151
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/net/SocketAppender;->remoteHost:Ljava/lang/String;

    .line 152
    iput p2, p0, Lorg/apache/log4j/net/SocketAppender;->port:I

    .line 153
    invoke-virtual {p0, p1, p2}, Lorg/apache/log4j/net/SocketAppender;->connect(Ljava/net/InetAddress;I)V

    .line 154
    return-void
.end method

.method static access$002(Lorg/apache/log4j/net/SocketAppender;Lorg/apache/log4j/net/SocketAppender$Connector;)Lorg/apache/log4j/net/SocketAppender$Connector;
    .locals 0
    .param p0, "x0"    # Lorg/apache/log4j/net/SocketAppender;
    .param p1, "x1"    # Lorg/apache/log4j/net/SocketAppender$Connector;

    .prologue
    .line 102
    iput-object p1, p0, Lorg/apache/log4j/net/SocketAppender;->connector:Lorg/apache/log4j/net/SocketAppender$Connector;

    return-object p1
.end method

.method static getAddressByName(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 3
    .param p0, "host"    # Ljava/lang/String;

    .prologue
    .line 315
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 321
    :goto_0
    return-object v1

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-nez v1, :cond_0

    instance-of v1, v0, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_1

    .line 318
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 320
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not find address of ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 321
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public activateOptions()V
    .locals 4

    .prologue
    .line 170
    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketAppender;->advertiseViaMulticastDNS:Z

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Lorg/apache/log4j/net/ZeroConfSupport;

    const-string v1, "_log4j_obj_tcpconnect_appender.local."

    iget v2, p0, Lorg/apache/log4j/net/SocketAppender;->port:I

    invoke-virtual {p0}, Lorg/apache/log4j/net/SocketAppender;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/net/ZeroConfSupport;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketAppender;->zeroConf:Lorg/apache/log4j/net/ZeroConfSupport;

    .line 172
    iget-object v0, p0, Lorg/apache/log4j/net/SocketAppender;->zeroConf:Lorg/apache/log4j/net/ZeroConfSupport;

    invoke-virtual {v0}, Lorg/apache/log4j/net/ZeroConfSupport;->advertise()V

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/net/SocketAppender;->address:Ljava/net/InetAddress;

    iget v1, p0, Lorg/apache/log4j/net/SocketAppender;->port:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/log4j/net/SocketAppender;->connect(Ljava/net/InetAddress;I)V

    .line 175
    return-void
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 4
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    const/4 v3, 0x0

    .line 244
    if-nez p1, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v1, p0, Lorg/apache/log4j/net/SocketAppender;->address:Ljava/net/InetAddress;

    if-nez v1, :cond_2

    .line 248
    iget-object v1, p0, Lorg/apache/log4j/net/SocketAppender;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No remote host is set for SocketAppender named \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/log4j/net/SocketAppender;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_2
    iget-object v1, p0, Lorg/apache/log4j/net/SocketAppender;->oos:Ljava/io/ObjectOutputStream;

    if-eqz v1, :cond_0

    .line 256
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/log4j/net/SocketAppender;->locationInfo:Z

    if-eqz v1, :cond_3

    .line 257
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    .line 259
    :cond_3
    iget-object v1, p0, Lorg/apache/log4j/net/SocketAppender;->application:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 260
    const-string v1, "application"

    iget-object v2, p0, Lorg/apache/log4j/net/SocketAppender;->application:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/apache/log4j/spi/LoggingEvent;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_4
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    .line 263
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    .line 264
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getMDCCopy()V

    .line 265
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getRenderedMessage()Ljava/lang/String;

    .line 266
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    .line 268
    iget-object v1, p0, Lorg/apache/log4j/net/SocketAppender;->oos:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 270
    iget-object v1, p0, Lorg/apache/log4j/net/SocketAppender;->oos:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 271
    iget v1, p0, Lorg/apache/log4j/net/SocketAppender;->counter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/log4j/net/SocketAppender;->counter:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 272
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/log4j/net/SocketAppender;->counter:I

    .line 276
    iget-object v1, p0, Lorg/apache/log4j/net/SocketAppender;->oos:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/io/IOException;
    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_5

    .line 280
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 282
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/log4j/net/SocketAppender;->oos:Ljava/io/ObjectOutputStream;

    .line 283
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Detected problem with connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 284
    iget v1, p0, Lorg/apache/log4j/net/SocketAppender;->reconnectionDelay:I

    if-lez v1, :cond_6

    .line 285
    invoke-virtual {p0}, Lorg/apache/log4j/net/SocketAppender;->fireConnector()V

    goto/16 :goto_0

    .line 287
    :cond_6
    iget-object v1, p0, Lorg/apache/log4j/net/SocketAppender;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    const-string v2, "Detected problem with connection, not reconnecting."

    invoke-interface {v1, v2, v0, v3}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto/16 :goto_0
.end method

.method public cleanUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 200
    iget-object v1, p0, Lorg/apache/log4j/net/SocketAppender;->oos:Ljava/io/ObjectOutputStream;

    if-eqz v1, :cond_0

    .line 202
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/net/SocketAppender;->oos:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    iput-object v3, p0, Lorg/apache/log4j/net/SocketAppender;->oos:Ljava/io/ObjectOutputStream;

    .line 211
    :cond_0
    iget-object v1, p0, Lorg/apache/log4j/net/SocketAppender;->connector:Lorg/apache/log4j/net/SocketAppender$Connector;

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lorg/apache/log4j/net/SocketAppender;->connector:Lorg/apache/log4j/net/SocketAppender$Connector;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/apache/log4j/net/SocketAppender$Connector;->interrupted:Z

    .line 214
    iput-object v3, p0, Lorg/apache/log4j/net/SocketAppender;->connector:Lorg/apache/log4j/net/SocketAppender$Connector;

    .line 216
    :cond_1
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/io/IOException;
    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_2

    .line 205
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 207
    :cond_2
    const-string v1, "Could not close oos."

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketAppender;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 193
    :goto_0
    monitor-exit p0

    return-void

    .line 187
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/apache/log4j/net/SocketAppender;->closed:Z

    .line 188
    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketAppender;->advertiseViaMulticastDNS:Z

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lorg/apache/log4j/net/SocketAppender;->zeroConf:Lorg/apache/log4j/net/ZeroConfSupport;

    invoke-virtual {v0}, Lorg/apache/log4j/net/ZeroConfSupport;->unadvertise()V

    .line 192
    :cond_1
    invoke-virtual {p0}, Lorg/apache/log4j/net/SocketAppender;->cleanUp()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method connect(Ljava/net/InetAddress;I)V
    .locals 4
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    .line 219
    iget-object v2, p0, Lorg/apache/log4j/net/SocketAppender;->address:Ljava/net/InetAddress;

    if-nez v2, :cond_0

    .line 240
    :goto_0
    return-void

    .line 223
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/log4j/net/SocketAppender;->cleanUp()V

    .line 224
    new-instance v2, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3, p1, p2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lorg/apache/log4j/net/SocketAppender;->oos:Ljava/io/ObjectOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/io/IOException;
    instance-of v2, v0, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_1

    .line 227
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 229
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not connect to remote log4j server at ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "msg":Ljava/lang/String;
    iget v2, p0, Lorg/apache/log4j/net/SocketAppender;->reconnectionDelay:I

    if-lez v2, :cond_2

    .line 232
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " We will try again later."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-virtual {p0}, Lorg/apache/log4j/net/SocketAppender;->fireConnector()V

    .line 238
    :goto_1
    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " We are not retrying."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    iget-object v2, p0, Lorg/apache/log4j/net/SocketAppender;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_1
.end method

.method fireConnector()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 303
    iget-object v0, p0, Lorg/apache/log4j/net/SocketAppender;->connector:Lorg/apache/log4j/net/SocketAppender$Connector;

    if-nez v0, :cond_0

    .line 304
    const-string v0, "Starting a new connector thread."

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 305
    new-instance v0, Lorg/apache/log4j/net/SocketAppender$Connector;

    invoke-direct {v0, p0}, Lorg/apache/log4j/net/SocketAppender$Connector;-><init>(Lorg/apache/log4j/net/SocketAppender;)V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketAppender;->connector:Lorg/apache/log4j/net/SocketAppender$Connector;

    .line 306
    iget-object v0, p0, Lorg/apache/log4j/net/SocketAppender;->connector:Lorg/apache/log4j/net/SocketAppender$Connector;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/net/SocketAppender$Connector;->setDaemon(Z)V

    .line 307
    iget-object v0, p0, Lorg/apache/log4j/net/SocketAppender;->connector:Lorg/apache/log4j/net/SocketAppender$Connector;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/net/SocketAppender$Connector;->setPriority(I)V

    .line 308
    iget-object v0, p0, Lorg/apache/log4j/net/SocketAppender;->connector:Lorg/apache/log4j/net/SocketAppender$Connector;

    invoke-virtual {v0}, Lorg/apache/log4j/net/SocketAppender$Connector;->start()V

    .line 310
    :cond_0
    return-void
.end method

.method public getApplication()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lorg/apache/log4j/net/SocketAppender;->application:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationInfo()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketAppender;->locationInfo:Z

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lorg/apache/log4j/net/SocketAppender;->port:I

    return v0
.end method

.method public getReconnectionDelay()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lorg/apache/log4j/net/SocketAppender;->reconnectionDelay:I

    return v0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lorg/apache/log4j/net/SocketAppender;->remoteHost:Ljava/lang/String;

    return-object v0
.end method

.method public isAdvertiseViaMulticastDNS()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketAppender;->advertiseViaMulticastDNS:Z

    return v0
.end method

.method public requiresLayout()Z
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method public setAdvertiseViaMulticastDNS(Z)V
    .locals 0
    .param p1, "advertiseViaMulticastDNS"    # Z

    .prologue
    .line 295
    iput-boolean p1, p0, Lorg/apache/log4j/net/SocketAppender;->advertiseViaMulticastDNS:Z

    .line 296
    return-void
.end method

.method public setApplication(Ljava/lang/String;)V
    .locals 0
    .param p1, "lapp"    # Ljava/lang/String;

    .prologue
    .line 388
    iput-object p1, p0, Lorg/apache/log4j/net/SocketAppender;->application:Ljava/lang/String;

    .line 389
    return-void
.end method

.method public setLocationInfo(Z)V
    .locals 0
    .param p1, "locationInfo"    # Z

    .prologue
    .line 371
    iput-boolean p1, p0, Lorg/apache/log4j/net/SocketAppender;->locationInfo:Z

    .line 372
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 355
    iput p1, p0, Lorg/apache/log4j/net/SocketAppender;->port:I

    .line 356
    return-void
.end method

.method public setReconnectionDelay(I)V
    .locals 0
    .param p1, "delay"    # I

    .prologue
    .line 409
    iput p1, p0, Lorg/apache/log4j/net/SocketAppender;->reconnectionDelay:I

    .line 410
    return-void
.end method

.method public setRemoteHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 339
    invoke-static {p1}, Lorg/apache/log4j/net/SocketAppender;->getAddressByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/net/SocketAppender;->address:Ljava/net/InetAddress;

    .line 340
    iput-object p1, p0, Lorg/apache/log4j/net/SocketAppender;->remoteHost:Ljava/lang/String;

    .line 341
    return-void
.end method

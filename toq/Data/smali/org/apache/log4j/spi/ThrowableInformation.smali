.class public Lorg/apache/log4j/spi/ThrowableInformation;
.super Ljava/lang/Object;
.source "ThrowableInformation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = -0x41e7011f7e8df0afL


# instance fields
.field private transient category:Lorg/apache/log4j/Category;

.field private rep:[Ljava/lang/String;

.field private transient throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/log4j/spi/ThrowableInformation;->throwable:Ljava/lang/Throwable;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lorg/apache/log4j/Category;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "category"    # Lorg/apache/log4j/Category;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/log4j/spi/ThrowableInformation;->throwable:Ljava/lang/Throwable;

    .line 57
    iput-object p2, p0, Lorg/apache/log4j/spi/ThrowableInformation;->category:Lorg/apache/log4j/Category;

    .line 58
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "r"    # [Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/log4j/spi/ThrowableInformation;->rep:[Ljava/lang/String;

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/log4j/spi/ThrowableInformation;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public declared-synchronized getThrowableStrRep()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/log4j/spi/ThrowableInformation;->rep:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "renderer":Lorg/apache/log4j/spi/ThrowableRenderer;
    iget-object v2, p0, Lorg/apache/log4j/spi/ThrowableInformation;->category:Lorg/apache/log4j/Category;

    if-eqz v2, :cond_0

    .line 81
    iget-object v2, p0, Lorg/apache/log4j/spi/ThrowableInformation;->category:Lorg/apache/log4j/Category;

    invoke-virtual {v2}, Lorg/apache/log4j/Category;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    .line 82
    .local v1, "repo":Lorg/apache/log4j/spi/LoggerRepository;
    instance-of v2, v1, Lorg/apache/log4j/spi/ThrowableRendererSupport;

    if-eqz v2, :cond_0

    .line 83
    check-cast v1, Lorg/apache/log4j/spi/ThrowableRendererSupport;

    .end local v1    # "repo":Lorg/apache/log4j/spi/LoggerRepository;
    invoke-interface {v1}, Lorg/apache/log4j/spi/ThrowableRendererSupport;->getThrowableRenderer()Lorg/apache/log4j/spi/ThrowableRenderer;

    move-result-object v0

    .line 86
    :cond_0
    if-nez v0, :cond_2

    .line 87
    iget-object v2, p0, Lorg/apache/log4j/spi/ThrowableInformation;->throwable:Ljava/lang/Throwable;

    invoke-static {v2}, Lorg/apache/log4j/DefaultThrowableRenderer;->render(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/spi/ThrowableInformation;->rep:[Ljava/lang/String;

    .line 92
    .end local v0    # "renderer":Lorg/apache/log4j/spi/ThrowableRenderer;
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/apache/log4j/spi/ThrowableInformation;->rep:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 89
    .restart local v0    # "renderer":Lorg/apache/log4j/spi/ThrowableRenderer;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lorg/apache/log4j/spi/ThrowableInformation;->throwable:Ljava/lang/Throwable;

    invoke-interface {v0, v2}, Lorg/apache/log4j/spi/ThrowableRenderer;->doRender(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/log4j/spi/ThrowableInformation;->rep:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 78
    .end local v0    # "renderer":Lorg/apache/log4j/spi/ThrowableRenderer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

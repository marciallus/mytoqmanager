.class public Lorg/alljoyn/ns/transport/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# static fields
.field private static final SELF:Lorg/alljoyn/ns/transport/TaskManager;

.field private static final TAG:Ljava/lang/String;

.field private static final THREAD_CORE_NUM:I = 0x4

.field private static final THREAD_MAX_NUM:I = 0xa

.field private static final THREAD_TTL:J = 0x3L

.field private static final TTL_TIME_UNIT:Ljava/util/concurrent/TimeUnit;


# instance fields
.field private volatile isValid:Z

.field private nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

.field private taskQueue:Ljava/util/concurrent/ExecutorService;

.field private threadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ioe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ns/transport/TaskManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ns/transport/TaskManager;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Lorg/alljoyn/ns/transport/TaskManager;

    invoke-direct {v0}, Lorg/alljoyn/ns/transport/TaskManager;-><init>()V

    sput-object v0, Lorg/alljoyn/ns/transport/TaskManager;->SELF:Lorg/alljoyn/ns/transport/TaskManager;

    .line 61
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lorg/alljoyn/ns/transport/TaskManager;->TTL_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkValid()V
    .locals 2

    .prologue
    .line 177
    iget-boolean v0, p0, Lorg/alljoyn/ns/transport/TaskManager;->isValid:Z

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The WorkPoolManager has not been initialized. The initPool mathod should have been invoked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    return-void
.end method

.method public static getInstance()Lorg/alljoyn/ns/transport/TaskManager;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lorg/alljoyn/ns/transport/TaskManager;->SELF:Lorg/alljoyn/ns/transport/TaskManager;

    return-object v0
.end method

.method private initTaskQueue()V
    .locals 1

    .prologue
    .line 203
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/ns/transport/TaskManager;->taskQueue:Ljava/util/concurrent/ExecutorService;

    .line 204
    return-void
.end method

.method private initThreadPool()V
    .locals 8

    .prologue
    .line 188
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x4

    const/16 v2, 0xa

    const-wide/16 v3, 0x3

    sget-object v5, Lorg/alljoyn/ns/transport/TaskManager;->TTL_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/concurrent/SynchronousQueue;-><init>(Z)V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lorg/alljoyn/ns/transport/TaskManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 196
    iget-object v0, p0, Lorg/alljoyn/ns/transport/TaskManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 197
    return-void
.end method


# virtual methods
.method public enqueue(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 129
    invoke-direct {p0}, Lorg/alljoyn/ns/transport/TaskManager;->checkValid()V

    .line 130
    iget-object v0, p0, Lorg/alljoyn/ns/transport/TaskManager;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v0}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v0

    sget-object v1, Lorg/alljoyn/ns/transport/TaskManager;->TAG:Ljava/lang/String;

    const-string v2, "Enqueueing task to be executed"

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lorg/alljoyn/ns/transport/TaskManager;->taskQueue:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 132
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 115
    invoke-direct {p0}, Lorg/alljoyn/ns/transport/TaskManager;->checkValid()V

    .line 116
    iget-object v0, p0, Lorg/alljoyn/ns/transport/TaskManager;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v0}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v0

    sget-object v1, Lorg/alljoyn/ns/transport/TaskManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing task, Current Thread pool size: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ns/transport/TaskManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'Number of currently working threads: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ns/transport/TaskManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lorg/alljoyn/ns/transport/TaskManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method

.method public initPool(Lorg/alljoyn/ns/commons/NativePlatform;)V
    .locals 3
    .param p1, "nativePlatform"    # Lorg/alljoyn/ns/commons/NativePlatform;

    .prologue
    .line 102
    invoke-interface {p1}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v0

    sget-object v1, Lorg/alljoyn/ns/transport/TaskManager;->TAG:Ljava/lang/String;

    const-string v2, "Initializing TaskManager"

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iput-object p1, p0, Lorg/alljoyn/ns/transport/TaskManager;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    .line 104
    invoke-direct {p0}, Lorg/alljoyn/ns/transport/TaskManager;->initThreadPool()V

    .line 105
    invoke-direct {p0}, Lorg/alljoyn/ns/transport/TaskManager;->initTaskQueue()V

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/alljoyn/ns/transport/TaskManager;->isValid:Z

    .line 107
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lorg/alljoyn/ns/transport/TaskManager;->isValid:Z

    return v0
.end method

.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .prologue
    .line 165
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "Failed to execute the given task, all the worker threads are busy"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shutdown()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 147
    iget-object v0, p0, Lorg/alljoyn/ns/transport/TaskManager;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v0}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v0

    sget-object v1, Lorg/alljoyn/ns/transport/TaskManager;->TAG:Ljava/lang/String;

    const-string v2, "Shutting down TaskManager"

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/alljoyn/ns/transport/TaskManager;->isValid:Z

    .line 149
    iget-object v0, p0, Lorg/alljoyn/ns/transport/TaskManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/alljoyn/ns/transport/TaskManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/alljoyn/ns/transport/TaskManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 151
    iput-object v3, p0, Lorg/alljoyn/ns/transport/TaskManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 154
    :cond_0
    iget-object v0, p0, Lorg/alljoyn/ns/transport/TaskManager;->taskQueue:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/alljoyn/ns/transport/TaskManager;->taskQueue:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lorg/alljoyn/ns/transport/TaskManager;->taskQueue:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 156
    iput-object v3, p0, Lorg/alljoyn/ns/transport/TaskManager;->taskQueue:Ljava/util/concurrent/ExecutorService;

    .line 158
    :cond_1
    return-void
.end method

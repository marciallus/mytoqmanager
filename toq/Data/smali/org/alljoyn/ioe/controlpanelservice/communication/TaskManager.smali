.class public Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# static fields
.field private static final SELF:Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;

.field private static final TAG:Ljava/lang/String;

.field private static final THREAD_CORE_NUM:I = 0x4

.field private static final THREAD_MAX_NUM:I = 0xa

.field private static final THREAD_TTL:J = 0x3L

.field private static final TTL_TIME_UNIT:Ljava/util/concurrent/TimeUnit;


# instance fields
.field private volatile isValid:Z

.field private taskQueue:Ljava/util/concurrent/ExecutorService;

.field private threadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->TAG:Ljava/lang/String;

    .line 40
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;

    invoke-direct {v0}, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;-><init>()V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->SELF:Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;

    .line 55
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->TTL_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkValid()V
    .locals 2

    .prologue
    .line 170
    iget-boolean v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->isValid:Z

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The WorkPoolManager has not been initialized. The initPool mathod should have been invoked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    return-void
.end method

.method public static getInstance()Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->SELF:Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;

    return-object v0
.end method

.method private initTaskQueue()V
    .locals 1

    .prologue
    .line 196
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->taskQueue:Ljava/util/concurrent/ExecutorService;

    .line 197
    return-void
.end method

.method private initThreadPool()V
    .locals 8

    .prologue
    .line 181
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x4

    const/16 v2, 0xa

    const-wide/16 v3, 0x3

    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->TTL_TIME_UNIT:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/concurrent/SynchronousQueue;-><init>(Z)V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 189
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 190
    return-void
.end method


# virtual methods
.method public enqueue(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 122
    invoke-direct {p0}, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->checkValid()V

    .line 123
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->TAG:Ljava/lang/String;

    const-string v1, "Enqueueing task to be executed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->taskQueue:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 108
    invoke-direct {p0}, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->checkValid()V

    .line 109
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing task, Current Thread pool size: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', \'Number of currently working threads: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public initPool()V
    .locals 2

    .prologue
    .line 96
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->TAG:Ljava/lang/String;

    const-string v1, "Initializing TaskManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-direct {p0}, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->initThreadPool()V

    .line 98
    invoke-direct {p0}, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->initTaskQueue()V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->isValid:Z

    .line 100
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->isValid:Z

    return v0
.end method

.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .prologue
    .line 158
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v1, "Failed to execute the given task, all the worker threads are busy"

    invoke-direct {v0, v1}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shutdown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 140
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->TAG:Ljava/lang/String;

    const-string v1, "Shutting down TaskManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->isValid:Z

    .line 142
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 144
    iput-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->taskQueue:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->taskQueue:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->taskQueue:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 149
    iput-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->taskQueue:Ljava/util/concurrent/ExecutorService;

    .line 151
    :cond_1
    return-void
.end method

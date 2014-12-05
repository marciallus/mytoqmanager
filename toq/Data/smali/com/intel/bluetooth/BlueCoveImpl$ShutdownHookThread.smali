.class Lcom/intel/bluetooth/BlueCoveImpl$ShutdownHookThread;
.super Ljava/lang/Thread;
.source "BlueCoveImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/bluetooth/BlueCoveImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutdownHookThread"
.end annotation


# instance fields
.field shutdownHookThread:Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;

.field final synthetic this$0:Lcom/intel/bluetooth/BlueCoveImpl;


# direct methods
.method constructor <init>(Lcom/intel/bluetooth/BlueCoveImpl;Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;)V
    .locals 1
    .param p2, "shutdownHookThread"    # Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/intel/bluetooth/BlueCoveImpl$ShutdownHookThread;->this$0:Lcom/intel/bluetooth/BlueCoveImpl;

    .line 274
    const-string v0, "BluecoveShutdownHookThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 275
    iput-object p2, p0, Lcom/intel/bluetooth/BlueCoveImpl$ShutdownHookThread;->shutdownHookThread:Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;

    .line 276
    return-void
.end method


# virtual methods
.method deRegister()V
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/intel/bluetooth/BlueCoveImpl;->access$1(Lcom/intel/bluetooth/BlueCoveImpl$ShutdownHookThread;)V

    .line 294
    invoke-static {p0}, Lcom/intel/bluetooth/UtilsJavaSE;->runtimeRemoveShutdownHook(Ljava/lang/Thread;)V

    .line 295
    iget-object v0, p0, Lcom/intel/bluetooth/BlueCoveImpl$ShutdownHookThread;->shutdownHookThread:Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;

    invoke-virtual {v0}, Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;->deRegister()V

    .line 296
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 279
    iget-object v1, p0, Lcom/intel/bluetooth/BlueCoveImpl$ShutdownHookThread;->shutdownHookThread:Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;

    iget-object v0, v1, Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;->monitor:Ljava/lang/Object;

    .line 280
    .local v0, "monitor":Ljava/lang/Object;
    monitor-enter v0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/intel/bluetooth/BlueCoveImpl$ShutdownHookThread;->shutdownHookThread:Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;

    const/4 v2, 0x1

    iput v2, v1, Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;->shutdownStart:I

    .line 282
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 283
    # getter for: Lcom/intel/bluetooth/BlueCoveImpl;->stacks:Ljava/util/Hashtable;
    invoke-static {}, Lcom/intel/bluetooth/BlueCoveImpl;->access$0()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 285
    const-wide/16 v1, 0x1b58

    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 290
    return-void

    .line 280
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 286
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.class Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;
.super Ljava/lang/Thread;
.source "BlueCoveImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/bluetooth/BlueCoveImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsynchronousShutdownThread"
.end annotation


# instance fields
.field final monitor:Ljava/lang/Object;

.field shutdownStart:I

.field final synthetic this$0:Lcom/intel/bluetooth/BlueCoveImpl;


# direct methods
.method constructor <init>(Lcom/intel/bluetooth/BlueCoveImpl;)V
    .locals 1

    .prologue
    .line 224
    iput-object p1, p0, Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;->this$0:Lcom/intel/bluetooth/BlueCoveImpl;

    .line 225
    const-string v0, "BluecoveAsynchronousShutdownThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 220
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;->monitor:Ljava/lang/Object;

    .line 222
    const/4 v0, 0x0

    iput v0, p0, Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;->shutdownStart:I

    .line 226
    return-void
.end method


# virtual methods
.method deRegister()V
    .locals 2

    .prologue
    .line 262
    const/4 v0, -0x1

    iput v0, p0, Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;->shutdownStart:I

    .line 263
    iget-object v1, p0, Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;->monitor:Ljava/lang/Object;

    monitor-enter v1

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;->monitor:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 263
    monitor-exit v1

    .line 266
    return-void

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 229
    iget-object v4, p0, Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;->monitor:Ljava/lang/Object;

    monitor-enter v4

    .line 230
    :goto_0
    :try_start_0
    iget v3, p0, Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;->shutdownStart:I

    if-eqz v3, :cond_0

    .line 229
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    iget v3, p0, Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;->shutdownStart:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 259
    :goto_1
    return-void

    .line 232
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;->monitor:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    monitor-exit v4

    goto :goto_1

    .line 229
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 241
    :cond_1
    # getter for: Lcom/intel/bluetooth/BlueCoveImpl;->stacks:Ljava/util/Hashtable;
    invoke-static {}, Lcom/intel/bluetooth/BlueCoveImpl;->access$0()Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 242
    # getter for: Lcom/intel/bluetooth/BlueCoveImpl;->stacks:Ljava/util/Hashtable;
    invoke-static {}, Lcom/intel/bluetooth/BlueCoveImpl;->access$0()Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "en":Ljava/util/Enumeration;
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_4

    .line 253
    # getter for: Lcom/intel/bluetooth/BlueCoveImpl;->stacks:Ljava/util/Hashtable;
    invoke-static {}, Lcom/intel/bluetooth/BlueCoveImpl;->access$0()Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 254
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "BlueCove stack shutdown completed"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 256
    .end local v1    # "en":Ljava/util/Enumeration;
    :cond_3
    iget-object v4, p0, Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;->monitor:Ljava/lang/Object;

    monitor-enter v4

    .line 257
    :try_start_3
    iget-object v3, p0, Lcom/intel/bluetooth/BlueCoveImpl$AsynchronousShutdownThread;->monitor:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 256
    monitor-exit v4

    goto :goto_1

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 244
    .restart local v1    # "en":Ljava/util/Enumeration;
    :cond_4
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;

    .line 245
    .local v2, "s":Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;
    # getter for: Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v2}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$0(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 247
    :try_start_4
    # getter for: Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;
    invoke-static {v2}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$0(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;)Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v3

    invoke-interface {v3}, Lcom/intel/bluetooth/BluetoothStack;->destroy()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 249
    invoke-static {v2, v5}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$1(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;Lcom/intel/bluetooth/BluetoothStack;)V

    goto :goto_2

    .line 248
    :catchall_2
    move-exception v3

    .line 249
    invoke-static {v2, v5}, Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;->access$1(Lcom/intel/bluetooth/BlueCoveImpl$BluetoothStackHolder;Lcom/intel/bluetooth/BluetoothStack;)V

    .line 250
    throw v3
.end method

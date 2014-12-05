.class Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;
.super Ljava/lang/Thread;
.source "BTConnectionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcceptThread"
.end annotation


# instance fields
.field private mmServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private serverSocket:Landroid/bluetooth/BluetoothSocket;

.field private volatile stop:Z

.field final synthetic this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 222
    iput-object p1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 218
    iput-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->mmServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 219
    iput-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->serverSocket:Landroid/bluetooth/BluetoothSocket;

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->stop:Z

    .line 223
    const-string v0, "BTConnectionListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called AcceptThread constructor of device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v2

    iget-object v3, p1, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method private declared-synchronized closeSocket()V
    .locals 4

    .prologue
    .line 374
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->serverSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_0

    .line 375
    const-string v1, "BTConnectionListener"

    const-string v2, "serverSocket: close() "

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->serverSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 377
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->serverSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BTConnectionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close() of serverSocket failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 374
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 363
    const-string v0, "BTConnectionListener"

    const-string v1, "AcceptThread: cancel() "

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-direct {p0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->closeSocket()V

    .line 367
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->closeServerSocket()V

    .line 368
    return-void
.end method

.method public declared-synchronized closeServerSocket()V
    .locals 4

    .prologue
    .line 388
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->mmServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v1, :cond_0

    .line 389
    const-string v1, "BTConnectionListener"

    const-string v2, "mmServerSocket: close() "

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->mmServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    .line 391
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->mmServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BTConnectionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close() of mmServerSocket failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 388
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x1

    .line 228
    const-string v1, "BTConnectionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AcceptThread: endpoint type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    iget-object v3, v3, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v1, "AcceptThread"

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->setName(Ljava/lang/String;)V

    .line 233
    :goto_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    # getter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mSPPState:I
    invoke-static {v1}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$000(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)I

    move-result v1

    if-ne v1, v6, :cond_6

    iget-boolean v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->stop:Z

    if-nez v1, :cond_6

    .line 236
    :try_start_0
    const-string v1, "BTConnectionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inside AcceptThread of device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    iget-object v4, v4, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v4}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->mmServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    if-nez v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    iget-object v1, v1, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    if-nez v1, :cond_3

    .line 242
    const-string v1, "BTConnectionListener"

    const-string v2, "Listening to  Socket connection for WD"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const-string v2, "PHubCommServer"

    # getter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->SERVER_WD_UUID:Ljava/util/UUID;
    invoke-static {}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$100()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->mmServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 267
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->mmServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v1, :cond_1

    .line 268
    const-string v1, "BTConnectionListener"

    const-string v2, "EPMessage:Waiting for incoming connection..."

    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    iget-object v3, v3, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x7

    invoke-static {v1, v2, v3, v4, v5}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 274
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->mmServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->accept()Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->serverSocket:Landroid/bluetooth/BluetoothSocket;

    .line 275
    const-string v1, "BTConnectionListener"

    const-string v2, "A succssful connection estabished through Server Socket"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v1, "BTConnectionListener"

    const-string v2, "EPMessage:Accepted incoming connection..."

    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    iget-object v3, v3, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x7

    invoke-static {v1, v2, v3, v4, v5}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 285
    :cond_1
    const-string v1, "BTConnectionListener"

    const-string v2, "AcceptThread: called: mmServerSocket.accept() completed"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :goto_2
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->serverSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_2

    .line 306
    iget-object v2, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    monitor-enter v2

    .line 307
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    # getter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mSPPState:I
    invoke-static {v1}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$000(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 339
    const-string v1, "BTConnectionListener"

    const-string v3, "closing SPP server socket as already in STATE_CONNECTED"

    invoke-static {v1, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->cancel()V

    .line 345
    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    :cond_2
    const-string v1, "BTConnectionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AcceptThread: End of while loop of device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    iget-object v4, v4, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v4}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 249
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    iget-object v1, v1, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 250
    const-string v1, "BTConnectionListener"

    const-string v2, "Listening to  Socket connection for Left EP"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const-string v2, "EPLCommServer"

    # getter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->SERVER_EP_L_UUID:Ljava/util/UUID;
    invoke-static {}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$200()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->mmServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BTConnectionListener"

    const-string v2, "AcceptThread: accept() failed"

    invoke-static {v1, v2, v0}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    const-string v1, "BTConnectionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AcceptThread: accept() failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v1, "BTConnectionListener"

    const-string v2, "EPMessage:Exited from incoming connection..."

    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    iget-object v3, v3, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    invoke-static {v1, v2, v3, v6, v7}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 299
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 301
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->cancel()V

    goto/16 :goto_2

    .line 256
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_3
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    iget-object v1, v1, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 257
    const-string v1, "BTConnectionListener"

    const-string v2, "Listening to  Socket connection for Right EP"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const-string v2, "EPRCommServer"

    # getter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->SERVER_EP_R_UUID:Ljava/util/UUID;
    invoke-static {}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$300()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->mmServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 309
    :pswitch_0
    :try_start_4
    const-string v1, "BTConnectionListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AcceptThread: SPP Server accepted the incoming connection... Incoming BT address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->serverSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Associated Device Adress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    iget-object v4, v4, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v4}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->serverSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    iget-object v3, v3, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 319
    const-string v1, "BTConnectionListener"

    const-string v3, "AcceptThread: Incoming connection Success"

    invoke-static {v1, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v1, "BTConnectionListener"

    const-string v3, "AcceptThread: Incoming connection Success"

    invoke-static {v1, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v1, "BTConnectionListener"

    const-string v3, "Initiate ConnectedThread by SPP Server"

    invoke-static {v1, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->serverSocket:Landroid/bluetooth/BluetoothSocket;

    iget-object v4, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->serverSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->connectionSuccess(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_3

    .line 345
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 331
    :cond_5
    :try_start_5
    const-string v1, "BTConnectionListener"

    const-string v3, "AcceptThread: SPP server in connected state, but address didn\'t match!!!"

    invoke-static {v1, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->cancel()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .line 352
    :cond_6
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    # getter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mSPPState:I
    invoke-static {v1}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$000(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_7

    .line 353
    const-string v1, "BTConnectionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End of AcceptThread and state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    # getter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mSPPState:I
    invoke-static {v3}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$000(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->cancel()V

    .line 356
    :cond_7
    return-void

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public stopAcceptThread()V
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$AcceptThread;->stop:Z

    .line 360
    return-void
.end method

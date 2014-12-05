.class Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;
.super Ljava/lang/Thread;
.source "BTConnectionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectThread"
.end annotation


# instance fields
.field private final mmDevice:Landroid/bluetooth/BluetoothDevice;

.field private mmSocket:Landroid/bluetooth/BluetoothSocket;

.field final synthetic this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 539
    iput-object p1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 536
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    .line 540
    iput-object p2, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    .line 541
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 639
    :try_start_0
    const-string v1, "BTConnectionListener"

    const-string v2, "ConnectThread cancel() called"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_0

    .line 641
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 643
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    :goto_0
    return-void

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BTConnectionListener"

    const-string v2, "close() of connect socket failed"

    invoke-static {v1, v2, v0}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 544
    const-string v3, "BTConnectionListener"

    const-string v4, "BEGIN mConnectThread"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v3, "ConnectThread"

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->setName(Ljava/lang/String;)V

    .line 551
    :try_start_0
    const-string v3, "BTConnectionListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "End Point Type while Connect = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    iget-object v5, v5, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v5}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const/4 v1, 0x0

    .line 554
    .local v1, "isDeviceAssociated":Z
    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    iget-object v3, v3, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    if-nez v3, :cond_3

    .line 555
    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    iget-object v4, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isWDDeviceAssociated(Ljava/lang/String;)Z

    move-result v1

    .line 556
    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    # getter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->CLIENT_WD_UUID:Ljava/util/UUID;
    invoke-static {}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$400()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    .line 573
    :cond_0
    :goto_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 575
    .local v2, "telphonyManager":Landroid/telephony/TelephonyManager;
    const-string v3, "BTConnectionListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call state value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    if-eqz v1, :cond_1

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eq v3, v6, :cond_1

    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    iget-object v3, v3, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    if-eq v3, v7, :cond_2

    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    iget-object v3, v3, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    if-ne v3, v6, :cond_5

    .line 583
    :cond_2
    const-string v3, "BTConnectionListener"

    const-string v4, "BT cancelDiscovery() called"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 589
    const-string v3, "BTConnectionListener"

    const-string v4, "BT Socket trying to connect"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v3, "BTConnectionListener"

    const-string v4, "BT Socket Trying to connect"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 595
    const-string v3, "BTConnectionListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BT Socket connected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v3, "BTConnectionListener"

    const-string v4, "BT Socket connected "

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    iget-object v4, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    monitor-enter v4

    .line 630
    :try_start_1
    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    const/4 v5, 0x0

    # setter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->mConnectThread:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;
    invoke-static {v3, v5}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$802(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;)Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;

    .line 631
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 634
    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    iget-object v4, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    iget-object v5, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4, v5}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->connectionSuccess(Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothDevice;)V

    .line 635
    .end local v1    # "isDeviceAssociated":Z
    .end local v2    # "telphonyManager":Landroid/telephony/TelephonyManager;
    :goto_1
    return-void

    .line 558
    .restart local v1    # "isDeviceAssociated":Z
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    iget-object v3, v3, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    if-ne v3, v7, :cond_4

    .line 559
    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    iget-object v4, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isEPLeftDeviceAssociated(Ljava/lang/String;)Z

    move-result v1

    .line 560
    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    # getter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->CLIENT_EP_L_UUID:Ljava/util/UUID;
    invoke-static {}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$500()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 616
    .end local v1    # "isDeviceAssociated":Z
    :catch_0
    move-exception v0

    .line 617
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "BTConnectionListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BTSocket Connect Failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string v3, "BTConnectionListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BTSocket Connect Failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 622
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->cancel()V

    .line 623
    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->connectionFailed()V

    goto :goto_1

    .line 562
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "isDeviceAssociated":Z
    :cond_4
    :try_start_3
    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    iget-object v3, v3, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 563
    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    iget-object v4, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isEPRightDeviceAssociated(Ljava/lang/String;)Z

    move-result v1

    .line 564
    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->mmDevice:Landroid/bluetooth/BluetoothDevice;

    # getter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->CLIENT_EP_R_UUID:Ljava/util/UUID;
    invoke-static {}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$600()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->mmSocket:Landroid/bluetooth/BluetoothSocket;

    goto/16 :goto_0

    .line 601
    .restart local v2    # "telphonyManager":Landroid/telephony/TelephonyManager;
    :cond_5
    const-string v3, "BTConnectionListener"

    const-string v4, "Not Associated: Device to connect is different from the associated Device or an Active call can be present"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->cancel()V

    .line 605
    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    # getter for: Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->isStopListenerCalled:Z
    invoke-static {v3}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->access$700(Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 606
    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener$ConnectThread;->this$0:Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->connectionFailed()V

    goto/16 :goto_1

    .line 609
    :cond_6
    const-string v3, "BTConnectionListener"

    const-string v4, "ConnectThread-- stopConnection already called, no need to set the state to failed. "

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 631
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3
.end method

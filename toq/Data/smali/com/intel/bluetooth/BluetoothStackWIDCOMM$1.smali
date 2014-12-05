.class Lcom/intel/bluetooth/BluetoothStackWIDCOMM$1;
.super Ljava/lang/Object;
.source "BluetoothStackWIDCOMM.java"

# interfaces
.implements Lcom/intel/bluetooth/DeviceInquiryRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->startInquiry(ILjavax/bluetooth/DiscoveryListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/bluetooth/BluetoothStackWIDCOMM;


# direct methods
.method constructor <init>(Lcom/intel/bluetooth/BluetoothStackWIDCOMM;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM$1;->this$0:Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deviceDiscoveredCallback(Ljavax/bluetooth/DiscoveryListener;JILjava/lang/String;Z)V
    .locals 7
    .param p1, "listener"    # Ljavax/bluetooth/DiscoveryListener;
    .param p2, "deviceAddr"    # J
    .param p4, "deviceClass"    # I
    .param p5, "deviceName"    # Ljava/lang/String;
    .param p6, "paired"    # Z

    .prologue
    .line 455
    const-string v5, "deviceDiscoveredCallback deviceName"

    invoke-static {v5, p5}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v5, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM$1;->this$0:Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    # getter for: Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->deviceDiscoveryListeners:Ljava/util/Vector;
    invoke-static {v5}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->access$0(Lcom/intel/bluetooth/BluetoothStackWIDCOMM;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    iget-object v5, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM$1;->this$0:Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    invoke-static {v5, p2, p3, p5, p6}, Lcom/intel/bluetooth/RemoteDeviceHelper;->createRemoteDevice(Lcom/intel/bluetooth/BluetoothStack;JLjava/lang/String;Z)Ljavax/bluetooth/RemoteDevice;

    move-result-object v3

    .line 464
    .local v3, "remoteDevice":Ljavax/bluetooth/RemoteDevice;
    iget-object v5, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM$1;->this$0:Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    # getter for: Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->deviceDiscoveryListenerReportedDevices:Ljava/util/Hashtable;
    invoke-static {v5}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->access$2(Lcom/intel/bluetooth/BluetoothStackWIDCOMM;)Ljava/util/Hashtable;

    move-result-object v5

    .line 465
    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Vector;

    .line 466
    .local v4, "reported":Ljava/util/Vector;
    if-eqz v4, :cond_0

    invoke-virtual {v4, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 470
    iget-object v5, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM$1;->this$0:Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    # getter for: Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->deviceDiscoveryListenerFoundDevices:Ljava/util/Hashtable;
    invoke-static {v5}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->access$1(Lcom/intel/bluetooth/BluetoothStackWIDCOMM;)Ljava/util/Hashtable;

    move-result-object v5

    .line 471
    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    .line 472
    .local v2, "previouslyFound":Ljava/util/Hashtable;
    if-eqz v2, :cond_3

    .line 474
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 475
    .local v1, "deviceClassInt":Ljava/lang/Integer;
    if-nez v1, :cond_2

    .line 476
    new-instance v5, Ljava/lang/Integer;

    .line 477
    invoke-direct {v5, p4}, Ljava/lang/Integer;-><init>(I)V

    .line 476
    invoke-virtual {v2, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 478
    :cond_2
    if-eqz p4, :cond_0

    .line 479
    new-instance v5, Ljava/lang/Integer;

    .line 480
    invoke-direct {v5, p4}, Ljava/lang/Integer;-><init>(I)V

    .line 479
    invoke-virtual {v2, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 483
    .end local v1    # "deviceClassInt":Ljava/lang/Integer;
    :cond_3
    new-instance v0, Ljavax/bluetooth/DeviceClass;

    invoke-direct {v0, p4}, Ljavax/bluetooth/DeviceClass;-><init>(I)V

    .line 484
    .local v0, "cod":Ljavax/bluetooth/DeviceClass;
    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 485
    const-string v5, "deviceDiscoveredCallback address"

    .line 486
    invoke-virtual {v3}, Ljavax/bluetooth/RemoteDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v6

    .line 485
    invoke-static {v5, v6}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v5, "deviceDiscoveredCallback deviceClass"

    invoke-static {v5, v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 488
    invoke-interface {p1, v3, v0}, Ljavax/bluetooth/DiscoveryListener;->deviceDiscovered(Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DeviceClass;)V

    goto :goto_0
.end method

.method public runDeviceInquiry(Lcom/intel/bluetooth/DeviceInquiryThread;ILjavax/bluetooth/DiscoveryListener;)I
    .locals 9
    .param p1, "startedNotify"    # Lcom/intel/bluetooth/DeviceInquiryThread;
    .param p2, "accessCode"    # I
    .param p3, "listener"    # Ljavax/bluetooth/DiscoveryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 408
    :try_start_0
    iget-object v7, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM$1;->this$0:Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    # invokes: Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->runDeviceInquiryImpl(Lcom/intel/bluetooth/DeviceInquiryRunnable;Lcom/intel/bluetooth/DeviceInquiryThread;ILjavax/bluetooth/DiscoveryListener;)I
    invoke-static {v7, p0, p1, p2, p3}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->access$3(Lcom/intel/bluetooth/BluetoothStackWIDCOMM;Lcom/intel/bluetooth/DeviceInquiryRunnable;Lcom/intel/bluetooth/DeviceInquiryThread;ILjavax/bluetooth/DiscoveryListener;)I

    move-result v2

    .line 410
    .local v2, "discType":I
    if-nez v2, :cond_1

    .line 412
    iget-object v7, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM$1;->this$0:Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    # getter for: Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->deviceDiscoveryListenerFoundDevices:Ljava/util/Hashtable;
    invoke-static {v7}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->access$1(Lcom/intel/bluetooth/BluetoothStackWIDCOMM;)Ljava/util/Hashtable;

    move-result-object v7

    .line 413
    invoke-virtual {v7, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable;

    .line 414
    .local v4, "previouslyFound":Ljava/util/Hashtable;
    if-eqz v4, :cond_1

    .line 415
    iget-object v7, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM$1;->this$0:Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    # getter for: Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->deviceDiscoveryListenerReportedDevices:Ljava/util/Hashtable;
    invoke-static {v7}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->access$2(Lcom/intel/bluetooth/BluetoothStackWIDCOMM;)Ljava/util/Hashtable;

    move-result-object v7

    .line 416
    invoke-virtual {v7, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Vector;

    .line 417
    .local v6, "reported":Ljava/util/Vector;
    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 418
    .local v3, "en":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 417
    if-nez v7, :cond_2

    .line 441
    .end local v3    # "en":Ljava/util/Enumeration;
    .end local v4    # "previouslyFound":Ljava/util/Hashtable;
    .end local v6    # "reported":Ljava/util/Vector;
    :cond_1
    iget-object v7, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM$1;->this$0:Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    # getter for: Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->deviceDiscoveryListeners:Ljava/util/Vector;
    invoke-static {v7}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->access$0(Lcom/intel/bluetooth/BluetoothStackWIDCOMM;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 442
    iget-object v7, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM$1;->this$0:Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    # getter for: Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->deviceDiscoveryListenerFoundDevices:Ljava/util/Hashtable;
    invoke-static {v7}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->access$1(Lcom/intel/bluetooth/BluetoothStackWIDCOMM;)Ljava/util/Hashtable;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    iget-object v7, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM$1;->this$0:Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    # getter for: Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->deviceDiscoveryListenerReportedDevices:Ljava/util/Hashtable;
    invoke-static {v7}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->access$2(Lcom/intel/bluetooth/BluetoothStackWIDCOMM;)Ljava/util/Hashtable;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .end local v2    # "discType":I
    :goto_0
    return v2

    .line 420
    .restart local v2    # "discType":I
    .restart local v3    # "en":Ljava/util/Enumeration;
    .restart local v4    # "previouslyFound":Ljava/util/Hashtable;
    .restart local v6    # "reported":Ljava/util/Vector;
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/bluetooth/RemoteDevice;

    .line 421
    .local v5, "remoteDevice":Ljavax/bluetooth/RemoteDevice;
    invoke-virtual {v6, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 424
    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 426
    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 427
    .local v1, "deviceClassInt":Ljava/lang/Integer;
    new-instance v0, Ljavax/bluetooth/DeviceClass;

    .line 428
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 427
    invoke-direct {v0, v7}, Ljavax/bluetooth/DeviceClass;-><init>(I)V

    .line 429
    .local v0, "deviceClass":Ljavax/bluetooth/DeviceClass;
    invoke-interface {p3, v5, v0}, Ljavax/bluetooth/DiscoveryListener;->deviceDiscovered(Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DeviceClass;)V

    .line 432
    iget-object v7, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM$1;->this$0:Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    # getter for: Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->deviceDiscoveryListeners:Ljava/util/Vector;
    invoke-static {v7}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->access$0(Lcom/intel/bluetooth/BluetoothStackWIDCOMM;)Ljava/util/Vector;

    move-result-object v7

    .line 433
    invoke-virtual {v7, p3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 441
    iget-object v7, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM$1;->this$0:Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    # getter for: Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->deviceDiscoveryListeners:Ljava/util/Vector;
    invoke-static {v7}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->access$0(Lcom/intel/bluetooth/BluetoothStackWIDCOMM;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 442
    iget-object v7, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM$1;->this$0:Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    # getter for: Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->deviceDiscoveryListenerFoundDevices:Ljava/util/Hashtable;
    invoke-static {v7}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->access$1(Lcom/intel/bluetooth/BluetoothStackWIDCOMM;)Ljava/util/Hashtable;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    iget-object v7, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM$1;->this$0:Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    # getter for: Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->deviceDiscoveryListenerReportedDevices:Ljava/util/Hashtable;
    invoke-static {v7}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->access$2(Lcom/intel/bluetooth/BluetoothStackWIDCOMM;)Ljava/util/Hashtable;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const/4 v2, 0x5

    goto :goto_0

    .line 440
    .end local v0    # "deviceClass":Ljavax/bluetooth/DeviceClass;
    .end local v1    # "deviceClassInt":Ljava/lang/Integer;
    .end local v2    # "discType":I
    .end local v3    # "en":Ljava/util/Enumeration;
    .end local v4    # "previouslyFound":Ljava/util/Hashtable;
    .end local v5    # "remoteDevice":Ljavax/bluetooth/RemoteDevice;
    .end local v6    # "reported":Ljava/util/Vector;
    :catchall_0
    move-exception v7

    .line 441
    iget-object v8, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM$1;->this$0:Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    # getter for: Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->deviceDiscoveryListeners:Ljava/util/Vector;
    invoke-static {v8}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->access$0(Lcom/intel/bluetooth/BluetoothStackWIDCOMM;)Ljava/util/Vector;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 442
    iget-object v8, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM$1;->this$0:Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    # getter for: Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->deviceDiscoveryListenerFoundDevices:Ljava/util/Hashtable;
    invoke-static {v8}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->access$1(Lcom/intel/bluetooth/BluetoothStackWIDCOMM;)Ljava/util/Hashtable;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    iget-object v8, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM$1;->this$0:Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    # getter for: Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->deviceDiscoveryListenerReportedDevices:Ljava/util/Hashtable;
    invoke-static {v8}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->access$2(Lcom/intel/bluetooth/BluetoothStackWIDCOMM;)Ljava/util/Hashtable;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    throw v7
.end method

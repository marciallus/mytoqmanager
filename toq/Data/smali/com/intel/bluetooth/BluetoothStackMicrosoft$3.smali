.class Lcom/intel/bluetooth/BluetoothStackMicrosoft$3;
.super Ljava/lang/Object;
.source "BluetoothStackMicrosoft.java"

# interfaces
.implements Lcom/intel/bluetooth/DeviceInquiryRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intel/bluetooth/BluetoothStackMicrosoft;->startInquiry(ILjavax/bluetooth/DiscoveryListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;


# direct methods
.method constructor <init>(Lcom/intel/bluetooth/BluetoothStackMicrosoft;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$3;->this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deviceDiscoveredCallback(Ljavax/bluetooth/DiscoveryListener;JILjava/lang/String;Z)V
    .locals 4
    .param p1, "listener"    # Ljavax/bluetooth/DiscoveryListener;
    .param p2, "deviceAddr"    # J
    .param p4, "deviceClass"    # I
    .param p5, "deviceName"    # Ljava/lang/String;
    .param p6, "paired"    # Z

    .prologue
    .line 481
    iget-object v2, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$3;->this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    invoke-static {v2, p2, p3, p5, p6}, Lcom/intel/bluetooth/RemoteDeviceHelper;->createRemoteDevice(Lcom/intel/bluetooth/BluetoothStack;JLjava/lang/String;Z)Ljavax/bluetooth/RemoteDevice;

    move-result-object v1

    .line 483
    .local v1, "remoteDevice":Ljavax/bluetooth/RemoteDevice;
    iget-object v2, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$3;->this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    # getter for: Lcom/intel/bluetooth/BluetoothStackMicrosoft;->currentDeviceDiscoveryListener:Ljavax/bluetooth/DiscoveryListener;
    invoke-static {v2}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->access$8(Lcom/intel/bluetooth/BluetoothStackMicrosoft;)Ljavax/bluetooth/DiscoveryListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 484
    iget-object v2, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$3;->this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    # getter for: Lcom/intel/bluetooth/BluetoothStackMicrosoft;->deviceDiscoveryDevices:Ljava/util/Hashtable;
    invoke-static {v2}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->access$7(Lcom/intel/bluetooth/BluetoothStackMicrosoft;)Ljava/util/Hashtable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 485
    iget-object v2, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$3;->this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    # getter for: Lcom/intel/bluetooth/BluetoothStackMicrosoft;->currentDeviceDiscoveryListener:Ljavax/bluetooth/DiscoveryListener;
    invoke-static {v2}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->access$8(Lcom/intel/bluetooth/BluetoothStackMicrosoft;)Ljavax/bluetooth/DiscoveryListener;

    move-result-object v2

    if-eq v2, p1, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    new-instance v0, Ljavax/bluetooth/DeviceClass;

    invoke-direct {v0, p4}, Ljavax/bluetooth/DeviceClass;-><init>(I)V

    .line 489
    .local v0, "cod":Ljavax/bluetooth/DeviceClass;
    const-string v2, "deviceDiscoveredCallback address"

    .line 490
    invoke-virtual {v1}, Ljavax/bluetooth/RemoteDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v3

    .line 489
    invoke-static {v2, v3}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v2, "deviceDiscoveredCallback deviceClass"

    invoke-static {v2, v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 492
    iget-object v2, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$3;->this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    # getter for: Lcom/intel/bluetooth/BluetoothStackMicrosoft;->deviceDiscoveryDevices:Ljava/util/Hashtable;
    invoke-static {v2}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->access$7(Lcom/intel/bluetooth/BluetoothStackMicrosoft;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public runDeviceInquiry(Lcom/intel/bluetooth/DeviceInquiryThread;ILjavax/bluetooth/DiscoveryListener;)I
    .locals 11
    .param p1, "inquiryThread"    # Lcom/intel/bluetooth/DeviceInquiryThread;
    .param p2, "accessCode"    # I
    .param p3, "listener"    # Ljavax/bluetooth/DiscoveryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$3;->this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    invoke-static {v0, v1}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->access$4(Lcom/intel/bluetooth/BluetoothStackMicrosoft;Ljava/util/Hashtable;)V

    .line 447
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$3;->this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    .line 450
    invoke-static {}, Lcom/intel/bluetooth/DeviceInquiryThread;->getConfigDeviceInquiryDuration()I

    move-result v4

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    .line 447
    # invokes: Lcom/intel/bluetooth/BluetoothStackMicrosoft;->runDeviceInquiryImpl(Lcom/intel/bluetooth/DeviceInquiryRunnable;Lcom/intel/bluetooth/DeviceInquiryThread;IILjavax/bluetooth/DiscoveryListener;)I
    invoke-static/range {v0 .. v5}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->access$6(Lcom/intel/bluetooth/BluetoothStackMicrosoft;Lcom/intel/bluetooth/DeviceInquiryRunnable;Lcom/intel/bluetooth/DeviceInquiryThread;IILjavax/bluetooth/DiscoveryListener;)I

    move-result v7

    .line 451
    .local v7, "discType":I
    if-nez v7, :cond_1

    .line 452
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$3;->this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    # getter for: Lcom/intel/bluetooth/BluetoothStackMicrosoft;->deviceDiscoveryDevices:Ljava/util/Hashtable;
    invoke-static {v0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->access$7(Lcom/intel/bluetooth/BluetoothStackMicrosoft;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v8

    .line 453
    .local v8, "en":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 452
    if-nez v0, :cond_2

    .line 467
    .end local v8    # "en":Ljava/util/Enumeration;
    :cond_1
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$3;->this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    invoke-static {v0, v10}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->access$4(Lcom/intel/bluetooth/BluetoothStackMicrosoft;Ljava/util/Hashtable;)V

    .line 468
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$3;->this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    invoke-static {v0, v10}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->access$5(Lcom/intel/bluetooth/BluetoothStackMicrosoft;Ljavax/bluetooth/DiscoveryListener;)V

    .line 465
    .end local v7    # "discType":I
    :goto_0
    return v7

    .line 455
    .restart local v7    # "discType":I
    .restart local v8    # "en":Ljava/util/Enumeration;
    :cond_2
    :try_start_1
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavax/bluetooth/RemoteDevice;

    .line 456
    .local v9, "remoteDevice":Ljavax/bluetooth/RemoteDevice;
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$3;->this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    # getter for: Lcom/intel/bluetooth/BluetoothStackMicrosoft;->deviceDiscoveryDevices:Ljava/util/Hashtable;
    invoke-static {v0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->access$7(Lcom/intel/bluetooth/BluetoothStackMicrosoft;)Ljava/util/Hashtable;

    move-result-object v0

    .line 457
    invoke-virtual {v0, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/bluetooth/DeviceClass;

    .line 458
    .local v6, "deviceClass":Ljavax/bluetooth/DeviceClass;
    invoke-interface {p3, v9, v6}, Ljavax/bluetooth/DiscoveryListener;->deviceDiscovered(Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DeviceClass;)V

    .line 460
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$3;->this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    # getter for: Lcom/intel/bluetooth/BluetoothStackMicrosoft;->currentDeviceDiscoveryListener:Ljavax/bluetooth/DiscoveryListener;
    invoke-static {v0}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->access$8(Lcom/intel/bluetooth/BluetoothStackMicrosoft;)Ljavax/bluetooth/DiscoveryListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$3;->this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    invoke-static {v0, v10}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->access$4(Lcom/intel/bluetooth/BluetoothStackMicrosoft;Ljava/util/Hashtable;)V

    .line 468
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$3;->this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    invoke-static {v0, v10}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->access$5(Lcom/intel/bluetooth/BluetoothStackMicrosoft;Ljavax/bluetooth/DiscoveryListener;)V

    .line 461
    const/4 v7, 0x5

    goto :goto_0

    .line 466
    .end local v6    # "deviceClass":Ljavax/bluetooth/DeviceClass;
    .end local v7    # "discType":I
    .end local v8    # "en":Ljava/util/Enumeration;
    .end local v9    # "remoteDevice":Ljavax/bluetooth/RemoteDevice;
    :catchall_0
    move-exception v0

    .line 467
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$3;->this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    invoke-static {v1, v10}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->access$4(Lcom/intel/bluetooth/BluetoothStackMicrosoft;Ljava/util/Hashtable;)V

    .line 468
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$3;->this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    invoke-static {v1, v10}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->access$5(Lcom/intel/bluetooth/BluetoothStackMicrosoft;Ljavax/bluetooth/DiscoveryListener;)V

    .line 469
    throw v0
.end method

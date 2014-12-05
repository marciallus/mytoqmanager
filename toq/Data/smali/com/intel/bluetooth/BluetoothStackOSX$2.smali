.class Lcom/intel/bluetooth/BluetoothStackOSX$2;
.super Ljava/lang/Object;
.source "BluetoothStackOSX.java"

# interfaces
.implements Lcom/intel/bluetooth/DeviceInquiryRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intel/bluetooth/BluetoothStackOSX;->startInquiry(ILjavax/bluetooth/DiscoveryListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intel/bluetooth/BluetoothStackOSX;


# direct methods
.method constructor <init>(Lcom/intel/bluetooth/BluetoothStackOSX;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/intel/bluetooth/BluetoothStackOSX$2;->this$0:Lcom/intel/bluetooth/BluetoothStackOSX;

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deviceDiscoveredCallback(Ljavax/bluetooth/DiscoveryListener;JILjava/lang/String;Z)V
    .locals 5
    .param p1, "listener"    # Ljavax/bluetooth/DiscoveryListener;
    .param p2, "deviceAddr"    # J
    .param p4, "deviceClass"    # I
    .param p5, "deviceName"    # Ljava/lang/String;
    .param p6, "paired"    # Z

    .prologue
    .line 462
    iget-object v3, p0, Lcom/intel/bluetooth/BluetoothStackOSX$2;->this$0:Lcom/intel/bluetooth/BluetoothStackOSX;

    # getter for: Lcom/intel/bluetooth/BluetoothStackOSX;->deviceDiscoveryListeners:Ljava/util/Vector;
    invoke-static {v3}, Lcom/intel/bluetooth/BluetoothStackOSX;->access$3(Lcom/intel/bluetooth/BluetoothStackOSX;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    iget-object v3, p0, Lcom/intel/bluetooth/BluetoothStackOSX$2;->this$0:Lcom/intel/bluetooth/BluetoothStackOSX;

    invoke-static {v3, p2, p3, p5, p6}, Lcom/intel/bluetooth/RemoteDeviceHelper;->createRemoteDevice(Lcom/intel/bluetooth/BluetoothStack;JLjava/lang/String;Z)Ljavax/bluetooth/RemoteDevice;

    move-result-object v1

    .line 469
    .local v1, "remoteDevice":Ljavax/bluetooth/RemoteDevice;
    iget-object v3, p0, Lcom/intel/bluetooth/BluetoothStackOSX$2;->this$0:Lcom/intel/bluetooth/BluetoothStackOSX;

    # getter for: Lcom/intel/bluetooth/BluetoothStackOSX;->deviceDiscoveryListenerReportedDevices:Ljava/util/Hashtable;
    invoke-static {v3}, Lcom/intel/bluetooth/BluetoothStackOSX;->access$4(Lcom/intel/bluetooth/BluetoothStackOSX;)Ljava/util/Hashtable;

    move-result-object v3

    .line 470
    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    .line 471
    .local v2, "reported":Ljava/util/Vector;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 474
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 475
    new-instance v0, Ljavax/bluetooth/DeviceClass;

    invoke-direct {v0, p4}, Ljavax/bluetooth/DeviceClass;-><init>(I)V

    .line 476
    .local v0, "cod":Ljavax/bluetooth/DeviceClass;
    const-string v3, "deviceDiscoveredCallback address"

    .line 477
    invoke-virtual {v1}, Ljavax/bluetooth/RemoteDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v4

    .line 476
    invoke-static {v3, v4}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v3, "deviceDiscoveredCallback deviceClass"

    invoke-static {v3, v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 479
    invoke-interface {p1, v1, v0}, Ljavax/bluetooth/DiscoveryListener;->deviceDiscovered(Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DeviceClass;)V

    goto :goto_0
.end method

.method public runDeviceInquiry(Lcom/intel/bluetooth/DeviceInquiryThread;ILjavax/bluetooth/DiscoveryListener;)I
    .locals 6
    .param p1, "startedNotify"    # Lcom/intel/bluetooth/DeviceInquiryThread;
    .param p2, "accessCode"    # I
    .param p3, "listener"    # Ljavax/bluetooth/DiscoveryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothStackOSX$2;->this$0:Lcom/intel/bluetooth/BluetoothStackOSX;

    .line 451
    invoke-static {}, Lcom/intel/bluetooth/DeviceInquiryThread;->getConfigDeviceInquiryDuration()I

    move-result v4

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    .line 448
    # invokes: Lcom/intel/bluetooth/BluetoothStackOSX;->runDeviceInquiryImpl(Lcom/intel/bluetooth/DeviceInquiryRunnable;Lcom/intel/bluetooth/DeviceInquiryThread;IILjavax/bluetooth/DiscoveryListener;)I
    invoke-static/range {v0 .. v5}, Lcom/intel/bluetooth/BluetoothStackOSX;->access$5(Lcom/intel/bluetooth/BluetoothStackOSX;Lcom/intel/bluetooth/DeviceInquiryRunnable;Lcom/intel/bluetooth/DeviceInquiryThread;IILjavax/bluetooth/DiscoveryListener;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 453
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothStackOSX$2;->this$0:Lcom/intel/bluetooth/BluetoothStackOSX;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/intel/bluetooth/BluetoothStackOSX;->access$2(Lcom/intel/bluetooth/BluetoothStackOSX;J)V

    .line 454
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothStackOSX$2;->this$0:Lcom/intel/bluetooth/BluetoothStackOSX;

    # getter for: Lcom/intel/bluetooth/BluetoothStackOSX;->deviceDiscoveryListeners:Ljava/util/Vector;
    invoke-static {v1}, Lcom/intel/bluetooth/BluetoothStackOSX;->access$3(Lcom/intel/bluetooth/BluetoothStackOSX;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 455
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothStackOSX$2;->this$0:Lcom/intel/bluetooth/BluetoothStackOSX;

    # getter for: Lcom/intel/bluetooth/BluetoothStackOSX;->deviceDiscoveryListenerReportedDevices:Ljava/util/Hashtable;
    invoke-static {v1}, Lcom/intel/bluetooth/BluetoothStackOSX;->access$4(Lcom/intel/bluetooth/BluetoothStackOSX;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    return v0

    .line 452
    :catchall_0
    move-exception v0

    .line 453
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothStackOSX$2;->this$0:Lcom/intel/bluetooth/BluetoothStackOSX;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/intel/bluetooth/BluetoothStackOSX;->access$2(Lcom/intel/bluetooth/BluetoothStackOSX;J)V

    .line 454
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothStackOSX$2;->this$0:Lcom/intel/bluetooth/BluetoothStackOSX;

    # getter for: Lcom/intel/bluetooth/BluetoothStackOSX;->deviceDiscoveryListeners:Ljava/util/Vector;
    invoke-static {v1}, Lcom/intel/bluetooth/BluetoothStackOSX;->access$3(Lcom/intel/bluetooth/BluetoothStackOSX;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 455
    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothStackOSX$2;->this$0:Lcom/intel/bluetooth/BluetoothStackOSX;

    # getter for: Lcom/intel/bluetooth/BluetoothStackOSX;->deviceDiscoveryListenerReportedDevices:Ljava/util/Hashtable;
    invoke-static {v1}, Lcom/intel/bluetooth/BluetoothStackOSX;->access$4(Lcom/intel/bluetooth/BluetoothStackOSX;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    throw v0
.end method

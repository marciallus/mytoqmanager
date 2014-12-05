.class Lcom/intel/bluetooth/BluetoothStackMicrosoft$4;
.super Ljava/lang/Object;
.source "BluetoothStackMicrosoft.java"

# interfaces
.implements Lcom/intel/bluetooth/SearchServicesRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intel/bluetooth/BluetoothStackMicrosoft;->searchServices([I[Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DiscoveryListener;)I
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
    iput-object p1, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$4;->this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runSearchServices(Lcom/intel/bluetooth/SearchServicesThread;[I[Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DiscoveryListener;)I
    .locals 10
    .param p1, "sst"    # Lcom/intel/bluetooth/SearchServicesThread;
    .param p2, "attrSet"    # [I
    .param p3, "uuidSet"    # [Ljavax/bluetooth/UUID;
    .param p4, "device"    # Ljavax/bluetooth/RemoteDevice;
    .param p5, "listener"    # Ljavax/bluetooth/DiscoveryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation

    .prologue
    .line 537
    invoke-virtual {p1}, Lcom/intel/bluetooth/SearchServicesThread;->searchServicesStartedCallback()V

    .line 540
    :try_start_0
    iget-object v6, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$4;->this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    .line 541
    invoke-static {p4}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getAddress(Ljavax/bluetooth/RemoteDevice;)J

    move-result-wide v7

    .line 540
    # invokes: Lcom/intel/bluetooth/BluetoothStackMicrosoft;->runSearchServicesImpl([Ljavax/bluetooth/UUID;J)[I
    invoke-static {v6, p3, v7, v8}, Lcom/intel/bluetooth/BluetoothStackMicrosoft;->access$9(Lcom/intel/bluetooth/BluetoothStackMicrosoft;[Ljavax/bluetooth/UUID;J)[I
    :try_end_0
    .catch Lcom/intel/bluetooth/SearchServicesDeviceNotReachableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/intel/bluetooth/SearchServicesTerminatedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/intel/bluetooth/SearchServicesException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 549
    .local v1, "handles":[I
    if-nez v1, :cond_0

    .line 550
    const/4 v6, 0x3

    .line 584
    .end local v1    # "handles":[I
    :goto_0
    return v6

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Lcom/intel/bluetooth/SearchServicesDeviceNotReachableException;
    const/4 v6, 0x6

    goto :goto_0

    .line 544
    .end local v0    # "e":Lcom/intel/bluetooth/SearchServicesDeviceNotReachableException;
    :catch_1
    move-exception v0

    .line 545
    .local v0, "e":Lcom/intel/bluetooth/SearchServicesTerminatedException;
    const/4 v6, 0x2

    goto :goto_0

    .line 546
    .end local v0    # "e":Lcom/intel/bluetooth/SearchServicesTerminatedException;
    :catch_2
    move-exception v0

    .line 547
    .local v0, "e":Lcom/intel/bluetooth/SearchServicesException;
    const/4 v6, 0x3

    goto :goto_0

    .line 551
    .end local v0    # "e":Lcom/intel/bluetooth/SearchServicesException;
    .restart local v1    # "handles":[I
    :cond_0
    array-length v6, v1

    if-lez v6, :cond_5

    .line 552
    array-length v6, v1

    new-array v4, v6, [Lcom/intel/bluetooth/ServiceRecordImpl;

    .line 553
    .local v4, "records":[Ljavax/bluetooth/ServiceRecord;
    const/4 v6, 0x5

    new-array v5, v6, [I

    const/4 v6, 0x1

    .line 555
    const/4 v7, 0x1

    aput v7, v5, v6

    const/4 v6, 0x2

    .line 556
    const/4 v7, 0x2

    aput v7, v5, v6

    const/4 v6, 0x3

    .line 557
    const/4 v7, 0x3

    aput v7, v5, v6

    const/4 v6, 0x4

    .line 558
    const/4 v7, 0x4

    aput v7, v5, v6

    .line 559
    .local v5, "requiredAttrIDs":[I
    const/4 v2, 0x0

    .line 560
    .local v2, "hasError":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, v1

    if-lt v3, v6, :cond_1

    .line 577
    invoke-virtual {p1}, Lcom/intel/bluetooth/SearchServicesThread;->getTransID()I

    move-result v6

    invoke-interface {p5, v6, v4}, Ljavax/bluetooth/DiscoveryListener;->servicesDiscovered(I[Ljavax/bluetooth/ServiceRecord;)V

    .line 578
    if-eqz v2, :cond_4

    .line 579
    const/4 v6, 0x3

    goto :goto_0

    .line 561
    :cond_1
    new-instance v6, Lcom/intel/bluetooth/ServiceRecordImpl;

    .line 562
    iget-object v7, p0, Lcom/intel/bluetooth/BluetoothStackMicrosoft$4;->this$0:Lcom/intel/bluetooth/BluetoothStackMicrosoft;

    .line 563
    aget v8, v1, v3

    int-to-long v8, v8

    invoke-direct {v6, v7, p4, v8, v9}, Lcom/intel/bluetooth/ServiceRecordImpl;-><init>(Lcom/intel/bluetooth/BluetoothStack;Ljavax/bluetooth/RemoteDevice;J)V

    .line 561
    aput-object v6, v4, v3

    .line 565
    :try_start_1
    aget-object v6, v4, v3

    invoke-interface {v6, v5}, Ljavax/bluetooth/ServiceRecord;->populateRecord([I)Z

    .line 566
    if-eqz p2, :cond_2

    .line 567
    aget-object v6, v4, v3

    invoke-interface {v6, p2}, Ljavax/bluetooth/ServiceRecord;->populateRecord([I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 573
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/intel/bluetooth/SearchServicesThread;->isTerminated()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 574
    const/4 v6, 0x2

    goto :goto_0

    .line 569
    :catch_3
    move-exception v0

    .line 570
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "populateRecord error"

    invoke-static {v6, v0}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 571
    const/4 v2, 0x1

    goto :goto_2

    .line 560
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 581
    :cond_4
    const/4 v6, 0x1

    goto :goto_0

    .line 584
    .end local v2    # "hasError":Z
    .end local v3    # "i":I
    .end local v4    # "records":[Ljavax/bluetooth/ServiceRecord;
    .end local v5    # "requiredAttrIDs":[I
    :cond_5
    const/4 v6, 0x4

    goto :goto_0
.end method

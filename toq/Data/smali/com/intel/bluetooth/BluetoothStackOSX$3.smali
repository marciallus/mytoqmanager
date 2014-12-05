.class Lcom/intel/bluetooth/BluetoothStackOSX$3;
.super Ljava/lang/Object;
.source "BluetoothStackOSX.java"

# interfaces
.implements Lcom/intel/bluetooth/SearchServicesRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intel/bluetooth/BluetoothStackOSX;->searchServices([I[Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DiscoveryListener;)I
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
    iput-object p1, p0, Lcom/intel/bluetooth/BluetoothStackOSX$3;->this$0:Lcom/intel/bluetooth/BluetoothStackOSX;

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runSearchServices(Lcom/intel/bluetooth/SearchServicesThread;[I[Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DiscoveryListener;)I
    .locals 14
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
    .line 511
    invoke-virtual {p1}, Lcom/intel/bluetooth/SearchServicesThread;->searchServicesStartedCallback()V

    .line 514
    :try_start_0
    iget-object v10, p0, Lcom/intel/bluetooth/BluetoothStackOSX$3;->this$0:Lcom/intel/bluetooth/BluetoothStackOSX;

    .line 515
    invoke-static/range {p4 .. p4}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getAddress(Ljavax/bluetooth/RemoteDevice;)J

    move-result-wide v11

    .line 516
    invoke-virtual {p1}, Lcom/intel/bluetooth/SearchServicesThread;->getTransID()I

    move-result v13

    .line 514
    # invokes: Lcom/intel/bluetooth/BluetoothStackOSX;->runSearchServicesImpl(JI)I
    invoke-static {v10, v11, v12, v13}, Lcom/intel/bluetooth/BluetoothStackOSX;->access$6(Lcom/intel/bluetooth/BluetoothStackOSX;JI)I
    :try_end_0
    .catch Lcom/intel/bluetooth/SearchServicesDeviceNotReachableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/intel/bluetooth/SearchServicesTerminatedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/intel/bluetooth/SearchServicesException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v5

    .line 524
    .local v5, "recordsSize":I
    invoke-virtual {p1}, Lcom/intel/bluetooth/SearchServicesThread;->isTerminated()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 525
    const/4 v10, 0x2

    .line 584
    .end local v5    # "recordsSize":I
    :goto_0
    return v10

    .line 517
    :catch_0
    move-exception v1

    .line 518
    .local v1, "e":Lcom/intel/bluetooth/SearchServicesDeviceNotReachableException;
    const/4 v10, 0x6

    goto :goto_0

    .line 519
    .end local v1    # "e":Lcom/intel/bluetooth/SearchServicesDeviceNotReachableException;
    :catch_1
    move-exception v1

    .line 520
    .local v1, "e":Lcom/intel/bluetooth/SearchServicesTerminatedException;
    const/4 v10, 0x2

    goto :goto_0

    .line 521
    .end local v1    # "e":Lcom/intel/bluetooth/SearchServicesTerminatedException;
    :catch_2
    move-exception v1

    .line 522
    .local v1, "e":Lcom/intel/bluetooth/SearchServicesException;
    const/4 v10, 0x3

    goto :goto_0

    .line 527
    .end local v1    # "e":Lcom/intel/bluetooth/SearchServicesException;
    .restart local v5    # "recordsSize":I
    :cond_0
    if-nez v5, :cond_1

    .line 528
    const/4 v10, 0x4

    goto :goto_0

    .line 530
    :cond_1
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 531
    .local v4, "records":Ljava/util/Vector;
    const/4 v10, 0x2

    new-array v9, v10, [I

    fill-array-data v9, :array_0

    .line 534
    .local v9, "uuidFilerAttrIDs":[I
    const/4 v10, 0x3

    new-array v6, v10, [I

    const/4 v10, 0x1

    .line 536
    const/4 v11, 0x2

    aput v11, v6, v10

    const/4 v10, 0x2

    .line 537
    const/4 v11, 0x3

    aput v11, v6, v10

    .line 538
    .local v6, "requiredAttrIDs":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v5, :cond_2

    .line 574
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v10

    if-eqz v10, :cond_7

    .line 575
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "SERVICE_SEARCH_COMPLETED "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p1}, Lcom/intel/bluetooth/SearchServicesThread;->getTransID()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 575
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v10

    new-array v10, v10, [Ljavax/bluetooth/ServiceRecord;

    .line 578
    invoke-static {v4, v10}, Lcom/intel/bluetooth/Utils;->vector2toArray(Ljava/util/Vector;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 577
    check-cast v2, [Ljavax/bluetooth/ServiceRecord;

    .line 580
    .local v2, "fileteredRecords":[Ljavax/bluetooth/ServiceRecord;
    invoke-virtual {p1}, Lcom/intel/bluetooth/SearchServicesThread;->getTransID()I

    move-result v10

    move-object/from16 v0, p5

    invoke-interface {v0, v10, v2}, Ljavax/bluetooth/DiscoveryListener;->servicesDiscovered(I[Ljavax/bluetooth/ServiceRecord;)V

    .line 582
    const/4 v10, 0x1

    goto :goto_0

    .line 539
    .end local v2    # "fileteredRecords":[Ljavax/bluetooth/ServiceRecord;
    :cond_2
    new-instance v7, Lcom/intel/bluetooth/ServiceRecordImpl;

    .line 540
    iget-object v10, p0, Lcom/intel/bluetooth/BluetoothStackOSX$3;->this$0:Lcom/intel/bluetooth/BluetoothStackOSX;

    int-to-long v11, v3

    .line 539
    move-object/from16 v0, p4

    invoke-direct {v7, v10, v0, v11, v12}, Lcom/intel/bluetooth/ServiceRecordImpl;-><init>(Lcom/intel/bluetooth/BluetoothStack;Ljavax/bluetooth/RemoteDevice;J)V

    .line 542
    .local v7, "sr":Lcom/intel/bluetooth/ServiceRecordImpl;
    :try_start_1
    invoke-virtual {v7, v9}, Lcom/intel/bluetooth/ServiceRecordImpl;->populateRecord([I)Z

    .line 544
    const/4 v8, 0x0

    .local v8, "u":I
    :goto_2
    move-object/from16 v0, p3

    array-length v10, v0

    if-lt v8, v10, :cond_4

    .line 558
    invoke-virtual {v4, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 559
    invoke-virtual {v7, v6}, Lcom/intel/bluetooth/ServiceRecordImpl;->populateRecord([I)Z

    .line 560
    if-eqz p2, :cond_3

    .line 561
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Lcom/intel/bluetooth/ServiceRecordImpl;->populateRecord([I)Z

    .line 563
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ServiceRecord ("

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 568
    .end local v8    # "u":I
    :goto_3
    invoke-virtual {p1}, Lcom/intel/bluetooth/SearchServicesThread;->isTerminated()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 569
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "SERVICE_SEARCH_TERMINATED "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p1}, Lcom/intel/bluetooth/SearchServicesThread;->getTransID()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 569
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 571
    const/4 v10, 0x2

    goto/16 :goto_0

    .line 545
    .restart local v8    # "u":I
    :cond_4
    :try_start_2
    aget-object v10, p3, v8

    invoke-virtual {v7, v10}, Lcom/intel/bluetooth/ServiceRecordImpl;->hasServiceClassUUID(Ljavax/bluetooth/UUID;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 546
    aget-object v10, p3, v8

    invoke-virtual {v7, v10}, Lcom/intel/bluetooth/ServiceRecordImpl;->hasProtocolClassUUID(Ljavax/bluetooth/UUID;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v10

    if-nez v10, :cond_6

    .line 538
    .end local v8    # "u":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 544
    .restart local v8    # "u":I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 564
    .end local v8    # "u":I
    :catch_3
    move-exception v1

    .line 565
    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "populateRecord error"

    invoke-static {v10, v1}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 584
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "sr":Lcom/intel/bluetooth/ServiceRecordImpl;
    :cond_7
    const/4 v10, 0x4

    goto/16 :goto_0

    .line 531
    :array_0
    .array-data 4
        0x1
        0x4
    .end array-data
.end method

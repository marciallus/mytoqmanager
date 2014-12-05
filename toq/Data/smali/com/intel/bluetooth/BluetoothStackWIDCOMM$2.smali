.class Lcom/intel/bluetooth/BluetoothStackWIDCOMM$2;
.super Ljava/lang/Object;
.source "BluetoothStackWIDCOMM.java"

# interfaces
.implements Lcom/intel/bluetooth/SearchServicesRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->searchServices([I[Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DiscoveryListener;)I
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
    iput-object p1, p0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM$2;->this$0:Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runSearchServices(Lcom/intel/bluetooth/SearchServicesThread;[I[Ljavax/bluetooth/UUID;Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DiscoveryListener;)I
    .locals 18
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
    .line 550
    const-class v13, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    monitor-enter v13

    .line 552
    :try_start_0
    sget-object v12, Lcom/intel/bluetooth/BluetoothConsts;->L2CAP_PROTOCOL_UUID:Ljavax/bluetooth/UUID;

    invoke-static {v12}, Lcom/intel/bluetooth/Utils;->UUIDToByteArray(Ljavax/bluetooth/UUID;)[B

    move-result-object v11

    .line 553
    .local v11, "uuidValue":[B
    const/4 v9, 0x0

    .local v9, "u":I
    :goto_0
    move-object/from16 v0, p3

    array-length v12, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v9, v12, :cond_0

    .line 569
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM$2;->this$0:Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    .line 570
    invoke-static/range {p4 .. p4}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getAddress(Ljavax/bluetooth/RemoteDevice;)J

    move-result-wide v14

    .line 569
    move-object/from16 v0, p1

    # invokes: Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->runSearchServicesImpl(Lcom/intel/bluetooth/SearchServicesThread;[BJ)[J
    invoke-static {v12, v0, v11, v14, v15}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->access$4(Lcom/intel/bluetooth/BluetoothStackWIDCOMM;Lcom/intel/bluetooth/SearchServicesThread;[BJ)[J
    :try_end_1
    .catch Lcom/intel/bluetooth/SearchServicesTerminatedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 575
    .local v4, "handles":[J
    if-nez v4, :cond_3

    .line 576
    :try_start_2
    const-string v12, "SERVICE_SEARCH_ERROR"

    invoke-static {v12}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 577
    monitor-exit v13

    const/4 v12, 0x3

    .line 643
    .end local v4    # "handles":[J
    :goto_2
    return v12

    .line 554
    :cond_0
    aget-object v12, p3, v9

    .line 555
    sget-object v14, Lcom/intel/bluetooth/BluetoothConsts;->L2CAP_PROTOCOL_UUID:Ljavax/bluetooth/UUID;

    invoke-virtual {v12, v14}, Ljavax/bluetooth/UUID;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 553
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 557
    :cond_1
    aget-object v12, p3, v9

    .line 558
    sget-object v14, Lcom/intel/bluetooth/BluetoothConsts;->RFCOMM_PROTOCOL_UUID:Ljavax/bluetooth/UUID;

    invoke-virtual {v12, v14}, Ljavax/bluetooth/UUID;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 559
    aget-object v12, p3, v9

    invoke-static {v12}, Lcom/intel/bluetooth/Utils;->UUIDToByteArray(Ljavax/bluetooth/UUID;)[B

    move-result-object v11

    .line 560
    goto :goto_3

    .line 563
    :cond_2
    aget-object v12, p3, v9

    invoke-static {v12}, Lcom/intel/bluetooth/Utils;->UUIDToByteArray(Ljavax/bluetooth/UUID;)[B

    move-result-object v11

    .line 564
    goto :goto_1

    .line 571
    :catch_0
    move-exception v2

    .line 572
    .local v2, "e":Lcom/intel/bluetooth/SearchServicesTerminatedException;
    const-string v12, "SERVICE_SEARCH_TERMINATED"

    invoke-static {v12}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 573
    monitor-exit v13

    const/4 v12, 0x2

    goto :goto_2

    .line 578
    .end local v2    # "e":Lcom/intel/bluetooth/SearchServicesTerminatedException;
    .restart local v4    # "handles":[J
    :cond_3
    array-length v12, v4

    if-lez v12, :cond_a

    .line 579
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 580
    .local v6, "records":Ljava/util/Vector;
    const/4 v12, 0x2

    new-array v10, v12, [I

    fill-array-data v10, :array_0

    .line 583
    .local v10, "uuidFilerAttrIDs":[I
    const/4 v12, 0x3

    new-array v7, v12, [I

    const/4 v12, 0x1

    .line 585
    const/4 v14, 0x2

    aput v14, v7, v12

    const/4 v12, 0x2

    .line 586
    const/4 v14, 0x3

    aput v14, v7, v12

    .line 587
    .local v7, "requiredAttrIDs":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    array-length v12, v4

    if-lt v5, v12, :cond_4

    .line 632
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v12

    if-eqz v12, :cond_a

    .line 633
    const-string v12, "SERVICE_SEARCH_COMPLETED"

    invoke-static {v12}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v12

    new-array v12, v12, [Ljavax/bluetooth/ServiceRecord;

    .line 635
    invoke-static {v6, v12}, Lcom/intel/bluetooth/Utils;->vector2toArray(Ljava/util/Vector;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 634
    check-cast v3, [Ljavax/bluetooth/ServiceRecord;

    .line 637
    .local v3, "fileteredRecords":[Ljavax/bluetooth/ServiceRecord;
    invoke-virtual/range {p1 .. p1}, Lcom/intel/bluetooth/SearchServicesThread;->getTransID()I

    move-result v12

    move-object/from16 v0, p5

    invoke-interface {v0, v12, v3}, Ljavax/bluetooth/DiscoveryListener;->servicesDiscovered(I[Ljavax/bluetooth/ServiceRecord;)V

    .line 639
    monitor-exit v13

    const/4 v12, 0x1

    goto :goto_2

    .line 588
    .end local v3    # "fileteredRecords":[Ljavax/bluetooth/ServiceRecord;
    :cond_4
    new-instance v8, Lcom/intel/bluetooth/ServiceRecordImpl;

    .line 589
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM$2;->this$0:Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    .line 590
    aget-wide v14, v4, v5

    .line 588
    move-object/from16 v0, p4

    invoke-direct {v8, v12, v0, v14, v15}, Lcom/intel/bluetooth/ServiceRecordImpl;-><init>(Lcom/intel/bluetooth/BluetoothStack;Ljavax/bluetooth/RemoteDevice;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 592
    .local v8, "sr":Lcom/intel/bluetooth/ServiceRecordImpl;
    :try_start_3
    invoke-virtual {v8, v10}, Lcom/intel/bluetooth/ServiceRecordImpl;->populateRecord([I)Z

    .line 595
    const/4 v9, 0x0

    :goto_5
    move-object/from16 v0, p3

    array-length v12, v0

    if-lt v9, v12, :cond_6

    .line 610
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/intel/bluetooth/BluetoothStackWIDCOMM$2;->this$0:Lcom/intel/bluetooth/BluetoothStackWIDCOMM;

    .line 611
    invoke-static/range {p4 .. p4}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getAddress(Ljavax/bluetooth/RemoteDevice;)J

    move-result-wide v14

    .line 612
    invoke-virtual {v8}, Lcom/intel/bluetooth/ServiceRecordImpl;->getHandle()J

    move-result-wide v16

    .line 610
    move-wide/from16 v0, v16

    # invokes: Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->isServiceRecordDiscoverable(JJ)Z
    invoke-static {v12, v14, v15, v0, v1}, Lcom/intel/bluetooth/BluetoothStackWIDCOMM;->access$5(Lcom/intel/bluetooth/BluetoothStackWIDCOMM;JJ)Z

    move-result v12

    if-nez v12, :cond_8

    .line 587
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 596
    :cond_6
    aget-object v12, p3, v9

    invoke-virtual {v8, v12}, Lcom/intel/bluetooth/ServiceRecordImpl;->hasServiceClassUUID(Ljavax/bluetooth/UUID;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 597
    aget-object v12, p3, v9

    invoke-virtual {v8, v12}, Lcom/intel/bluetooth/ServiceRecordImpl;->hasProtocolClassUUID(Ljavax/bluetooth/UUID;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 595
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 616
    :cond_8
    invoke-virtual {v6, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 617
    invoke-virtual {v8, v7}, Lcom/intel/bluetooth/ServiceRecordImpl;->populateRecord([I)Z

    .line 618
    if-eqz p2, :cond_9

    .line 619
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Lcom/intel/bluetooth/ServiceRecordImpl;->populateRecord([I)Z

    .line 621
    :cond_9
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "ServiceRecord ("

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 622
    const-string v14, ") sr.handle"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 621
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 622
    aget-wide v14, v4, v5

    .line 621
    invoke-static {v12, v14, v15}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    .line 623
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "ServiceRecord ("

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ")"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v8}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 627
    :goto_6
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/intel/bluetooth/SearchServicesThread;->isTerminated()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 628
    const-string v12, "SERVICE_SEARCH_TERMINATED"

    invoke-static {v12}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 629
    monitor-exit v13

    const/4 v12, 0x2

    goto/16 :goto_2

    .line 624
    :catch_1
    move-exception v2

    .line 625
    .local v2, "e":Ljava/lang/Exception;
    const-string v12, "populateRecord error"

    invoke-static {v12, v2}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 550
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "handles":[J
    .end local v5    # "i":I
    .end local v6    # "records":Ljava/util/Vector;
    .end local v7    # "requiredAttrIDs":[I
    .end local v8    # "sr":Lcom/intel/bluetooth/ServiceRecordImpl;
    .end local v9    # "u":I
    .end local v10    # "uuidFilerAttrIDs":[I
    .end local v11    # "uuidValue":[B
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v12

    .line 642
    .restart local v4    # "handles":[J
    .restart local v9    # "u":I
    .restart local v11    # "uuidValue":[B
    :cond_a
    :try_start_5
    const-string v12, "SERVICE_SEARCH_NO_RECORDS"

    invoke-static {v12}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 643
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v12, 0x4

    goto/16 :goto_2

    .line 580
    :array_0
    .array-data 4
        0x1
        0x4
    .end array-data
.end method

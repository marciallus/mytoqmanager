.class Lcom/intel/bluetooth/ServiceRecordImpl;
.super Ljava/lang/Object;
.source "ServiceRecordImpl.java"

# interfaces
.implements Ljavax/bluetooth/ServiceRecord;


# instance fields
.field protected attributeUpdated:Z

.field attributes:Ljava/util/Hashtable;

.field private bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

.field private device:Ljavax/bluetooth/RemoteDevice;

.field deviceServiceClasses:I

.field deviceServiceClassesRegistered:I

.field private handle:J


# direct methods
.method constructor <init>(Lcom/intel/bluetooth/BluetoothStack;Ljavax/bluetooth/RemoteDevice;J)V
    .locals 1
    .param p1, "bluetoothStack"    # Lcom/intel/bluetooth/BluetoothStack;
    .param p2, "device"    # Ljavax/bluetooth/RemoteDevice;
    .param p3, "handle"    # J

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/intel/bluetooth/ServiceRecordImpl;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    .line 62
    iput-object p2, p0, Lcom/intel/bluetooth/ServiceRecordImpl;->device:Ljavax/bluetooth/RemoteDevice;

    .line 64
    iput-wide p3, p0, Lcom/intel/bluetooth/ServiceRecordImpl;->handle:J

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/intel/bluetooth/ServiceRecordImpl;->deviceServiceClassesRegistered:I

    .line 68
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/intel/bluetooth/ServiceRecordImpl;->attributes:Ljava/util/Hashtable;

    .line 69
    return-void
.end method


# virtual methods
.method clone(Ljavax/bluetooth/DataElement;)Ljavax/bluetooth/DataElement;
    .locals 6
    .param p1, "de"    # Ljavax/bluetooth/DataElement;

    .prologue
    .line 760
    const/4 v0, 0x0

    .line 762
    .local v0, "c":Ljavax/bluetooth/DataElement;
    invoke-virtual {p1}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 795
    :cond_0
    :goto_0
    return-object v0

    .line 769
    :sswitch_0
    new-instance v0, Ljavax/bluetooth/DataElement;

    .end local v0    # "c":Ljavax/bluetooth/DataElement;
    invoke-virtual {p1}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v3

    invoke-virtual {p1}, Ljavax/bluetooth/DataElement;->getLong()J

    move-result-wide v4

    invoke-direct {v0, v3, v4, v5}, Ljavax/bluetooth/DataElement;-><init>(IJ)V

    .line 770
    .restart local v0    # "c":Ljavax/bluetooth/DataElement;
    goto :goto_0

    .line 777
    :sswitch_1
    new-instance v0, Ljavax/bluetooth/DataElement;

    .end local v0    # "c":Ljavax/bluetooth/DataElement;
    invoke-virtual {p1}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v3

    invoke-virtual {p1}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljavax/bluetooth/DataElement;-><init>(ILjava/lang/Object;)V

    .line 778
    .restart local v0    # "c":Ljavax/bluetooth/DataElement;
    goto :goto_0

    .line 780
    :sswitch_2
    new-instance v0, Ljavax/bluetooth/DataElement;

    .end local v0    # "c":Ljavax/bluetooth/DataElement;
    invoke-virtual {p1}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v3

    invoke-direct {v0, v3}, Ljavax/bluetooth/DataElement;-><init>(I)V

    .line 781
    .restart local v0    # "c":Ljavax/bluetooth/DataElement;
    goto :goto_0

    .line 783
    :sswitch_3
    new-instance v0, Ljavax/bluetooth/DataElement;

    .end local v0    # "c":Ljavax/bluetooth/DataElement;
    invoke-virtual {p1}, Ljavax/bluetooth/DataElement;->getBoolean()Z

    move-result v3

    invoke-direct {v0, v3}, Ljavax/bluetooth/DataElement;-><init>(Z)V

    .line 784
    .restart local v0    # "c":Ljavax/bluetooth/DataElement;
    goto :goto_0

    .line 787
    :sswitch_4
    new-instance v0, Ljavax/bluetooth/DataElement;

    .end local v0    # "c":Ljavax/bluetooth/DataElement;
    invoke-virtual {p1}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v3

    invoke-direct {v0, v3}, Ljavax/bluetooth/DataElement;-><init>(I)V

    .line 788
    .restart local v0    # "c":Ljavax/bluetooth/DataElement;
    invoke-virtual {p1}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Enumeration;

    .line 789
    .local v2, "en":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    .line 788
    if-eqz v3, :cond_0

    .line 790
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/bluetooth/DataElement;

    .line 791
    .local v1, "dataElement":Ljavax/bluetooth/DataElement;
    invoke-virtual {p0, v1}, Lcom/intel/bluetooth/ServiceRecordImpl;->clone(Ljavax/bluetooth/DataElement;)Ljavax/bluetooth/DataElement;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/bluetooth/DataElement;->addElement(Ljavax/bluetooth/DataElement;)V

    goto :goto_1

    .line 762
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x18 -> :sswitch_1
        0x20 -> :sswitch_1
        0x28 -> :sswitch_3
        0x30 -> :sswitch_4
        0x38 -> :sswitch_4
        0x40 -> :sswitch_1
    .end sparse-switch
.end method

.method public getAttributeIDs()[I
    .locals 5

    .prologue
    .line 172
    iget-object v4, p0, Lcom/intel/bluetooth/ServiceRecordImpl;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v4

    new-array v0, v4, [I

    .line 174
    .local v0, "attrIDs":[I
    const/4 v2, 0x0

    .line 176
    .local v2, "i":I
    iget-object v4, p0, Lcom/intel/bluetooth/ServiceRecordImpl;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_0

    .line 180
    return-object v0

    .line 177
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v2

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0
.end method

.method public getAttributeValue(I)Ljavax/bluetooth/DataElement;
    .locals 2
    .param p1, "attrID"    # I

    .prologue
    .line 142
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/intel/bluetooth/ServiceRecordImpl;->attributes:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/bluetooth/DataElement;

    return-object v0
.end method

.method getChannel(Ljavax/bluetooth/UUID;)I
    .locals 11
    .param p1, "protocolUUID"    # Ljavax/bluetooth/UUID;

    .prologue
    const/16 v10, 0x30

    .line 465
    const/4 v0, -0x1

    .line 467
    .local v0, "channel":I
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/intel/bluetooth/ServiceRecordImpl;->getAttributeValue(I)Ljavax/bluetooth/DataElement;

    move-result-object v3

    .line 468
    .local v3, "protocolDescriptor":Ljavax/bluetooth/DataElement;
    if-eqz v3, :cond_0

    .line 469
    invoke-virtual {v3}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v8

    if-eq v8, v10, :cond_1

    .line 470
    :cond_0
    const/4 v8, -0x1

    .line 515
    :goto_0
    return v8

    .line 479
    :cond_1
    invoke-virtual {v3}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 478
    check-cast v6, Ljava/util/Enumeration;

    .line 479
    .local v6, "protocolsSeqEnum":Ljava/util/Enumeration;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    .line 478
    if-nez v8, :cond_3

    move v8, v0

    .line 515
    goto :goto_0

    .line 481
    :cond_3
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/bluetooth/DataElement;

    .line 483
    .local v1, "elementSeq":Ljavax/bluetooth/DataElement;
    invoke-virtual {v1}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v8

    if-ne v8, v10, :cond_2

    .line 485
    invoke-virtual {v1}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 484
    check-cast v2, Ljava/util/Enumeration;

    .line 487
    .local v2, "elementSeqEnum":Ljava/util/Enumeration;
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 489
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/bluetooth/DataElement;

    .line 490
    .local v4, "protocolElement":Ljavax/bluetooth/DataElement;
    invoke-virtual {v4}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v8

    const/16 v9, 0x18

    if-ne v8, v9, :cond_2

    .line 493
    invoke-virtual {v4}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 494
    .local v7, "uuid":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 495
    invoke-virtual {p1, v7}, Ljavax/bluetooth/UUID;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 498
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/bluetooth/DataElement;

    .line 500
    .local v5, "protocolPSMElement":Ljavax/bluetooth/DataElement;
    invoke-virtual {v5}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 508
    :pswitch_1
    invoke-virtual {v5}, Ljavax/bluetooth/DataElement;->getLong()J

    move-result-wide v8

    long-to-int v0, v8

    goto :goto_1

    .line 500
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getConnectionURL(IZ)Ljava/lang/String;
    .locals 24
    .param p1, "requiredSecurity"    # I
    .param p2, "mustBeMaster"    # Z

    .prologue
    .line 303
    const/4 v4, -0x1

    .line 305
    .local v4, "commChannel":I
    const/16 v22, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/intel/bluetooth/ServiceRecordImpl;->getAttributeValue(I)Ljavax/bluetooth/DataElement;

    move-result-object v14

    .line 306
    .local v14, "protocolDescriptor":Ljavax/bluetooth/DataElement;
    if-eqz v14, :cond_0

    .line 307
    invoke-virtual {v14}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v22

    const/16 v23, 0x30

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 308
    :cond_0
    const/16 v22, 0x0

    .line 460
    :goto_0
    return-object v22

    .line 316
    :cond_1
    const/4 v9, 0x0

    .line 317
    .local v9, "isL2CAP":Z
    const/4 v11, 0x0

    .line 318
    .local v11, "isRFCOMM":Z
    const/4 v10, 0x0

    .line 321
    .local v10, "isOBEX":Z
    invoke-virtual {v14}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v17

    .line 320
    check-cast v17, Ljava/util/Enumeration;

    .line 321
    .local v17, "protocolsSeqEnum":Ljava/util/Enumeration;
    :cond_2
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v22

    .line 320
    if-nez v22, :cond_3

    .line 390
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v4, v0, :cond_6

    .line 391
    const/16 v22, 0x0

    goto :goto_0

    .line 323
    :cond_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/bluetooth/DataElement;

    .line 325
    .local v5, "elementSeq":Ljavax/bluetooth/DataElement;
    invoke-virtual {v5}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v22

    const/16 v23, 0x30

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 327
    invoke-virtual {v5}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 326
    check-cast v6, Ljava/util/Enumeration;

    .line 329
    .local v6, "elementSeqEnum":Ljava/util/Enumeration;
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 331
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljavax/bluetooth/DataElement;

    .line 332
    .local v15, "protocolElement":Ljavax/bluetooth/DataElement;
    invoke-virtual {v15}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v22

    const/16 v23, 0x18

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 335
    invoke-virtual {v15}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v19

    .line 336
    .local v19, "uuid":Ljava/lang/Object;
    sget-object v22, Lcom/intel/bluetooth/BluetoothConsts;->OBEX_PROTOCOL_UUID:Ljavax/bluetooth/UUID;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljavax/bluetooth/UUID;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 337
    const/4 v10, 0x1

    .line 338
    const/4 v11, 0x0

    .line 339
    const/4 v9, 0x0

    goto :goto_1

    .line 340
    :cond_4
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 341
    sget-object v22, Lcom/intel/bluetooth/BluetoothConsts;->RFCOMM_PROTOCOL_UUID:Ljavax/bluetooth/UUID;

    .line 342
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljavax/bluetooth/UUID;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 345
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljavax/bluetooth/DataElement;

    .line 347
    .local v16, "protocolPSMElement":Ljavax/bluetooth/DataElement;
    invoke-virtual/range {v16 .. v16}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v22

    packed-switch v22, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 355
    :pswitch_1
    invoke-virtual/range {v16 .. v16}, Ljavax/bluetooth/DataElement;->getLong()J

    move-result-wide v20

    .line 356
    .local v20, "val":J
    const-wide/16 v22, 0x1

    cmp-long v22, v20, v22

    if-ltz v22, :cond_2

    .line 357
    const-wide/16 v22, 0x1e

    cmp-long v22, v20, v22

    if-gtz v22, :cond_2

    .line 358
    move-wide/from16 v0, v20

    long-to-int v4, v0

    .line 359
    const/4 v11, 0x1

    .line 360
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 364
    .end local v16    # "protocolPSMElement":Ljavax/bluetooth/DataElement;
    .end local v20    # "val":J
    :cond_5
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 365
    sget-object v22, Lcom/intel/bluetooth/BluetoothConsts;->L2CAP_PROTOCOL_UUID:Ljavax/bluetooth/UUID;

    .line 366
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljavax/bluetooth/UUID;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 368
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljavax/bluetooth/DataElement;

    .line 369
    .restart local v16    # "protocolPSMElement":Ljavax/bluetooth/DataElement;
    invoke-virtual/range {v16 .. v16}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v22

    packed-switch v22, :pswitch_data_1

    :pswitch_2
    goto/16 :goto_1

    .line 377
    :pswitch_3
    invoke-virtual/range {v16 .. v16}, Ljavax/bluetooth/DataElement;->getLong()J

    move-result-wide v12

    .line 378
    .local v12, "pcm":J
    const-wide/16 v22, 0x5

    cmp-long v22, v12, v22

    if-ltz v22, :cond_2

    .line 379
    const-wide/32 v22, 0xffff

    cmp-long v22, v12, v22

    if-gtz v22, :cond_2

    .line 380
    long-to-int v4, v12

    .line 381
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 397
    .end local v5    # "elementSeq":Ljavax/bluetooth/DataElement;
    .end local v6    # "elementSeqEnum":Ljava/util/Enumeration;
    .end local v12    # "pcm":J
    .end local v15    # "protocolElement":Ljavax/bluetooth/DataElement;
    .end local v16    # "protocolPSMElement":Ljavax/bluetooth/DataElement;
    .end local v19    # "uuid":Ljava/lang/Object;
    :cond_6
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 398
    .local v3, "buf":Ljava/lang/StringBuffer;
    if-eqz v10, :cond_8

    .line 399
    const-string v22, "btgoep"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    :goto_2
    const-string v22, "://"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/bluetooth/ServiceRecordImpl;->device:Ljavax/bluetooth/RemoteDevice;

    move-object/from16 v22, v0

    if-nez v22, :cond_c

    .line 411
    :try_start_0
    invoke-static {}, Lcom/intel/bluetooth/BlueCoveImpl;->getCurrentThreadBluetoothStackID()Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/bluetooth/BluetoothStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 413
    .local v18, "saveID":Ljava/lang/Object;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/intel/bluetooth/ServiceRecordImpl;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/intel/bluetooth/BlueCoveImpl;->setThreadBluetoothStack(Lcom/intel/bluetooth/BluetoothStack;)V

    .line 414
    invoke-static {}, Ljavax/bluetooth/LocalDevice;->getLocalDevice()Ljavax/bluetooth/LocalDevice;

    move-result-object v22

    .line 415
    invoke-virtual/range {v22 .. v22}, Ljavax/bluetooth/LocalDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v22

    .line 414
    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    if-eqz v18, :cond_7

    .line 418
    :try_start_2
    invoke-static/range {v18 .. v18}, Lcom/intel/bluetooth/BlueCoveImpl;->setThreadBluetoothStackID(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljavax/bluetooth/BluetoothStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 429
    .end local v18    # "saveID":Ljava/lang/Object;
    :cond_7
    :goto_3
    const-string v22, ":"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    if-eqz v9, :cond_e

    .line 431
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 432
    .local v7, "hex":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .local v8, "i":I
    :goto_4
    const/16 v22, 0x4

    move/from16 v0, v22

    if-lt v8, v0, :cond_d

    .line 435
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    .end local v7    # "hex":Ljava/lang/String;
    .end local v8    # "i":I
    :goto_5
    packed-switch p1, :pswitch_data_2

    .line 451
    new-instance v22, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v22 .. v22}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v22

    .line 400
    :cond_8
    if-eqz v11, :cond_9

    .line 401
    const-string v22, "btspp"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 402
    :cond_9
    if-eqz v9, :cond_a

    .line 403
    const-string v22, "btl2cap"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 405
    :cond_a
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 416
    .restart local v18    # "saveID":Ljava/lang/Object;
    :catchall_0
    move-exception v22

    .line 417
    if-eqz v18, :cond_b

    .line 418
    :try_start_3
    invoke-static/range {v18 .. v18}, Lcom/intel/bluetooth/BlueCoveImpl;->setThreadBluetoothStackID(Ljava/lang/Object;)V

    .line 420
    :cond_b
    throw v22
    :try_end_3
    .catch Ljavax/bluetooth/BluetoothStateException; {:try_start_3 .. :try_end_3} :catch_0

    .line 421
    .end local v18    # "saveID":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 422
    .local v2, "bse":Ljavax/bluetooth/BluetoothStateException;
    const-string v22, "can\'t read LocalAddress"

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lcom/intel/bluetooth/DebugLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 423
    const-string v22, "localhost"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 426
    .end local v2    # "bse":Ljavax/bluetooth/BluetoothStateException;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/intel/bluetooth/ServiceRecordImpl;->getHostDevice()Ljavax/bluetooth/RemoteDevice;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljavax/bluetooth/RemoteDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 433
    .restart local v7    # "hex":Ljava/lang/String;
    .restart local v8    # "i":I
    :cond_d
    const/16 v22, 0x30

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 432
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 437
    .end local v7    # "hex":Ljava/lang/String;
    .end local v8    # "i":I
    :cond_e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 442
    :pswitch_4
    const-string v22, ";authenticate=false;encrypt=false"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 454
    :goto_6
    if-eqz p2, :cond_f

    .line 455
    const-string v22, ";master=true"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    :goto_7
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_0

    .line 445
    :pswitch_5
    const-string v22, ";authenticate=true;encrypt=false"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 448
    :pswitch_6
    const-string v22, ";authenticate=true;encrypt=true"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 457
    :cond_f
    const-string v22, ";master=false"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 369
    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 440
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method getHandle()J
    .locals 2

    .prologue
    .line 681
    iget-wide v0, p0, Lcom/intel/bluetooth/ServiceRecordImpl;->handle:J

    return-wide v0
.end method

.method public getHostDevice()Ljavax/bluetooth/RemoteDevice;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/intel/bluetooth/ServiceRecordImpl;->device:Ljavax/bluetooth/RemoteDevice;

    return-object v0
.end method

.method hasProtocolClassUUID(Ljavax/bluetooth/UUID;)Z
    .locals 9
    .param p1, "uuid"    # Ljavax/bluetooth/UUID;

    .prologue
    const/16 v8, 0x30

    const/4 v5, 0x0

    .line 729
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/intel/bluetooth/ServiceRecordImpl;->getAttributeValue(I)Ljavax/bluetooth/DataElement;

    move-result-object v2

    .line 730
    .local v2, "protocolDescriptor":Ljavax/bluetooth/DataElement;
    if-eqz v2, :cond_0

    .line 731
    invoke-virtual {v2}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v6

    if-eq v6, v8, :cond_1

    .line 756
    :cond_0
    :goto_0
    return v5

    .line 737
    :cond_1
    invoke-virtual {v2}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 736
    check-cast v4, Ljava/util/Enumeration;

    .line 737
    .local v4, "protocolsSeqEnum":Ljava/util/Enumeration;
    :cond_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    .line 736
    if-eqz v6, :cond_0

    .line 739
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/bluetooth/DataElement;

    .line 741
    .local v0, "elementSeq":Ljavax/bluetooth/DataElement;
    invoke-virtual {v0}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 743
    invoke-virtual {v0}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 742
    check-cast v1, Ljava/util/Enumeration;

    .line 744
    .local v1, "elementSeqEnum":Ljava/util/Enumeration;
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 746
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/bluetooth/DataElement;

    .line 747
    .local v3, "protocolElement":Ljavax/bluetooth/DataElement;
    invoke-virtual {v3}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v6

    const/16 v7, 0x18

    if-ne v6, v7, :cond_2

    .line 750
    invoke-virtual {v3}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljavax/bluetooth/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 751
    const/4 v5, 0x1

    goto :goto_0
.end method

.method hasServiceClassUUID(Ljavax/bluetooth/UUID;)Z
    .locals 9
    .param p1, "uuid"    # Ljavax/bluetooth/UUID;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 695
    invoke-virtual {p0, v5}, Lcom/intel/bluetooth/ServiceRecordImpl;->getAttributeValue(I)Ljavax/bluetooth/DataElement;

    move-result-object v0

    .line 696
    .local v0, "attrDataElement":Ljavax/bluetooth/DataElement;
    if-eqz v0, :cond_0

    .line 697
    invoke-virtual {v0}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v7

    const/16 v8, 0x30

    if-ne v7, v8, :cond_0

    .line 698
    invoke-virtual {v0}, Ljavax/bluetooth/DataElement;->getSize()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move v5, v6

    .line 725
    :goto_0
    return v5

    .line 703
    :cond_1
    invoke-virtual {v0}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 704
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_2

    instance-of v7, v4, Ljava/util/Enumeration;

    if-nez v7, :cond_4

    .line 705
    :cond_2
    const-string v5, "Bogus Value in DATSEQ"

    invoke-static {v5}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 706
    if-eqz v4, :cond_3

    .line 707
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "DATSEQ class "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/intel/bluetooth/DebugLog;->error(Ljava/lang/String;)V

    :cond_3
    move v5, v6

    .line 709
    goto :goto_0

    :cond_4
    move-object v2, v4

    .line 711
    check-cast v2, Ljava/util/Enumeration;

    .local v2, "e":Ljava/util/Enumeration;
    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-nez v7, :cond_6

    move v5, v6

    .line 725
    goto :goto_0

    .line 712
    :cond_6
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 713
    .local v3, "element":Ljava/lang/Object;
    instance-of v7, v3, Ljavax/bluetooth/DataElement;

    if-nez v7, :cond_7

    .line 714
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Bogus element in DATSEQ, "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 715
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 714
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v1, v3

    .line 718
    check-cast v1, Ljavax/bluetooth/DataElement;

    .line 719
    .local v1, "dataElement":Ljavax/bluetooth/DataElement;
    invoke-virtual {v1}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v7

    const/16 v8, 0x18

    if-ne v7, v8, :cond_5

    .line 720
    invoke-virtual {v1}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljavax/bluetooth/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_0
.end method

.method loadByteArray([B)V
    .locals 7
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v4, Lcom/intel/bluetooth/SDPInputStream;

    .line 115
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 114
    invoke-direct {v4, v5}, Lcom/intel/bluetooth/SDPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 115
    invoke-virtual {v4}, Lcom/intel/bluetooth/SDPInputStream;->readElement()Ljavax/bluetooth/DataElement;

    move-result-object v0

    .line 116
    .local v0, "element":Ljavax/bluetooth/DataElement;
    invoke-virtual {v0}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v4

    const/16 v5, 0x30

    if-eq v4, v5, :cond_0

    .line 117
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DATSEQ expected instead of "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 117
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 120
    :cond_0
    invoke-virtual {v0}, Ljavax/bluetooth/DataElement;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Enumeration;

    .line 121
    .local v1, "en":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_1

    .line 130
    return-void

    .line 122
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/bluetooth/DataElement;

    .line 123
    .local v2, "id":Ljavax/bluetooth/DataElement;
    invoke-virtual {v2}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_2

    .line 124
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "U_INT_2 expected instead of "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v2}, Ljavax/bluetooth/DataElement;->getDataType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 124
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 127
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/bluetooth/DataElement;

    .line 128
    .local v3, "value":Ljavax/bluetooth/DataElement;
    invoke-virtual {v2}, Ljavax/bluetooth/DataElement;->getLong()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p0, v4, v3}, Lcom/intel/bluetooth/ServiceRecordImpl;->populateAttributeValue(ILjavax/bluetooth/DataElement;)V

    goto :goto_0
.end method

.method populateAttributeValue(ILjavax/bluetooth/DataElement;)V
    .locals 2
    .param p1, "attrID"    # I
    .param p2, "attrValue"    # Ljavax/bluetooth/DataElement;

    .prologue
    .line 645
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 646
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 648
    :cond_1
    if-nez p2, :cond_2

    .line 649
    iget-object v0, p0, Lcom/intel/bluetooth/ServiceRecordImpl;->attributes:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    :goto_0
    return-void

    .line 651
    :cond_2
    iget-object v0, p0, Lcom/intel/bluetooth/ServiceRecordImpl;->attributes:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method populateL2CAPAttributes(IILjavax/bluetooth/UUID;Ljava/lang/String;)V
    .locals 10
    .param p1, "handle"    # I
    .param p2, "channel"    # I
    .param p3, "uuid"    # Ljavax/bluetooth/UUID;
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x18

    const/16 v8, 0x30

    .line 857
    const/4 v3, 0x0

    .line 858
    new-instance v4, Ljavax/bluetooth/DataElement;

    const/16 v5, 0xa

    int-to-long v6, p1

    invoke-direct {v4, v5, v6, v7}, Ljavax/bluetooth/DataElement;-><init>(IJ)V

    .line 857
    invoke-virtual {p0, v3, v4}, Lcom/intel/bluetooth/ServiceRecordImpl;->populateAttributeValue(ILjavax/bluetooth/DataElement;)V

    .line 864
    new-instance v2, Ljavax/bluetooth/DataElement;

    invoke-direct {v2, v8}, Ljavax/bluetooth/DataElement;-><init>(I)V

    .line 865
    .local v2, "serviceClassIDList":Ljavax/bluetooth/DataElement;
    new-instance v3, Ljavax/bluetooth/DataElement;

    invoke-direct {v3, v9, p3}, Ljavax/bluetooth/DataElement;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljavax/bluetooth/DataElement;->addElement(Ljavax/bluetooth/DataElement;)V

    .line 867
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/intel/bluetooth/ServiceRecordImpl;->populateAttributeValue(ILjavax/bluetooth/DataElement;)V

    .line 873
    new-instance v1, Ljavax/bluetooth/DataElement;

    invoke-direct {v1, v8}, Ljavax/bluetooth/DataElement;-><init>(I)V

    .line 875
    .local v1, "protocolDescriptorList":Ljavax/bluetooth/DataElement;
    new-instance v0, Ljavax/bluetooth/DataElement;

    invoke-direct {v0, v8}, Ljavax/bluetooth/DataElement;-><init>(I)V

    .line 876
    .local v0, "L2CAPDescriptor":Ljavax/bluetooth/DataElement;
    new-instance v3, Ljavax/bluetooth/DataElement;

    .line 877
    sget-object v4, Lcom/intel/bluetooth/BluetoothConsts;->L2CAP_PROTOCOL_UUID:Ljavax/bluetooth/UUID;

    invoke-direct {v3, v9, v4}, Ljavax/bluetooth/DataElement;-><init>(ILjava/lang/Object;)V

    .line 876
    invoke-virtual {v0, v3}, Ljavax/bluetooth/DataElement;->addElement(Ljavax/bluetooth/DataElement;)V

    .line 879
    new-instance v3, Ljavax/bluetooth/DataElement;

    const/16 v4, 0x9

    int-to-long v5, p2

    invoke-direct {v3, v4, v5, v6}, Ljavax/bluetooth/DataElement;-><init>(IJ)V

    invoke-virtual {v0, v3}, Ljavax/bluetooth/DataElement;->addElement(Ljavax/bluetooth/DataElement;)V

    .line 880
    invoke-virtual {v1, v0}, Ljavax/bluetooth/DataElement;->addElement(Ljavax/bluetooth/DataElement;)V

    .line 882
    const/4 v3, 0x4

    invoke-virtual {p0, v3, v1}, Lcom/intel/bluetooth/ServiceRecordImpl;->populateAttributeValue(ILjavax/bluetooth/DataElement;)V

    .line 885
    if-eqz p4, :cond_0

    .line 886
    const/16 v3, 0x100

    .line 887
    new-instance v4, Ljavax/bluetooth/DataElement;

    const/16 v5, 0x20

    invoke-direct {v4, v5, p4}, Ljavax/bluetooth/DataElement;-><init>(ILjava/lang/Object;)V

    .line 886
    invoke-virtual {p0, v3, v4}, Lcom/intel/bluetooth/ServiceRecordImpl;->populateAttributeValue(ILjavax/bluetooth/DataElement;)V

    .line 889
    :cond_0
    return-void
.end method

.method populateRFCOMMAttributes(JILjavax/bluetooth/UUID;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "handle"    # J
    .param p3, "channel"    # I
    .param p4, "uuid"    # Ljavax/bluetooth/UUID;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "obex"    # Z

    .prologue
    .line 804
    const/4 v5, 0x0

    .line 805
    new-instance v6, Ljavax/bluetooth/DataElement;

    const/16 v7, 0xa

    invoke-direct {v6, v7, p1, p2}, Ljavax/bluetooth/DataElement;-><init>(IJ)V

    .line 804
    invoke-virtual {p0, v5, v6}, Lcom/intel/bluetooth/ServiceRecordImpl;->populateAttributeValue(ILjavax/bluetooth/DataElement;)V

    .line 811
    new-instance v4, Ljavax/bluetooth/DataElement;

    const/16 v5, 0x30

    invoke-direct {v4, v5}, Ljavax/bluetooth/DataElement;-><init>(I)V

    .line 812
    .local v4, "serviceClassIDList":Ljavax/bluetooth/DataElement;
    new-instance v5, Ljavax/bluetooth/DataElement;

    const/16 v6, 0x18

    invoke-direct {v5, v6, p4}, Ljavax/bluetooth/DataElement;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljavax/bluetooth/DataElement;->addElement(Ljavax/bluetooth/DataElement;)V

    .line 813
    if-nez p6, :cond_0

    .line 814
    new-instance v5, Ljavax/bluetooth/DataElement;

    const/16 v6, 0x18

    .line 815
    sget-object v7, Lcom/intel/bluetooth/BluetoothConsts;->SERIAL_PORT_UUID:Ljavax/bluetooth/UUID;

    invoke-direct {v5, v6, v7}, Ljavax/bluetooth/DataElement;-><init>(ILjava/lang/Object;)V

    .line 814
    invoke-virtual {v4, v5}, Ljavax/bluetooth/DataElement;->addElement(Ljavax/bluetooth/DataElement;)V

    .line 818
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {p0, v5, v4}, Lcom/intel/bluetooth/ServiceRecordImpl;->populateAttributeValue(ILjavax/bluetooth/DataElement;)V

    .line 825
    new-instance v3, Ljavax/bluetooth/DataElement;

    const/16 v5, 0x30

    invoke-direct {v3, v5}, Ljavax/bluetooth/DataElement;-><init>(I)V

    .line 827
    .local v3, "protocolDescriptorList":Ljavax/bluetooth/DataElement;
    new-instance v0, Ljavax/bluetooth/DataElement;

    const/16 v5, 0x30

    invoke-direct {v0, v5}, Ljavax/bluetooth/DataElement;-><init>(I)V

    .line 828
    .local v0, "L2CAPDescriptor":Ljavax/bluetooth/DataElement;
    new-instance v5, Ljavax/bluetooth/DataElement;

    const/16 v6, 0x18

    .line 829
    sget-object v7, Lcom/intel/bluetooth/BluetoothConsts;->L2CAP_PROTOCOL_UUID:Ljavax/bluetooth/UUID;

    invoke-direct {v5, v6, v7}, Ljavax/bluetooth/DataElement;-><init>(ILjava/lang/Object;)V

    .line 828
    invoke-virtual {v0, v5}, Ljavax/bluetooth/DataElement;->addElement(Ljavax/bluetooth/DataElement;)V

    .line 830
    invoke-virtual {v3, v0}, Ljavax/bluetooth/DataElement;->addElement(Ljavax/bluetooth/DataElement;)V

    .line 832
    new-instance v2, Ljavax/bluetooth/DataElement;

    const/16 v5, 0x30

    invoke-direct {v2, v5}, Ljavax/bluetooth/DataElement;-><init>(I)V

    .line 833
    .local v2, "RFCOMMDescriptor":Ljavax/bluetooth/DataElement;
    new-instance v5, Ljavax/bluetooth/DataElement;

    const/16 v6, 0x18

    .line 834
    sget-object v7, Lcom/intel/bluetooth/BluetoothConsts;->RFCOMM_PROTOCOL_UUID:Ljavax/bluetooth/UUID;

    invoke-direct {v5, v6, v7}, Ljavax/bluetooth/DataElement;-><init>(ILjava/lang/Object;)V

    .line 833
    invoke-virtual {v2, v5}, Ljavax/bluetooth/DataElement;->addElement(Ljavax/bluetooth/DataElement;)V

    .line 835
    new-instance v5, Ljavax/bluetooth/DataElement;

    const/16 v6, 0x8

    .line 836
    int-to-long v7, p3

    invoke-direct {v5, v6, v7, v8}, Ljavax/bluetooth/DataElement;-><init>(IJ)V

    .line 835
    invoke-virtual {v2, v5}, Ljavax/bluetooth/DataElement;->addElement(Ljavax/bluetooth/DataElement;)V

    .line 837
    invoke-virtual {v3, v2}, Ljavax/bluetooth/DataElement;->addElement(Ljavax/bluetooth/DataElement;)V

    .line 839
    if-eqz p6, :cond_1

    .line 840
    new-instance v1, Ljavax/bluetooth/DataElement;

    const/16 v5, 0x30

    invoke-direct {v1, v5}, Ljavax/bluetooth/DataElement;-><init>(I)V

    .line 841
    .local v1, "OBEXDescriptor":Ljavax/bluetooth/DataElement;
    new-instance v5, Ljavax/bluetooth/DataElement;

    const/16 v6, 0x18

    .line 842
    sget-object v7, Lcom/intel/bluetooth/BluetoothConsts;->OBEX_PROTOCOL_UUID:Ljavax/bluetooth/UUID;

    invoke-direct {v5, v6, v7}, Ljavax/bluetooth/DataElement;-><init>(ILjava/lang/Object;)V

    .line 841
    invoke-virtual {v1, v5}, Ljavax/bluetooth/DataElement;->addElement(Ljavax/bluetooth/DataElement;)V

    .line 843
    invoke-virtual {v3, v1}, Ljavax/bluetooth/DataElement;->addElement(Ljavax/bluetooth/DataElement;)V

    .line 846
    .end local v1    # "OBEXDescriptor":Ljavax/bluetooth/DataElement;
    :cond_1
    const/4 v5, 0x4

    invoke-virtual {p0, v5, v3}, Lcom/intel/bluetooth/ServiceRecordImpl;->populateAttributeValue(ILjavax/bluetooth/DataElement;)V

    .line 849
    if-eqz p5, :cond_2

    .line 850
    const/16 v5, 0x100

    .line 851
    new-instance v6, Ljavax/bluetooth/DataElement;

    const/16 v7, 0x20

    invoke-direct {v6, v7, p5}, Ljavax/bluetooth/DataElement;-><init>(ILjava/lang/Object;)V

    .line 850
    invoke-virtual {p0, v5, v6}, Lcom/intel/bluetooth/ServiceRecordImpl;->populateAttributeValue(ILjavax/bluetooth/DataElement;)V

    .line 853
    :cond_2
    return-void
.end method

.method public populateRecord([I)Z
    .locals 7
    .param p1, "attrIDs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 219
    iget-object v4, p0, Lcom/intel/bluetooth/ServiceRecordImpl;->device:Ljavax/bluetooth/RemoteDevice;

    if-nez v4, :cond_0

    .line 220
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "This is local device service record"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 223
    :cond_0
    if-nez p1, :cond_1

    .line 224
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "attrIDs is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 229
    :cond_1
    array-length v4, p1

    if-nez v4, :cond_2

    .line 230
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 237
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-lt v0, v4, :cond_3

    .line 248
    array-length v4, p1

    new-array v2, v4, [I

    .line 249
    .local v2, "sortIDs":[I
    array-length v4, p1

    invoke-static {p1, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    const/4 v0, 0x0

    :goto_1
    array-length v4, v2

    if-lt v0, v4, :cond_6

    .line 262
    const/4 v0, 0x0

    :goto_2
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-lt v0, v4, :cond_9

    .line 268
    const-string v4, "srvRec query for attr"

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget v5, v2, v5

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Lcom/intel/bluetooth/DebugLog;->debug0x(Ljava/lang/String;J)V

    .line 270
    iget-object v4, p0, Lcom/intel/bluetooth/ServiceRecordImpl;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    invoke-interface {v4, p0, v2}, Lcom/intel/bluetooth/BluetoothStack;->populateServicesRecordAttributeValues(Lcom/intel/bluetooth/ServiceRecordImpl;[I)Z

    move-result v4

    return v4

    .line 238
    .end local v2    # "sortIDs":[I
    :cond_3
    aget v4, p1, v0

    if-ltz v4, :cond_4

    aget v4, p1, v0

    const v5, 0xffff

    if-le v4, v5, :cond_5

    .line 239
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 237
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    .restart local v2    # "sortIDs":[I
    :cond_6
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_3
    array-length v4, v2

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_7

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 252
    :cond_7
    aget v4, v2, v1

    add-int/lit8 v5, v1, 0x1

    aget v5, v2, v5

    if-le v4, v5, :cond_8

    .line 253
    aget v3, v2, v1

    .line 254
    .local v3, "temp":I
    add-int/lit8 v4, v1, 0x1

    aget v4, v2, v4

    aput v4, v2, v1

    .line 255
    add-int/lit8 v4, v1, 0x1

    aput v3, v2, v4

    .line 251
    .end local v3    # "temp":I
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 263
    .end local v1    # "j":I
    :cond_9
    aget v4, v2, v0

    add-int/lit8 v5, v0, 0x1

    aget v5, v2, v5

    if-ne v4, v5, :cond_a

    .line 264
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 266
    :cond_a
    const-string v4, "srvRec query for attr"

    aget v5, v2, v0

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Lcom/intel/bluetooth/DebugLog;->debug0x(Ljava/lang/String;J)V

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public setAttributeValue(ILjavax/bluetooth/DataElement;)Z
    .locals 3
    .param p1, "attrID"    # I
    .param p2, "attrValue"    # Ljavax/bluetooth/DataElement;

    .prologue
    const/4 v0, 0x1

    .line 616
    iget-object v1, p0, Lcom/intel/bluetooth/ServiceRecordImpl;->device:Ljavax/bluetooth/RemoteDevice;

    if-eqz v1, :cond_0

    .line 617
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 620
    :cond_0
    if-ltz p1, :cond_1

    const v1, 0xffff

    if-le p1, v1, :cond_2

    .line 621
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 624
    :cond_2
    if-nez p1, :cond_3

    .line 625
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 632
    :cond_3
    iput-boolean v0, p0, Lcom/intel/bluetooth/ServiceRecordImpl;->attributeUpdated:Z

    .line 633
    if-nez p2, :cond_5

    .line 634
    iget-object v1, p0, Lcom/intel/bluetooth/ServiceRecordImpl;->attributes:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 637
    :goto_0
    return v0

    .line 634
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 636
    :cond_5
    iget-object v1, p0, Lcom/intel/bluetooth/ServiceRecordImpl;->attributes:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDeviceServiceClasses(I)V
    .locals 2
    .param p1, "classes"    # I

    .prologue
    .line 564
    iget-object v0, p0, Lcom/intel/bluetooth/ServiceRecordImpl;->device:Ljavax/bluetooth/RemoteDevice;

    if-eqz v0, :cond_0

    .line 565
    new-instance v0, Ljava/lang/RuntimeException;

    .line 566
    const-string v1, "Service record obtained from a remote device"

    .line 565
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_0
    const v0, -0xffdffd

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 569
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 571
    :cond_1
    and-int/lit16 v0, p1, 0x1ffc

    if-eqz v0, :cond_2

    .line 572
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 575
    :cond_2
    iget-object v0, p0, Lcom/intel/bluetooth/ServiceRecordImpl;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothStack;->getFeatureSet()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_3

    .line 576
    new-instance v0, Lcom/intel/bluetooth/NotSupportedRuntimeException;

    iget-object v1, p0, Lcom/intel/bluetooth/ServiceRecordImpl;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    invoke-interface {v1}, Lcom/intel/bluetooth/BluetoothStack;->getStackID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/intel/bluetooth/NotSupportedRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :cond_3
    iput p1, p0, Lcom/intel/bluetooth/ServiceRecordImpl;->deviceServiceClasses:I

    .line 580
    return-void
.end method

.method setHandle(J)V
    .locals 0
    .param p1, "handle"    # J

    .prologue
    .line 688
    iput-wide p1, p0, Lcom/intel/bluetooth/ServiceRecordImpl;->handle:J

    .line 689
    return-void
.end method

.method toByteArray()[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v8, Ljavax/bluetooth/DataElement;

    const/16 v13, 0x30

    invoke-direct {v8, v13}, Ljavax/bluetooth/DataElement;-><init>(I)V

    .line 73
    .local v8, "rootSeq":Ljavax/bluetooth/DataElement;
    const/4 v10, 0x1

    .line 75
    .local v10, "sort":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/bluetooth/ServiceRecordImpl;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v13}, Ljava/util/Hashtable;->size()I

    move-result v13

    new-array v11, v13, [I

    .line 76
    .local v11, "sortIDs":[I
    const/4 v5, 0x0

    .line 77
    .local v5, "k":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/intel/bluetooth/ServiceRecordImpl;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v13}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-nez v13, :cond_0

    .line 84
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v13, v11

    if-lt v3, v13, :cond_1

    .line 94
    const/4 v3, 0x0

    :goto_2
    array-length v13, v11

    if-lt v3, v13, :cond_4

    .line 107
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 108
    .local v7, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v9, Lcom/intel/bluetooth/SDPOutputStream;

    invoke-direct {v9, v7}, Lcom/intel/bluetooth/SDPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 109
    .local v9, "sdpOut":Lcom/intel/bluetooth/SDPOutputStream;
    invoke-virtual {v9, v8}, Lcom/intel/bluetooth/SDPOutputStream;->writeElement(Ljavax/bluetooth/DataElement;)V

    .line 110
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    return-object v13

    .line 78
    .end local v3    # "i":I
    .end local v7    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "sdpOut":Lcom/intel/bluetooth/SDPOutputStream;
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 79
    .local v6, "key":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aput v13, v11, v5

    .line 80
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 85
    .end local v6    # "key":Ljava/lang/Integer;
    .restart local v3    # "i":I
    :cond_1
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    array-length v13, v11

    sub-int/2addr v13, v3

    add-int/lit8 v13, v13, -0x1

    if-lt v4, v13, :cond_2

    .line 84
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 86
    :cond_2
    aget v13, v11, v4

    add-int/lit8 v14, v4, 0x1

    aget v14, v11, v14

    if-le v13, v14, :cond_3

    .line 87
    aget v12, v11, v4

    .line 88
    .local v12, "temp":I
    add-int/lit8 v13, v4, 0x1

    aget v13, v11, v13

    aput v13, v11, v4

    .line 89
    add-int/lit8 v13, v4, 0x1

    aput v12, v11, v13

    .line 85
    .end local v12    # "temp":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 95
    .end local v4    # "j":I
    :cond_4
    aget v1, v11, v3

    .line 96
    .local v1, "attrID":I
    new-instance v13, Ljavax/bluetooth/DataElement;

    const/16 v14, 0x9

    int-to-long v15, v1

    invoke-direct/range {v13 .. v16}, Ljavax/bluetooth/DataElement;-><init>(IJ)V

    invoke-virtual {v8, v13}, Ljavax/bluetooth/DataElement;->addElement(Ljavax/bluetooth/DataElement;)V

    .line 97
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/intel/bluetooth/ServiceRecordImpl;->getAttributeValue(I)Ljavax/bluetooth/DataElement;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljavax/bluetooth/DataElement;->addElement(Ljavax/bluetooth/DataElement;)V

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 657
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v4, "{\n"

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 659
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/intel/bluetooth/ServiceRecordImpl;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_0

    .line 672
    const-string v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 674
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 660
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 662
    .local v3, "i":Ljava/lang/Integer;
    const-string v4, "0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 663
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 664
    const-string v4, ":\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 666
    iget-object v4, p0, Lcom/intel/bluetooth/ServiceRecordImpl;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/bluetooth/DataElement;

    .line 668
    .local v1, "d":Ljavax/bluetooth/DataElement;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 669
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

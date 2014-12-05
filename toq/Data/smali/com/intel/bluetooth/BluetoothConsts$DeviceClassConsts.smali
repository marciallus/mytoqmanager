.class public Lcom/intel/bluetooth/BluetoothConsts$DeviceClassConsts;
.super Ljava/lang/Object;
.source "BluetoothConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/bluetooth/BluetoothConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceClassConsts"
.end annotation


# static fields
.field public static final AUDIO_MINOR_CAMCORDER:I = 0x34

.field public static final AUDIO_MINOR_CAR_AUDIO:I = 0x20

.field public static final AUDIO_MINOR_GAMING_TOY:I = 0x48

.field public static final AUDIO_MINOR_HANDS_FREE:I = 0x8

.field public static final AUDIO_MINOR_HEADPHONES:I = 0x18

.field public static final AUDIO_MINOR_HEADSET:I = 0x4

.field public static final AUDIO_MINOR_HIFI_AUDIO:I = 0x28

.field public static final AUDIO_MINOR_LOUDSPEAKER:I = 0x14

.field public static final AUDIO_MINOR_MICROPHONE:I = 0x10

.field public static final AUDIO_MINOR_PORTABLE_AUDIO:I = 0x1c

.field public static final AUDIO_MINOR_SET_TOP_BOX:I = 0x24

.field public static final AUDIO_MINOR_UNCLASSIFIED:I = 0x0

.field public static final AUDIO_MINOR_VCR:I = 0x2c

.field public static final AUDIO_MINOR_VIDEO_CAMERA:I = 0x30

.field public static final AUDIO_MINOR_VIDEO_DISPLAY_CONFERENCING:I = 0x40

.field public static final AUDIO_MINOR_VIDEO_DISPLAY_LOUDSPEAKER:I = 0x3c

.field public static final AUDIO_MINOR_VIDEO_MONITOR:I = 0x38

.field public static final AUDIO_SERVICE:I = 0x200000

.field public static final CAPTURING_SERVICE:I = 0x80000

.field public static final COMPUTER_MINOR_DESKTOP:I = 0x4

.field public static final COMPUTER_MINOR_HANDHELD:I = 0x10

.field public static final COMPUTER_MINOR_LAPTOP:I = 0xc

.field public static final COMPUTER_MINOR_PALM:I = 0x14

.field public static final COMPUTER_MINOR_SERVER:I = 0x8

.field public static final COMPUTER_MINOR_UNCLASSIFIED:I = 0x0

.field public static final COMPUTER_MINOR_WEARABLE:I = 0x18

.field public static final FORMAT_VERSION_MASK:I = 0x3

.field public static final IMAGING_MINOR_CAMERA_MASK:I = 0x20

.field public static final IMAGING_MINOR_DISPLAY_MASK:I = 0x10

.field public static final IMAGING_MINOR_PRINTER_MASK:I = 0x80

.field public static final IMAGING_MINOR_SCANNER_MASK:I = 0x40

.field public static final INFORMATION_SERVICE:I = 0x800000

.field public static final LAN_MINOR_ACCESS_0_USED:I = 0x0

.field public static final LAN_MINOR_ACCESS_17_USED:I = 0x20

.field public static final LAN_MINOR_ACCESS_33_USED:I = 0x40

.field public static final LAN_MINOR_ACCESS_50_USED:I = 0x60

.field public static final LAN_MINOR_ACCESS_67_USED:I = 0x80

.field public static final LAN_MINOR_ACCESS_83_USED:I = 0xa0

.field public static final LAN_MINOR_ACCESS_99_USED:I = 0xc0

.field public static final LAN_MINOR_ACCESS_FULL:I = 0xe0

.field public static final LAN_MINOR_ACCESS_MASK:I = 0xe0

.field public static final LAN_MINOR_TYPE_MASK:I = 0x1c

.field public static final LAN_MINOR_UNCLASSIFIED:I = 0x0

.field public static final LIMITED_DISCOVERY_SERVICE:I = 0x2000

.field public static final MAJOR_AUDIO:I = 0x400

.field public static final MAJOR_COMPUTER:I = 0x100

.field public static final MAJOR_IMAGING:I = 0x600

.field public static final MAJOR_LAN_ACCESS:I = 0x300

.field public static final MAJOR_MASK:I = 0x1f00

.field public static final MAJOR_MISCELLANEOUS:I = 0x0

.field public static final MAJOR_PERIPHERAL:I = 0x500

.field public static final MAJOR_PHONE:I = 0x200

.field public static final MAJOR_UNCLASSIFIED:I = 0x1f00

.field public static final MINOR_MASK:I = 0xfc

.field public static final NETWORKING_SERVICE:I = 0x20000

.field public static final OBJECT_TRANSFER_SERVICE:I = 0x100000

.field public static final PERIPHERAL_MINOR_CARD_READER:I = 0x18

.field public static final PERIPHERAL_MINOR_DIGITIZER:I = 0x14

.field public static final PERIPHERAL_MINOR_GAMEPAD:I = 0x8

.field public static final PERIPHERAL_MINOR_JOYSTICK:I = 0x4

.field public static final PERIPHERAL_MINOR_KEYBOARD_MASK:I = 0x40

.field public static final PERIPHERAL_MINOR_POINTER_MASK:I = 0x80

.field public static final PERIPHERAL_MINOR_REMOTE_CONTROL:I = 0xc

.field public static final PERIPHERAL_MINOR_SENSING:I = 0x10

.field public static final PERIPHERAL_MINOR_TYPE_MASK:I = 0x3c

.field public static final PERIPHERAL_MINOR_UNCLASSIFIED:I = 0x0

.field public static final PHONE_MINOR_BANANA:I = 0x18

.field public static final PHONE_MINOR_CELLULAR:I = 0x4

.field public static final PHONE_MINOR_CORDLESS:I = 0x8

.field public static final PHONE_MINOR_ISDN:I = 0x14

.field public static final PHONE_MINOR_SMARTPHONE:I = 0xc

.field public static final PHONE_MINOR_UNCLASSIFIED:I = 0x0

.field public static final PHONE_MINOR_WIRED_MODEM:I = 0x10

.field public static final POSITIONING_SERVICE:I = 0x10000

.field public static final RENDERING_SERVICE:I = 0x40000

.field public static final RESERVED1_SERVICE:I = 0x4000

.field public static final RESERVED2_SERVICE:I = 0x8000

.field public static final SERVICE_MASK:I = 0xffe000

.field public static final TELEPHONY_SERVICE:I = 0x400000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "buf"    # Ljava/lang/StringBuffer;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "comma"    # Z

    .prologue
    .line 331
    if-eqz p2, :cond_0

    .line 332
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 334
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    const/4 v0, 0x1

    return v0
.end method

.method public static toString(Ljavax/bluetooth/DeviceClass;)Ljava/lang/String;
    .locals 6
    .param p0, "dc"    # Ljavax/bluetooth/DeviceClass;

    .prologue
    const/16 v5, 0x29

    .line 339
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 341
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljavax/bluetooth/DeviceClass;->getMajorDeviceClass()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 590
    const-string v4, "Unknown"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 594
    :goto_0
    const-string v4, "/("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 596
    const/4 v1, 0x0

    .line 598
    .local v1, "comma":Z
    invoke-virtual {p0}, Ljavax/bluetooth/DeviceClass;->getServiceClasses()I

    move-result v3

    .line 600
    .local v3, "record":I
    and-int/lit16 v4, v3, 0x2000

    if-eqz v4, :cond_0

    .line 601
    const-string v4, "Limited Discovery"

    invoke-static {v0, v4, v1}, Lcom/intel/bluetooth/BluetoothConsts$DeviceClassConsts;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)Z

    move-result v1

    .line 603
    :cond_0
    const/high16 v4, 0x10000

    and-int/2addr v4, v3

    if-eqz v4, :cond_1

    .line 604
    const-string v4, "Positioning"

    invoke-static {v0, v4, v1}, Lcom/intel/bluetooth/BluetoothConsts$DeviceClassConsts;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)Z

    move-result v1

    .line 606
    :cond_1
    const/high16 v4, 0x20000

    and-int/2addr v4, v3

    if-eqz v4, :cond_2

    .line 607
    const-string v4, "Networking"

    invoke-static {v0, v4, v1}, Lcom/intel/bluetooth/BluetoothConsts$DeviceClassConsts;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)Z

    move-result v1

    .line 609
    :cond_2
    const/high16 v4, 0x40000

    and-int/2addr v4, v3

    if-eqz v4, :cond_3

    .line 610
    const-string v4, "Rendering"

    invoke-static {v0, v4, v1}, Lcom/intel/bluetooth/BluetoothConsts$DeviceClassConsts;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)Z

    move-result v1

    .line 612
    :cond_3
    const/high16 v4, 0x80000

    and-int/2addr v4, v3

    if-eqz v4, :cond_4

    .line 613
    const-string v4, "Capturing"

    invoke-static {v0, v4, v1}, Lcom/intel/bluetooth/BluetoothConsts$DeviceClassConsts;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)Z

    move-result v1

    .line 615
    :cond_4
    const/high16 v4, 0x100000

    and-int/2addr v4, v3

    if-eqz v4, :cond_5

    .line 616
    const-string v4, "Object Transfer"

    invoke-static {v0, v4, v1}, Lcom/intel/bluetooth/BluetoothConsts$DeviceClassConsts;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)Z

    move-result v1

    .line 618
    :cond_5
    const/high16 v4, 0x200000

    and-int/2addr v4, v3

    if-eqz v4, :cond_6

    .line 619
    const-string v4, "Audio"

    invoke-static {v0, v4, v1}, Lcom/intel/bluetooth/BluetoothConsts$DeviceClassConsts;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)Z

    move-result v1

    .line 621
    :cond_6
    const/high16 v4, 0x400000

    and-int/2addr v4, v3

    if-eqz v4, :cond_7

    .line 622
    const-string v4, "Telephony"

    invoke-static {v0, v4, v1}, Lcom/intel/bluetooth/BluetoothConsts$DeviceClassConsts;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)Z

    move-result v1

    .line 624
    :cond_7
    const/high16 v4, 0x800000

    and-int/2addr v4, v3

    if-eqz v4, :cond_8

    .line 625
    const-string v4, "Information"

    invoke-static {v0, v4, v1}, Lcom/intel/bluetooth/BluetoothConsts$DeviceClassConsts;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)Z

    .line 628
    :cond_8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 630
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 343
    .end local v1    # "comma":Z
    .end local v3    # "record":I
    :sswitch_0
    const-string v4, "Miscellaneous"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 346
    :sswitch_1
    const-string v4, "Computer"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    invoke-virtual {p0}, Ljavax/bluetooth/DeviceClass;->getMinorDeviceClass()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    .line 371
    const-string v4, "/Unknown"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 350
    :sswitch_2
    const-string v4, "/Unclassified"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 353
    :sswitch_3
    const-string v4, "/Desktop"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 356
    :sswitch_4
    const-string v4, "/Server"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 359
    :sswitch_5
    const-string v4, "/Laptop"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 362
    :sswitch_6
    const-string v4, "/Handheld"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 365
    :sswitch_7
    const-string v4, "/Palm"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 368
    :sswitch_8
    const-string v4, "/Wearable"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 377
    :sswitch_9
    const-string v4, "Phone"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    invoke-virtual {p0}, Ljavax/bluetooth/DeviceClass;->getMinorDeviceClass()I

    move-result v4

    sparse-switch v4, :sswitch_data_2

    .line 402
    const-string v4, "/Unknown"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 381
    :sswitch_a
    const-string v4, "/Unclassified"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 384
    :sswitch_b
    const-string v4, "/Cellular"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 387
    :sswitch_c
    const-string v4, "/Cordless"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 390
    :sswitch_d
    const-string v4, "/Smartphone"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 393
    :sswitch_e
    const-string v4, "/Wired Modem"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 396
    :sswitch_f
    const-string v4, "/ISDN"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 399
    :sswitch_10
    const-string v4, "/Ring ring ring ring ring ring ring"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 408
    :sswitch_11
    const-string v4, "LAN Access"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    invoke-virtual {p0}, Ljavax/bluetooth/DeviceClass;->getMinorDeviceClass()I

    move-result v2

    .line 412
    .local v2, "minor":I
    and-int/lit8 v4, v2, 0x1c

    packed-switch v4, :pswitch_data_0

    .line 417
    const-string v4, "/Unknown"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    :goto_1
    and-int/lit16 v4, v2, 0xe0

    sparse-switch v4, :sswitch_data_3

    goto/16 :goto_0

    .line 423
    :sswitch_12
    const-string v4, "/0% used"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 414
    :pswitch_0
    const-string v4, "/Unclassified"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 426
    :sswitch_13
    const-string v4, "/1-17% used"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 429
    :sswitch_14
    const-string v4, "/18-33% used"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 432
    :sswitch_15
    const-string v4, "/34-50% used"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 435
    :sswitch_16
    const-string v4, "/51-67% used"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 438
    :sswitch_17
    const-string v4, "/68-83% used"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 441
    :sswitch_18
    const-string v4, "/84-99% used"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 444
    :sswitch_19
    const-string v4, "/100% used"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 451
    .end local v2    # "minor":I
    :sswitch_1a
    const-string v4, "Audio"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    invoke-virtual {p0}, Ljavax/bluetooth/DeviceClass;->getMinorDeviceClass()I

    move-result v4

    sparse-switch v4, :sswitch_data_4

    .line 506
    const-string v4, "/Unknown"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 455
    :sswitch_1b
    const-string v4, "/Unclassified"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 458
    :sswitch_1c
    const-string v4, "/Headset"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 461
    :sswitch_1d
    const-string v4, "/Hands-free"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 464
    :sswitch_1e
    const-string v4, "/Microphone"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 467
    :sswitch_1f
    const-string v4, "/Loudspeaker"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 470
    :sswitch_20
    const-string v4, "/Headphones"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 473
    :sswitch_21
    const-string v4, "/Portable"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 476
    :sswitch_22
    const-string v4, "/Car"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 479
    :sswitch_23
    const-string v4, "/Set-top Box"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 482
    :sswitch_24
    const-string v4, "/HiFi"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 485
    :sswitch_25
    const-string v4, "/VCR"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 488
    :sswitch_26
    const-string v4, "/Video Camera"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 491
    :sswitch_27
    const-string v4, "/Camcorder"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 494
    :sswitch_28
    const-string v4, "/Video Monitor"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 497
    :sswitch_29
    const-string v4, "/Video Display Loudspeaker"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 500
    :sswitch_2a
    const-string v4, "/Video Display Conferencing"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 503
    :sswitch_2b
    const-string v4, "/Gaming Toy"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 512
    :sswitch_2c
    const-string v4, "Peripheral"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 514
    invoke-virtual {p0}, Ljavax/bluetooth/DeviceClass;->getMinorDeviceClass()I

    move-result v2

    .line 516
    .restart local v2    # "minor":I
    and-int/lit16 v4, v2, 0xc0

    sparse-switch v4, :sswitch_data_5

    .line 533
    :goto_2
    and-int/lit8 v4, v2, 0x3c

    sparse-switch v4, :sswitch_data_6

    .line 556
    const-string v4, "/Unknown"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 519
    :sswitch_2d
    const-string v4, "/()"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 522
    :sswitch_2e
    const-string v4, "/(Keyboard)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 525
    :sswitch_2f
    const-string v4, "/(Pointer)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 529
    :sswitch_30
    const-string v4, "/(Keyboard,Pointer)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 535
    :sswitch_31
    const-string v4, "/Unclassified"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 538
    :sswitch_32
    const-string v4, "/Joystick"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 541
    :sswitch_33
    const-string v4, "/Gamepad"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 544
    :sswitch_34
    const-string v4, "/Remote Control"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 547
    :sswitch_35
    const-string v4, "/Sensing"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 550
    :sswitch_36
    const-string v4, "/Digitizer"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 553
    :sswitch_37
    const-string v4, "/Card Reader"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 563
    .end local v2    # "minor":I
    :sswitch_38
    const-string v4, "Peripheral/("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 565
    invoke-virtual {p0}, Ljavax/bluetooth/DeviceClass;->getMinorDeviceClass()I

    move-result v2

    .line 567
    .restart local v2    # "minor":I
    const/4 v1, 0x0

    .line 569
    .restart local v1    # "comma":Z
    and-int/lit8 v4, v2, 0x10

    if-eqz v4, :cond_9

    .line 570
    const-string v4, "Display"

    invoke-static {v0, v4, v1}, Lcom/intel/bluetooth/BluetoothConsts$DeviceClassConsts;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)Z

    move-result v1

    .line 572
    :cond_9
    and-int/lit8 v4, v2, 0x20

    if-eqz v4, :cond_a

    .line 573
    const-string v4, "Camera"

    invoke-static {v0, v4, v1}, Lcom/intel/bluetooth/BluetoothConsts$DeviceClassConsts;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)Z

    move-result v1

    .line 575
    :cond_a
    and-int/lit8 v4, v2, 0x40

    if-eqz v4, :cond_b

    .line 576
    const-string v4, "Scanner"

    invoke-static {v0, v4, v1}, Lcom/intel/bluetooth/BluetoothConsts$DeviceClassConsts;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)Z

    move-result v1

    .line 578
    :cond_b
    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_c

    .line 579
    const-string v4, "Printer"

    invoke-static {v0, v4, v1}, Lcom/intel/bluetooth/BluetoothConsts$DeviceClassConsts;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)Z

    .line 582
    :cond_c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 587
    .end local v1    # "comma":Z
    .end local v2    # "minor":I
    :sswitch_39
    const-string v4, "Unclassified"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 341
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x100 -> :sswitch_1
        0x200 -> :sswitch_9
        0x300 -> :sswitch_11
        0x400 -> :sswitch_1a
        0x500 -> :sswitch_2c
        0x600 -> :sswitch_38
        0x1f00 -> :sswitch_39
    .end sparse-switch

    .line 348
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x4 -> :sswitch_3
        0x8 -> :sswitch_4
        0xc -> :sswitch_5
        0x10 -> :sswitch_6
        0x14 -> :sswitch_7
        0x18 -> :sswitch_8
    .end sparse-switch

    .line 379
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_a
        0x4 -> :sswitch_b
        0x8 -> :sswitch_c
        0xc -> :sswitch_d
        0x10 -> :sswitch_e
        0x14 -> :sswitch_f
        0x18 -> :sswitch_10
    .end sparse-switch

    .line 412
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 421
    :sswitch_data_3
    .sparse-switch
        0x0 -> :sswitch_12
        0x20 -> :sswitch_13
        0x40 -> :sswitch_14
        0x60 -> :sswitch_15
        0x80 -> :sswitch_16
        0xa0 -> :sswitch_17
        0xc0 -> :sswitch_18
        0xe0 -> :sswitch_19
    .end sparse-switch

    .line 453
    :sswitch_data_4
    .sparse-switch
        0x0 -> :sswitch_1b
        0x4 -> :sswitch_1c
        0x8 -> :sswitch_1d
        0x10 -> :sswitch_1e
        0x14 -> :sswitch_1f
        0x18 -> :sswitch_20
        0x1c -> :sswitch_21
        0x20 -> :sswitch_22
        0x24 -> :sswitch_23
        0x28 -> :sswitch_24
        0x2c -> :sswitch_25
        0x30 -> :sswitch_26
        0x34 -> :sswitch_27
        0x38 -> :sswitch_28
        0x3c -> :sswitch_29
        0x40 -> :sswitch_2a
        0x48 -> :sswitch_2b
    .end sparse-switch

    .line 516
    :sswitch_data_5
    .sparse-switch
        0x0 -> :sswitch_2d
        0x40 -> :sswitch_2e
        0x80 -> :sswitch_2f
        0xc0 -> :sswitch_30
    .end sparse-switch

    .line 533
    :sswitch_data_6
    .sparse-switch
        0x0 -> :sswitch_31
        0x4 -> :sswitch_32
        0x8 -> :sswitch_33
        0xc -> :sswitch_34
        0x10 -> :sswitch_35
        0x14 -> :sswitch_36
        0x18 -> :sswitch_37
    .end sparse-switch
.end method

.class public Ljavax/bluetooth/DataElement;
.super Ljava/lang/Object;
.source "DataElement.java"


# static fields
.field public static final BOOL:I = 0x28

.field public static final DATALT:I = 0x38

.field public static final DATSEQ:I = 0x30

.field public static final INT_1:I = 0x10

.field public static final INT_16:I = 0x14

.field public static final INT_2:I = 0x11

.field public static final INT_4:I = 0x12

.field public static final INT_8:I = 0x13

.field public static final NULL:I = 0x0

.field public static final STRING:I = 0x20

.field public static final URL:I = 0x40

.field public static final UUID:I = 0x18

.field public static final U_INT_1:I = 0x8

.field public static final U_INT_16:I = 0xc

.field public static final U_INT_2:I = 0x9

.field public static final U_INT_4:I = 0xa

.field public static final U_INT_8:I = 0xb


# instance fields
.field private value:Ljava/lang/Object;

.field private valueType:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "valueType"    # I

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    sparse-switch p1, :sswitch_data_0

    .line 289
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "valueType "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-static {p1}, Ljavax/bluetooth/DataElement;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 291
    const-string v2, " is not DATSEQ, DATALT or NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :sswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/bluetooth/DataElement;->value:Ljava/lang/Object;

    .line 294
    :goto_0
    iput p1, p0, Ljavax/bluetooth/DataElement;->valueType:I

    .line 295
    return-void

    .line 286
    :sswitch_1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/bluetooth/DataElement;->value:Ljava/lang/Object;

    goto :goto_0

    .line 280
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x30 -> :sswitch_1
        0x38 -> :sswitch_1
    .end sparse-switch
.end method

.method public constructor <init>(IJ)V
    .locals 3
    .param p1, "valueType"    # I
    .param p2, "value"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    packed-switch p1, :pswitch_data_0

    .line 416
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    invoke-static {p1}, Ljavax/bluetooth/DataElement;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can\'t be represented long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 416
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :pswitch_1
    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0xff

    cmp-long v0, p2, v0

    if-lez v0, :cond_6

    .line 384
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " not U_INT_1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :pswitch_2
    cmp-long v0, p2, v0

    if-ltz v0, :cond_1

    const-wide/32 v0, 0xffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_6

    .line 389
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " not U_INT_2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :pswitch_3
    cmp-long v0, p2, v0

    if-ltz v0, :cond_2

    const-wide v0, 0xffffffffL

    cmp-long v0, p2, v0

    if-lez v0, :cond_6

    .line 394
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " not U_INT_4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :pswitch_4
    const-wide/16 v0, -0x80

    cmp-long v0, p2, v0

    if-ltz v0, :cond_3

    const-wide/16 v0, 0x7f

    cmp-long v0, p2, v0

    if-lez v0, :cond_6

    .line 399
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " not INT_1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :pswitch_5
    const-wide/16 v0, -0x8000

    cmp-long v0, p2, v0

    if-ltz v0, :cond_4

    const-wide/16 v0, 0x7fff

    cmp-long v0, p2, v0

    if-lez v0, :cond_6

    .line 404
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " not INT_2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :pswitch_6
    const-wide/32 v0, -0x80000000

    cmp-long v0, p2, v0

    if-ltz v0, :cond_5

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_6

    .line 409
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " not INT_4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_6
    :pswitch_7
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Ljavax/bluetooth/DataElement;->value:Ljava/lang/Object;

    .line 421
    iput p1, p0, Ljavax/bluetooth/DataElement;->valueType:I

    .line 422
    return-void

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 3
    .param p1, "valueType"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    if-nez p2, :cond_0

    .line 489
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value param is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 518
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 519
    invoke-static {p1}, Ljavax/bluetooth/DataElement;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 520
    const-string v2, " can\'t be represented by Object"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 518
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 494
    :sswitch_0
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_3

    .line 495
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 496
    const-string v1, "value param should be String"

    .line 495
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :sswitch_1
    instance-of v0, p2, Ljavax/bluetooth/UUID;

    if-nez v0, :cond_3

    .line 501
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value param should be UUID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :sswitch_2
    instance-of v0, p2, [B

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, [B

    array-length v0, v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 506
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 507
    const-string v1, "value param should be byte[8]"

    .line 506
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :sswitch_3
    instance-of v0, p2, [B

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, [B

    array-length v0, v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    .line 513
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 514
    const-string v1, "value param should be byte[16]"

    .line 513
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_3
    iput-object p2, p0, Ljavax/bluetooth/DataElement;->value:Ljava/lang/Object;

    .line 523
    iput p1, p0, Ljavax/bluetooth/DataElement;->valueType:I

    .line 524
    return-void

    .line 491
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_2
        0xc -> :sswitch_3
        0x14 -> :sswitch_3
        0x18 -> :sswitch_1
        0x20 -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "bool"    # Z

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    iput-object v0, p0, Ljavax/bluetooth/DataElement;->value:Ljava/lang/Object;

    .line 309
    const/16 v0, 0x28

    iput v0, p0, Ljavax/bluetooth/DataElement;->valueType:I

    .line 310
    return-void

    .line 308
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 833
    sparse-switch p0, :sswitch_data_0

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 835
    :sswitch_0
    const-string v0, "NULL"

    goto :goto_0

    .line 837
    :sswitch_1
    const-string v0, "U_INT_1"

    goto :goto_0

    .line 839
    :sswitch_2
    const-string v0, "U_INT_2"

    goto :goto_0

    .line 841
    :sswitch_3
    const-string v0, "U_INT_4"

    goto :goto_0

    .line 843
    :sswitch_4
    const-string v0, "U_INT_8"

    goto :goto_0

    .line 845
    :sswitch_5
    const-string v0, "U_INT_16"

    goto :goto_0

    .line 847
    :sswitch_6
    const-string v0, "INT_1"

    goto :goto_0

    .line 849
    :sswitch_7
    const-string v0, "INT_2"

    goto :goto_0

    .line 851
    :sswitch_8
    const-string v0, "INT_4"

    goto :goto_0

    .line 853
    :sswitch_9
    const-string v0, "INT_8"

    goto :goto_0

    .line 855
    :sswitch_a
    const-string v0, "INT_16"

    goto :goto_0

    .line 857
    :sswitch_b
    const-string v0, "URL"

    goto :goto_0

    .line 859
    :sswitch_c
    const-string v0, "STRING"

    goto :goto_0

    .line 861
    :sswitch_d
    const-string v0, "UUID"

    goto :goto_0

    .line 863
    :sswitch_e
    const-string v0, "DATSEQ"

    goto :goto_0

    .line 865
    :sswitch_f
    const-string v0, "BOOL"

    goto :goto_0

    .line 867
    :sswitch_10
    const-string v0, "DATALT"

    goto :goto_0

    .line 833
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_2
        0xa -> :sswitch_3
        0xb -> :sswitch_4
        0xc -> :sswitch_5
        0x10 -> :sswitch_6
        0x11 -> :sswitch_7
        0x12 -> :sswitch_8
        0x13 -> :sswitch_9
        0x14 -> :sswitch_a
        0x18 -> :sswitch_d
        0x20 -> :sswitch_c
        0x28 -> :sswitch_f
        0x30 -> :sswitch_e
        0x38 -> :sswitch_10
        0x40 -> :sswitch_b
    .end sparse-switch
.end method


# virtual methods
.method public addElement(Ljavax/bluetooth/DataElement;)V
    .locals 2
    .param p1, "elem"    # Ljavax/bluetooth/DataElement;

    .prologue
    .line 551
    if-nez p1, :cond_0

    .line 552
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "elem param is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_0
    iget v0, p0, Ljavax/bluetooth/DataElement;->valueType:I

    sparse-switch v0, :sswitch_data_0

    .line 560
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "DataType is not DATSEQ or DATALT"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :sswitch_0
    iget-object v0, p0, Ljavax/bluetooth/DataElement;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 562
    return-void

    .line 554
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x38 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBoolean()Z
    .locals 2

    .prologue
    .line 746
    iget v0, p0, Ljavax/bluetooth/DataElement;->valueType:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    .line 747
    iget-object v0, p0, Ljavax/bluetooth/DataElement;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 749
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "DataType is not BOOL"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDataType()I
    .locals 1

    .prologue
    .line 697
    iget v0, p0, Ljavax/bluetooth/DataElement;->valueType:I

    return v0
.end method

.method public getLong()J
    .locals 2

    .prologue
    .line 718
    iget v0, p0, Ljavax/bluetooth/DataElement;->valueType:I

    packed-switch v0, :pswitch_data_0

    .line 728
    :pswitch_0
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "DataType is not INT"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :pswitch_1
    iget-object v0, p0, Ljavax/bluetooth/DataElement;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 718
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

.method public getSize()I
    .locals 2

    .prologue
    .line 628
    iget v0, p0, Ljavax/bluetooth/DataElement;->valueType:I

    sparse-switch v0, :sswitch_data_0

    .line 633
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "DataType is not DATSEQ or DATALT"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 631
    :sswitch_0
    iget-object v0, p0, Ljavax/bluetooth/DataElement;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0

    .line 628
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x38 -> :sswitch_0
    .end sparse-switch
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 814
    iget v0, p0, Ljavax/bluetooth/DataElement;->valueType:I

    sparse-switch v0, :sswitch_data_0

    .line 828
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "DataType is simple java type"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 818
    :sswitch_0
    iget-object v0, p0, Ljavax/bluetooth/DataElement;->value:Ljava/lang/Object;

    .line 826
    :goto_0
    return-object v0

    .line 823
    :sswitch_1
    iget-object v0, p0, Ljavax/bluetooth/DataElement;->value:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Lcom/intel/bluetooth/Utils;->clone([B)[B

    move-result-object v0

    goto :goto_0

    .line 826
    :sswitch_2
    iget-object v0, p0, Ljavax/bluetooth/DataElement;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0

    .line 814
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_1
        0xc -> :sswitch_1
        0x14 -> :sswitch_1
        0x18 -> :sswitch_0
        0x20 -> :sswitch_0
        0x30 -> :sswitch_2
        0x38 -> :sswitch_2
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method public insertElementAt(Ljavax/bluetooth/DataElement;I)V
    .locals 2
    .param p1, "elem"    # Ljavax/bluetooth/DataElement;
    .param p2, "index"    # I

    .prologue
    .line 601
    if-nez p1, :cond_0

    .line 602
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "elem param is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :cond_0
    iget v0, p0, Ljavax/bluetooth/DataElement;->valueType:I

    sparse-switch v0, :sswitch_data_0

    .line 610
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "DataType is not DATSEQ or DATALT"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :sswitch_0
    iget-object v0, p0, Ljavax/bluetooth/DataElement;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 612
    return-void

    .line 604
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x38 -> :sswitch_0
    .end sparse-switch
.end method

.method public removeElement(Ljavax/bluetooth/DataElement;)Z
    .locals 2
    .param p1, "elem"    # Ljavax/bluetooth/DataElement;

    .prologue
    .line 669
    if-nez p1, :cond_0

    .line 670
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "elem param is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 672
    :cond_0
    iget v0, p0, Ljavax/bluetooth/DataElement;->valueType:I

    sparse-switch v0, :sswitch_data_0

    .line 677
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "DataType is not DATSEQ or DATALT"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :sswitch_0
    iget-object v0, p0, Ljavax/bluetooth/DataElement;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 672
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x38 -> :sswitch_0
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 880
    iget v4, p0, Ljavax/bluetooth/DataElement;->valueType:I

    sparse-switch v4, :sswitch_data_0

    .line 937
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Ljavax/bluetooth/DataElement;->valueType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    .line 888
    :sswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Ljavax/bluetooth/DataElement;->valueType:I

    invoke-static {v5}, Ljavax/bluetooth/DataElement;->typeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 889
    iget-object v4, p0, Ljavax/bluetooth/DataElement;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/intel/bluetooth/Utils;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 888
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 894
    :sswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Ljavax/bluetooth/DataElement;->valueType:I

    invoke-static {v5}, Ljavax/bluetooth/DataElement;->typeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljavax/bluetooth/DataElement;->value:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 898
    :sswitch_2
    iget-object v0, p0, Ljavax/bluetooth/DataElement;->value:Ljava/lang/Object;

    check-cast v0, [B

    .line 900
    .local v0, "b":[B
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 901
    .local v1, "buf":Ljava/lang/StringBuffer;
    iget v4, p0, Ljavax/bluetooth/DataElement;->valueType:I

    invoke-static {v4}, Ljavax/bluetooth/DataElement;->typeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 903
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v0

    if-lt v3, v4, :cond_0

    .line 908
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 904
    :cond_0
    aget-byte v4, v0, v3

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 905
    aget-byte v4, v0, v3

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 903
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 911
    .end local v0    # "b":[B
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v4, "DATSEQ {\n"

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 913
    .restart local v1    # "buf":Ljava/lang/StringBuffer;
    iget-object v4, p0, Ljavax/bluetooth/DataElement;->value:Ljava/lang/Object;

    check-cast v4, Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 914
    .local v2, "e":Ljava/util/Enumeration;
    :goto_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    .line 913
    if-nez v4, :cond_1

    .line 919
    const-string v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 921
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 915
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 916
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 924
    .end local v1    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "e":Ljava/util/Enumeration;
    :sswitch_4
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v4, "DATALT {\n"

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 926
    .restart local v1    # "buf":Ljava/lang/StringBuffer;
    iget-object v4, p0, Ljavax/bluetooth/DataElement;->value:Ljava/lang/Object;

    check-cast v4, Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 927
    .restart local v2    # "e":Ljava/util/Enumeration;
    :goto_3
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    .line 926
    if-nez v4, :cond_2

    .line 932
    const-string v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 934
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 928
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 929
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 880
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_2
        0xc -> :sswitch_2
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_2
        0x18 -> :sswitch_1
        0x20 -> :sswitch_1
        0x28 -> :sswitch_1
        0x30 -> :sswitch_3
        0x38 -> :sswitch_4
        0x40 -> :sswitch_1
    .end sparse-switch
.end method

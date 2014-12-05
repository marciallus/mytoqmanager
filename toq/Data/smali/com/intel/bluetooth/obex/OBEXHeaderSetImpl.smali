.class Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
.super Ljava/lang/Object;
.source "OBEXHeaderSetImpl.java"

# interfaces
.implements Ljavax/obex/HeaderSet;


# static fields
.field private static final NO_RESPONSE_CODE:I = -0x80000000

.field static final OBEX_BYTE:I = 0x80

.field static final OBEX_BYTE_STREAM:I = 0x40

.field static final OBEX_HDR_APP_PARAM:I = 0x4c

.field static final OBEX_HDR_AUTH_CHALLENGE:I = 0x4d

.field static final OBEX_HDR_AUTH_RESPONSE:I = 0x4e

.field static final OBEX_HDR_BODY:I = 0x48

.field static final OBEX_HDR_BODY_END:I = 0x49

.field static final OBEX_HDR_CONNECTION:I = 0xcb

.field static final OBEX_HDR_COUNT:I = 0xc0

.field static final OBEX_HDR_CREATOR:I = 0xcf

.field static final OBEX_HDR_DESCRIPTION:I = 0x5

.field static final OBEX_HDR_HI_MASK:I = 0xc0

.field static final OBEX_HDR_HTTP:I = 0x47

.field static final OBEX_HDR_ID_MASK:I = 0x3f

.field static final OBEX_HDR_LENGTH:I = 0xc3

.field static final OBEX_HDR_NAME:I = 0x1

.field static final OBEX_HDR_OBJECTCLASS:I = 0x4f

.field static final OBEX_HDR_SESSIONPARAM:I = 0x52

.field static final OBEX_HDR_SESSIONSEQ:I = 0x93

.field static final OBEX_HDR_TARGET:I = 0x46

.field static final OBEX_HDR_TIME:I = 0x44

.field static final OBEX_HDR_TIME2:I = 0xc4

.field static final OBEX_HDR_TYPE:I = 0x42

.field static final OBEX_HDR_USER:I = 0x30

.field static final OBEX_HDR_WANUUID:I = 0x50

.field static final OBEX_HDR_WHO:I = 0x4a

.field static final OBEX_INT:I = 0xc0

.field private static final OBEX_MAX_FIELD_LEN:I = 0xff

.field static final OBEX_STRING:I


# instance fields
.field private authChallenges:Ljava/util/Vector;

.field private authResponses:Ljava/util/Vector;

.field private headerValues:Ljava/util/Hashtable;

.field private responseCode:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 144
    const/high16 v0, -0x80000000

    invoke-direct {p0, v0}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;-><init>(I)V

    .line 145
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1, "responseCode"    # I

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->headerValues:Ljava/util/Hashtable;

    .line 149
    iput p1, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->responseCode:I

    .line 150
    iput-object v1, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->authResponses:Ljava/util/Vector;

    .line 151
    iput-object v1, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->authChallenges:Ljava/util/Vector;

    .line 152
    return-void
.end method

.method static appendHeaders(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;
    .locals 4
    .param p0, "dst"    # Ljavax/obex/HeaderSet;
    .param p1, "src"    # Ljavax/obex/HeaderSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-interface {p1}, Ljavax/obex/HeaderSet;->getHeaderList()[I

    move-result-object v1

    .line 292
    .local v1, "headerIDArray":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lt v2, v3, :cond_1

    .line 299
    :cond_0
    return-object p0

    .line 293
    :cond_1
    aget v0, v1, v2

    .line 294
    .local v0, "headerID":I
    const/16 v3, 0x48

    if-eq v0, v3, :cond_2

    const/16 v3, 0x49

    if-ne v0, v3, :cond_3

    .line 292
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 297
    :cond_3
    invoke-interface {p1, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v0, v3}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method static cloneHeaders(Ljavax/obex/HeaderSet;)Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    .locals 6
    .param p0, "headers"    # Ljavax/obex/HeaderSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    if-nez p0, :cond_1

    .line 269
    const/4 v2, 0x0

    .line 286
    :cond_0
    return-object v2

    .line 271
    :cond_1
    instance-of v4, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    if-nez v4, :cond_2

    .line 272
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Illegal HeaderSet type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 274
    :cond_2
    new-instance v2, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-object v4, p0

    .line 275
    check-cast v4, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    iget v4, v4, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->responseCode:I

    .line 274
    invoke-direct {v2, v4}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;-><init>(I)V

    .line 277
    .local v2, "hs":Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    invoke-interface {p0}, Ljavax/obex/HeaderSet;->getHeaderList()[I

    move-result-object v1

    .line 278
    .local v1, "headerIDArray":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-eqz v1, :cond_0

    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 279
    aget v0, v1, v3

    .line 281
    .local v0, "headerID":I
    const/16 v4, 0x48

    if-eq v0, v4, :cond_3

    const/16 v4, 0x49

    if-ne v0, v4, :cond_4

    .line 278
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 284
    :cond_4
    invoke-interface {p0, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->setHeader(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private static d2(I)[B
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 569
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 570
    .local v0, "b":[B
    const/4 v1, 0x0

    div-int/lit8 v2, p0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 571
    const/4 v1, 0x1

    rem-int/lit8 v2, p0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 572
    return-object v0
.end method

.method private static d4(I)[B
    .locals 5
    .param p0, "i"    # I

    .prologue
    const/4 v4, 0x4

    .line 558
    new-array v0, v4, [B

    .line 559
    .local v0, "b":[B
    const/16 v1, 0x3e8

    .line 560
    .local v1, "d":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 565
    return-object v0

    .line 561
    :cond_0
    div-int v3, p0, v1

    add-int/lit8 v3, v3, 0x30

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 562
    rem-int/2addr p0, v1

    .line 563
    div-int/lit8 v1, v1, 0xa

    .line 560
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static readHeaders(B[BI)Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    .locals 2
    .param p0, "responseCode"    # B
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    new-instance v0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    and-int/lit16 v1, p0, 0xff

    invoke-direct {v0, v1}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;-><init>(I)V

    invoke-static {v0, p1, p2}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->readHeaders(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;[BI)Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v0

    return-object v0
.end method

.method private static readHeaders(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;[BI)Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    .locals 11
    .param p0, "hs"    # Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 480
    const/4 v1, 0x0

    .line 481
    .local v1, "count":I
    :goto_0
    array-length v7, p1

    if-lt p2, v7, :cond_1

    .line 551
    if-eqz v1, :cond_0

    .line 552
    const-string v7, "read headers"

    int-to-long v8, v1

    invoke-static {v7, v8, v9}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    .line 554
    :cond_0
    return-object p0

    .line 482
    :cond_1
    aget-byte v7, p1, p2

    and-int/lit16 v3, v7, 0xff

    .line 483
    .local v3, "hi":I
    const/4 v6, 0x0

    .line 484
    .local v6, "len":I
    and-int/lit16 v7, v3, 0xc0

    sparse-switch v7, :sswitch_data_0

    .line 545
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Unsupported encoding "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 546
    and-int/lit16 v9, v3, 0xc0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 545
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 486
    :sswitch_0
    add-int/lit8 v7, p2, 0x1

    aget-byte v7, p1, v7

    add-int/lit8 v8, p2, 0x2

    aget-byte v8, p1, v8

    invoke-static {v7, v8}, Lcom/intel/bluetooth/obex/OBEXUtils;->bytesToShort(BB)I

    move-result v6

    .line 487
    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 488
    const-string v7, ""

    invoke-virtual {p0, v3, v7}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->setHeader(ILjava/lang/Object;)V

    .line 548
    :goto_1
    add-int/2addr p2, v6

    .line 549
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    :cond_2
    add-int/lit8 v7, v6, -0x5

    new-array v2, v7, [B

    .line 491
    .local v2, "data":[B
    add-int/lit8 v7, p2, 0x3

    array-length v8, v2

    invoke-static {p1, v7, v2, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 492
    invoke-static {v2}, Lcom/intel/bluetooth/obex/OBEXUtils;->newStringUTF16([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v7}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->setHeader(ILjava/lang/Object;)V

    goto :goto_1

    .line 496
    .end local v2    # "data":[B
    :sswitch_1
    add-int/lit8 v7, p2, 0x1

    aget-byte v7, p1, v7

    add-int/lit8 v8, p2, 0x2

    aget-byte v8, p1, v8

    invoke-static {v7, v8}, Lcom/intel/bluetooth/obex/OBEXUtils;->bytesToShort(BB)I

    move-result v6

    .line 497
    add-int/lit8 v7, v6, -0x3

    new-array v2, v7, [B

    .line 498
    .restart local v2    # "data":[B
    add-int/lit8 v7, p2, 0x3

    array-length v8, v2

    invoke-static {p1, v7, v2, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 499
    const/16 v7, 0x42

    if-ne v3, v7, :cond_4

    .line 500
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    aget-byte v7, v2, v7

    if-eqz v7, :cond_3

    .line 501
    new-instance v7, Ljava/lang/String;

    const-string v8, "iso-8859-1"

    invoke-direct {v7, v2, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v3, v7}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->setHeader(ILjava/lang/Object;)V

    goto :goto_1

    .line 503
    :cond_3
    new-instance v7, Ljava/lang/String;

    array-length v8, v2

    add-int/lit8 v8, v8, -0x1

    .line 504
    const-string v9, "iso-8859-1"

    invoke-direct {v7, v2, v10, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 503
    invoke-virtual {p0, v3, v7}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->setHeader(ILjava/lang/Object;)V

    goto :goto_1

    .line 506
    :cond_4
    const/16 v7, 0x44

    if-ne v3, v7, :cond_5

    .line 507
    invoke-static {v2}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->readTimeISO8601([B)Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {p0, v3, v7}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->setHeader(ILjava/lang/Object;)V

    goto :goto_1

    .line 508
    :cond_5
    const/16 v7, 0x4d

    if-ne v3, v7, :cond_7

    .line 509
    monitor-enter p0

    .line 510
    :try_start_0
    iget-object v7, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->authChallenges:Ljava/util/Vector;

    if-nez v7, :cond_6

    .line 511
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    iput-object v7, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->authChallenges:Ljava/util/Vector;

    .line 509
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    iget-object v7, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->authChallenges:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 515
    const-string v7, "received AUTH_CHALLENGE"

    invoke-static {v7}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 509
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 516
    :cond_7
    const/16 v7, 0x4e

    if-ne v3, v7, :cond_9

    .line 517
    monitor-enter p0

    .line 518
    :try_start_2
    iget-object v7, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->authResponses:Ljava/util/Vector;

    if-nez v7, :cond_8

    .line 519
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    iput-object v7, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->authResponses:Ljava/util/Vector;

    .line 517
    :cond_8
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 522
    iget-object v7, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->authResponses:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 523
    const-string v7, "received AUTH_RESPONSE"

    invoke-static {v7}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 517
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7

    .line 525
    :cond_9
    invoke-virtual {p0, v3, v2}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->setHeader(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 529
    .end local v2    # "data":[B
    :sswitch_2
    const/4 v6, 0x2

    .line 530
    new-instance v7, Ljava/lang/Byte;

    add-int/lit8 v8, p2, 0x1

    aget-byte v8, p1, v8

    invoke-direct {v7, v8}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {p0, v3, v7}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->setHeader(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 533
    :sswitch_3
    const/4 v6, 0x5

    .line 534
    add-int/lit8 v7, p2, 0x1

    invoke-static {p1, v7}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->readObexInt([BI)J

    move-result-wide v4

    .line 535
    .local v4, "intValue":J
    const/16 v7, 0xc4

    if-ne v3, v7, :cond_a

    .line 537
    const-string v7, "UTC"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 536
    invoke-static {v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 538
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v7, Ljava/util/Date;

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v4

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 539
    invoke-virtual {p0, v3, v0}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->setHeader(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 541
    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_a
    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, v3, v7}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->setHeader(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 484
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x40 -> :sswitch_1
        0x80 -> :sswitch_2
        0xc0 -> :sswitch_3
    .end sparse-switch
.end method

.method static readHeaders([BI)Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    new-instance v0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;-><init>(I)V

    invoke-static {v0, p0, p1}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->readHeaders(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;[BI)Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v0

    return-object v0
.end method

.method static readObexInt([BI)J
    .locals 5
    .param p0, "data"    # [B
    .param p1, "off"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    const-wide/16 v1, 0x0

    .line 342
    .local v1, "l":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x4

    if-lt v0, v3, :cond_0

    .line 346
    return-wide v1

    .line 343
    :cond_0
    const/16 v3, 0x8

    shl-long/2addr v1, v3

    .line 344
    add-int v3, p1, v0

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static readTimeISO8601([B)Ljava/util/Calendar;
    .locals 9
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xf

    const/16 v8, 0xd

    const/16 v7, 0xb

    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 596
    const/4 v1, 0x0

    .line 597
    .local v1, "utc":Z
    array-length v2, p0

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    array-length v2, p0

    if-eq v2, v4, :cond_0

    .line 598
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid ISO-8601 date length "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 599
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 598
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 600
    :cond_0
    const/16 v2, 0x8

    aget-byte v2, p0, v2

    const/16 v3, 0x54

    if-eq v2, v3, :cond_1

    .line 601
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid ISO-8601 date "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 602
    :cond_1
    array-length v2, p0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3

    .line 603
    aget-byte v2, p0, v4

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_2

    .line 604
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid ISO-8601 date "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 605
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 604
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 607
    :cond_2
    const/4 v1, 0x1

    .line 610
    :cond_3
    if-eqz v1, :cond_4

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 612
    .local v0, "cal":Ljava/util/Calendar;
    :goto_0
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 613
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 612
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 614
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0, v6, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 615
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 614
    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 616
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x6

    invoke-direct {v3, p0, v4, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 617
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 616
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 618
    new-instance v2, Ljava/lang/String;

    const/16 v3, 0x9

    invoke-direct {v2, p0, v3, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 619
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 618
    invoke-virtual {v0, v7, v2}, Ljava/util/Calendar;->set(II)V

    .line 620
    const/16 v2, 0xc

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0, v7, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 621
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 620
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 622
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0, v8, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 623
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 622
    invoke-virtual {v0, v8, v2}, Ljava/util/Calendar;->set(II)V

    .line 624
    return-object v0

    .line 611
    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0
.end method

.method static toByteArray(Ljavax/obex/HeaderSet;)[B
    .locals 13
    .param p0, "headers"    # Ljavax/obex/HeaderSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    if-nez p0, :cond_0

    .line 399
    const/4 v9, 0x0

    new-array v9, v9, [B

    .line 462
    .end local p0    # "headers":Ljavax/obex/HeaderSet;
    :goto_0
    return-object v9

    .line 401
    .restart local p0    # "headers":Ljavax/obex/HeaderSet;
    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 402
    .local v2, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-interface {p0}, Ljavax/obex/HeaderSet;->getHeaderList()[I

    move-result-object v5

    .line 403
    .local v5, "headerIDArray":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-eqz v5, :cond_1

    array-length v9, v5

    if-lt v7, v9, :cond_5

    .line 439
    :cond_1
    if-eqz v5, :cond_2

    array-length v9, v5

    if-eqz v9, :cond_2

    .line 440
    const-string v9, "written headers"

    array-length v10, v5

    int-to-long v10, v10

    invoke-static {v9, v10, v11}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    :cond_2
    move-object v9, p0

    .line 442
    check-cast v9, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    invoke-virtual {v9}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->hasAuthenticationChallenge()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, p0

    .line 443
    check-cast v9, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    iget-object v9, v9, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->authChallenges:Ljava/util/Vector;

    .line 444
    invoke-virtual {v9}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v8

    .local v8, "iter":Ljava/util/Enumeration;
    :goto_2
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    .line 443
    if-nez v9, :cond_9

    .end local v8    # "iter":Ljava/util/Enumeration;
    :cond_3
    move-object v9, p0

    .line 452
    check-cast v9, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    invoke-virtual {v9}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->hasAuthenticationResponses()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 453
    check-cast p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    .end local p0    # "headers":Ljavax/obex/HeaderSet;
    iget-object v9, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->authResponses:Ljava/util/Vector;

    .line 454
    invoke-virtual {v9}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v8

    .restart local v8    # "iter":Ljava/util/Enumeration;
    :goto_3
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    .line 453
    if-nez v9, :cond_a

    .line 462
    .end local v8    # "iter":Ljava/util/Enumeration;
    :cond_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    goto :goto_0

    .line 404
    .restart local p0    # "headers":Ljavax/obex/HeaderSet;
    :cond_5
    aget v6, v5, v7

    .line 405
    .local v6, "hi":I
    const/16 v9, 0x44

    if-ne v6, v9, :cond_6

    .line 406
    invoke-interface {p0, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    .line 407
    .local v3, "c":Ljava/util/Calendar;
    const/16 v9, 0x13

    invoke-static {v2, v6, v9}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->writeObexLen(Ljava/io/OutputStream;II)V

    .line 408
    invoke-static {v2, v3}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->writeTimeISO8601(Ljava/io/OutputStream;Ljava/util/Calendar;)V

    .line 403
    .end local v3    # "c":Ljava/util/Calendar;
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 409
    :cond_6
    const/16 v9, 0xc4

    if-ne v6, v9, :cond_7

    .line 410
    invoke-interface {p0, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    .line 411
    .restart local v3    # "c":Ljava/util/Calendar;
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    invoke-static {v2, v6, v9, v10}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->writeObexInt(Ljava/io/OutputStream;IJ)V

    goto :goto_4

    .line 412
    .end local v3    # "c":Ljava/util/Calendar;
    :cond_7
    const/16 v9, 0x42

    if-ne v6, v9, :cond_8

    .line 414
    invoke-interface {p0, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v2, v6, v9}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->writeObexASCII(Ljava/io/OutputStream;ILjava/lang/String;)V

    goto :goto_4

    .line 416
    :cond_8
    and-int/lit16 v9, v6, 0xc0

    sparse-switch v9, :sswitch_data_0

    .line 434
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unsupported encoding "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    and-int/lit16 v11, v6, 0xc0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 434
    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 418
    :sswitch_0
    invoke-interface {p0, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v2, v6, v9}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->writeObexUnicode(Ljava/io/OutputStream;ILjava/lang/String;)V

    goto :goto_4

    .line 421
    :sswitch_1
    invoke-interface {p0, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 422
    .local v4, "data":[B
    array-length v9, v4

    add-int/lit8 v9, v9, 0x3

    invoke-static {v2, v6, v9}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->writeObexLen(Ljava/io/OutputStream;II)V

    .line 423
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_4

    .line 426
    .end local v4    # "data":[B
    :sswitch_2
    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 427
    invoke-interface {p0, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Byte;

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    .line 431
    :sswitch_3
    invoke-interface {p0, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 430
    invoke-static {v2, v6, v9, v10}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->writeObexInt(Ljava/io/OutputStream;IJ)V

    goto :goto_4

    .line 445
    .end local v6    # "hi":I
    .restart local v8    # "iter":Ljava/util/Enumeration;
    :cond_9
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 446
    .local v0, "authChallenge":[B
    const/16 v9, 0x4d

    .line 447
    array-length v10, v0

    add-int/lit8 v10, v10, 0x3

    .line 446
    invoke-static {v2, v9, v10}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->writeObexLen(Ljava/io/OutputStream;II)V

    .line 448
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 449
    const-string v9, "written AUTH_CHALLENGE"

    invoke-static {v9}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 455
    .end local v0    # "authChallenge":[B
    .end local p0    # "headers":Ljavax/obex/HeaderSet;
    :cond_a
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 456
    .local v1, "authResponse":[B
    const/16 v9, 0x4e

    .line 457
    array-length v10, v1

    add-int/lit8 v10, v10, 0x3

    .line 456
    invoke-static {v2, v9, v10}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->writeObexLen(Ljava/io/OutputStream;II)V

    .line 458
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 459
    const-string v9, "written AUTH_RESPONSE"

    invoke-static {v9}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 416
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x40 -> :sswitch_1
        0x80 -> :sswitch_2
        0xc0 -> :sswitch_3
    .end sparse-switch
.end method

.method static validateCreatedHeaderSet(Ljavax/obex/HeaderSet;)V
    .locals 2
    .param p0, "headers"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 155
    if-nez p0, :cond_1

    .line 164
    .end local p0    # "headers":Ljavax/obex/HeaderSet;
    :cond_0
    return-void

    .line 158
    .restart local p0    # "headers":Ljavax/obex/HeaderSet;
    :cond_1
    instance-of v0, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    if-nez v0, :cond_2

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal HeaderSet type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_2
    check-cast p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    .end local p0    # "headers":Ljavax/obex/HeaderSet;
    iget v0, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->responseCode:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal HeaderSet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateHeaderID(I)V
    .locals 3
    .param p1, "headerID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 167
    if-ltz p1, :cond_0

    const/16 v1, 0xff

    if-le p1, v1, :cond_1

    .line 168
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 169
    const-string v2, "Expected header ID in range 0 to 255"

    .line 168
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_1
    and-int/lit8 v0, p1, 0x3f

    .line 172
    .local v0, "identifier":I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    const/16 v1, 0x2f

    if-ge v0, v1, :cond_2

    .line 173
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Reserved header ID"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_2
    return-void
.end method

.method static writeObexASCII(Ljava/io/OutputStream;ILjava/lang/String;)V
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "headerID"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->writeObexLen(Ljava/io/OutputStream;II)V

    .line 375
    const-string v0, "iso-8859-1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 377
    return-void
.end method

.method static writeObexInt(Ljava/io/OutputStream;IJ)V
    .locals 7
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "headerID"    # I
    .param p2, "data"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0xff

    .line 351
    const/4 v1, 0x5

    new-array v0, v1, [B

    .line 352
    .local v0, "b":[B
    int-to-byte v1, p1

    aput-byte v1, v0, v6

    .line 353
    const/4 v1, 0x1

    const/16 v2, 0x18

    ushr-long v2, p2, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 354
    const/4 v1, 0x2

    const/16 v2, 0x10

    ushr-long v2, p2, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 355
    const/4 v1, 0x3

    const/16 v2, 0x8

    ushr-long v2, p2, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 356
    const/4 v1, 0x4

    ushr-long v2, p2, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 357
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 358
    return-void
.end method

.method static writeObexLen(Ljava/io/OutputStream;II)V
    .locals 4
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "headerID"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    const/4 v1, 0x3

    new-array v0, v1, [B

    .line 363
    .local v0, "b":[B
    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 364
    if-ltz p2, :cond_0

    const v1, 0xffff

    if-le p2, v1, :cond_1

    .line 365
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "very large data"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    :cond_1
    const/4 v1, 0x1

    invoke-static {p2}, Lcom/intel/bluetooth/obex/OBEXUtils;->hiByte(I)B

    move-result v2

    aput-byte v2, v0, v1

    .line 368
    const/4 v1, 0x2

    invoke-static {p2}, Lcom/intel/bluetooth/obex/OBEXUtils;->loByte(I)B

    move-result v2

    aput-byte v2, v0, v1

    .line 369
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 370
    return-void
.end method

.method static writeObexUnicode(Ljava/io/OutputStream;ILjava/lang/String;)V
    .locals 2
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "headerID"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 388
    const/4 v1, 0x3

    invoke-static {p0, p1, v1}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->writeObexLen(Ljava/io/OutputStream;II)V

    .line 395
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-static {p2}, Lcom/intel/bluetooth/obex/OBEXUtils;->getUTF16Bytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 392
    .local v0, "b":[B
    array-length v1, v0

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    invoke-static {p0, p1, v1}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->writeObexLen(Ljava/io/OutputStream;II)V

    .line 393
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 394
    const/4 v1, 0x2

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method static writeTimeISO8601(Ljava/io/OutputStream;Ljava/util/Calendar;)V
    .locals 2
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "c"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 580
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 581
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 582
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->d4(I)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 583
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->d2(I)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 584
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->d2(I)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 585
    const/16 v1, 0x54

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 586
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->d2(I)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 587
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->d2(I)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 588
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->d2(I)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 589
    const/16 v1, 0x5a

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 590
    return-void
.end method


# virtual methods
.method declared-synchronized addAuthenticationResponse([B)V
    .locals 1
    .param p1, "authResponse"    # [B

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->authResponses:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 313
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->authResponses:Ljava/util/Vector;

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->authResponses:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    monitor-exit p0

    return-void

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createAuthenticationChallenge(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "isUserIdRequired"    # Z
    .param p3, "isFullAccess"    # Z

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->authChallenges:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->authChallenges:Ljava/util/Vector;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->authChallenges:Ljava/util/Vector;

    invoke-static {p1, p2, p3}, Lcom/intel/bluetooth/obex/OBEXAuthentication;->createChallenge(Ljava/lang/String;ZZ)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    monitor-exit p0

    return-void

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getAuthenticationChallenges()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->authChallenges:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method getAuthenticationResponses()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->authResponses:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(I)Ljava/lang/Object;
    .locals 2
    .param p1, "headerID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->validateHeaderID(I)V

    .line 234
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->headerValues:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderList()[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v4, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->headerValues:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 245
    const/4 v1, 0x0

    .line 252
    :cond_0
    return-object v1

    .line 247
    :cond_1
    iget-object v4, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->headerValues:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v4

    new-array v1, v4, [I

    .line 248
    .local v1, "headerIDArray":[I
    const/4 v2, 0x0

    .line 249
    .local v2, "i":I
    iget-object v4, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->headerValues:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 250
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v1, v2

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0
.end method

.method public getResponseCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    iget v0, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->responseCode:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 257
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 259
    :cond_0
    iget v0, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->responseCode:I

    return v0
.end method

.method hasAuthenticationChallenge()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 319
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->authChallenges:Ljava/util/Vector;

    if-nez v1, :cond_1

    .line 322
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->authChallenges:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method hasAuthenticationResponses()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 330
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->authResponses:Ljava/util/Vector;

    if-nez v1, :cond_1

    .line 333
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->authResponses:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method hasIncommingData()Z
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->headerValues:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x48

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->headerValues:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x49

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 263
    goto :goto_0
.end method

.method public setHeader(ILjava/lang/Object;)V
    .locals 5
    .param p1, "headerID"    # I
    .param p2, "headerValue"    # Ljava/lang/Object;

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->validateHeaderID(I)V

    .line 179
    if-nez p2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->headerValues:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :goto_0
    return-void

    .line 183
    :cond_0
    const/16 v2, 0x44

    if-eq p1, v2, :cond_1

    const/16 v2, 0xc4

    if-ne p1, v2, :cond_2

    .line 184
    :cond_1
    instance-of v2, p2, Ljava/util/Calendar;

    if-nez v2, :cond_6

    .line 185
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 186
    const-string v3, "Expected java.util.Calendar"

    .line 185
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    :cond_2
    const/16 v2, 0x42

    if-ne p1, v2, :cond_3

    .line 189
    instance-of v2, p2, Ljava/lang/String;

    if-nez v2, :cond_6

    .line 190
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 191
    const-string v3, "Expected java.lang.String"

    .line 190
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    :cond_3
    and-int/lit16 v2, p1, 0xc0

    sparse-switch v2, :sswitch_data_0

    .line 224
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported encoding "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    and-int/lit16 v4, p1, 0xc0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 196
    :sswitch_0
    instance-of v2, p2, Ljava/lang/String;

    if-nez v2, :cond_6

    .line 197
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 198
    const-string v3, "Expected java.lang.String"

    .line 197
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    :sswitch_1
    instance-of v2, p2, [B

    if-nez v2, :cond_6

    .line 203
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Expected byte[]"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 207
    :sswitch_2
    instance-of v2, p2, Ljava/lang/Byte;

    if-nez v2, :cond_6

    .line 208
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 209
    const-string v3, "Expected java.lang.Byte"

    .line 208
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 213
    :sswitch_3
    instance-of v2, p2, Ljava/lang/Long;

    if-nez v2, :cond_4

    .line 214
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 215
    const-string v3, "Expected java.lang.Long"

    .line 214
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    move-object v2, p2

    .line 217
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 218
    .local v0, "v":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_5

    const-wide v2, 0xffffffffL

    cmp-long v2, v0, v2

    if-lez v2, :cond_6

    .line 219
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 220
    const-string v3, "Expected long in range 0 to 2^32-1"

    .line 219
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 228
    .end local v0    # "v":J
    :cond_6
    iget-object v2, p0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->headerValues:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 194
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x40 -> :sswitch_1
        0x80 -> :sswitch_2
        0xc0 -> :sswitch_3
    .end sparse-switch
.end method

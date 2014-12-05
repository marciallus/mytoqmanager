.class public Lorg/alljoyn/ns/PayloadAdapter;
.super Ljava/lang/Object;
.source "PayloadAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/alljoyn/ns/PayloadAdapter$1;,
        Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static msgId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ioe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ns/PayloadAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ns/PayloadAdapter;->TAG:Ljava/lang/String;

    .line 88
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x40c3880000000000L

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lorg/alljoyn/ns/PayloadAdapter;->msgId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static byteArrayToUUID([B)Ljava/util/UUID;
    .locals 12
    .param p0, "bAppId"    # [B

    .prologue
    const/16 v11, 0x10

    const/16 v10, 0x8

    .line 338
    const-wide/16 v3, 0x0

    .line 339
    .local v3, "msUuid":J
    const-wide/16 v1, 0x0

    .line 341
    .local v1, "lsUuid":J
    array-length v6, p0

    if-eq v6, v11, :cond_0

    .line 342
    const/4 v5, 0x0

    .line 355
    :goto_0
    return-object v5

    .line 345
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v10, :cond_1

    .line 346
    shl-long v6, v3, v10

    aget-byte v8, p0, v0

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    or-long v3, v6, v8

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 349
    :cond_1
    const/16 v0, 0x8

    :goto_2
    if-ge v0, v11, :cond_2

    .line 350
    shl-long v6, v1, v10

    aget-byte v8, p0, v0

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    or-long v1, v6, v8

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 353
    :cond_2
    new-instance v5, Ljava/util/UUID;

    invoke-direct {v5, v3, v4, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    .line 355
    .local v5, "result":Ljava/util/UUID;
    goto :goto_0
.end method

.method public static genMsgId()I
    .locals 2

    .prologue
    .line 325
    sget v0, Lorg/alljoyn/ns/PayloadAdapter;->msgId:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 326
    const/4 v0, 0x0

    sput v0, Lorg/alljoyn/ns/PayloadAdapter;->msgId:I

    .line 328
    :cond_0
    sget v0, Lorg/alljoyn/ns/PayloadAdapter;->msgId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/alljoyn/ns/PayloadAdapter;->msgId:I

    return v0
.end method

.method public static receivePayload(IILjava/lang/String;SLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Ljava/util/Map;[Lorg/alljoyn/ns/transport/TransportNotificationText;)V
    .locals 29
    .param p0, "version"    # I
    .param p1, "msgId"    # I
    .param p2, "sender"    # Ljava/lang/String;
    .param p3, "messageType"    # S
    .param p4, "deviceId"    # Ljava/lang/String;
    .param p5, "deviceName"    # Ljava/lang/String;
    .param p6, "bAppId"    # [B
    .param p7, "appName"    # Ljava/lang/String;
    .param p10, "text"    # [Lorg/alljoyn/ns/transport/TransportNotificationText;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "S",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/alljoyn/bus/Variant;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Lorg/alljoyn/ns/transport/TransportNotificationText;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 217
    .local p8, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/alljoyn/bus/Variant;>;"
    .local p9, "customAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lorg/alljoyn/ns/commons/NativePlatformFactory;->getPlatformObject()Lorg/alljoyn/ns/commons/NativePlatform;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v16

    .line 218
    .local v16, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    sget-object v26, Lorg/alljoyn/ns/PayloadAdapter;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received notification Id: \'"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\', parsing..."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-static/range {p3 .. p3}, Lorg/alljoyn/ns/NotificationMessageType;->getMsgTypeById(S)Lorg/alljoyn/ns/NotificationMessageType;

    move-result-object v18

    .line 222
    .local v18, "msgType":Lorg/alljoyn/ns/NotificationMessageType;
    if-nez v18, :cond_0

    .line 223
    new-instance v26, Lorg/alljoyn/ns/NotificationServiceException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received unknown message type id: \'"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\'"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    .end local v16    # "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    .end local v18    # "msgType":Lorg/alljoyn/ns/NotificationMessageType;
    :catch_0
    move-exception v9

    .line 316
    .local v9, "e":Ljava/lang/Exception;
    new-instance v26, Lorg/alljoyn/ns/NotificationServiceException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Failed to parse received notification payload, Error: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 227
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v16    # "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    .restart local v18    # "msgType":Lorg/alljoyn/ns/NotificationMessageType;
    :cond_0
    :try_start_1
    new-instance v22, Ljava/util/LinkedList;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedList;-><init>()V

    .line 228
    .local v22, "textList":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ns/NotificationText;>;"
    move-object/from16 v4, p10

    .local v4, "arr$":[Lorg/alljoyn/ns/transport/TransportNotificationText;
    array-length v15, v4

    .local v15, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v15, :cond_1

    aget-object v23, v4, v10

    .line 229
    .local v23, "trNt":Lorg/alljoyn/ns/transport/TransportNotificationText;
    new-instance v26, Lorg/alljoyn/ns/NotificationText;

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/alljoyn/ns/transport/TransportNotificationText;->language:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lorg/alljoyn/ns/transport/TransportNotificationText;->text:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-direct/range {v26 .. v28}, Lorg/alljoyn/ns/NotificationText;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 233
    .end local v23    # "trNt":Lorg/alljoyn/ns/transport/TransportNotificationText;
    :cond_1
    new-instance v19, Lorg/alljoyn/ns/Notification;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lorg/alljoyn/ns/Notification;-><init>(Lorg/alljoyn/ns/NotificationMessageType;Ljava/util/List;)V

    .line 236
    .local v19, "notif":Lorg/alljoyn/ns/Notification;
    invoke-static/range {p6 .. p6}, Lorg/alljoyn/ns/PayloadAdapter;->byteArrayToUUID([B)Ljava/util/UUID;

    move-result-object v3

    .line 238
    .local v3, "appId":Ljava/util/UUID;
    if-nez v3, :cond_2

    .line 239
    const-string v17, "Received a bad length of byte array that doesn\'t represent UUID of an appId"

    .line 240
    .local v17, "msg":Ljava/lang/String;
    sget-object v26, Lorg/alljoyn/ns/PayloadAdapter;->TAG:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v26, Lorg/alljoyn/ns/NotificationServiceException;

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 244
    .end local v17    # "msg":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v19

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/alljoyn/ns/Notification;->setVersion(I)V

    .line 245
    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/alljoyn/ns/Notification;->setMessageId(I)V

    .line 246
    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lorg/alljoyn/ns/Notification;->setDeviceId(Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lorg/alljoyn/ns/Notification;->setDeviceName(Ljava/lang/String;)V

    .line 248
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/alljoyn/ns/Notification;->setSender(Ljava/lang/String;)V

    .line 249
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/alljoyn/ns/Notification;->setAppId(Ljava/util/UUID;)V

    .line 250
    move-object/from16 v0, v19

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lorg/alljoyn/ns/Notification;->setAppName(Ljava/lang/String;)V

    .line 253
    invoke-interface/range {p8 .. p8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v4    # "arr$":[Lorg/alljoyn/ns/transport/TransportNotificationText;
    .end local v10    # "i$":I
    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 254
    .local v14, "key":Ljava/lang/Integer;
    move-object/from16 v0, p8

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/alljoyn/bus/Variant;

    .line 255
    .local v25, "vObj":Lorg/alljoyn/bus/Variant;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v26

    invoke-static/range {v26 .. v26}, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->getArgumentKeyById(I)Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    move-result-object v5

    .line 257
    .local v5, "attrKey":Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;
    if-nez v5, :cond_4

    .line 258
    sget-object v26, Lorg/alljoyn/ns/PayloadAdapter;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "An unknown attribute key: \'"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\' received, ignoring the key"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 262
    :cond_4
    sget-object v26, Lorg/alljoyn/ns/PayloadAdapter$1;->$SwitchMap$org$alljoyn$ns$PayloadAdapter$ArgumentKey:[I

    invoke-virtual {v5}, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->ordinal()I

    move-result v27

    aget v26, v26, v27

    packed-switch v26, :pswitch_data_0

    goto :goto_1

    .line 264
    :pswitch_0
    const-class v26, Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 265
    .local v13, "iconUrl":Ljava/lang/String;
    sget-object v26, Lorg/alljoyn/ns/PayloadAdapter;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received rich icon url: \'"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\'"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lorg/alljoyn/ns/Notification;->setRichIconUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 270
    .end local v13    # "iconUrl":Ljava/lang/String;
    :pswitch_1
    const-class v26, [Lorg/alljoyn/ns/transport/TransportRichAudioUrl;

    invoke-virtual/range {v25 .. v26}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/alljoyn/ns/transport/TransportRichAudioUrl;

    .line 271
    .local v7, "audioUrl":[Lorg/alljoyn/ns/transport/TransportRichAudioUrl;
    array-length v0, v7

    move/from16 v26, v0

    if-eqz v26, :cond_3

    .line 272
    new-instance v8, Ljava/util/ArrayList;

    array-length v0, v7

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 273
    .local v8, "audioUrlList":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ns/RichAudioUrl;>;"
    sget-object v26, Lorg/alljoyn/ns/PayloadAdapter;->TAG:Ljava/lang/String;

    const-string v27, "Received rich audio url"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    move-object v4, v7

    .local v4, "arr$":[Lorg/alljoyn/ns/transport/TransportRichAudioUrl;
    array-length v15, v4

    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_2
    if-ge v11, v15, :cond_5

    aget-object v24, v4, v11

    .line 275
    .local v24, "trRichAudioUrl":Lorg/alljoyn/ns/transport/TransportRichAudioUrl;
    new-instance v26, Lorg/alljoyn/ns/RichAudioUrl;

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/alljoyn/ns/transport/TransportRichAudioUrl;->language:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lorg/alljoyn/ns/transport/TransportRichAudioUrl;->url:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-direct/range {v26 .. v28}, Lorg/alljoyn/ns/RichAudioUrl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 277
    .end local v24    # "trRichAudioUrl":Lorg/alljoyn/ns/transport/TransportRichAudioUrl;
    :cond_5
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lorg/alljoyn/ns/Notification;->setRichAudioUrl(Ljava/util/List;)V

    goto/16 :goto_1

    .line 282
    .end local v4    # "arr$":[Lorg/alljoyn/ns/transport/TransportRichAudioUrl;
    .end local v7    # "audioUrl":[Lorg/alljoyn/ns/transport/TransportRichAudioUrl;
    .end local v8    # "audioUrlList":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ns/RichAudioUrl;>;"
    .end local v11    # "i$":I
    :pswitch_2
    const-class v26, Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 283
    .local v12, "iconObjPath":Ljava/lang/String;
    sget-object v26, Lorg/alljoyn/ns/PayloadAdapter;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received rich icon object path: \'"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\'"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lorg/alljoyn/ns/Notification;->setRichIconObjPath(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 288
    .end local v12    # "iconObjPath":Ljava/lang/String;
    :pswitch_3
    const-class v26, Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 289
    .local v6, "audioObjPath":Ljava/lang/String;
    sget-object v26, Lorg/alljoyn/ns/PayloadAdapter;->TAG:Ljava/lang/String;

    const-string v27, "Received rich audio object path"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lorg/alljoyn/ns/Notification;->setRichAudioObjPath(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 294
    .end local v6    # "audioObjPath":Ljava/lang/String;
    :pswitch_4
    const-class v26, Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 295
    .local v21, "responseObjectPath":Ljava/lang/String;
    sget-object v26, Lorg/alljoyn/ns/PayloadAdapter;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received a Response ObjectPath object path: \'"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\'"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/alljoyn/ns/Notification;->setResponseObjectPath(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 300
    .end local v21    # "responseObjectPath":Ljava/lang/String;
    :pswitch_5
    const-class v26, Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 301
    .local v20, "origSender":Ljava/lang/String;
    sget-object v26, Lorg/alljoyn/ns/PayloadAdapter;->TAG:Ljava/lang/String;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received an original sender: \'"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\'"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {v19 .. v20}, Lorg/alljoyn/ns/Notification;->setOrigSender(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 309
    .end local v5    # "attrKey":Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;
    .end local v14    # "key":Ljava/lang/Integer;
    .end local v20    # "origSender":Ljava/lang/String;
    .end local v25    # "vObj":Lorg/alljoyn/bus/Variant;
    :cond_6
    sget-object v26, Lorg/alljoyn/ns/PayloadAdapter;->TAG:Ljava/lang/String;

    const-string v27, "Set the custom attributes"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    move-object/from16 v0, v19

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lorg/alljoyn/ns/Notification;->setCustomAttributes(Ljava/util/Map;)V

    .line 313
    invoke-static {}, Lorg/alljoyn/ns/transport/Transport;->getInstance()Lorg/alljoyn/ns/transport/Transport;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/alljoyn/ns/transport/Transport;->onReceivedNotification(Lorg/alljoyn/ns/Notification;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 318
    return-void

    .line 262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static sendPayload(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Lorg/alljoyn/ns/NotificationMessageType;Ljava/util/List;Ljava/util/Map;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 25
    .param p0, "deviceId"    # Ljava/lang/String;
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/util/UUID;
    .param p3, "appName"    # Ljava/lang/String;
    .param p4, "messageType"    # Lorg/alljoyn/ns/NotificationMessageType;
    .param p7, "ttl"    # I
    .param p8, "richIconUrl"    # Ljava/lang/String;
    .param p10, "richIconObjPath"    # Ljava/lang/String;
    .param p11, "richAudioObjPath"    # Ljava/lang/String;
    .param p12, "responseObjectPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "Lorg/alljoyn/ns/NotificationMessageType;",
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/ns/NotificationText;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/ns/RichAudioUrl;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 111
    .local p5, "text":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ns/NotificationText;>;"
    .local p6, "customAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p9, "richAudioUrl":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ns/RichAudioUrl;>;"
    :try_start_0
    invoke-static {}, Lorg/alljoyn/ns/commons/NativePlatformFactory;->getPlatformObject()Lorg/alljoyn/ns/commons/NativePlatform;

    move-result-object v2

    invoke-interface {v2}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;
    :try_end_0
    .catch Lorg/alljoyn/ns/commons/NativePlatformFactoryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 116
    .local v20, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    sget-object v2, Lorg/alljoyn/ns/PayloadAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Preparing message for sending..."

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 121
    .local v10, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/alljoyn/bus/Variant;>;"
    if-eqz p8, :cond_0

    .line 122
    sget-object v2, Lorg/alljoyn/ns/PayloadAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Preparing to send richIconUrl..."

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object v2, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->RICH_NOTIFICATION_ICON_URL:Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    iget v2, v2, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lorg/alljoyn/bus/Variant;

    const-string v4, "s"

    move-object/from16 v0, p8

    invoke-direct {v3, v0, v4}, Lorg/alljoyn/bus/Variant;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_0
    if-eqz p9, :cond_2

    .line 127
    sget-object v2, Lorg/alljoyn/ns/PayloadAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Preparing to send richAudioUrl..."

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/16 v24, 0x0

    .line 130
    .local v24, "u":I
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v2

    new-array v15, v2, [Lorg/alljoyn/ns/transport/TransportRichAudioUrl;

    .line 131
    .local v15, "audioUrl":[Lorg/alljoyn/ns/transport/TransportRichAudioUrl;
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/alljoyn/ns/RichAudioUrl;

    .line 132
    .local v14, "au":Lorg/alljoyn/ns/RichAudioUrl;
    invoke-static {v14}, Lorg/alljoyn/ns/transport/TransportRichAudioUrl;->buildInstance(Lorg/alljoyn/ns/RichAudioUrl;)Lorg/alljoyn/ns/transport/TransportRichAudioUrl;

    move-result-object v2

    aput-object v2, v15, v24

    .line 133
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 112
    .end local v10    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/alljoyn/bus/Variant;>;"
    .end local v14    # "au":Lorg/alljoyn/ns/RichAudioUrl;
    .end local v15    # "audioUrl":[Lorg/alljoyn/ns/transport/TransportRichAudioUrl;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v20    # "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    .end local v24    # "u":I
    :catch_0
    move-exception v21

    .line 113
    .local v21, "npfe":Lorg/alljoyn/ns/commons/NativePlatformFactoryException;
    new-instance v2, Lorg/alljoyn/ns/NotificationServiceException;

    invoke-virtual/range {v21 .. v21}, Lorg/alljoyn/ns/commons/NativePlatformFactoryException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    .end local v21    # "npfe":Lorg/alljoyn/ns/commons/NativePlatformFactoryException;
    .restart local v10    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/alljoyn/bus/Variant;>;"
    .restart local v15    # "audioUrl":[Lorg/alljoyn/ns/transport/TransportRichAudioUrl;
    .restart local v18    # "i$":Ljava/util/Iterator;
    .restart local v20    # "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    .restart local v24    # "u":I
    :cond_1
    sget-object v2, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->RICH_NOTIFICATION_AUDIO_URL:Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    iget v2, v2, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lorg/alljoyn/bus/Variant;

    const-string v4, "ar"

    invoke-direct {v3, v15, v4}, Lorg/alljoyn/bus/Variant;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .end local v15    # "audioUrl":[Lorg/alljoyn/ns/transport/TransportRichAudioUrl;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v24    # "u":I
    :cond_2
    if-eqz p10, :cond_3

    .line 139
    sget-object v2, Lorg/alljoyn/ns/PayloadAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Preparing to send richIconObjPath..."

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object v2, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->RICH_NOTIFICATION_ICON_OBJECT_PATH:Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    iget v2, v2, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lorg/alljoyn/bus/Variant;

    const-string v4, "s"

    move-object/from16 v0, p10

    invoke-direct {v3, v0, v4}, Lorg/alljoyn/bus/Variant;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_3
    if-eqz p11, :cond_4

    .line 144
    sget-object v2, Lorg/alljoyn/ns/PayloadAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Preparing to send richAudioObjPath..."

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sget-object v2, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->RICH_NOTIFICATION_AUDIO_OBJECT_PATH:Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    iget v2, v2, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lorg/alljoyn/bus/Variant;

    const-string v4, "s"

    move-object/from16 v0, p11

    invoke-direct {v3, v0, v4}, Lorg/alljoyn/bus/Variant;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_4
    if-eqz p12, :cond_5

    .line 149
    sget-object v2, Lorg/alljoyn/ns/PayloadAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Preparing to sendCPS Ocject Path..."

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object v2, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->RESPONSE_OBJECT_PATH:Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    iget v2, v2, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lorg/alljoyn/bus/Variant;

    const-string v4, "s"

    move-object/from16 v0, p12

    invoke-direct {v3, v0, v4}, Lorg/alljoyn/bus/Variant;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_5
    invoke-static {}, Lorg/alljoyn/ns/transport/Transport;->getInstance()Lorg/alljoyn/ns/transport/Transport;

    move-result-object v2

    invoke-virtual {v2}, Lorg/alljoyn/ns/transport/Transport;->getBusAttachment()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v2

    invoke-virtual {v2}, Lorg/alljoyn/bus/BusAttachment;->getUniqueName()Ljava/lang/String;

    move-result-object v23

    .line 155
    .local v23, "sender":Ljava/lang/String;
    sget-object v2, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->ORIGINAL_SENDER_NAME:Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;

    iget v2, v2, Lorg/alljoyn/ns/PayloadAdapter$ArgumentKey;->ID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lorg/alljoyn/bus/Variant;

    const-string v4, "s"

    move-object/from16 v0, v23

    invoke-direct {v3, v0, v4}, Lorg/alljoyn/bus/Variant;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    if-eqz p6, :cond_8

    .line 159
    sget-object v2, Lorg/alljoyn/ns/PayloadAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Preparing customAttributes..."

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 162
    .local v19, "key":Ljava/lang/String;
    if-nez v19, :cond_7

    .line 163
    new-instance v2, Lorg/alljoyn/ns/NotificationServiceException;

    const-string v3, "The key of customAttributes can\'t be null"

    invoke-direct {v2, v3}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 166
    :cond_7
    move-object/from16 v0, p6

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 167
    .local v16, "customVal":Ljava/lang/String;
    if-nez v16, :cond_6

    .line 168
    new-instance v2, Lorg/alljoyn/ns/NotificationServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The value of customAttributes for key: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' can\'t be null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    .end local v16    # "customVal":Ljava/lang/String;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v19    # "key":Ljava/lang/String;
    :cond_8
    new-instance p6, Ljava/util/HashMap;

    .end local p6    # "customAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p6 .. p6}, Ljava/util/HashMap;-><init>()V

    .line 179
    .restart local p6    # "customAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    const/16 v17, 0x0

    .line 180
    .local v17, "i":I
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    new-array v12, v2, [Lorg/alljoyn/ns/transport/TransportNotificationText;

    .line 181
    .local v12, "sentText":[Lorg/alljoyn/ns/transport/TransportNotificationText;
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/alljoyn/ns/NotificationText;

    .line 182
    .local v22, "nt":Lorg/alljoyn/ns/NotificationText;
    invoke-static/range {v22 .. v22}, Lorg/alljoyn/ns/transport/TransportNotificationText;->buildInstance(Lorg/alljoyn/ns/NotificationText;)Lorg/alljoyn/ns/transport/TransportNotificationText;

    move-result-object v2

    aput-object v2, v12, v17

    .line 183
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 186
    .end local v22    # "nt":Lorg/alljoyn/ns/NotificationText;
    :cond_a
    invoke-static {}, Lorg/alljoyn/ns/transport/Transport;->getInstance()Lorg/alljoyn/ns/transport/Transport;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {}, Lorg/alljoyn/ns/PayloadAdapter;->genMsgId()I

    move-result v4

    invoke-static/range {p2 .. p2}, Lorg/alljoyn/ns/PayloadAdapter;->uuidToByteArray(Ljava/util/UUID;)[B

    move-result-object v8

    move-object/from16 v5, p4

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v9, p3

    move-object/from16 v11, p6

    move/from16 v13, p7

    invoke-virtual/range {v2 .. v13}, Lorg/alljoyn/ns/transport/Transport;->sendNotification(IILorg/alljoyn/ns/NotificationMessageType;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Ljava/util/Map;[Lorg/alljoyn/ns/transport/TransportNotificationText;I)V

    .line 198
    return-void
.end method

.method public static uuidToByteArray(Ljava/util/UUID;)[B
    .locals 9
    .param p0, "uuid"    # Ljava/util/UUID;

    .prologue
    const/16 v8, 0x10

    .line 365
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    .line 366
    .local v4, "msUuid":J
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 367
    .local v2, "lsUuid":J
    new-array v0, v8, [B

    .line 369
    .local v0, "byteArrayUuid":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v6, 0x8

    if-ge v1, v6, :cond_0

    .line 370
    rsub-int/lit8 v6, v1, 0x7

    mul-int/lit8 v6, v6, 0x8

    ushr-long v6, v4, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    :cond_0
    const/16 v1, 0x8

    :goto_1
    if-ge v1, v8, :cond_1

    .line 373
    rsub-int/lit8 v6, v1, 0x7

    mul-int/lit8 v6, v6, 0x8

    ushr-long v6, v2, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 376
    :cond_1
    return-object v0
.end method

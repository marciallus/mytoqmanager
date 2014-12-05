.class public Lorg/alljoyn/ns/NotificationSender;
.super Ljava/lang/Object;
.source "NotificationSender.java"


# static fields
.field public static final MESSAGE_TTL_LL:I = 0x1e

.field public static final MESSAGE_TTL_UL:I = 0xa8c0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ioe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ns/NotificationSender;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ns/NotificationSender;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    :try_start_0
    invoke-static {}, Lorg/alljoyn/ns/commons/NativePlatformFactory;->getPlatformObject()Lorg/alljoyn/ns/commons/NativePlatform;

    move-result-object v2

    iput-object v2, p0, Lorg/alljoyn/ns/NotificationSender;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    .line 59
    iget-object v2, p0, Lorg/alljoyn/ns/NotificationSender;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v2}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v0

    .line 60
    .local v0, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    sget-object v2, Lorg/alljoyn/ns/NotificationSender;->TAG:Ljava/lang/String;

    const-string v3, "Notification Sender created"

    invoke-interface {v0, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/alljoyn/ns/commons/NativePlatformFactoryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    return-void

    .line 61
    .end local v0    # "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    :catch_0
    move-exception v1

    .line 62
    .local v1, "npfe":Lorg/alljoyn/ns/commons/NativePlatformFactoryException;
    new-instance v2, Lorg/alljoyn/ns/NotificationServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create Notification Service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/alljoyn/ns/commons/NativePlatformFactoryException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public deleteLastMsg(Lorg/alljoyn/ns/NotificationMessageType;)V
    .locals 2
    .param p1, "messageType"    # Lorg/alljoyn/ns/NotificationMessageType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    new-instance v0, Lorg/alljoyn/ns/NotificationServiceException;

    const-string v1, "MessageType parameter must be set"

    invoke-direct {v0, v1}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    invoke-static {}, Lorg/alljoyn/ns/transport/Transport;->getInstance()Lorg/alljoyn/ns/transport/Transport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/alljoyn/ns/transport/Transport;->deleteLastMessage(Lorg/alljoyn/ns/NotificationMessageType;)V

    .line 131
    return-void
.end method

.method public send(Lorg/alljoyn/ns/Notification;I)V
    .locals 21
    .param p1, "notification"    # Lorg/alljoyn/ns/Notification;
    .param p2, "ttl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 71
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/alljoyn/ns/NotificationSender;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v9}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v16

    .line 73
    .local v16, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    const/16 v9, 0x1e

    move/from16 v0, p2

    if-lt v0, v9, :cond_0

    const v9, 0xa8c0

    move/from16 v0, p2

    if-le v0, v9, :cond_1

    .line 74
    :cond_0
    sget-object v9, Lorg/alljoyn/ns/NotificationSender;->TAG:Ljava/lang/String;

    const-string v19, "The allowed TTL range is between \'30\' and \'43200\'"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v9, v1}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v9, Lorg/alljoyn/ns/NotificationServiceException;

    const-string v19, "The allowed TTL range is between \'30\' and \'43200\'"

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 78
    :cond_1
    invoke-static {}, Lorg/alljoyn/ns/transport/Transport;->getInstance()Lorg/alljoyn/ns/transport/Transport;

    move-result-object v18

    .line 81
    .local v18, "transport":Lorg/alljoyn/ns/transport/Transport;
    invoke-virtual/range {v18 .. v18}, Lorg/alljoyn/ns/transport/Transport;->readAllProperties()Ljava/util/Map;

    move-result-object v17

    .line 83
    .local v17, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/alljoyn/ns/transport/Transport;->getAppId(Ljava/util/Map;)Ljava/util/UUID;

    move-result-object v4

    .line 85
    .local v4, "appId":Ljava/util/UUID;
    const-string v9, "DeviceId"

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 86
    .local v2, "deviceId":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_3

    .line 87
    :cond_2
    sget-object v9, Lorg/alljoyn/ns/NotificationSender;->TAG:Ljava/lang/String;

    const-string v19, "The DeviceId is NULL or empty"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v9, v1}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v9, Lorg/alljoyn/ns/NotificationServiceException;

    const-string v19, "The DeviceId is not set in the PropertyStore"

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 91
    :cond_3
    const-string v9, "DeviceName"

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 92
    .local v3, "deviceName":Ljava/lang/String;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_5

    .line 93
    :cond_4
    sget-object v9, Lorg/alljoyn/ns/NotificationSender;->TAG:Ljava/lang/String;

    const-string v19, "The DeviceName is NULL or empty"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v9, v1}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v9, Lorg/alljoyn/ns/NotificationServiceException;

    const-string v19, "The DeviceName is not set in the PropertyStore"

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 97
    :cond_5
    const-string v9, "AppName"

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 98
    .local v5, "appName":Ljava/lang/String;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_7

    .line 99
    :cond_6
    sget-object v9, Lorg/alljoyn/ns/NotificationSender;->TAG:Ljava/lang/String;

    const-string v19, "The AppName is NULL or empty"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v9, v1}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v9, Lorg/alljoyn/ns/NotificationServiceException;

    const-string v19, "The AppName is not set in the PropertyStore"

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 103
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/alljoyn/ns/Notification;->getMessageType()Lorg/alljoyn/ns/NotificationMessageType;

    move-result-object v6

    .line 104
    .local v6, "messageType":Lorg/alljoyn/ns/NotificationMessageType;
    invoke-virtual/range {p1 .. p1}, Lorg/alljoyn/ns/Notification;->getText()Ljava/util/List;

    move-result-object v7

    .line 105
    .local v7, "text":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ns/NotificationText;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/alljoyn/ns/Notification;->getRichAudioUrl()Ljava/util/List;

    move-result-object v11

    .line 106
    .local v11, "richAudioUrl":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ns/RichAudioUrl;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/alljoyn/ns/Notification;->getCustomAttributes()Ljava/util/Map;

    move-result-object v8

    .line 107
    .local v8, "customAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/alljoyn/ns/Notification;->getRichIconUrl()Ljava/lang/String;

    move-result-object v10

    .line 108
    .local v10, "richIconUrl":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/alljoyn/ns/Notification;->getRichIconObjPath()Ljava/lang/String;

    move-result-object v12

    .line 109
    .local v12, "richIconObjPath":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/alljoyn/ns/Notification;->getRichAudioObjPath()Ljava/lang/String;

    move-result-object v13

    .line 110
    .local v13, "richAudioObjPath":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/alljoyn/ns/Notification;->getResponseObjectPath()Ljava/lang/String;

    move-result-object v14

    .line 112
    .local v14, "responseObjectPath":Ljava/lang/String;
    const/4 v15, 0x0

    .line 113
    .local v15, "audioUrl":Ljava/lang/String;
    if-eqz v11, :cond_8

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_8

    .line 114
    const/4 v9, 0x0

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/alljoyn/ns/RichAudioUrl;

    invoke-virtual {v9}, Lorg/alljoyn/ns/RichAudioUrl;->getUrl()Ljava/lang/String;

    move-result-object v15

    .line 117
    :cond_8
    sget-object v19, Lorg/alljoyn/ns/NotificationSender;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Sending message with message type: "

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v20, ", TTL: "

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v20, ", message: "

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/alljoyn/ns/NotificationText;

    invoke-virtual {v9}, Lorg/alljoyn/ns/NotificationText;->getText()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v20, ", richIconUrl: \'"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v20, "\' RichAudioUrl: \'"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v20, ", richIconObjPath: \'"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v20, "\' RichAudioObjPath: \'"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v20, "\'"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v9}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v9, p2

    .line 118
    invoke-static/range {v2 .. v14}, Lorg/alljoyn/ns/PayloadAdapter;->sendPayload(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Lorg/alljoyn/ns/NotificationMessageType;Ljava/util/List;Ljava/util/Map;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

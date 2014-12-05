.class public Lorg/alljoyn/ns/transport/producer/SenderTransport;
.super Ljava/lang/Object;
.source "SenderTransport.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

.field private notifProducerBusObj:Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;

.field private sessionListener:Lorg/alljoyn/ns/transport/producer/SenderSessionListener;

.field private stopSending:Z

.field private transportSenderChannels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/alljoyn/ns/NotificationMessageType;",
            "Lorg/alljoyn/ns/transport/producer/TransportChannelObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ioe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ns/transport/producer/SenderTransport;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/alljoyn/ns/commons/NativePlatform;)V
    .locals 1
    .param p1, "nativePlatform"    # Lorg/alljoyn/ns/commons/NativePlatform;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->stopSending:Z

    .line 72
    iput-object p1, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    .line 73
    return-void
.end method

.method private deleteNotificationById(I)V
    .locals 8
    .param p1, "notifId"    # I

    .prologue
    .line 235
    iget-object v5, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v5}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v4

    .line 236
    .local v4, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    sget-object v5, Lorg/alljoyn/ns/transport/producer/SenderTransport;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Trying to delete the notification by id: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\', searching for the relevant object"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const/4 v3, 0x0

    .line 240
    .local v3, "isObjFound":Z
    iget-object v5, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->transportSenderChannels:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;

    .line 242
    .local v1, "channelObj":Lorg/alljoyn/ns/transport/producer/TransportChannelObject;
    invoke-virtual {v1}, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->acquireLock()V

    .line 244
    invoke-virtual {v1}, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->getNotificationId()Ljava/lang/Integer;

    move-result-object v0

    .line 246
    .local v0, "chanObjNotifId":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 247
    sget-object v5, Lorg/alljoyn/ns/transport/producer/SenderTransport;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found the object with notifId: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' to be cancelled"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v1}, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->deleteNotification()V

    .line 249
    const/4 v3, 0x1

    .line 250
    invoke-virtual {v1}, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->releaseLock()V

    .line 259
    .end local v0    # "chanObjNotifId":Ljava/lang/Integer;
    .end local v1    # "channelObj":Lorg/alljoyn/ns/transport/producer/TransportChannelObject;
    :cond_0
    if-nez v3, :cond_1

    .line 260
    sget-object v5, Lorg/alljoyn/ns/transport/producer/SenderTransport;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to find the Notification with Id: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_1
    return-void

    .line 254
    .restart local v0    # "chanObjNotifId":Ljava/lang/Integer;
    .restart local v1    # "channelObj":Lorg/alljoyn/ns/transport/producer/TransportChannelObject;
    :cond_2
    invoke-virtual {v1}, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->releaseLock()V

    goto :goto_0
.end method


# virtual methods
.method public deleteLastMessage(Lorg/alljoyn/ns/NotificationMessageType;)V
    .locals 4
    .param p1, "messageType"    # Lorg/alljoyn/ns/NotificationMessageType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v1, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->transportSenderChannels:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;

    .line 202
    .local v0, "senderChannel":Lorg/alljoyn/ns/transport/producer/TransportChannelObject;
    if-nez v0, :cond_0

    .line 203
    new-instance v1, Lorg/alljoyn/ns/NotificationServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received an unknown message type: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', can\'t find a transport channel to delete the notification"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_0
    invoke-virtual {v0}, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->deleteNotification()V

    .line 208
    return-void
.end method

.method public dismiss(I)V
    .locals 7
    .param p1, "notifId"    # I

    .prologue
    .line 215
    iget-object v4, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v4}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v1

    .line 216
    .local v1, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    invoke-static {}, Lorg/alljoyn/ns/transport/Transport;->getInstance()Lorg/alljoyn/ns/transport/Transport;

    move-result-object v3

    .line 218
    .local v3, "transport":Lorg/alljoyn/ns/transport/Transport;
    sget-object v4, Lorg/alljoyn/ns/transport/producer/SenderTransport;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dismiss method has been called, trying to find and delete the notification by its id: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-direct {p0, p1}, Lorg/alljoyn/ns/transport/producer/SenderTransport;->deleteNotificationById(I)V

    .line 223
    :try_start_0
    invoke-virtual {v3}, Lorg/alljoyn/ns/transport/Transport;->readAllProperties()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/alljoyn/ns/transport/Transport;->getAppId(Ljava/util/Map;)Ljava/util/UUID;

    move-result-object v0

    .line 224
    .local v0, "appId":Ljava/util/UUID;
    invoke-static {p1, v0}, Lorg/alljoyn/ns/transport/DismissEmitter;->send(ILjava/util/UUID;)V
    :try_end_0
    .catch Lorg/alljoyn/ns/NotificationServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v0    # "appId":Ljava/util/UUID;
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v2

    .line 226
    .local v2, "nse":Lorg/alljoyn/ns/NotificationServiceException;
    sget-object v4, Lorg/alljoyn/ns/transport/producer/SenderTransport;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to send the Dismiss signal for notifId: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', Error: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/alljoyn/ns/NotificationServiceException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendNotification(IILorg/alljoyn/ns/NotificationMessageType;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Ljava/util/Map;[Lorg/alljoyn/ns/transport/TransportNotificationText;I)V
    .locals 14
    .param p1, "version"    # I
    .param p2, "msgId"    # I
    .param p3, "messageType"    # Lorg/alljoyn/ns/NotificationMessageType;
    .param p4, "deviceId"    # Ljava/lang/String;
    .param p5, "deviceName"    # Ljava/lang/String;
    .param p6, "appId"    # [B
    .param p7, "appName"    # Ljava/lang/String;
    .param p10, "text"    # [Lorg/alljoyn/ns/transport/TransportNotificationText;
    .param p11, "ttl"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/alljoyn/ns/NotificationMessageType;",
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
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 168
    .local p8, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/alljoyn/bus/Variant;>;"
    .local p9, "customAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v2}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v13

    .line 170
    .local v13, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    iget-boolean v2, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->stopSending:Z

    if-eqz v2, :cond_0

    .line 171
    sget-object v2, Lorg/alljoyn/ns/transport/producer/SenderTransport;->TAG:Ljava/lang/String;

    const-string v3, "In stopSending mode NOT sending notification!!!"

    invoke-interface {v13, v2, v3}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v2, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->transportSenderChannels:Ljava/util/Map;

    move-object/from16 v0, p3

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;

    .line 176
    .local v1, "senderChannel":Lorg/alljoyn/ns/transport/producer/TransportChannelObject;
    if-nez v1, :cond_1

    .line 177
    new-instance v2, Lorg/alljoyn/ns/NotificationServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received an unknown message type: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', can\'t find a transport channel to send the notification"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 181
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lorg/alljoyn/ns/NotificationMessageType;->getTypeId()S

    move-result v4

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v1 .. v12}, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->sendNotification(IISLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Ljava/util/Map;[Lorg/alljoyn/ns/transport/TransportNotificationText;I)V

    goto :goto_0
.end method

.method public startSenderTransport()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v8, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v8}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v5

    .line 82
    .local v5, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    invoke-static {}, Lorg/alljoyn/ns/transport/Transport;->getInstance()Lorg/alljoyn/ns/transport/Transport;

    move-result-object v8

    invoke-virtual {v8}, Lorg/alljoyn/ns/transport/Transport;->getBusAttachment()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v2

    .line 84
    .local v2, "busAttachment":Lorg/alljoyn/bus/BusAttachment;
    sget-object v8, Lorg/alljoyn/ns/transport/producer/SenderTransport;->TAG:Ljava/lang/String;

    const-string v9, "Starting a sender transport"

    invoke-interface {v5, v8, v9}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lorg/alljoyn/about/AboutServiceImpl;->getInstance()Lorg/alljoyn/about/AboutService;

    move-result-object v0

    .line 88
    .local v0, "aboutService":Lorg/alljoyn/about/AboutService;
    invoke-interface {v0}, Lorg/alljoyn/about/AboutService;->isServerRunning()Z

    move-result v8

    if-nez v8, :cond_0

    .line 89
    sget-object v8, Lorg/alljoyn/ns/transport/producer/SenderTransport;->TAG:Ljava/lang/String;

    const-string v9, "The AboutServer wasn\'t started, unable to send Announcement signals"

    invoke-interface {v5, v8, v9}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v8, Lorg/alljoyn/ns/NotificationServiceException;

    const-string v9, "The AboutServer wasn\'t started"

    invoke-direct {v8, v9}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 94
    :cond_0
    new-instance v8, Ljava/util/EnumMap;

    const-class v9, Lorg/alljoyn/ns/NotificationMessageType;

    invoke-direct {v8, v9}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v8, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->transportSenderChannels:Ljava/util/Map;

    .line 96
    :try_start_0
    invoke-static {}, Lorg/alljoyn/ns/NotificationMessageType;->values()[Lorg/alljoyn/ns/NotificationMessageType;

    move-result-object v1

    .local v1, "arr$":[Lorg/alljoyn/ns/NotificationMessageType;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v1, v3

    .line 97
    .local v6, "messageType":Lorg/alljoyn/ns/NotificationMessageType;
    iget-object v8, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->transportSenderChannels:Ljava/util/Map;

    new-instance v9, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;

    iget-object v10, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-direct {v9, v6, v2, v10}, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;-><init>(Lorg/alljoyn/ns/NotificationMessageType;Lorg/alljoyn/bus/BusAttachment;Lorg/alljoyn/ns/commons/NativePlatform;)V

    invoke-interface {v8, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/alljoyn/ns/NotificationServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    .end local v1    # "arr$":[Lorg/alljoyn/ns/NotificationMessageType;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "messageType":Lorg/alljoyn/ns/NotificationMessageType;
    :catch_0
    move-exception v7

    .line 101
    .local v7, "nse":Lorg/alljoyn/ns/NotificationServiceException;
    sget-object v8, Lorg/alljoyn/ns/transport/producer/SenderTransport;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Lorg/alljoyn/ns/NotificationServiceException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    throw v7

    .line 106
    .end local v7    # "nse":Lorg/alljoyn/ns/NotificationServiceException;
    .restart local v1    # "arr$":[Lorg/alljoyn/ns/NotificationMessageType;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    new-instance v8, Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;

    iget-object v9, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-direct {v8, p0, v9}, Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;-><init>(Lorg/alljoyn/ns/transport/producer/SenderTransport;Lorg/alljoyn/ns/commons/NativePlatform;)V

    iput-object v8, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->notifProducerBusObj:Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;

    .line 107
    iget-object v8, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->notifProducerBusObj:Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;

    invoke-virtual {v8}, Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;->init()V

    .line 110
    new-instance v8, Lorg/alljoyn/ns/transport/producer/SenderSessionListener;

    iget-object v9, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-direct {v8, v9}, Lorg/alljoyn/ns/transport/producer/SenderSessionListener;-><init>(Lorg/alljoyn/ns/commons/NativePlatform;)V

    iput-object v8, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->sessionListener:Lorg/alljoyn/ns/transport/producer/SenderSessionListener;

    .line 111
    iget-object v8, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->sessionListener:Lorg/alljoyn/ns/transport/producer/SenderSessionListener;

    invoke-virtual {v8}, Lorg/alljoyn/ns/transport/producer/SenderSessionListener;->init()V

    .line 114
    invoke-interface {v0}, Lorg/alljoyn/about/AboutService;->announce()V

    .line 115
    return-void
.end method

.method public stopSenderTransport()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 122
    iget-object v5, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->nativePlatform:Lorg/alljoyn/ns/commons/NativePlatform;

    invoke-interface {v5}, Lorg/alljoyn/ns/commons/NativePlatform;->getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;

    move-result-object v3

    .line 123
    .local v3, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    invoke-static {}, Lorg/alljoyn/ns/transport/Transport;->getInstance()Lorg/alljoyn/ns/transport/Transport;

    move-result-object v5

    invoke-virtual {v5}, Lorg/alljoyn/ns/transport/Transport;->getBusAttachment()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v1

    .line 124
    .local v1, "busAttachment":Lorg/alljoyn/bus/BusAttachment;
    sget-object v5, Lorg/alljoyn/ns/transport/producer/SenderTransport;->TAG:Ljava/lang/String;

    const-string v6, "Stopping SenderTransport"

    invoke-interface {v3, v5, v6}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v5, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->transportSenderChannels:Ljava/util/Map;

    if-eqz v5, :cond_1

    .line 127
    iget-object v5, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->transportSenderChannels:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/alljoyn/ns/NotificationMessageType;

    .line 128
    .local v4, "pr":Lorg/alljoyn/ns/NotificationMessageType;
    iget-object v5, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->transportSenderChannels:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;

    invoke-virtual {v5, v1}, Lorg/alljoyn/ns/transport/producer/TransportChannelObject;->clean(Lorg/alljoyn/bus/BusAttachment;)V

    goto :goto_0

    .line 131
    .end local v4    # "pr":Lorg/alljoyn/ns/NotificationMessageType;
    :cond_0
    iput-object v7, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->transportSenderChannels:Ljava/util/Map;

    .line 134
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v5, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->sessionListener:Lorg/alljoyn/ns/transport/producer/SenderSessionListener;

    if-eqz v5, :cond_2

    .line 135
    iget-object v5, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->sessionListener:Lorg/alljoyn/ns/transport/producer/SenderSessionListener;

    invoke-virtual {v5}, Lorg/alljoyn/ns/transport/producer/SenderSessionListener;->clean()V

    .line 136
    iput-object v7, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->sessionListener:Lorg/alljoyn/ns/transport/producer/SenderSessionListener;

    .line 139
    :cond_2
    iget-object v5, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->notifProducerBusObj:Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;

    if-eqz v5, :cond_3

    .line 140
    iget-object v5, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->notifProducerBusObj:Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;

    invoke-virtual {v5}, Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;->clean()V

    .line 141
    iput-object v7, p0, Lorg/alljoyn/ns/transport/producer/SenderTransport;->notifProducerBusObj:Lorg/alljoyn/ns/transport/producer/NotificationProducerImpl;

    .line 144
    :cond_3
    invoke-static {}, Lorg/alljoyn/about/AboutServiceImpl;->getInstance()Lorg/alljoyn/about/AboutService;

    move-result-object v0

    .line 145
    .local v0, "aboutService":Lorg/alljoyn/about/AboutService;
    invoke-interface {v0}, Lorg/alljoyn/about/AboutService;->isServerRunning()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 147
    invoke-interface {v0}, Lorg/alljoyn/about/AboutService;->announce()V

    .line 149
    :cond_4
    return-void
.end method

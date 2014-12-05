.class public Lorg/alljoyn/ioe/controlpanelservice/communication/AnnouncementReceiver;
.super Ljava/lang/Object;
.source "AnnouncementReceiver.java"

# interfaces
.implements Lorg/alljoyn/services/common/AnnouncementHandler;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ioe/controlpanelservice/communication/AnnouncementReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/AnnouncementReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnnouncement(Ljava/lang/String;S[Lorg/alljoyn/services/common/BusObjectDescription;Ljava/util/Map;)V
    .locals 14
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "port"    # S
    .param p3, "objectDescriptions"    # [Lorg/alljoyn/services/common/BusObjectDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "S[",
            "Lorg/alljoyn/services/common/BusObjectDescription;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/alljoyn/bus/Variant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p4, "aboutData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/alljoyn/bus/Variant;>;"
    sget-object v11, Lorg/alljoyn/ioe/controlpanelservice/communication/AnnouncementReceiver;->TAG:Ljava/lang/String;

    const-string v12, "Received Announcement signal"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->getInstance()Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    move-result-object v11

    invoke-virtual {v11}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->getHandler()Landroid/os/Handler;

    move-result-object v7

    .line 50
    .local v7, "handler":Landroid/os/Handler;
    if-nez v7, :cond_0

    .line 95
    :goto_0
    return-void

    .line 59
    :cond_0
    :try_start_0
    const-string v11, "AppId"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/alljoyn/bus/Variant;

    .line 60
    .local v9, "varAppId":Lorg/alljoyn/bus/Variant;
    invoke-static {v9}, Lorg/alljoyn/bus/VariantUtil;->getSignature(Lorg/alljoyn/bus/Variant;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "appIdSig":Ljava/lang/String;
    const-string v11, "ay"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 62
    sget-object v11, Lorg/alljoyn/ioe/controlpanelservice/communication/AnnouncementReceiver;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Received \'AppId\', that has an unexpected signature: \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\', the expected signature is: \'ay\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    .end local v2    # "appIdSig":Ljava/lang/String;
    .end local v9    # "varAppId":Lorg/alljoyn/bus/Variant;
    :catch_0
    move-exception v4

    .line 84
    .local v4, "be":Lorg/alljoyn/bus/BusException;
    sget-object v11, Lorg/alljoyn/ioe/controlpanelservice/communication/AnnouncementReceiver;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to retreive an Announcement properties, Error: \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lorg/alljoyn/bus/BusException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    .end local v4    # "be":Lorg/alljoyn/bus/BusException;
    .restart local v2    # "appIdSig":Ljava/lang/String;
    .restart local v9    # "varAppId":Lorg/alljoyn/bus/Variant;
    :cond_1
    :try_start_1
    const-class v11, [B

    invoke-virtual {v9, v11}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 67
    .local v8, "rawAppId":[B
    invoke-static {v8}, Lorg/alljoyn/services/common/utils/TransportUtil;->byteArrayToUUID([B)Ljava/util/UUID;

    move-result-object v1

    .line 69
    .local v1, "appId":Ljava/util/UUID;
    if-nez v1, :cond_2

    .line 70
    sget-object v11, Lorg/alljoyn/ioe/controlpanelservice/communication/AnnouncementReceiver;->TAG:Ljava/lang/String;

    const-string v12, "Failed to translate the received AppId into UUID"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :cond_2
    const-string v11, "DeviceId"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/alljoyn/bus/Variant;

    .line 75
    .local v10, "varDeviceId":Lorg/alljoyn/bus/Variant;
    invoke-static {v10}, Lorg/alljoyn/bus/VariantUtil;->getSignature(Lorg/alljoyn/bus/Variant;)Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, "devIdSig":Ljava/lang/String;
    const-string v11, "s"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 77
    sget-object v11, Lorg/alljoyn/ioe/controlpanelservice/communication/AnnouncementReceiver;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Received \'DeviceId\', that has an unexpected signature: \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\', the expected signature is: \'s\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 81
    :cond_3
    const-class v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Lorg/alljoyn/bus/Variant;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_1
    .catch Lorg/alljoyn/bus/BusException; {:try_start_1 .. :try_end_1} :catch_0

    .line 88
    .local v6, "deviceId":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v3, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v11, "SENDER"

    invoke-interface {v3, v11, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v11, "DEVICE_ID"

    invoke-interface {v3, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v11, "APP_ID"

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v11, "OBJ_DESC"

    move-object/from16 v0, p3

    invoke-interface {v3, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v11, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->ANNOUNCEMENT_RECEIVED:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    invoke-virtual {v11}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->ordinal()I

    move-result v11

    invoke-static {v7, v11, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method

.method public onDeviceLost(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 102
    return-void
.end method

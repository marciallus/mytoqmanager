.class public Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;
.super Ljava/lang/Object;
.source "ControlPanelService.java"

# interfaces
.implements Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService$1;
    }
.end annotation


# static fields
.field public static final INTERFACE_PREFIX:Ljava/lang/String; = "org.alljoyn.ControlPanel"

.field private static final SELF:Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private announcementReceiver:Lorg/alljoyn/ioe/controlpanelservice/communication/AnnouncementReceiver;

.field private connMgr:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

.field private deviceRegistry:Lorg/alljoyn/ioe/controlpanelservice/DeviceRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->TAG:Ljava/lang/String;

    .line 45
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;

    invoke-direct {v0}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;-><init>()V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->SELF:Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->getInstance()Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->connMgr:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    .line 77
    return-void
.end method

.method public static getInstance()Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->SELF:Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;

    return-object v0
.end method

.method private handleAnnouncement(Ljava/util/Map;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v18, "DEVICE_ID"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 218
    .local v7, "deviceId":Ljava/lang/String;
    const-string v18, "APP_ID"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 219
    .local v2, "appId":Ljava/lang/String;
    const-string v18, "SENDER"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 221
    .local v17, "sender":Ljava/lang/String;
    const-string v18, "OBJ_DESC"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Lorg/alljoyn/services/common/BusObjectDescription;

    move-object/from16 v14, v18

    check-cast v14, [Lorg/alljoyn/services/common/BusObjectDescription;

    .line 223
    .local v14, "objDescList":[Lorg/alljoyn/services/common/BusObjectDescription;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_2

    .line 224
    :cond_0
    sget-object v18, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->TAG:Ljava/lang/String;

    const-string v19, "Received a bad Announcement signal, deviceId can\'t be NULL or empty"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_1
    :goto_0
    return-void

    .line 227
    :cond_2
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_4

    .line 228
    :cond_3
    sget-object v18, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->TAG:Ljava/lang/String;

    const-string v19, "Received a bad Announcement signal, sender can\'t be NULL or empty"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :cond_4
    if-eqz v14, :cond_5

    array-length v0, v14

    move/from16 v18, v0

    if-nez v18, :cond_6

    .line 232
    :cond_5
    sget-object v18, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->TAG:Ljava/lang/String;

    const-string v19, "Received a bad Announcement signal, BusObjectDescription array is empty"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    :cond_6
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 239
    const/4 v13, 0x0

    .line 240
    .local v13, "newDevice":Z
    const/4 v8, 0x0

    .line 242
    .local v8, "handledDevice":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->deviceRegistry:Lorg/alljoyn/ioe/controlpanelservice/DeviceRegistry;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/alljoyn/ioe/controlpanelservice/DeviceRegistry;->getDevices()Ljava/util/Map;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    .line 245
    .local v6, "device":Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;
    move-object v3, v14

    .local v3, "arr$":[Lorg/alljoyn/services/common/BusObjectDescription;
    array-length v12, v3

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v12, :cond_b

    aget-object v4, v3, v9

    .line 246
    .local v4, "busObjDesc":Lorg/alljoyn/services/common/BusObjectDescription;
    sget-object v18, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Found objPath: \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Lorg/alljoyn/services/common/BusObjectDescription;->getPath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {v4}, Lorg/alljoyn/services/common/BusObjectDescription;->getInterfaces()[Ljava/lang/String;

    move-result-object v11

    .line 250
    .local v11, "interfaces":[Ljava/lang/String;
    invoke-static {v11}, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;->getInterfaceMask([Ljava/lang/String;)I

    move-result v10

    .line 252
    .local v10, "ifaceMask":I
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v10, v0}, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;->maskIncludes(II)Z

    move-result v18

    if-nez v18, :cond_7

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-static {v10, v0}, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;->maskIncludes(II)Z

    move-result v18

    if-nez v18, :cond_7

    .line 245
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 257
    :cond_7
    invoke-virtual {v4}, Lorg/alljoyn/services/common/BusObjectDescription;->getPath()Ljava/lang/String;

    move-result-object v15

    .line 259
    .local v15, "objPath":Ljava/lang/String;
    sget-object v18, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Found ControlPanel object, path: \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    if-nez v8, :cond_a

    .line 263
    if-nez v6, :cond_8

    .line 264
    sget-object v18, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Discovered new device, deviceId: \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\', sender: \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v6, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    .end local v6    # "device":Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;
    move-object/from16 v0, v17

    invoke-direct {v6, v7, v0}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .restart local v6    # "device":Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;
    invoke-virtual {v6}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->subscribeOnFoundLostEvents()V

    .line 268
    const/4 v13, 0x1

    .line 282
    :goto_3
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->setReachable(Z)V

    .line 283
    invoke-virtual {v6}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->startDeviceFoundVerificationService()V

    .line 285
    sget-object v18, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Start findAdvertisedName for sender: \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->connMgr:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->findAdvertisedName(Ljava/lang/String;)Lorg/alljoyn/bus/Status;
    :try_end_0
    .catch Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v16

    .line 295
    .local v16, "res":Lorg/alljoyn/bus/Status;
    sget-object v18, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 296
    sget-object v18, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to start findAdvertisedName for sender: \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\', Error: \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {v6}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->stopDeviceActivities()V

    goto/16 :goto_0

    .line 271
    .end local v16    # "res":Lorg/alljoyn/bus/Status;
    :cond_8
    sget-object v18, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Device with deviceId: \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\' already exists, updating sender to be: \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->setSender(Ljava/lang/String;)V

    .line 275
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->connMgr:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->cancelFindAdvertisedName(Ljava/lang/String;)Lorg/alljoyn/bus/Status;
    :try_end_1
    .catch Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 276
    :catch_0
    move-exception v5

    .line 277
    .local v5, "cpe":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    sget-object v18, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to call cancelFindAdvertisedName(), Error: \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 290
    .end local v5    # "cpe":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    :catch_1
    move-exception v5

    .line 291
    .restart local v5    # "cpe":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    sget-object v18, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to call findAdvertisedName(), Error: \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 302
    .end local v5    # "cpe":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    .restart local v16    # "res":Lorg/alljoyn/bus/Status;
    :cond_9
    const/4 v8, 0x1

    .line 306
    .end local v16    # "res":Lorg/alljoyn/bus/Status;
    :cond_a
    :try_start_2
    invoke-virtual {v6, v15, v10}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->addControlPanel(Ljava/lang/String;I)Lorg/alljoyn/ioe/controlpanelservice/Unit;
    :try_end_2
    .catch Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 307
    :catch_2
    move-exception v5

    .line 308
    .restart local v5    # "cpe":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    sget-object v18, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Received a broken object path: \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\', Error: \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 313
    .end local v4    # "busObjDesc":Lorg/alljoyn/services/common/BusObjectDescription;
    .end local v5    # "cpe":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    .end local v10    # "ifaceMask":I
    .end local v11    # "interfaces":[Ljava/lang/String;
    .end local v15    # "objPath":Ljava/lang/String;
    :cond_b
    if-eqz v8, :cond_1

    .line 314
    if-eqz v13, :cond_c

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->deviceRegistry:Lorg/alljoyn/ioe/controlpanelservice/DeviceRegistry;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Lorg/alljoyn/ioe/controlpanelservice/DeviceRegistry;->foundNewDevice(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;)V

    goto/16 :goto_0

    .line 318
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->deviceRegistry:Lorg/alljoyn/ioe/controlpanelservice/DeviceRegistry;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v0, v6, v1}, Lorg/alljoyn/ioe/controlpanelservice/DeviceRegistry;->reachabilityChanged(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public connMgrEventOccured(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;Ljava/util/Map;)V
    .locals 3
    .param p1, "eventType"    # Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p2, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received event from connection manager, type: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService$1;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$communication$ConnManagerEventType:[I

    invoke-virtual {p1}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 205
    :goto_0
    return-void

    .line 199
    :pswitch_0
    invoke-direct {p0, p2}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->handleAnnouncement(Ljava/util/Map;)V

    goto :goto_0

    .line 197
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getControllableDevice(Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;
    .locals 1
    .param p1, "sender"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->getControllableDevice(Ljava/lang/String;Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    move-result-object v0

    return-object v0
.end method

.method public getControllableDevice(Ljava/lang/String;Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "sender"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 148
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 149
    :cond_0
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received an illegal sender name, Sender: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating ControllableDevice, Sender: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', DeviceId: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-direct {v0, p1, p2}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDeviceRegistry()Lorg/alljoyn/ioe/controlpanelservice/DeviceRegistry;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->deviceRegistry:Lorg/alljoyn/ioe/controlpanelservice/DeviceRegistry;

    return-object v0
.end method

.method public init(Lorg/alljoyn/bus/BusAttachment;)V
    .locals 1
    .param p1, "bus"    # Lorg/alljoyn/bus/BusAttachment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->connMgr:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    invoke-virtual {v0, p1}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->setBusAttachment(Lorg/alljoyn/bus/BusAttachment;)V

    .line 117
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->getInstance()Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->initPool()V

    .line 118
    return-void
.end method

.method public init(Lorg/alljoyn/bus/BusAttachment;Lorg/alljoyn/ioe/controlpanelservice/DeviceRegistry;)V
    .locals 3
    .param p1, "bus"    # Lorg/alljoyn/bus/BusAttachment;
    .param p2, "deviceRegistry"    # Lorg/alljoyn/ioe/controlpanelservice/DeviceRegistry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 89
    if-nez p2, :cond_0

    .line 90
    new-instance v1, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    const-string v2, "deviceRegistry can\'t be NULL"

    invoke-direct {v1, v2}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_0
    invoke-static {}, Lorg/alljoyn/about/AboutServiceImpl;->getInstance()Lorg/alljoyn/about/AboutService;

    move-result-object v0

    .line 94
    .local v0, "aboutService":Lorg/alljoyn/about/AboutService;
    invoke-interface {v0}, Lorg/alljoyn/about/AboutService;->isClientRunning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    new-instance v1, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    const-string v2, "The AboutService is not running, impossible to receive Announcement signals"

    invoke-direct {v1, v2}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 99
    :cond_1
    invoke-virtual {p0, p1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->init(Lorg/alljoyn/bus/BusAttachment;)V

    .line 101
    iput-object p2, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->deviceRegistry:Lorg/alljoyn/ioe/controlpanelservice/DeviceRegistry;

    .line 103
    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->TAG:Ljava/lang/String;

    const-string v2, "Start listening for Announcement signals"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->connMgr:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->ANNOUNCEMENT_RECEIVED:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    invoke-virtual {v1, v2, p0}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->registerEventListener(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;)V

    .line 107
    new-instance v1, Lorg/alljoyn/ioe/controlpanelservice/communication/AnnouncementReceiver;

    invoke-direct {v1}, Lorg/alljoyn/ioe/controlpanelservice/communication/AnnouncementReceiver;-><init>()V

    iput-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->announcementReceiver:Lorg/alljoyn/ioe/controlpanelservice/communication/AnnouncementReceiver;

    .line 108
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->announcementReceiver:Lorg/alljoyn/ioe/controlpanelservice/communication/AnnouncementReceiver;

    invoke-interface {v0, v1}, Lorg/alljoyn/about/AboutService;->addAnnouncementHandler(Lorg/alljoyn/services/common/AnnouncementHandler;)V

    .line 109
    return-void
.end method

.method public shutdown()V
    .locals 5

    .prologue
    .line 160
    sget-object v3, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->TAG:Ljava/lang/String;

    const-string v4, "Shutdown ControlPanelService"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->announcementReceiver:Lorg/alljoyn/ioe/controlpanelservice/communication/AnnouncementReceiver;

    if-eqz v3, :cond_0

    .line 163
    invoke-static {}, Lorg/alljoyn/about/AboutServiceImpl;->getInstance()Lorg/alljoyn/about/AboutService;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->announcementReceiver:Lorg/alljoyn/ioe/controlpanelservice/communication/AnnouncementReceiver;

    invoke-interface {v3, v4}, Lorg/alljoyn/about/AboutService;->removeAnnouncementHandler(Lorg/alljoyn/services/common/AnnouncementHandler;)V

    .line 166
    :cond_0
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->deviceRegistry:Lorg/alljoyn/ioe/controlpanelservice/DeviceRegistry;

    if-eqz v3, :cond_2

    .line 167
    sget-object v3, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->TAG:Ljava/lang/String;

    const-string v4, "Clear devices registry"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->deviceRegistry:Lorg/alljoyn/ioe/controlpanelservice/DeviceRegistry;

    invoke-interface {v3}, Lorg/alljoyn/ioe/controlpanelservice/DeviceRegistry;->getDevices()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    .line 169
    .local v0, "device":Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;
    invoke-virtual {p0, v0}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->stopControllableDevice(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;)V

    goto :goto_0

    .line 171
    .end local v0    # "device":Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->deviceRegistry:Lorg/alljoyn/ioe/controlpanelservice/DeviceRegistry;

    .line 174
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->getInstance()Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;

    move-result-object v2

    .line 175
    .local v2, "taskManager":Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;
    invoke-virtual {v2}, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 176
    invoke-virtual {v2}, Lorg/alljoyn/ioe/controlpanelservice/communication/TaskManager;->shutdown()V

    .line 179
    :cond_3
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->connMgr:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    invoke-virtual {v3}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->shutdown()V

    .line 180
    return-void
.end method

.method public stopControllableDevice(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;)V
    .locals 3
    .param p1, "device"    # Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    .prologue
    .line 187
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop device: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' activities"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p1}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->stopDeviceActivities()V

    .line 189
    return-void
.end method

.class public Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;
.super Ljava/lang/Object;
.source "ControlPanelCollection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection$NotificationActionReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private controlPanelVersion:Ljava/lang/Short;

.field private controlPanels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;",
            ">;"
        }
    .end annotation
.end field

.field private device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

.field private ifaceMask:I

.field private name:Ljava/lang/String;

.field private notifActSignalHandler:Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;

.field private notificationActionVersion:Ljava/lang/Short;

.field private objectPath:Ljava/lang/String;

.field private unit:Lorg/alljoyn/ioe/controlpanelservice/Unit;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;Lorg/alljoyn/ioe/controlpanelservice/Unit;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "controllableDevice"    # Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;
    .param p2, "unit"    # Lorg/alljoyn/ioe/controlpanelservice/Unit;
    .param p3, "collName"    # Ljava/lang/String;
    .param p4, "objPath"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    .line 124
    iput-object p2, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->unit:Lorg/alljoyn/ioe/controlpanelservice/Unit;

    .line 125
    iput-object p3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->name:Ljava/lang/String;

    .line 126
    iput-object p4, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->objectPath:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->controlPanels:Ljava/util/Map;

    .line 128
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->objectPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->controlPanels:Ljava/util/Map;

    return-object v0
.end method

.method private checkVersion()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 278
    iget v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->ifaceMask:I

    invoke-static {v7, v12}, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;->maskIncludes(II)Z

    move-result v2

    .line 279
    .local v2, "isControlPanel":Z
    iget v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->ifaceMask:I

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;->maskIncludes(II)Z

    move-result v3

    .line 281
    .local v3, "isNotifAction":Z
    new-instance v1, Ljava/util/ArrayList;

    const/4 v7, 0x2

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 283
    .local v1, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz v2, :cond_0

    .line 284
    const-class v7, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ControlPanel;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_0
    if-eqz v3, :cond_1

    .line 287
    const-class v7, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/NotificationAction;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_1
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->getInstance()Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    move-result-object v8

    iget-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v7}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getSender()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->objectPath:Ljava/lang/String;

    iget-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v7}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getSessionId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Class;

    check-cast v7, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10, v11, v7}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->getProxyObject(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Class;)Lorg/alljoyn/bus/ProxyBusObject;

    move-result-object v4

    .line 297
    .local v4, "proxyObj":Lorg/alljoyn/bus/ProxyBusObject;
    if-eqz v2, :cond_3

    .line 299
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The objPath: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->objectPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' implements the ControlPanel interface, performing version check"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :try_start_0
    const-class v7, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ControlPanel;

    invoke-virtual {v4, v7}, Lorg/alljoyn/bus/ProxyBusObject;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ControlPanel;

    .line 303
    .local v5, "remoteControl":Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ControlPanel;
    invoke-interface {v5}, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ControlPanel;->getVersion()S

    move-result v6

    .line 304
    .local v6, "version":S
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Version check for ControlPanel interface, my protocol version is: \'1\' the remote device version is: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    if-le v6, v12, :cond_2

    .line 308
    new-instance v7, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incompatible ControlPanel version, my protocol version is: \'1\' the remote device version is: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v5    # "remoteControl":Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ControlPanel;
    .end local v6    # "version":S
    :catch_0
    move-exception v0

    .line 314
    .local v0, "be":Lorg/alljoyn/bus/BusException;
    new-instance v7, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to call getVersion() for ControlPanel interface, objPath: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->objectPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\', Error: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lorg/alljoyn/bus/BusException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 312
    .end local v0    # "be":Lorg/alljoyn/bus/BusException;
    .restart local v5    # "remoteControl":Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ControlPanel;
    .restart local v6    # "version":S
    :cond_2
    :try_start_1
    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    iput-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->controlPanelVersion:Ljava/lang/Short;
    :try_end_1
    .catch Lorg/alljoyn/bus/BusException; {:try_start_1 .. :try_end_1} :catch_0

    .line 319
    .end local v5    # "remoteControl":Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ControlPanel;
    .end local v6    # "version":S
    :cond_3
    if-eqz v3, :cond_4

    .line 321
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The objPath: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->objectPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' implements the NotificationAction interface, performing version check"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :try_start_2
    const-class v7, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/NotificationAction;

    invoke-virtual {v4, v7}, Lorg/alljoyn/bus/ProxyBusObject;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/NotificationAction;

    .line 325
    .local v5, "remoteControl":Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/NotificationAction;
    invoke-interface {v5}, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/NotificationAction;->getVersion()S

    move-result v6

    .line 326
    .restart local v6    # "version":S
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Version check for NotificationAction interface, my protocol version is: \'1\' the remote device version is: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    if-le v6, v12, :cond_5

    .line 330
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incompatible NotificationAction version, my protocol version is: \'1\' the remote device version is: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v7, 0x0

    iput-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->notificationActionVersion:Ljava/lang/Short;

    .line 344
    .end local v5    # "remoteControl":Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/NotificationAction;
    .end local v6    # "version":S
    :cond_4
    :goto_0
    return-void

    .line 335
    .restart local v5    # "remoteControl":Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/NotificationAction;
    .restart local v6    # "version":S
    :cond_5
    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    iput-object v7, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->notificationActionVersion:Ljava/lang/Short;
    :try_end_2
    .catch Lorg/alljoyn/bus/BusException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 337
    .end local v5    # "remoteControl":Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/NotificationAction;
    .end local v6    # "version":S
    :catch_1
    move-exception v0

    .line 338
    .restart local v0    # "be":Lorg/alljoyn/bus/BusException;
    sget-object v7, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to call getVersion() for NotificationAction interface, objPath: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->objectPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\', Error: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lorg/alljoyn/bus/BusException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iput-object v13, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->notificationActionVersion:Ljava/lang/Short;

    goto :goto_0
.end method

.method private releaseControlPanels()V
    .locals 3

    .prologue
    .line 350
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->controlPanels:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    .line 351
    .local v1, "panel":Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;
    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;->release()V

    goto :goto_0

    .line 354
    .end local v1    # "panel":Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;
    :cond_0
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->controlPanels:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 355
    return-void
.end method


# virtual methods
.method public getControlPanelVersion()Ljava/lang/Short;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->controlPanelVersion:Ljava/lang/Short;

    return-object v0
.end method

.method public getControlPanels()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->controlPanels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getDevice()Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    return-object v0
.end method

.method public getLanguages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->controlPanels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationActionVersion()Ljava/lang/Short;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->notificationActionVersion:Ljava/lang/Short;

    return-object v0
.end method

.method public getObjectPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->objectPath:Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Lorg/alljoyn/ioe/controlpanelservice/Unit;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->unit:Lorg/alljoyn/ioe/controlpanelservice/Unit;

    return-object v0
.end method

.method handleNotificationAction()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 254
    iget v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->ifaceMask:I

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;->maskIncludes(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    new-instance v1, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The received objectPath: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->objectPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' doesn\'t implement the NotificationAction protocol"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    :cond_0
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->notificationActionVersion:Ljava/lang/Short;

    if-nez v1, :cond_1

    .line 259
    new-instance v1, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    const-string v2, "Undefined the NotificationAction protocol version"

    invoke-direct {v1, v2}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_1
    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering NotificationAction signal handler, objPath: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->objectPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v1, "Dismiss"

    invoke-static {v1}, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;->getNotificationActionDismissSignal(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 264
    .local v0, "method":Ljava/lang/reflect/Method;
    if-nez v0, :cond_2

    .line 265
    new-instance v1, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    const-string v2, "Failed to register the NotificationAction.Dismiss signal, no reflection method was found"

    invoke-direct {v1, v2}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 268
    :cond_2
    new-instance v1, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;

    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->objectPath:Ljava/lang/String;

    new-instance v3, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection$NotificationActionReceiver;

    invoke-direct {v3, p0}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection$NotificationActionReceiver;-><init>(Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;)V

    const-string v4, "org.alljoyn.ControlPanel.NotificationAction"

    invoke-direct {v1, v2, v3, v0, v4}, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->notifActSignalHandler:Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;

    .line 269
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->notifActSignalHandler:Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;

    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->register()V

    .line 270
    return-void
.end method

.method public release()V
    .locals 4

    .prologue
    .line 191
    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleaning the ControlPanelCollection: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->notifActSignalHandler:Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;

    if-eqz v1, :cond_0

    .line 195
    :try_start_0
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->notifActSignalHandler:Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;

    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;->unregister()V
    :try_end_0
    .catch Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->notifActSignalHandler:Lorg/alljoyn/ioe/controlpanelservice/communication/UIWidgetSignalHandler;

    .line 202
    :cond_0
    invoke-direct {p0}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->releaseControlPanels()V

    .line 203
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "cpe":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->TAG:Ljava/lang/String;

    const-string v2, "Failed to unregister the NotificationAction signal handler"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method retrievePanels()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 211
    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Introspecting ControlPanels for objectPath: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->objectPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getSessionId()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 213
    new-instance v1, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    const-string v2, "The session wasn\'t established, can\'t introspect ControlPanels"

    invoke-direct {v1, v2}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_0
    :try_start_0
    new-instance v9, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;

    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->objectPath:Ljava/lang/String;

    invoke-direct {v9, v1}, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;-><init>(Ljava/lang/String;)V

    .line 220
    .local v9, "introNode":Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->getInstance()Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->getBusAttachment()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v1

    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v2}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getSender()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v3}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getSessionId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v9, v1, v2, v3}, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->parseOneLevel(Lorg/alljoyn/bus/BusAttachment;Ljava/lang/String;I)V

    .line 223
    invoke-virtual {v9}, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->getInterfaces()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;->getInterfaceMask([Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->ifaceMask:I

    .line 226
    invoke-direct {p0}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->checkVersion()V

    .line 227
    invoke-direct {p0}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->releaseControlPanels()V

    .line 229
    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fill the ControlPanelCollection, objectPath: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->objectPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {v9}, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->getChidren()Ljava/util/List;

    move-result-object v6

    .line 231
    .local v6, "children":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;

    .line 232
    .local v10, "node":Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;
    invoke-virtual {v10}, Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, "path":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 235
    .local v11, "segments":[Ljava/lang/String;
    array-length v1, v11

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v11, v1

    const-string v2, "_"

    const-string v3, "-"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, "lang":Ljava/lang/String;
    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Introspected ControlPanel lang: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', objPath: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->objectPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;

    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->unit:Lorg/alljoyn/ioe/controlpanelservice/Unit;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;-><init>(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;Lorg/alljoyn/ioe/controlpanelservice/Unit;Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .local v0, "panel":Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->controlPanels:Ljava/util/Map;

    invoke-interface {v1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    .end local v0    # "panel":Lorg/alljoyn/ioe/controlpanelservice/ui/DeviceControlPanel;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "lang":Ljava/lang/String;
    .end local v6    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "introNode":Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;
    .end local v10    # "node":Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;
    .end local v11    # "segments":[Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 243
    .local v7, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to introspect the ControlPanels for objectPath: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->objectPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', Error: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v1, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    const-string v2, "Failed to introspect the ControlPanels"

    invoke-direct {v1, v2}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;>;"
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "introNode":Lorg/alljoyn/ioe/controlpanelservice/communication/IntrospectionNode;
    :cond_1
    return-void
.end method

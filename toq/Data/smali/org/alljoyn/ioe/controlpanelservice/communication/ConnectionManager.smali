.class public Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$1;,
        Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ListenersComparator;,
        Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrOnJoinSessionListener;,
        Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrSessionListener;,
        Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrBusListener;
    }
.end annotation


# static fields
.field public static final ANNOUNCE_SIGNAL_NAME:Ljava/lang/String; = "Announce"

.field private static final PORT_NUMBER:S = 0x3e8s

.field private static final SELF:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private announcementReceiver:Lorg/alljoyn/ioe/controlpanelservice/communication/AnnouncementReceiver;

.field private bus:Lorg/alljoyn/bus/BusAttachment;

.field private busListener:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrBusListener;

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private volatile listenersContainer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;",
            "Ljava/util/Set",
            "<",
            "Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private onJoinSessionListener:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrOnJoinSessionListener;

.field private sessionListener:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrSessionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->TAG:Ljava/lang/String;

    .line 161
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    invoke-direct {v0}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;-><init>()V

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->SELF:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->listenersContainer:Ljava/util/Map;

    .line 212
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrSessionListener;

    invoke-direct {v0, p0, v2}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrSessionListener;-><init>(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$1;)V

    iput-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->sessionListener:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrSessionListener;

    .line 213
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrOnJoinSessionListener;

    invoke-direct {v0, p0, v2}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrOnJoinSessionListener;-><init>(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$1;)V

    iput-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->onJoinSessionListener:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrOnJoinSessionListener;

    .line 214
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrBusListener;

    invoke-direct {v0, p0, v2}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrBusListener;-><init>(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$1;)V

    iput-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->busListener:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrBusListener;

    .line 215
    return-void
.end method

.method static synthetic access$000(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;)Lorg/alljoyn/bus/BusAttachment;
    .locals 1
    .param p0, "x0"    # Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->bus:Lorg/alljoyn/bus/BusAttachment;

    return-object v0
.end method

.method static synthetic access$100(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;
    .locals 1

    .prologue
    .line 221
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->SELF:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    return-object v0
.end method

.method private getSessionOpts()Lorg/alljoyn/bus/SessionOpts;
    .locals 2

    .prologue
    .line 485
    new-instance v0, Lorg/alljoyn/bus/SessionOpts;

    invoke-direct {v0}, Lorg/alljoyn/bus/SessionOpts;-><init>()V

    .line 486
    .local v0, "sessionOpts":Lorg/alljoyn/bus/SessionOpts;
    const/4 v1, 0x1

    iput-byte v1, v0, Lorg/alljoyn/bus/SessionOpts;->traffic:B

    .line 487
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/alljoyn/bus/SessionOpts;->isMultipoint:Z

    .line 488
    const/4 v1, -0x1

    iput-byte v1, v0, Lorg/alljoyn/bus/SessionOpts;->proximity:B

    .line 489
    const/16 v1, -0x81

    iput-short v1, v0, Lorg/alljoyn/bus/SessionOpts;->transports:S

    .line 490
    return-object v0
.end method


# virtual methods
.method public cancelFindAdvertisedName(Ljava/lang/String;)Lorg/alljoyn/bus/Status;
    .locals 2
    .param p1, "wellKnownName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->bus:Lorg/alljoyn/bus/BusAttachment;

    if-nez v0, :cond_0

    .line 353
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    const-string v1, "The BusAttachment is not defined"

    invoke-direct {v0, v1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_0
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->bus:Lorg/alljoyn/bus/BusAttachment;

    invoke-virtual {v0, p1}, Lorg/alljoyn/bus/BusAttachment;->cancelFindAdvertisedName(Ljava/lang/String;)Lorg/alljoyn/bus/Status;

    move-result-object v0

    return-object v0
.end method

.method public findAdvertisedName(Ljava/lang/String;)Lorg/alljoyn/bus/Status;
    .locals 2
    .param p1, "wellKnownName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->bus:Lorg/alljoyn/bus/BusAttachment;

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    const-string v1, "The BusAttachment is not defined"

    invoke-direct {v0, v1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->bus:Lorg/alljoyn/bus/BusAttachment;

    invoke-virtual {v0, p1}, Lorg/alljoyn/bus/BusAttachment;->findAdvertisedName(Ljava/lang/String;)Lorg/alljoyn/bus/Status;

    move-result-object v0

    return-object v0
.end method

.method public getAnnouncementReceiver()Lorg/alljoyn/ioe/controlpanelservice/communication/AnnouncementReceiver;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->announcementReceiver:Lorg/alljoyn/ioe/controlpanelservice/communication/AnnouncementReceiver;

    return-object v0
.end method

.method public getBusAttachment()Lorg/alljoyn/bus/BusAttachment;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->bus:Lorg/alljoyn/bus/BusAttachment;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getProxyObject(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Class;)Lorg/alljoyn/bus/ProxyBusObject;
    .locals 3
    .param p1, "busName"    # Ljava/lang/String;
    .param p2, "objPath"    # Ljava/lang/String;
    .param p3, "sessionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/alljoyn/bus/ProxyBusObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 454
    .local p4, "busInterfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->bus:Lorg/alljoyn/bus/BusAttachment;

    if-nez v1, :cond_0

    .line 455
    new-instance v1, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    const-string v2, "The BusAttachment is not defined"

    invoke-direct {v1, v2}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 458
    :cond_0
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->bus:Lorg/alljoyn/bus/BusAttachment;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/alljoyn/bus/BusAttachment;->getProxyBusObject(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Class;)Lorg/alljoyn/bus/ProxyBusObject;

    move-result-object v0

    .line 459
    .local v0, "proxyObj":Lorg/alljoyn/bus/ProxyBusObject;
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 229
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->values()[Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    aget-object v1, v2, v3

    .line 230
    .local v1, "eventType":Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received message type: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 233
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, v1, v0}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->notifyListeners(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;Ljava/util/Map;)V

    .line 234
    const/4 v2, 0x1

    return v2
.end method

.method public joinSession(Ljava/lang/String;Ljava/lang/String;)Lorg/alljoyn/bus/Status;
    .locals 8
    .param p1, "sender"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->bus:Lorg/alljoyn/bus/BusAttachment;

    if-nez v0, :cond_0

    .line 425
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    const-string v1, "The BusAttachment is not defined"

    invoke-direct {v0, v1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_0
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->bus:Lorg/alljoyn/bus/BusAttachment;

    const/16 v2, 0x3e8

    invoke-direct {p0}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->getSessionOpts()Lorg/alljoyn/bus/SessionOpts;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->sessionListener:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrSessionListener;

    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->onJoinSessionListener:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrOnJoinSessionListener;

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lorg/alljoyn/bus/BusAttachment;->joinSession(Ljava/lang/String;SLorg/alljoyn/bus/SessionOpts;Lorg/alljoyn/bus/SessionListener;Lorg/alljoyn/bus/OnJoinSessionListener;Ljava/lang/Object;)Lorg/alljoyn/bus/Status;

    move-result-object v7

    .line 429
    .local v7, "status":Lorg/alljoyn/bus/Status;
    return-object v7
.end method

.method public leaveSession(I)Lorg/alljoyn/bus/Status;
    .locals 2
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->bus:Lorg/alljoyn/bus/BusAttachment;

    if-nez v0, :cond_0

    .line 437
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    const-string v1, "LeaveSession was called, but BusAttachment has not been defined"

    invoke-direct {v0, v1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_0
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->bus:Lorg/alljoyn/bus/BusAttachment;

    invoke-virtual {v0, p1}, Lorg/alljoyn/bus/BusAttachment;->leaveSession(I)Lorg/alljoyn/bus/Status;

    move-result-object v0

    return-object v0
.end method

.method public notifyListeners(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;Ljava/util/Map;)V
    .locals 4
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
    .line 320
    .local p2, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->listenersContainer:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 321
    .local v2, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;>;"
    if-nez v2, :cond_1

    .line 330
    :cond_0
    return-void

    .line 326
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;

    .line 327
    .local v1, "listener":Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;
    invoke-interface {v1, p1, p2}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;->connMgrEventOccured(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public registerEventListener(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;)V
    .locals 4
    .param p1, "eventType"    # Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;
    .param p2, "listener"    # Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;

    .prologue
    .line 287
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->listenersContainer:Ljava/util/Map;

    monitor-enter v2

    .line 288
    :try_start_0
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->listenersContainer:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 289
    .local v0, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;>;"
    if-nez v0, :cond_0

    .line 290
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    .end local v0    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;>;"
    new-instance v1, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ListenersComparator;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ListenersComparator;-><init>(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$1;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>(Ljava/util/Comparator;)V

    .line 291
    .restart local v0    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->listenersContainer:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :goto_0
    monitor-exit v2

    .line 298
    return-void

    .line 295
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 297
    .end local v0    # "listeners":Ljava/util/Set;, "Ljava/util/Set<Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerObjectAndSetSignalHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "signalName"    # Ljava/lang/String;
    .param p3, "handlerMethod"    # Ljava/lang/reflect/Method;
    .param p4, "toBeRegistered"    # Ljava/lang/Object;
    .param p5, "objectPath"    # Ljava/lang/String;
    .param p6, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 370
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering BusObject and setting signal handler, IFName: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", method: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->bus:Lorg/alljoyn/bus/BusAttachment;

    if-nez v0, :cond_0

    .line 373
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    const-string v1, "Not initialized BusAttachment"

    invoke-direct {v0, v1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_0
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 379
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "Registering signal handler without source object"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->bus:Lorg/alljoyn/bus/BusAttachment;

    invoke-virtual {v0, p1, p2, p4, p3}, Lorg/alljoyn/bus/BusAttachment;->registerSignalHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;)Lorg/alljoyn/bus/Status;

    move-result-object v6

    .line 387
    .local v6, "status":Lorg/alljoyn/bus/Status;
    :goto_0
    sget-object v0, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-ne v6, v0, :cond_2

    .line 388
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signal receiver ifname: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', signal \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' registered successfully"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->bus:Lorg/alljoyn/bus/BusAttachment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type=\'signal\',interface=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',member=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/alljoyn/bus/BusAttachment;->addMatch(Ljava/lang/String;)Lorg/alljoyn/bus/Status;

    move-result-object v6

    .line 396
    sget-object v0, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-eq v6, v0, :cond_3

    .line 397
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register addMatch rule for interface: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',signal: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', status: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    const-string v1, "Failed to register signal handler"

    invoke-direct {v0, v1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    .end local v6    # "status":Lorg/alljoyn/bus/Status;
    :cond_1
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering signal handler with source object: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->bus:Lorg/alljoyn/bus/BusAttachment;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/alljoyn/bus/BusAttachment;->registerSignalHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/String;)Lorg/alljoyn/bus/Status;

    move-result-object v6

    .restart local v6    # "status":Lorg/alljoyn/bus/Status;
    goto/16 :goto_0

    .line 391
    :cond_2
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register signal handler, status: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    const-string v1, "Failed to register signal handler"

    invoke-direct {v0, v1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_3
    return-void
.end method

.method public setBusAttachment(Lorg/alljoyn/bus/BusAttachment;)V
    .locals 2
    .param p1, "busAttachment"    # Lorg/alljoyn/bus/BusAttachment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 242
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/alljoyn/bus/BusAttachment;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    :cond_0
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    const-string v1, "The received BusAttachment is not connected"

    invoke-direct {v0, v1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_1
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->bus:Lorg/alljoyn/bus/BusAttachment;

    if-eqz v0, :cond_2

    .line 246
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    const-string v1, "The BusAttachment already exists"

    invoke-direct {v0, v1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_2
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->handlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_3

    .line 250
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ControlPanelConnMgr"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->handlerThread:Landroid/os/HandlerThread;

    .line 251
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 252
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->handler:Landroid/os/Handler;

    .line 255
    :cond_3
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->bus:Lorg/alljoyn/bus/BusAttachment;

    .line 256
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->bus:Lorg/alljoyn/bus/BusAttachment;

    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->busListener:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager$ConnMgrBusListener;

    invoke-virtual {v0, v1}, Lorg/alljoyn/bus/BusAttachment;->registerBusListener(Lorg/alljoyn/bus/BusListener;)V

    .line 257
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 466
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "Shutdown the ConnectionMgr service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->handlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 470
    iput-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->handlerThread:Landroid/os/HandlerThread;

    .line 471
    iput-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->handler:Landroid/os/Handler;

    .line 474
    :cond_0
    iput-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->bus:Lorg/alljoyn/bus/BusAttachment;

    .line 475
    return-void
.end method

.method public unregisterEventListener(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;)V
    .locals 2
    .param p1, "eventType"    # Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;
    .param p2, "listener"    # Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;

    .prologue
    .line 306
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->listenersContainer:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 307
    .local v0, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;>;"
    if-nez v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public unregisterSignalHandler(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 2
    .param p1, "receiverObj"    # Ljava/lang/Object;
    .param p2, "handlerMethod"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->bus:Lorg/alljoyn/bus/BusAttachment;

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    const-string v1, "The BusAttachment is not defined"

    invoke-direct {v0, v1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_0
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->bus:Lorg/alljoyn/bus/BusAttachment;

    invoke-virtual {v0, p1, p2}, Lorg/alljoyn/bus/BusAttachment;->unregisterSignalHandler(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    .line 414
    return-void
.end method

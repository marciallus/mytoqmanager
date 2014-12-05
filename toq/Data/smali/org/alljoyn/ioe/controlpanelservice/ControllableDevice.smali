.class public Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;
.super Ljava/lang/Object;
.source "ControllableDevice.java"

# interfaces
.implements Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice$2;
    }
.end annotation


# static fields
.field private static final DEVICE_FOUND_TIME:I = 0x2d

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private connMgr:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

.field private deviceEventsListener:Lorg/alljoyn/ioe/controlpanelservice/DeviceEventsListener;

.field private deviceId:Ljava/lang/String;

.field private deviceRegistry:Lorg/alljoyn/ioe/controlpanelservice/DeviceRegistry;

.field private isReachable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private scheduledService:Ljava/util/concurrent/ScheduledExecutorService;

.field private sender:Ljava/lang/String;

.field private sessionId:Ljava/lang/Integer;

.field private unitMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/alljoyn/ioe/controlpanelservice/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "sender"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->deviceId:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->sender:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->isReachable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->unitMap:Ljava/util/Map;

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->sessionId:Ljava/lang/Integer;

    .line 113
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->getInstance()Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelService;->getDeviceRegistry()Lorg/alljoyn/ioe/controlpanelservice/DeviceRegistry;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->deviceRegistry:Lorg/alljoyn/ioe/controlpanelservice/DeviceRegistry;

    .line 114
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->getInstance()Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->connMgr:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    .line 115
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->isReachable:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;)Lorg/alljoyn/ioe/controlpanelservice/DeviceRegistry;
    .locals 1
    .param p0, "x0"    # Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->deviceRegistry:Lorg/alljoyn/ioe/controlpanelservice/DeviceRegistry;

    return-object v0
.end method

.method private getControlPanelCollections()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 447
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 448
    .local v0, "collect":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;>;"
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->unitMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/alljoyn/ioe/controlpanelservice/Unit;

    .line 449
    .local v2, "unit":Lorg/alljoyn/ioe/controlpanelservice/Unit;
    invoke-virtual {v2}, Lorg/alljoyn/ioe/controlpanelservice/Unit;->getControlPanelCollection()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 451
    .end local v2    # "unit":Lorg/alljoyn/ioe/controlpanelservice/Unit;
    :cond_0
    return-object v0
.end method

.method private handleFoundAdvName(Ljava/util/Map;)V
    .locals 5
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
    .line 474
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "SENDER"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "foundSender":Ljava/lang/String;
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received foundAdvertisedName of sender: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', my sender name is: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->sender:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->sender:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 478
    :cond_0
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The received sender: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' doesn\'t belong to this device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_1
    :goto_0
    return-void

    .line 482
    :cond_2
    invoke-direct {p0}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->stopDeviceFoundVerificationService()V

    .line 486
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->isReachable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 487
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->isReachable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    .line 488
    .local v1, "newVal":Z
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The device: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' isReachable set to: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->deviceRegistry:Lorg/alljoyn/ioe/controlpanelservice/DeviceRegistry;

    invoke-interface {v2, p0, v1}, Lorg/alljoyn/ioe/controlpanelservice/DeviceRegistry;->reachabilityChanged(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;Z)V

    goto :goto_0
.end method

.method private handleLostAdvName(Ljava/util/Map;)V
    .locals 5
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
    .line 501
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "SENDER"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, "foundSender":Ljava/lang/String;
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received lostAdvertisedName of sender: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', my sender name is: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->sender:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->sender:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 505
    :cond_0
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received sender: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' doesn\'t belong to this device"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_1
    :goto_0
    return-void

    .line 509
    :cond_2
    invoke-direct {p0}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->stopDeviceFoundVerificationService()V

    .line 513
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->isReachable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 514
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->isReachable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    .line 515
    .local v1, "newVal":Z
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The device: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' isReachable set to: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->deviceRegistry:Lorg/alljoyn/ioe/controlpanelservice/DeviceRegistry;

    invoke-interface {v2, p0, v1}, Lorg/alljoyn/ioe/controlpanelservice/DeviceRegistry;->reachabilityChanged(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;Z)V

    goto :goto_0
.end method

.method private handleSessionJoinFailed(Ljava/util/Map;)V
    .locals 6
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
    .line 579
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "DEVICE_ID"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, "deviceId":Ljava/lang/String;
    const-string v3, "STATUS"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 582
    .local v2, "statusObj":Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lorg/alljoyn/bus/Status;

    if-nez v3, :cond_1

    .line 600
    .end local v2    # "statusObj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 586
    .restart local v2    # "statusObj":Ljava/lang/Object;
    :cond_1
    check-cast v2, Lorg/alljoyn/bus/Status;

    .end local v2    # "statusObj":Ljava/lang/Object;
    invoke-virtual {v2}, Lorg/alljoyn/bus/Status;->name()Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, "status":Ljava/lang/String;
    sget-object v3, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received SESSION_JOIN_FAIL event for deviceId: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', this deviceId is: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', Status: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 593
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->sessionId:Ljava/lang/Integer;

    .line 595
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->connMgr:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->SESSION_JOINED:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    invoke-virtual {v3, v4, p0}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->unregisterEventListener(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;)V

    .line 596
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->connMgr:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->SESSION_LOST:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    invoke-virtual {v3, v4, p0}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->unregisterEventListener(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;)V

    .line 597
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->connMgr:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->SESSION_JOIN_FAIL:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    invoke-virtual {v3, v4, p0}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->unregisterEventListener(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;)V

    .line 599
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->deviceEventsListener:Lorg/alljoyn/ioe/controlpanelservice/DeviceEventsListener;

    invoke-interface {v3, p0, v1}, Lorg/alljoyn/ioe/controlpanelservice/DeviceEventsListener;->errorOccurred(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSessionJoined(Ljava/util/Map;)V
    .locals 9
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
    .line 526
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "DEVICE_ID"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 527
    .local v1, "deviceId":Ljava/lang/String;
    const-string v6, "SESSION_ID"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 529
    .local v4, "sessionId":Ljava/lang/Integer;
    sget-object v6, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received SESSION_JOINED event for deviceId: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\', this deviceId is: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\', sid: \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    if-eqz v1, :cond_0

    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    iput-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->sessionId:Ljava/lang/Integer;

    .line 537
    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->unitMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/alljoyn/ioe/controlpanelservice/Unit;

    .line 539
    .local v5, "unit":Lorg/alljoyn/ioe/controlpanelservice/Unit;
    :try_start_0
    invoke-virtual {v5}, Lorg/alljoyn/ioe/controlpanelservice/Unit;->fillControlPanelCollections()V
    :try_end_0
    .catch Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, "cpe":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to fill the ControlPanelCollection of the  unit: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lorg/alljoyn/ioe/controlpanelservice/Unit;->getUnitId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 542
    .local v2, "error":Ljava/lang/String;
    sget-object v6, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->deviceEventsListener:Lorg/alljoyn/ioe/controlpanelservice/DeviceEventsListener;

    invoke-interface {v6, p0, v2}, Lorg/alljoyn/ioe/controlpanelservice/DeviceEventsListener;->errorOccurred(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;Ljava/lang/String;)V

    goto :goto_1

    .line 547
    .end local v0    # "cpe":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    .end local v2    # "error":Ljava/lang/String;
    .end local v5    # "unit":Lorg/alljoyn/ioe/controlpanelservice/Unit;
    :cond_2
    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->deviceEventsListener:Lorg/alljoyn/ioe/controlpanelservice/DeviceEventsListener;

    invoke-direct {p0}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getControlPanelCollections()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v6, p0, v7}, Lorg/alljoyn/ioe/controlpanelservice/DeviceEventsListener;->sessionEstablished(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private handleSessionLost(Ljava/util/Map;)V
    .locals 4
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
    .line 556
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "SESSION_ID"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 558
    .local v0, "sessionId":Ljava/lang/Integer;
    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received SESSION_LOST event for sessionId: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', this device sessionId is: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->sessionId:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->sessionId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->sessionId:Ljava/lang/Integer;

    .line 566
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->connMgr:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->SESSION_JOINED:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    invoke-virtual {v1, v2, p0}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->unregisterEventListener(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;)V

    .line 567
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->connMgr:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->SESSION_LOST:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    invoke-virtual {v1, v2, p0}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->unregisterEventListener(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;)V

    .line 568
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->connMgr:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->SESSION_JOIN_FAIL:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    invoke-virtual {v1, v2, p0}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->unregisterEventListener(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;)V

    .line 570
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->deviceEventsListener:Lorg/alljoyn/ioe/controlpanelservice/DeviceEventsListener;

    invoke-interface {v1, p0}, Lorg/alljoyn/ioe/controlpanelservice/DeviceEventsListener;->sessionLost(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;)V

    goto :goto_0
.end method

.method private stopDeviceFoundVerificationService()V
    .locals 3

    .prologue
    .line 458
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->scheduledService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 464
    :goto_0
    return-void

    .line 461
    :cond_0
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' stops DeviceFoundVerification scheduled service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->scheduledService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->scheduledService:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_0
.end method


# virtual methods
.method addControlPanel(Ljava/lang/String;I)Lorg/alljoyn/ioe/controlpanelservice/Unit;
    .locals 7
    .param p1, "objPath"    # Ljava/lang/String;
    .param p2, "ifaceMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 415
    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating ControlPanelCollection object for objPath: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', device: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-static {p1}, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;->parseObjPath(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "segments":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v3, v1, v4

    .line 420
    .local v3, "unitId":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v0, v1, v4

    .line 422
    .local v0, "panelId":Ljava/lang/String;
    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->unitMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/alljoyn/ioe/controlpanelservice/Unit;

    .line 424
    .local v2, "unit":Lorg/alljoyn/ioe/controlpanelservice/Unit;
    if-nez v2, :cond_0

    .line 425
    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found new functional unit: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', panel: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    new-instance v2, Lorg/alljoyn/ioe/controlpanelservice/Unit;

    .end local v2    # "unit":Lorg/alljoyn/ioe/controlpanelservice/Unit;
    invoke-direct {v2, p0, v3}, Lorg/alljoyn/ioe/controlpanelservice/Unit;-><init>(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;Ljava/lang/String;)V

    .line 427
    .restart local v2    # "unit":Lorg/alljoyn/ioe/controlpanelservice/Unit;
    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->unitMap:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    :goto_0
    const/4 v4, 0x2

    invoke-static {p2, v4}, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;->maskIncludes(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 433
    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The objPath: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' belongs to the HTTPControl interface, setting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {v2, p1}, Lorg/alljoyn/ioe/controlpanelservice/Unit;->setHttpControlObjPath(Ljava/lang/String;)V

    .line 440
    :goto_1
    return-object v2

    .line 429
    :cond_0
    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found an existent functional unit: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', panel: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 437
    :cond_1
    invoke-virtual {v2, p1, v0}, Lorg/alljoyn/ioe/controlpanelservice/Unit;->createControlPanelCollection(Ljava/lang/String;Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;

    goto :goto_1
.end method

.method public varargs addControlPanel(Ljava/lang/String;[Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/Unit;
    .locals 4
    .param p1, "objectPath"    # Ljava/lang/String;
    .param p2, "interfaces"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 273
    if-nez p1, :cond_0

    .line 274
    new-instance v1, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The objectPath: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is undefined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 277
    :cond_0
    invoke-static {p2}, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;->getInterfaceMask([Ljava/lang/String;)I

    move-result v0

    .line 279
    .local v0, "ifaceMask":I
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;->maskIncludes(II)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;->maskIncludes(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 282
    new-instance v1, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The objectPath: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', doesn\'t implement any ControlPanel permitted interface"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 285
    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->addControlPanel(Ljava/lang/String;I)Lorg/alljoyn/ioe/controlpanelservice/Unit;

    move-result-object v1

    return-object v1
.end method

.method public connMgrEventOccured(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;Ljava/util/Map;)V
    .locals 2
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
    .line 232
    .local p2, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice$2;->$SwitchMap$org$alljoyn$ioe$controlpanelservice$communication$ConnManagerEventType:[I

    invoke-virtual {p1}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 256
    :goto_0
    return-void

    .line 234
    :pswitch_0
    invoke-direct {p0, p2}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->handleFoundAdvName(Ljava/util/Map;)V

    goto :goto_0

    .line 238
    :pswitch_1
    invoke-direct {p0, p2}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->handleLostAdvName(Ljava/util/Map;)V

    goto :goto_0

    .line 242
    :pswitch_2
    invoke-direct {p0, p2}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->handleSessionJoined(Ljava/util/Map;)V

    goto :goto_0

    .line 246
    :pswitch_3
    invoke-direct {p0, p2}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->handleSessionJoinFailed(Ljava/util/Map;)V

    goto :goto_0

    .line 250
    :pswitch_4
    invoke-direct {p0, p2}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->handleSessionLost(Ljava/util/Map;)V

    goto :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public createNotificationAction(Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;
    .locals 8
    .param p1, "objectPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->sessionId:Ljava/lang/Integer;

    if-nez v5, :cond_0

    .line 298
    new-instance v5, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    const-string v6, "The session wasn\'t established, can\'t create a ControlPanelCollection"

    invoke-direct {v5, v6}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 301
    :cond_0
    if-nez p1, :cond_1

    .line 302
    new-instance v5, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    const-string v6, "Received an undefined objectPath"

    invoke-direct {v5, v6}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 305
    :cond_1
    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating a NotificationAction control panel, objectPath: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-static {p1}, Lorg/alljoyn/ioe/controlpanelservice/communication/CommunicationUtil;->parseObjPath(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "segments":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v4, v2, v5

    .line 309
    .local v4, "unitId":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v1, v2, v5

    .line 311
    .local v1, "panelName":Ljava/lang/String;
    new-instance v3, Lorg/alljoyn/ioe/controlpanelservice/Unit;

    invoke-direct {v3, p0, v4}, Lorg/alljoyn/ioe/controlpanelservice/Unit;-><init>(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;Ljava/lang/String;)V

    .line 312
    .local v3, "unit":Lorg/alljoyn/ioe/controlpanelservice/Unit;
    invoke-virtual {v3, p1, v1}, Lorg/alljoyn/ioe/controlpanelservice/Unit;->createControlPanelCollection(Ljava/lang/String;Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;

    move-result-object v0

    .line 313
    .local v0, "coll":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;
    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->retrievePanels()V

    .line 314
    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->handleNotificationAction()V

    .line 316
    return-object v0
.end method

.method public endSession()Lorg/alljoyn/bus/Status;
    .locals 6

    .prologue
    .line 193
    sget-object v3, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    const-string v4, "endSession has been called, leaving the session"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->sessionId:Ljava/lang/Integer;

    if-nez v3, :cond_0

    .line 196
    sget-object v3, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    const-string v4, "Fail to execute endSession, sessionId is NULL, returning Status of FAIL"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    sget-object v2, Lorg/alljoyn/bus/Status;->FAIL:Lorg/alljoyn/bus/Status;

    .line 223
    :goto_0
    return-object v2

    .line 202
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->connMgr:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->sessionId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->leaveSession(I)Lorg/alljoyn/bus/Status;
    :try_end_0
    .catch Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 208
    .local v2, "status":Lorg/alljoyn/bus/Status;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endSession return Status is: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "logMsg":Ljava/lang/String;
    sget-object v3, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-ne v2, v3, :cond_1

    .line 211
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->sessionId:Ljava/lang/Integer;

    .line 212
    sget-object v3, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->connMgr:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->SESSION_JOINED:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    invoke-virtual {v3, v4, p0}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->unregisterEventListener(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;)V

    .line 216
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->connMgr:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->SESSION_LOST:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    invoke-virtual {v3, v4, p0}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->unregisterEventListener(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;)V

    .line 217
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->connMgr:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->SESSION_JOIN_FAIL:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    invoke-virtual {v3, v4, p0}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->unregisterEventListener(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;)V

    goto :goto_0

    .line 203
    .end local v1    # "logMsg":Ljava/lang/String;
    .end local v2    # "status":Lorg/alljoyn/bus/Status;
    :catch_0
    move-exception v0

    .line 204
    .local v0, "cpe":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    sget-object v3, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to call leaveSession, Error: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', returning status of FAIL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    sget-object v2, Lorg/alljoyn/bus/Status;->FAIL:Lorg/alljoyn/bus/Status;

    goto :goto_0

    .line 220
    .end local v0    # "cpe":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    .restart local v1    # "logMsg":Ljava/lang/String;
    .restart local v2    # "status":Lorg/alljoyn/bus/Status;
    :cond_1
    sget-object v3, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDeviceEventsListener()Lorg/alljoyn/ioe/controlpanelservice/DeviceEventsListener;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->deviceEventsListener:Lorg/alljoyn/ioe/controlpanelservice/DeviceEventsListener;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->sender:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->sessionId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUnitCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/alljoyn/ioe/controlpanelservice/Unit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->unitMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public isReachable()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->isReachable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public removeNotificationAction(Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;)V
    .locals 1
    .param p1, "panelCollection"    # Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;

    .prologue
    .line 325
    invoke-virtual {p1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->getUnit()Lorg/alljoyn/ioe/controlpanelservice/Unit;

    move-result-object v0

    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/Unit;->release()V

    .line 326
    return-void
.end method

.method setReachable(Z)V
    .locals 1
    .param p1, "isReachable"    # Z

    .prologue
    .line 334
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->isReachable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 335
    return-void
.end method

.method setSender(Ljava/lang/String;)V
    .locals 0
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    .line 341
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->sender:Ljava/lang/String;

    .line 342
    return-void
.end method

.method startDeviceFoundVerificationService()V
    .locals 5

    .prologue
    .line 392
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start DeviceFoundVerificationService for device: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', the verification will be done after: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-direct {p0}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->stopDeviceFoundVerificationService()V

    .line 397
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->scheduledService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 398
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->scheduledService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice$1;

    invoke-direct {v1, p0}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice$1;-><init>(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;)V

    const-wide/16 v2, 0x2d

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 406
    return-void
.end method

.method public startSession(Lorg/alljoyn/ioe/controlpanelservice/DeviceEventsListener;)V
    .locals 6
    .param p1, "eventsListener"    # Lorg/alljoyn/ioe/controlpanelservice/DeviceEventsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 160
    if-nez p1, :cond_0

    .line 161
    new-instance v3, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    const-string v4, "Events listener can\'t be NULL"

    invoke-direct {v3, v4}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 164
    :cond_0
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->deviceEventsListener:Lorg/alljoyn/ioe/controlpanelservice/DeviceEventsListener;

    .line 166
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->sessionId:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The device is already in session: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', sessionId: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->sessionId:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "msg":Ljava/lang/String;
    sget-object v3, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->deviceEventsListener:Lorg/alljoyn/ioe/controlpanelservice/DeviceEventsListener;

    invoke-direct {p0}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getControlPanelCollections()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v3, p0, v4}, Lorg/alljoyn/ioe/controlpanelservice/DeviceEventsListener;->sessionEstablished(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;Ljava/util/Collection;)V

    .line 186
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 173
    :cond_2
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->connMgr:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->SESSION_JOINED:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    invoke-virtual {v3, v4, p0}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->registerEventListener(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;)V

    .line 174
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->connMgr:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->SESSION_LOST:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    invoke-virtual {v3, v4, p0}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->registerEventListener(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;)V

    .line 175
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->connMgr:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->SESSION_JOIN_FAIL:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    invoke-virtual {v3, v4, p0}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->registerEventListener(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;)V

    .line 177
    sget-object v3, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' starting session with sender: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->sender:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->connMgr:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->sender:Ljava/lang/String;

    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->joinSession(Ljava/lang/String;Ljava/lang/String;)Lorg/alljoyn/bus/Status;

    move-result-object v1

    .line 180
    .local v1, "status":Lorg/alljoyn/bus/Status;
    sget-object v3, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-eq v1, v3, :cond_1

    .line 181
    invoke-virtual {v1}, Lorg/alljoyn/bus/Status;->name()Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "statusName":Ljava/lang/String;
    sget-object v3, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to join session: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->deviceEventsListener:Lorg/alljoyn/ioe/controlpanelservice/DeviceEventsListener;

    invoke-interface {v3, p0, v2}, Lorg/alljoyn/ioe/controlpanelservice/DeviceEventsListener;->errorOccurred(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;Ljava/lang/String;)V

    goto :goto_0
.end method

.method stopDeviceActivities()V
    .locals 7

    .prologue
    .line 362
    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->isReachable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 365
    :try_start_0
    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->connMgr:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->sender:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->cancelFindAdvertisedName(Ljava/lang/String;)Lorg/alljoyn/bus/Status;
    :try_end_0
    .catch Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->connMgr:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->FOUND_DEVICE:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    invoke-virtual {v4, v5, p0}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->unregisterEventListener(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;)V

    .line 371
    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->connMgr:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    sget-object v5, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->LOST_DEVICE:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    invoke-virtual {v4, v5, p0}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->unregisterEventListener(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;)V

    .line 373
    invoke-virtual {p0}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->endSession()Lorg/alljoyn/bus/Status;

    move-result-object v2

    .line 374
    .local v2, "status":Lorg/alljoyn/bus/Status;
    sget-object v4, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-eq v2, v4, :cond_0

    .line 375
    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to end the session, Status: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    invoke-direct {p0}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->stopDeviceFoundVerificationService()V

    .line 380
    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->unitMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/alljoyn/ioe/controlpanelservice/Unit;

    .line 381
    .local v3, "unit":Lorg/alljoyn/ioe/controlpanelservice/Unit;
    invoke-virtual {v3}, Lorg/alljoyn/ioe/controlpanelservice/Unit;->release()V

    goto :goto_1

    .line 366
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "status":Lorg/alljoyn/bus/Status;
    .end local v3    # "unit":Lorg/alljoyn/ioe/controlpanelservice/Unit;
    :catch_0
    move-exception v0

    .line 367
    .local v0, "cpe":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    sget-object v4, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to call cancelFindAdvertisedName(), Error: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 384
    .end local v0    # "cpe":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "status":Lorg/alljoyn/bus/Status;
    :cond_1
    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->unitMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 385
    return-void
.end method

.method subscribeOnFoundLostEvents()V
    .locals 2

    .prologue
    .line 348
    sget-object v0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->TAG:Ljava/lang/String;

    const-string v1, "Register on ConnManager to receive events of found and lost advertised name"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->connMgr:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->FOUND_DEVICE:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    invoke-virtual {v0, v1, p0}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->registerEventListener(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;)V

    .line 350
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->connMgr:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    sget-object v1, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;->LOST_DEVICE:Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;

    invoke-virtual {v0, v1, p0}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->registerEventListener(Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventType;Lorg/alljoyn/ioe/controlpanelservice/communication/ConnManagerEventsListener;)V

    .line 351
    return-void
.end method

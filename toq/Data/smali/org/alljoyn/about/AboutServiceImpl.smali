.class public Lorg/alljoyn/about/AboutServiceImpl;
.super Lorg/alljoyn/services/common/ServiceCommonImpl;
.source "AboutServiceImpl.java"

# interfaces
.implements Lorg/alljoyn/about/AboutService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/alljoyn/about/AboutServiceImpl$IconInterface;,
        Lorg/alljoyn/about/AboutServiceImpl$AboutInterface;,
        Lorg/alljoyn/about/AboutServiceImpl$AnnouncmentReceiver;
    }
.end annotation


# static fields
.field private static final ANNOUNCE_MATCH_RULE:Ljava/lang/String; = "interface=\'org.alljoyn.About\'"

.field private static m_instance:Lorg/alljoyn/about/AboutServiceImpl;


# instance fields
.field private m_ObjectDescriptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/alljoyn/services/common/BusObjectDescription;",
            ">;"
        }
    .end annotation
.end field

.field private m_aboutInterface:Lorg/alljoyn/about/transport/AboutTransport;

.field private m_announcementEmitter:Lorg/alljoyn/about/transport/AboutTransport;

.field private m_announcementHandlers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/alljoyn/services/common/AnnouncementHandler;",
            ">;"
        }
    .end annotation
.end field

.field private m_announcer:Lorg/alljoyn/about/Announcer;

.field private m_announcmentReceiver:Lorg/alljoyn/about/AboutServiceImpl$AnnouncmentReceiver;

.field private m_busListeners:Lorg/alljoyn/bus/BusListener;

.field private m_iconContent:[B

.field private m_iconInterface:Lorg/alljoyn/about/transport/IconTransport;

.field private m_iconMimeType:Ljava/lang/String;

.field private m_iconUrl:Ljava/lang/String;

.field private m_propertyStore:Lorg/alljoyn/services/common/PropertyStore;

.field private m_servicesPort:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lorg/alljoyn/about/AboutServiceImpl;

    invoke-direct {v0}, Lorg/alljoyn/about/AboutServiceImpl;-><init>()V

    sput-object v0, Lorg/alljoyn/about/AboutServiceImpl;->m_instance:Lorg/alljoyn/about/AboutServiceImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 102
    invoke-direct {p0}, Lorg/alljoyn/services/common/ServiceCommonImpl;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_ObjectDescriptions:Ljava/util/Set;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ioe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/about/AboutServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl;->TAG:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_announcementHandlers:Ljava/util/Vector;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lorg/alljoyn/about/AboutServiceImpl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/alljoyn/about/AboutServiceImpl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/alljoyn/about/AboutServiceImpl;)S
    .locals 1

    .prologue
    .line 55
    iget-short v0, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_servicesPort:S

    return v0
.end method

.method static synthetic access$1300(Lorg/alljoyn/about/AboutServiceImpl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_iconMimeType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/alljoyn/about/AboutServiceImpl;)[B
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_iconContent:[B

    return-object v0
.end method

.method static synthetic access$1500(Lorg/alljoyn/about/AboutServiceImpl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/alljoyn/about/AboutServiceImpl;)Lorg/alljoyn/bus/BusAttachment;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lorg/alljoyn/about/AboutServiceImpl;->getBus()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/alljoyn/about/AboutServiceImpl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/alljoyn/about/AboutServiceImpl;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_announcementHandlers:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$600(Lorg/alljoyn/about/AboutServiceImpl;)Lorg/alljoyn/bus/BusAttachment;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lorg/alljoyn/about/AboutServiceImpl;->getBus()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/alljoyn/about/AboutServiceImpl;)Lorg/alljoyn/about/transport/AboutTransport;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_announcementEmitter:Lorg/alljoyn/about/transport/AboutTransport;

    return-object v0
.end method

.method static synthetic access$800(Lorg/alljoyn/about/AboutServiceImpl;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_ObjectDescriptions:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$900(Lorg/alljoyn/about/AboutServiceImpl;)Lorg/alljoyn/services/common/PropertyStore;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_propertyStore:Lorg/alljoyn/services/common/PropertyStore;

    return-object v0
.end method

.method private createAnnouncer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_announcer:Lorg/alljoyn/about/Announcer;

    if-nez v0, :cond_1

    .line 370
    invoke-virtual {p0}, Lorg/alljoyn/about/AboutServiceImpl;->isServerRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Lorg/alljoyn/about/AboutServiceException;

    const-string v1, "The AboutServer hasn\'t been started, can\'t continue working"

    invoke-direct {v0, v1}, Lorg/alljoyn/about/AboutServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_0
    new-instance v0, Lorg/alljoyn/about/AboutServiceImpl$2;

    invoke-direct {v0, p0}, Lorg/alljoyn/about/AboutServiceImpl$2;-><init>(Lorg/alljoyn/about/AboutServiceImpl;)V

    iput-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_announcer:Lorg/alljoyn/about/Announcer;

    .line 471
    new-instance v0, Lorg/alljoyn/bus/SignalEmitter;

    iget-object v1, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_aboutInterface:Lorg/alljoyn/about/transport/AboutTransport;

    sget-object v2, Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;->Off:Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;

    invoke-direct {v0, v1, v2}, Lorg/alljoyn/bus/SignalEmitter;-><init>(Lorg/alljoyn/bus/BusObject;Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;)V

    .line 473
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/alljoyn/bus/SignalEmitter;->setSessionlessFlag(Z)V

    .line 474
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/alljoyn/bus/SignalEmitter;->setTimeToLive(I)V

    .line 475
    const-class v1, Lorg/alljoyn/about/transport/AboutTransport;

    invoke-virtual {v0, v1}, Lorg/alljoyn/bus/SignalEmitter;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/about/transport/AboutTransport;

    iput-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_announcementEmitter:Lorg/alljoyn/about/transport/AboutTransport;

    .line 478
    :cond_1
    return-void
.end method

.method public static getInstance()Lorg/alljoyn/about/AboutService;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lorg/alljoyn/about/AboutServiceImpl;->m_instance:Lorg/alljoyn/about/AboutServiceImpl;

    return-object v0
.end method

.method private registerAboutIconInterface()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 497
    new-instance v0, Lorg/alljoyn/about/AboutServiceImpl$IconInterface;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/alljoyn/about/AboutServiceImpl$IconInterface;-><init>(Lorg/alljoyn/about/AboutServiceImpl;Lorg/alljoyn/about/AboutServiceImpl$1;)V

    iput-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_iconInterface:Lorg/alljoyn/about/transport/IconTransport;

    .line 499
    invoke-virtual {p0}, Lorg/alljoyn/about/AboutServiceImpl;->getBus()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v0

    iget-object v1, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_iconInterface:Lorg/alljoyn/about/transport/IconTransport;

    const-string v2, "/About/DeviceIcon"

    invoke-virtual {v0, v1, v2}, Lorg/alljoyn/bus/BusAttachment;->registerBusObject(Lorg/alljoyn/bus/BusObject;Ljava/lang/String;)Lorg/alljoyn/bus/Status;

    move-result-object v0

    .line 500
    invoke-virtual {p0}, Lorg/alljoyn/about/AboutServiceImpl;->getLogger()Lorg/alljoyn/services/common/utils/GenericLogger;

    move-result-object v1

    iget-object v2, p0, Lorg/alljoyn/about/AboutServiceImpl;->TAG:Ljava/lang/String;

    const-string v3, "BusAttachment.registerBusObject(m_IconInterface): %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/alljoyn/services/common/utils/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    sget-object v1, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-eq v0, v1, :cond_0

    .line 504
    :cond_0
    return-void
.end method

.method private registerAboutInterface()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 486
    new-instance v0, Lorg/alljoyn/about/AboutServiceImpl$AboutInterface;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/alljoyn/about/AboutServiceImpl$AboutInterface;-><init>(Lorg/alljoyn/about/AboutServiceImpl;Lorg/alljoyn/about/AboutServiceImpl$1;)V

    iput-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_aboutInterface:Lorg/alljoyn/about/transport/AboutTransport;

    .line 488
    invoke-virtual {p0}, Lorg/alljoyn/about/AboutServiceImpl;->getBus()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v0

    iget-object v1, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_aboutInterface:Lorg/alljoyn/about/transport/AboutTransport;

    const-string v2, "/About"

    invoke-virtual {v0, v1, v2}, Lorg/alljoyn/bus/BusAttachment;->registerBusObject(Lorg/alljoyn/bus/BusObject;Ljava/lang/String;)Lorg/alljoyn/bus/Status;

    move-result-object v0

    .line 489
    invoke-virtual {p0}, Lorg/alljoyn/about/AboutServiceImpl;->getLogger()Lorg/alljoyn/services/common/utils/GenericLogger;

    move-result-object v1

    iget-object v2, p0, Lorg/alljoyn/about/AboutServiceImpl;->TAG:Ljava/lang/String;

    const-string v3, "BusAttachment.registerBusObject(m_aboutConfigInterface): %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/alljoyn/services/common/utils/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    sget-object v1, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-eq v0, v1, :cond_0

    .line 491
    new-instance v1, Lorg/alljoyn/about/AboutServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register the AboutInterface on the bus, Status: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/alljoyn/about/AboutServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 493
    :cond_0
    return-void
.end method

.method private registerAnnouncementReceiver()V
    .locals 6

    .prologue
    .line 196
    invoke-virtual {p0}, Lorg/alljoyn/about/AboutServiceImpl;->getBus()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v0

    .line 199
    new-instance v1, Lorg/alljoyn/about/AboutServiceImpl$AnnouncmentReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/alljoyn/about/AboutServiceImpl$AnnouncmentReceiver;-><init>(Lorg/alljoyn/about/AboutServiceImpl;Lorg/alljoyn/about/AboutServiceImpl$1;)V

    iput-object v1, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_announcmentReceiver:Lorg/alljoyn/about/AboutServiceImpl$AnnouncmentReceiver;

    .line 200
    iget-object v1, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_announcmentReceiver:Lorg/alljoyn/about/AboutServiceImpl$AnnouncmentReceiver;

    const-string v2, "/About"

    invoke-virtual {v0, v1, v2}, Lorg/alljoyn/bus/BusAttachment;->registerBusObject(Lorg/alljoyn/bus/BusObject;Ljava/lang/String;)Lorg/alljoyn/bus/Status;

    move-result-object v1

    .line 201
    invoke-virtual {p0}, Lorg/alljoyn/about/AboutServiceImpl;->getLogger()Lorg/alljoyn/services/common/utils/GenericLogger;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/about/AboutServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BusAttachment.registerBusObject(AnnouncmentReceiver) status = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', ObjPath: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/About"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/alljoyn/services/common/utils/GenericLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    sget-object v2, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-eq v1, v2, :cond_0

    .line 203
    new-instance v0, Lorg/alljoyn/about/AboutServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register BusObject of Announcement receiver has failed, Status: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/alljoyn/about/AboutServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    iget-object v1, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_announcmentReceiver:Lorg/alljoyn/about/AboutServiceImpl$AnnouncmentReceiver;

    invoke-virtual {v0, v1}, Lorg/alljoyn/bus/BusAttachment;->registerSignalHandlers(Ljava/lang/Object;)Lorg/alljoyn/bus/Status;

    move-result-object v1

    .line 207
    invoke-virtual {p0}, Lorg/alljoyn/about/AboutServiceImpl;->getLogger()Lorg/alljoyn/services/common/utils/GenericLogger;

    move-result-object v2

    iget-object v3, p0, Lorg/alljoyn/about/AboutServiceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BusAttachment.registerSignalHandlers(AnnouncmentReceiver) status = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/alljoyn/services/common/utils/GenericLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    sget-object v2, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-eq v1, v2, :cond_1

    .line 209
    new-instance v0, Lorg/alljoyn/about/AboutServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register Announcement signal handler has failed, Status: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/alljoyn/about/AboutServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_1
    const-string v1, "interface=\'org.alljoyn.About\'"

    invoke-virtual {v0, v1}, Lorg/alljoyn/bus/BusAttachment;->addMatch(Ljava/lang/String;)Lorg/alljoyn/bus/Status;

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Lorg/alljoyn/about/AboutServiceImpl;->getLogger()Lorg/alljoyn/services/common/utils/GenericLogger;

    move-result-object v1

    iget-object v2, p0, Lorg/alljoyn/about/AboutServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BusAttachment.addMatch() status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/alljoyn/services/common/utils/GenericLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget-object v1, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-eq v0, v1, :cond_2

    .line 215
    new-instance v1, Lorg/alljoyn/about/AboutServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call AddMatch for the rule: \'interface=\'org.alljoyn.About\'\', Status: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/alljoyn/about/AboutServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :cond_2
    return-void
.end method

.method private registerDeviceListener()V
    .locals 5

    .prologue
    .line 154
    new-instance v0, Lorg/alljoyn/about/AboutServiceImpl$1;

    invoke-direct {v0, p0}, Lorg/alljoyn/about/AboutServiceImpl$1;-><init>(Lorg/alljoyn/about/AboutServiceImpl;)V

    iput-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_busListeners:Lorg/alljoyn/bus/BusListener;

    .line 180
    invoke-virtual {p0}, Lorg/alljoyn/about/AboutServiceImpl;->getBus()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v0

    iget-object v1, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_busListeners:Lorg/alljoyn/bus/BusListener;

    invoke-virtual {v0, v1}, Lorg/alljoyn/bus/BusAttachment;->registerBusListener(Lorg/alljoyn/bus/BusListener;)V

    .line 183
    invoke-virtual {p0}, Lorg/alljoyn/about/AboutServiceImpl;->getBus()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Lorg/alljoyn/bus/BusAttachment;->findAdvertisedName(Ljava/lang/String;)Lorg/alljoyn/bus/Status;

    move-result-object v0

    .line 184
    sget-object v1, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-eq v0, v1, :cond_0

    .line 185
    invoke-virtual {p0}, Lorg/alljoyn/about/AboutServiceImpl;->getLogger()Lorg/alljoyn/services/common/utils/GenericLogger;

    move-result-object v1

    iget-object v2, p0, Lorg/alljoyn/about/AboutServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to call findAdvertisedName, Status: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/alljoyn/services/common/utils/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v1, Lorg/alljoyn/about/AboutServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call findAdvertisedName, Status: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/alljoyn/about/AboutServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_0
    return-void
.end method


# virtual methods
.method public addAnnouncementHandler(Lorg/alljoyn/services/common/AnnouncementHandler;)V
    .locals 2

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The AnnouncementHandler can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_announcementHandlers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public addObjectDescription(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 512
    if-nez p1, :cond_0

    .line 513
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ObjectPath can\'t be NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 516
    :cond_0
    if-nez p2, :cond_1

    .line 517
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The interfaces array can\'t be NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 521
    new-instance v1, Lorg/alljoyn/services/common/BusObjectDescription;

    invoke-direct {v1}, Lorg/alljoyn/services/common/BusObjectDescription;-><init>()V

    .line 522
    invoke-virtual {v1, p1}, Lorg/alljoyn/services/common/BusObjectDescription;->setPath(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v1, p2}, Lorg/alljoyn/services/common/BusObjectDescription;->setInterfaces([Ljava/lang/String;)V

    .line 524
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    invoke-virtual {p0}, Lorg/alljoyn/about/AboutServiceImpl;->getAnnouncer()Lorg/alljoyn/about/Announcer;

    move-result-object v1

    .line 527
    if-nez v1, :cond_2

    .line 528
    new-instance v0, Lorg/alljoyn/about/AboutServiceException;

    const-string v1, "AboutServer has not been initialized, no announcer"

    invoke-direct {v0, v1}, Lorg/alljoyn/about/AboutServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_2
    invoke-interface {v1, v0}, Lorg/alljoyn/about/Announcer;->addBusObjectAnnouncements(Ljava/util/List;)V

    .line 532
    return-void
.end method

.method public addObjectDescriptions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/services/common/BusObjectDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 540
    invoke-virtual {p0}, Lorg/alljoyn/about/AboutServiceImpl;->getAnnouncer()Lorg/alljoyn/about/Announcer;

    move-result-object v0

    .line 541
    if-nez v0, :cond_0

    .line 542
    new-instance v0, Lorg/alljoyn/about/AboutServiceException;

    const-string v1, "AboutServer has not been initialized, no announcer"

    invoke-direct {v0, v1}, Lorg/alljoyn/about/AboutServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_0
    if-nez p1, :cond_1

    .line 546
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addBusObjectDescriptions can\'t be NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_1
    invoke-interface {v0, p1}, Lorg/alljoyn/about/Announcer;->addBusObjectAnnouncements(Ljava/util/List;)V

    .line 550
    return-void
.end method

.method public announce()V
    .locals 2

    .prologue
    .line 692
    invoke-virtual {p0}, Lorg/alljoyn/about/AboutServiceImpl;->getAnnouncer()Lorg/alljoyn/about/Announcer;

    move-result-object v0

    .line 693
    if-nez v0, :cond_0

    .line 694
    new-instance v0, Lorg/alljoyn/about/AboutServiceException;

    const-string v1, "AboutServer has not been initialized, no announcer"

    invoke-direct {v0, v1}, Lorg/alljoyn/about/AboutServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_0
    invoke-interface {v0}, Lorg/alljoyn/about/Announcer;->announce()V

    .line 698
    return-void
.end method

.method public createAboutClient(Ljava/lang/String;Lorg/alljoyn/services/common/ServiceAvailabilityListener;S)Lorg/alljoyn/about/client/AboutClient;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 303
    new-instance v0, Lorg/alljoyn/about/client/AboutClientImpl;

    invoke-virtual {p0}, Lorg/alljoyn/about/AboutServiceImpl;->getBus()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/alljoyn/about/client/AboutClientImpl;-><init>(Ljava/lang/String;Lorg/alljoyn/bus/BusAttachment;Lorg/alljoyn/services/common/ServiceAvailabilityListener;S)V

    return-object v0
.end method

.method public createAboutIconClient(Ljava/lang/String;Lorg/alljoyn/services/common/ServiceAvailabilityListener;S)Lorg/alljoyn/about/icon/AboutIconClient;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 313
    new-instance v0, Lorg/alljoyn/about/icon/AboutIconClientImpl;

    invoke-virtual {p0}, Lorg/alljoyn/about/AboutServiceImpl;->getBus()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2, p3}, Lorg/alljoyn/about/icon/AboutIconClientImpl;-><init>(Ljava/lang/String;Lorg/alljoyn/bus/BusAttachment;Lorg/alljoyn/services/common/ServiceAvailabilityListener;S)V

    return-object v0
.end method

.method public getAnnouncer()Lorg/alljoyn/about/Announcer;
    .locals 5

    .prologue
    .line 615
    :try_start_0
    invoke-direct {p0}, Lorg/alljoyn/about/AboutServiceImpl;->createAnnouncer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_announcer:Lorg/alljoyn/about/Announcer;

    :goto_0
    return-object v0

    .line 617
    :catch_0
    move-exception v0

    .line 618
    invoke-virtual {p0}, Lorg/alljoyn/about/AboutServiceImpl;->getLogger()Lorg/alljoyn/services/common/utils/GenericLogger;

    move-result-object v1

    iget-object v2, p0, Lorg/alljoyn/about/AboutServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to create Announcer, Error: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/alljoyn/services/common/utils/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 620
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBusObjectDescriptions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/services/common/BusObjectDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 682
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 683
    new-instance v1, Lorg/alljoyn/services/common/BusObjectDescription;

    invoke-direct {v1}, Lorg/alljoyn/services/common/BusObjectDescription;-><init>()V

    .line 684
    const-string v2, "/About"

    invoke-virtual {v1, v2}, Lorg/alljoyn/services/common/BusObjectDescription;->setPath(Ljava/lang/String;)V

    .line 685
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "org.alljoyn.About"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lorg/alljoyn/services/common/BusObjectDescription;->setInterfaces([Ljava/lang/String;)V

    .line 686
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    return-object v0
.end method

.method public registerIcon(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 351
    invoke-super {p0}, Lorg/alljoyn/services/common/ServiceCommonImpl;->startServer()V

    .line 353
    iput-object p1, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_iconMimeType:Ljava/lang/String;

    .line 354
    iput-object p2, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_iconUrl:Ljava/lang/String;

    .line 355
    iput-object p3, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_iconContent:[B

    .line 357
    invoke-direct {p0}, Lorg/alljoyn/about/AboutServiceImpl;->registerAboutIconInterface()V

    .line 358
    const-string v0, "/About/DeviceIcon"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "org.alljoyn.Icon"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/alljoyn/about/AboutServiceImpl;->addObjectDescription(Ljava/lang/String;[Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method public removeAnnouncementHandler(Lorg/alljoyn/services/common/AnnouncementHandler;)V
    .locals 2

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The AnnouncementHandler can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_announcementHandlers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public removeObjectDescription(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 555
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 556
    new-instance v1, Lorg/alljoyn/services/common/BusObjectDescription;

    invoke-direct {v1}, Lorg/alljoyn/services/common/BusObjectDescription;-><init>()V

    .line 557
    invoke-virtual {v1, p1}, Lorg/alljoyn/services/common/BusObjectDescription;->setPath(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v1, p2}, Lorg/alljoyn/services/common/BusObjectDescription;->setInterfaces([Ljava/lang/String;)V

    .line 559
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    invoke-virtual {p0}, Lorg/alljoyn/about/AboutServiceImpl;->getAnnouncer()Lorg/alljoyn/about/Announcer;

    move-result-object v1

    .line 562
    if-nez v1, :cond_0

    .line 563
    new-instance v0, Lorg/alljoyn/about/AboutServiceException;

    const-string v1, "AboutServer has not been initialized, no announcer"

    invoke-direct {v0, v1}, Lorg/alljoyn/about/AboutServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_0
    invoke-interface {v1, v0}, Lorg/alljoyn/about/Announcer;->removeBusObjectAnnouncements(Ljava/util/List;)V

    .line 567
    return-void
.end method

.method public removeObjectDescriptions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/services/common/BusObjectDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 572
    invoke-virtual {p0}, Lorg/alljoyn/about/AboutServiceImpl;->getAnnouncer()Lorg/alljoyn/about/Announcer;

    move-result-object v0

    .line 573
    if-nez v0, :cond_0

    .line 574
    new-instance v0, Lorg/alljoyn/about/AboutServiceException;

    const-string v1, "AboutServer has not been initialized, no announcer"

    invoke-direct {v0, v1}, Lorg/alljoyn/about/AboutServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_0
    invoke-interface {v0, p1}, Lorg/alljoyn/about/Announcer;->removeBusObjectAnnouncements(Ljava/util/List;)V

    .line 578
    return-void
.end method

.method public startAboutClient(Lorg/alljoyn/bus/BusAttachment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 117
    invoke-super {p0}, Lorg/alljoyn/services/common/ServiceCommonImpl;->startClient()V

    .line 118
    invoke-virtual {p0, p1}, Lorg/alljoyn/about/AboutServiceImpl;->setBus(Lorg/alljoyn/bus/BusAttachment;)V

    .line 119
    invoke-direct {p0}, Lorg/alljoyn/about/AboutServiceImpl;->registerDeviceListener()V

    .line 120
    invoke-direct {p0}, Lorg/alljoyn/about/AboutServiceImpl;->registerAnnouncementReceiver()V

    .line 121
    return-void
.end method

.method public startAboutServer(SLorg/alljoyn/services/common/PropertyStore;Lorg/alljoyn/bus/BusAttachment;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 328
    invoke-super {p0}, Lorg/alljoyn/services/common/ServiceCommonImpl;->startServer()V

    .line 330
    if-eqz p2, :cond_0

    .line 331
    iput-object p2, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_propertyStore:Lorg/alljoyn/services/common/PropertyStore;

    .line 337
    iput-short p1, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_servicesPort:S

    .line 338
    invoke-virtual {p0, p3}, Lorg/alljoyn/about/AboutServiceImpl;->setBus(Lorg/alljoyn/bus/BusAttachment;)V

    .line 340
    invoke-direct {p0}, Lorg/alljoyn/about/AboutServiceImpl;->registerAboutInterface()V

    .line 342
    const-string v0, "/About"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "org.alljoyn.About"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/alljoyn/about/AboutServiceImpl;->addObjectDescription(Ljava/lang/String;[Ljava/lang/String;)V

    .line 343
    return-void

    .line 334
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PropertyStore can\'t be NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopAboutClient()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 275
    invoke-virtual {p0}, Lorg/alljoyn/about/AboutServiceImpl;->getBus()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_2

    .line 279
    iget-object v1, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_announcmentReceiver:Lorg/alljoyn/about/AboutServiceImpl$AnnouncmentReceiver;

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_announcmentReceiver:Lorg/alljoyn/about/AboutServiceImpl$AnnouncmentReceiver;

    invoke-virtual {v0, v1}, Lorg/alljoyn/bus/BusAttachment;->unregisterSignalHandlers(Ljava/lang/Object;)V

    .line 282
    iget-object v1, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_announcmentReceiver:Lorg/alljoyn/about/AboutServiceImpl$AnnouncmentReceiver;

    invoke-virtual {v0, v1}, Lorg/alljoyn/bus/BusAttachment;->unregisterBusObject(Lorg/alljoyn/bus/BusObject;)V

    .line 285
    :cond_0
    iget-object v1, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_busListeners:Lorg/alljoyn/bus/BusListener;

    if-eqz v1, :cond_1

    .line 286
    iget-object v1, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_busListeners:Lorg/alljoyn/bus/BusListener;

    invoke-virtual {v0, v1}, Lorg/alljoyn/bus/BusAttachment;->unregisterBusListener(Lorg/alljoyn/bus/BusListener;)V

    .line 289
    :cond_1
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_announcementHandlers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 290
    iput-object v2, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_announcmentReceiver:Lorg/alljoyn/about/AboutServiceImpl$AnnouncmentReceiver;

    .line 291
    iput-object v2, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_busListeners:Lorg/alljoyn/bus/BusListener;

    .line 294
    :cond_2
    invoke-super {p0}, Lorg/alljoyn/services/common/ServiceCommonImpl;->stopClient()V

    .line 295
    return-void
.end method

.method public stopAboutServer()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 583
    invoke-virtual {p0}, Lorg/alljoyn/about/AboutServiceImpl;->getBus()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_aboutInterface:Lorg/alljoyn/about/transport/AboutTransport;

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {p0}, Lorg/alljoyn/about/AboutServiceImpl;->getBus()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v0

    iget-object v1, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_aboutInterface:Lorg/alljoyn/about/transport/AboutTransport;

    invoke-virtual {v0, v1}, Lorg/alljoyn/bus/BusAttachment;->unregisterBusObject(Lorg/alljoyn/bus/BusObject;)V

    .line 589
    :cond_0
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_ObjectDescriptions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 591
    iput-object v2, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_announcementEmitter:Lorg/alljoyn/about/transport/AboutTransport;

    .line 592
    iput-object v2, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_announcer:Lorg/alljoyn/about/Announcer;

    .line 595
    :cond_1
    invoke-super {p0}, Lorg/alljoyn/services/common/ServiceCommonImpl;->stopServer()V

    .line 596
    return-void
.end method

.method public unregisterIcon()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 601
    invoke-virtual {p0}, Lorg/alljoyn/about/AboutServiceImpl;->getBus()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 602
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_iconInterface:Lorg/alljoyn/about/transport/IconTransport;

    if-eqz v0, :cond_0

    .line 603
    invoke-virtual {p0}, Lorg/alljoyn/about/AboutServiceImpl;->getBus()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v0

    iget-object v1, p0, Lorg/alljoyn/about/AboutServiceImpl;->m_iconInterface:Lorg/alljoyn/about/transport/IconTransport;

    invoke-virtual {v0, v1}, Lorg/alljoyn/bus/BusAttachment;->unregisterBusObject(Lorg/alljoyn/bus/BusObject;)V

    .line 605
    :cond_0
    const-string v0, "/About/DeviceIcon"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "org.alljoyn.Icon"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/alljoyn/about/AboutServiceImpl;->removeObjectDescription(Ljava/lang/String;[Ljava/lang/String;)V

    .line 607
    :cond_1
    return-void
.end method

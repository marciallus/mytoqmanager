.class Lorg/alljoyn/about/AboutServiceImpl$AnnouncmentReceiver;
.super Ljava/lang/Object;
.source "AboutServiceImpl.java"

# interfaces
.implements Lorg/alljoyn/about/transport/AboutTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/about/AboutServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnnouncmentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/alljoyn/about/AboutServiceImpl;


# direct methods
.method private constructor <init>(Lorg/alljoyn/about/AboutServiceImpl;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lorg/alljoyn/about/AboutServiceImpl$AnnouncmentReceiver;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/alljoyn/about/AboutServiceImpl;Lorg/alljoyn/about/AboutServiceImpl$1;)V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lorg/alljoyn/about/AboutServiceImpl$AnnouncmentReceiver;-><init>(Lorg/alljoyn/about/AboutServiceImpl;)V

    return-void
.end method


# virtual methods
.method public Announce(SS[Lorg/alljoyn/services/common/BusObjectDescription;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SS[",
            "Lorg/alljoyn/services/common/BusObjectDescription;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/alljoyn/bus/Variant;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusSignalHandler;
        iface = "org.alljoyn.About"
        signal = "Announce"
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl$AnnouncmentReceiver;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    # invokes: Lorg/alljoyn/about/AboutServiceImpl;->getBus()Lorg/alljoyn/bus/BusAttachment;
    invoke-static {v0}, Lorg/alljoyn/about/AboutServiceImpl;->access$600(Lorg/alljoyn/about/AboutServiceImpl;)Lorg/alljoyn/bus/BusAttachment;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lorg/alljoyn/bus/BusAttachment;->enableConcurrentCallbacks()V

    .line 237
    invoke-virtual {v0}, Lorg/alljoyn/bus/BusAttachment;->getMessageContext()Lorg/alljoyn/bus/MessageContext;

    move-result-object v0

    iget-object v2, v0, Lorg/alljoyn/bus/MessageContext;->sender:Ljava/lang/String;

    .line 239
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl$AnnouncmentReceiver;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    # getter for: Lorg/alljoyn/about/AboutServiceImpl;->m_announcementHandlers:Ljava/util/Vector;
    invoke-static {v0}, Lorg/alljoyn/about/AboutServiceImpl;->access$400(Lorg/alljoyn/about/AboutServiceImpl;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 241
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl$AnnouncmentReceiver;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    # getter for: Lorg/alljoyn/about/AboutServiceImpl;->m_announcementHandlers:Ljava/util/Vector;
    invoke-static {v0}, Lorg/alljoyn/about/AboutServiceImpl;->access$400(Lorg/alljoyn/about/AboutServiceImpl;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/services/common/AnnouncementHandler;

    .line 242
    invoke-interface {v0, v2, p2, p3, p4}, Lorg/alljoyn/services/common/AnnouncementHandler;->onAnnouncement(Ljava/lang/String;S[Lorg/alljoyn/services/common/BusObjectDescription;Ljava/util/Map;)V

    .line 239
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 245
    :cond_0
    return-void
.end method

.method public GetAboutData(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/alljoyn/bus/Variant;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 259
    const/4 v0, 0x0

    return-object v0
.end method

.method public GetObjectDescription()[Lorg/alljoyn/services/common/BusObjectDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersion()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 253
    const/4 v0, 0x0

    return v0
.end method

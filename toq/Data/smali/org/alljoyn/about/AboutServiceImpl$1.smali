.class Lorg/alljoyn/about/AboutServiceImpl$1;
.super Lorg/alljoyn/bus/BusListener;
.source "AboutServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/alljoyn/about/AboutServiceImpl;->registerDeviceListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/alljoyn/about/AboutServiceImpl;


# direct methods
.method constructor <init>(Lorg/alljoyn/about/AboutServiceImpl;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lorg/alljoyn/about/AboutServiceImpl$1;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    invoke-direct {p0}, Lorg/alljoyn/bus/BusListener;-><init>()V

    return-void
.end method


# virtual methods
.method public foundAdvertisedName(Ljava/lang/String;SLjava/lang/String;)V
    .locals 4

    .prologue
    .line 159
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl$1;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    invoke-virtual {v0}, Lorg/alljoyn/about/AboutServiceImpl;->getLogger()Lorg/alljoyn/services/common/utils/GenericLogger;

    move-result-object v0

    iget-object v1, p0, Lorg/alljoyn/about/AboutServiceImpl$1;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    # getter for: Lorg/alljoyn/about/AboutServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lorg/alljoyn/about/AboutServiceImpl;->access$000(Lorg/alljoyn/about/AboutServiceImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MyBusListener.foundAdvertisedName: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/services/common/utils/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public lostAdvertisedName(Ljava/lang/String;SLjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 170
    iget-object v1, p0, Lorg/alljoyn/about/AboutServiceImpl$1;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    # invokes: Lorg/alljoyn/about/AboutServiceImpl;->getBus()Lorg/alljoyn/bus/BusAttachment;
    invoke-static {v1}, Lorg/alljoyn/about/AboutServiceImpl;->access$200(Lorg/alljoyn/about/AboutServiceImpl;)Lorg/alljoyn/bus/BusAttachment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/alljoyn/bus/BusAttachment;->enableConcurrentCallbacks()V

    .line 172
    iget-object v1, p0, Lorg/alljoyn/about/AboutServiceImpl$1;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    invoke-virtual {v1}, Lorg/alljoyn/about/AboutServiceImpl;->getLogger()Lorg/alljoyn/services/common/utils/GenericLogger;

    move-result-object v1

    iget-object v2, p0, Lorg/alljoyn/about/AboutServiceImpl$1;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    # getter for: Lorg/alljoyn/about/AboutServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lorg/alljoyn/about/AboutServiceImpl;->access$300(Lorg/alljoyn/about/AboutServiceImpl;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MyBusListener.lostAdvertisedName(%s, 0x%04x, %s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/alljoyn/services/common/utils/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 173
    :goto_0
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl$1;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    # getter for: Lorg/alljoyn/about/AboutServiceImpl;->m_announcementHandlers:Ljava/util/Vector;
    invoke-static {v0}, Lorg/alljoyn/about/AboutServiceImpl;->access$400(Lorg/alljoyn/about/AboutServiceImpl;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 175
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl$1;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    # getter for: Lorg/alljoyn/about/AboutServiceImpl;->m_announcementHandlers:Ljava/util/Vector;
    invoke-static {v0}, Lorg/alljoyn/about/AboutServiceImpl;->access$400(Lorg/alljoyn/about/AboutServiceImpl;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/services/common/AnnouncementHandler;

    .line 176
    invoke-interface {v0, p1}, Lorg/alljoyn/services/common/AnnouncementHandler;->onDeviceLost(Ljava/lang/String;)V

    .line 173
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 178
    :cond_0
    return-void
.end method

.method public nameOwnerChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 165
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl$1;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    invoke-virtual {v0}, Lorg/alljoyn/about/AboutServiceImpl;->getLogger()Lorg/alljoyn/services/common/utils/GenericLogger;

    move-result-object v0

    iget-object v1, p0, Lorg/alljoyn/about/AboutServiceImpl$1;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    # getter for: Lorg/alljoyn/about/AboutServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lorg/alljoyn/about/AboutServiceImpl;->access$100(Lorg/alljoyn/about/AboutServiceImpl;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MyBusListener.nameOwnerChanged(%s, %s, %s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/alljoyn/services/common/utils/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

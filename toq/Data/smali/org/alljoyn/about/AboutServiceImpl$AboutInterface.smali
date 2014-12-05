.class Lorg/alljoyn/about/AboutServiceImpl$AboutInterface;
.super Ljava/lang/Object;
.source "AboutServiceImpl.java"

# interfaces
.implements Lorg/alljoyn/about/transport/AboutTransport;
.implements Lorg/alljoyn/bus/BusObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/about/AboutServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AboutInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/alljoyn/about/AboutServiceImpl;


# direct methods
.method private constructor <init>(Lorg/alljoyn/about/AboutServiceImpl;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lorg/alljoyn/about/AboutServiceImpl$AboutInterface;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/alljoyn/about/AboutServiceImpl;Lorg/alljoyn/about/AboutServiceImpl$1;)V
    .locals 0

    .prologue
    .line 629
    invoke-direct {p0, p1}, Lorg/alljoyn/about/AboutServiceImpl$AboutInterface;-><init>(Lorg/alljoyn/about/AboutServiceImpl;)V

    return-void
.end method


# virtual methods
.method public Announce(SS[Lorg/alljoyn/services/common/BusObjectDescription;Ljava/util/Map;)V
    .locals 0
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

    .prologue
    .line 674
    return-void
.end method

.method public GetAboutData(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
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
    .line 636
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 638
    :try_start_0
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl$AboutInterface;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    # getter for: Lorg/alljoyn/about/AboutServiceImpl;->m_propertyStore:Lorg/alljoyn/services/common/PropertyStore;
    invoke-static {v0}, Lorg/alljoyn/about/AboutServiceImpl;->access$900(Lorg/alljoyn/about/AboutServiceImpl;)Lorg/alljoyn/services/common/PropertyStore;

    move-result-object v0

    sget-object v2, Lorg/alljoyn/services/common/PropertyStore$Filter;->READ:Lorg/alljoyn/services/common/PropertyStore$Filter;

    invoke-interface {v0, p1, v2, v1}, Lorg/alljoyn/services/common/PropertyStore;->readAll(Ljava/lang/String;Lorg/alljoyn/services/common/PropertyStore$Filter;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/alljoyn/services/common/PropertyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :goto_0
    invoke-static {v1}, Lorg/alljoyn/services/common/utils/TransportUtil;->toVariantMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 650
    return-object v0

    .line 639
    :catch_0
    move-exception v0

    .line 640
    invoke-virtual {v0}, Lorg/alljoyn/services/common/PropertyStoreException;->getReason()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 642
    new-instance v0, Lorg/alljoyn/services/common/LanguageNotSupportedException;

    invoke-direct {v0}, Lorg/alljoyn/services/common/LanguageNotSupportedException;-><init>()V

    throw v0

    .line 646
    :cond_0
    invoke-virtual {v0}, Lorg/alljoyn/services/common/PropertyStoreException;->printStackTrace()V

    goto :goto_0
.end method

.method public GetObjectDescription()[Lorg/alljoyn/services/common/BusObjectDescription;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 657
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl$AboutInterface;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    # getter for: Lorg/alljoyn/about/AboutServiceImpl;->m_ObjectDescriptions:Ljava/util/Set;
    invoke-static {v0}, Lorg/alljoyn/about/AboutServiceImpl;->access$800(Lorg/alljoyn/about/AboutServiceImpl;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/alljoyn/services/common/BusObjectDescription;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/alljoyn/services/common/BusObjectDescription;

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
    .line 663
    const/4 v0, 0x1

    return v0
.end method

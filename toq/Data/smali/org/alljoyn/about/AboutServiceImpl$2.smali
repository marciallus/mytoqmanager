.class Lorg/alljoyn/about/AboutServiceImpl$2;
.super Ljava/lang/Object;
.source "AboutServiceImpl.java"

# interfaces
.implements Lorg/alljoyn/about/Announcer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/alljoyn/about/AboutServiceImpl;->createAnnouncer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private m_isAnnouncing:Z

.field final synthetic this$0:Lorg/alljoyn/about/AboutServiceImpl;


# direct methods
.method constructor <init>(Lorg/alljoyn/about/AboutServiceImpl;)V
    .locals 1

    .prologue
    .line 375
    iput-object p1, p0, Lorg/alljoyn/about/AboutServiceImpl$2;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/alljoyn/about/AboutServiceImpl$2;->m_isAnnouncing:Z

    return-void
.end method


# virtual methods
.method public addBusObjectAnnouncements(Ljava/util/List;)V
    .locals 1
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
    .line 417
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl$2;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    # getter for: Lorg/alljoyn/about/AboutServiceImpl;->m_ObjectDescriptions:Ljava/util/Set;
    invoke-static {v0}, Lorg/alljoyn/about/AboutServiceImpl;->access$800(Lorg/alljoyn/about/AboutServiceImpl;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 418
    return-void
.end method

.method public announce()V
    .locals 5

    .prologue
    .line 385
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl$2;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    # getter for: Lorg/alljoyn/about/AboutServiceImpl;->m_announcementEmitter:Lorg/alljoyn/about/transport/AboutTransport;
    invoke-static {v0}, Lorg/alljoyn/about/AboutServiceImpl;->access$700(Lorg/alljoyn/about/AboutServiceImpl;)Lorg/alljoyn/about/transport/AboutTransport;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/alljoyn/about/AboutServiceImpl$2;->isAnnouncing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl$2;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    # getter for: Lorg/alljoyn/about/AboutServiceImpl;->m_ObjectDescriptions:Ljava/util/Set;
    invoke-static {v0}, Lorg/alljoyn/about/AboutServiceImpl;->access$800(Lorg/alljoyn/about/AboutServiceImpl;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/alljoyn/services/common/BusObjectDescription;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/alljoyn/services/common/BusObjectDescription;

    .line 388
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 391
    :try_start_0
    iget-object v2, p0, Lorg/alljoyn/about/AboutServiceImpl$2;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    # getter for: Lorg/alljoyn/about/AboutServiceImpl;->m_propertyStore:Lorg/alljoyn/services/common/PropertyStore;
    invoke-static {v2}, Lorg/alljoyn/about/AboutServiceImpl;->access$900(Lorg/alljoyn/about/AboutServiceImpl;)Lorg/alljoyn/services/common/PropertyStore;

    move-result-object v2

    const-string v3, ""

    sget-object v4, Lorg/alljoyn/services/common/PropertyStore$Filter;->ANNOUNCE:Lorg/alljoyn/services/common/PropertyStore$Filter;

    invoke-interface {v2, v3, v4, v1}, Lorg/alljoyn/services/common/PropertyStore;->readAll(Ljava/lang/String;Lorg/alljoyn/services/common/PropertyStore$Filter;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/alljoyn/services/common/PropertyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    invoke-static {v1}, Lorg/alljoyn/services/common/utils/TransportUtil;->toVariantMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 397
    iget-object v2, p0, Lorg/alljoyn/about/AboutServiceImpl$2;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    # getter for: Lorg/alljoyn/about/AboutServiceImpl;->m_announcementEmitter:Lorg/alljoyn/about/transport/AboutTransport;
    invoke-static {v2}, Lorg/alljoyn/about/AboutServiceImpl;->access$700(Lorg/alljoyn/about/AboutServiceImpl;)Lorg/alljoyn/about/transport/AboutTransport;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/alljoyn/about/AboutServiceImpl$2;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    # getter for: Lorg/alljoyn/about/AboutServiceImpl;->m_servicesPort:S
    invoke-static {v4}, Lorg/alljoyn/about/AboutServiceImpl;->access$1000(Lorg/alljoyn/about/AboutServiceImpl;)S

    move-result v4

    invoke-interface {v2, v3, v4, v0, v1}, Lorg/alljoyn/about/transport/AboutTransport;->Announce(SS[Lorg/alljoyn/services/common/BusObjectDescription;Ljava/util/Map;)V

    .line 400
    :cond_0
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 393
    new-instance v1, Lorg/alljoyn/about/AboutServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read announcable properties from the PropertyStore, Error: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/alljoyn/services/common/PropertyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/alljoyn/about/AboutServiceException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isAnnouncing()Z
    .locals 1

    .prologue
    .line 405
    iget-boolean v0, p0, Lorg/alljoyn/about/AboutServiceImpl$2;->m_isAnnouncing:Z

    return v0
.end method

.method public removeBusObjectAnnouncements(Ljava/util/List;)V
    .locals 7
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
    .line 424
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/services/common/BusObjectDescription;

    .line 427
    const/4 v3, 0x0

    .line 428
    iget-object v1, p0, Lorg/alljoyn/about/AboutServiceImpl$2;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    # getter for: Lorg/alljoyn/about/AboutServiceImpl;->m_ObjectDescriptions:Ljava/util/Set;
    invoke-static {v1}, Lorg/alljoyn/about/AboutServiceImpl;->access$800(Lorg/alljoyn/about/AboutServiceImpl;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/alljoyn/services/common/BusObjectDescription;

    .line 430
    invoke-virtual {v0}, Lorg/alljoyn/services/common/BusObjectDescription;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/alljoyn/services/common/BusObjectDescription;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 433
    invoke-virtual {v0}, Lorg/alljoyn/services/common/BusObjectDescription;->getInterfaces()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_3

    .line 462
    :cond_2
    :goto_2
    if-eqz v1, :cond_0

    .line 464
    iget-object v0, p0, Lorg/alljoyn/about/AboutServiceImpl$2;->this$0:Lorg/alljoyn/about/AboutServiceImpl;

    # getter for: Lorg/alljoyn/about/AboutServiceImpl;->m_ObjectDescriptions:Ljava/util/Set;
    invoke-static {v0}, Lorg/alljoyn/about/AboutServiceImpl;->access$800(Lorg/alljoyn/about/AboutServiceImpl;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 440
    :cond_3
    invoke-virtual {v0}, Lorg/alljoyn/services/common/BusObjectDescription;->getInterfaces()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/alljoyn/services/common/BusObjectDescription;->getInterfaces()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 449
    new-instance v2, Ljava/util/ArrayList;

    iget-object v6, v1, Lorg/alljoyn/services/common/BusObjectDescription;->interfaces:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 451
    invoke-virtual {v0}, Lorg/alljoyn/services/common/BusObjectDescription;->getInterfaces()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 454
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/alljoyn/services/common/BusObjectDescription;->setInterfaces([Ljava/lang/String;)V

    goto :goto_1

    .line 468
    :cond_4
    return-void

    :cond_5
    move-object v1, v3

    goto :goto_2
.end method

.method public setAnnouncing(Z)V
    .locals 0

    .prologue
    .line 411
    iput-boolean p1, p0, Lorg/alljoyn/about/AboutServiceImpl$2;->m_isAnnouncing:Z

    .line 412
    return-void
.end method

.class public Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;
.super Ljava/lang/Object;
.source "ResourceStore.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected bundle:Landroid/os/Bundle;

.field private timestampMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 267
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore$1;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore$1;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->bundle:Landroid/os/Bundle;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->timestampMap:Ljava/util/HashMap;

    .line 50
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->bundle:Landroid/os/Bundle;

    .line 260
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->readFromParcel(Landroid/os/Parcel;)V

    .line 261
    return-void
.end method


# virtual methods
.method public declared-synchronized addResource(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;)Ljava/lang/String;
    .locals 4
    .param p1, "resource"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;

    .prologue
    .line 79
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "resource must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 81
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;->getId()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 84
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->timestampMap:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized addResources([Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;)[Ljava/lang/String;
    .locals 5
    .param p1, "resources"    # [Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;

    .prologue
    .line 60
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v2, p1

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "resources must not be null or zero length"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 62
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_2

    .line 68
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 64
    :cond_2
    :try_start_2
    aget-object v1, p1, v2

    .line 65
    .local v1, "resource":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;
    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->addResource(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 200
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->timestampMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsId(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 187
    monitor-enter p0

    if-nez p1, :cond_0

    .line 188
    const/4 v0, 0x0

    .line 191
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 209
    if-ne p0, p1, :cond_0

    move v0, v1

    .line 218
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .line 213
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v0, v3, :cond_2

    :cond_1
    move v0, v2

    .line 214
    goto :goto_0

    .line 217
    :cond_2
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->bundle:Landroid/os/Bundle;

    move-object v0, p1

    check-cast v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->bundle:Landroid/os/Bundle;

    invoke-static {v3, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/BundleUtil;->equals(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->timestampMap:Ljava/util/HashMap;

    check-cast p1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v3, p1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->timestampMap:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 217
    goto :goto_0
.end method

.method public declared-synchronized getResource(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStoreException;
        }
    .end annotation

    .prologue
    .line 145
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 147
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No resource found for id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getResources([Ljava/lang/String;)[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;
    .locals 5
    .param p1, "ids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStoreException;
        }
    .end annotation

    .prologue
    .line 125
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v2, p1

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ids must not be null or zero length"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 127
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v1, "resources":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_2

    .line 133
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 129
    :cond_2
    :try_start_2
    aget-object v0, p1, v2

    .line 130
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->getResource(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public declared-synchronized getResourcesAddedSinceTimeMillis(J)[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;
    .locals 6
    .param p1, "timeMillis"    # J

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v1, "resources":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;>;"
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->timestampMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 174
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    .line 165
    :cond_1
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    .local v0, "id":Ljava/lang/String;
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->timestampMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 169
    .local v2, "timestamp":J
    cmp-long v4, v2, p1

    if-lez v4, :cond_0

    .line 170
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->bundle:Landroid/os/Bundle;

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 163
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "resources":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;>;"
    .end local v2    # "timestamp":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 227
    const/4 v0, 0x5

    .line 229
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0xb9

    .line 230
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->bundle:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/BundleUtil;->hashCode(Landroid/os/Bundle;)I

    move-result v2

    add-int v0, v1, v2

    .line 231
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->timestampMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 233
    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 305
    const-class v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->bundle:Landroid/os/Bundle;

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->timestampMap:Ljava/util/HashMap;

    .line 307
    return-void
.end method

.method public declared-synchronized removeResource(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 110
    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 112
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->timestampMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeResources([Ljava/lang/String;)V
    .locals 3
    .param p1, "ids"    # [Ljava/lang/String;

    .prologue
    .line 96
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ids must not be null or zero length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 98
    :cond_1
    :try_start_1
    array-length v2, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_2

    .line 101
    monitor-exit p0

    return-void

    .line 98
    :cond_2
    :try_start_2
    aget-object v0, p1, v1

    .line 99
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->removeResource(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .local v0, "buffy":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 243
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->bundle:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/BundleUtil;->toString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 244
    const-string v2, "timestampMap="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->timestampMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 245
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 293
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 294
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->timestampMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 295
    return-void
.end method

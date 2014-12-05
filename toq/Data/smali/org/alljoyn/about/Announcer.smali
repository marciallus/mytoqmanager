.class public interface abstract Lorg/alljoyn/about/Announcer;
.super Ljava/lang/Object;
.source "Announcer.java"


# virtual methods
.method public abstract addBusObjectAnnouncements(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/services/common/BusObjectDescription;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract announce()V
.end method

.method public abstract isAnnouncing()Z
.end method

.method public abstract removeBusObjectAnnouncements(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/services/common/BusObjectDescription;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAnnouncing(Z)V
.end method

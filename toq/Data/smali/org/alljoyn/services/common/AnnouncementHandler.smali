.class public interface abstract Lorg/alljoyn/services/common/AnnouncementHandler;
.super Ljava/lang/Object;
.source "AnnouncementHandler.java"


# virtual methods
.method public abstract onAnnouncement(Ljava/lang/String;S[Lorg/alljoyn/services/common/BusObjectDescription;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "S[",
            "Lorg/alljoyn/services/common/BusObjectDescription;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/alljoyn/bus/Variant;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDeviceLost(Ljava/lang/String;)V
.end method

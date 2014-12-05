.class public interface abstract Lorg/alljoyn/about/AboutService;
.super Ljava/lang/Object;
.source "AboutService.java"

# interfaces
.implements Lorg/alljoyn/services/common/ServiceCommon;


# static fields
.field public static final ANNOUNCE_IFNAME:Ljava/lang/String; = "org.alljoyn.About"

.field public static final PROTOCOL_VERSION:I = 0x1

.field public static final SIGNAL_NAME:Ljava/lang/String; = "Announce"


# virtual methods
.method public abstract addAnnouncementHandler(Lorg/alljoyn/services/common/AnnouncementHandler;)V
.end method

.method public abstract addObjectDescription(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract addObjectDescriptions(Ljava/util/List;)V
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

.method public abstract createAboutClient(Ljava/lang/String;Lorg/alljoyn/services/common/ServiceAvailabilityListener;S)Lorg/alljoyn/about/client/AboutClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract createAboutIconClient(Ljava/lang/String;Lorg/alljoyn/services/common/ServiceAvailabilityListener;S)Lorg/alljoyn/about/icon/AboutIconClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

.method public abstract registerIcon(Ljava/lang/String;Ljava/lang/String;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract removeAnnouncementHandler(Lorg/alljoyn/services/common/AnnouncementHandler;)V
.end method

.method public abstract removeObjectDescription(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract removeObjectDescriptions(Ljava/util/List;)V
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

.method public abstract startAboutClient(Lorg/alljoyn/bus/BusAttachment;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract startAboutServer(SLorg/alljoyn/services/common/PropertyStore;Lorg/alljoyn/bus/BusAttachment;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract stopAboutClient()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract stopAboutServer()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract unregisterIcon()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

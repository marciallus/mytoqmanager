.class public interface abstract Lorg/alljoyn/ns/transport/interfaces/NotificationTransport;
.super Ljava/lang/Object;
.source "NotificationTransport.java"

# interfaces
.implements Lorg/alljoyn/bus/BusObject;


# annotations
.annotation runtime Lorg/alljoyn/bus/annotation/BusInterface;
    name = "org.alljoyn.Notification"
.end annotation


# static fields
.field public static final IF_NAME:Ljava/lang/String; = "org.alljoyn.Notification"

.field public static final VERSION:S = 0x1s


# virtual methods
.method public abstract notify(IISLjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/util/Map;Ljava/util/Map;[Lorg/alljoyn/ns/transport/TransportNotificationText;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIS",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/alljoyn/bus/Variant;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Lorg/alljoyn/ns/transport/TransportNotificationText;",
            ")V"
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusSignal;
        signature = "qiqssaysa{iv}a{ss}ar"
    .end annotation
.end method

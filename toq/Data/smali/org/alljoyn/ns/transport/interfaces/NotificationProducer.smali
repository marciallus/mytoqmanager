.class public interface abstract Lorg/alljoyn/ns/transport/interfaces/NotificationProducer;
.super Ljava/lang/Object;
.source "NotificationProducer.java"

# interfaces
.implements Lorg/alljoyn/bus/BusObject;


# annotations
.annotation runtime Lorg/alljoyn/bus/annotation/BusInterface;
    name = "org.alljoyn.Notification.Producer"
.end annotation


# static fields
.field public static final IFNAME:Ljava/lang/String; = "org.alljoyn.Notification.Producer"

.field public static final OBJ_PATH:Ljava/lang/String; = "/notificationProducer"

.field public static final VERSION:S = 0x1s


# virtual methods
.method public abstract dismiss(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusMethod;
        name = "Dismiss"
        signature = "i"
    .end annotation
.end method

.method public abstract getVersion()S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusProperty;
        signature = "q"
    .end annotation
.end method

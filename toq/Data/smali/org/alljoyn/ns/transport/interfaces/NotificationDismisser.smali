.class public interface abstract Lorg/alljoyn/ns/transport/interfaces/NotificationDismisser;
.super Ljava/lang/Object;
.source "NotificationDismisser.java"

# interfaces
.implements Lorg/alljoyn/bus/BusObject;


# annotations
.annotation runtime Lorg/alljoyn/bus/annotation/BusInterface;
    name = "org.alljoyn.Notification.Dismisser"
.end annotation


# static fields
.field public static final IF_NAME:Ljava/lang/String; = "org.alljoyn.Notification.Dismisser"

.field public static final VERSION:S = 0x1s


# virtual methods
.method public abstract dismiss(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusSignal;
        name = "Dismiss"
        signature = "iay"
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

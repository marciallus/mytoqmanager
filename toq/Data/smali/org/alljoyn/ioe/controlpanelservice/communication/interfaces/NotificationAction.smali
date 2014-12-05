.class public interface abstract Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/NotificationAction;
.super Ljava/lang/Object;
.source "NotificationAction.java"


# annotations
.annotation runtime Lorg/alljoyn/bus/annotation/BusInterface;
    name = "org.alljoyn.ControlPanel.NotificationAction"
.end annotation


# static fields
.field public static final ID_MASK:I = 0x4

.field public static final IFNAME:Ljava/lang/String; = "org.alljoyn.ControlPanel.NotificationAction"

.field public static final VERSION:S = 0x1s


# virtual methods
.method public abstract Dismiss()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusSignal;
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

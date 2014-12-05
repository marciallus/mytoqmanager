.class public interface abstract Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/HTTPControl;
.super Ljava/lang/Object;
.source "HTTPControl.java"


# annotations
.annotation runtime Lorg/alljoyn/bus/annotation/BusInterface;
    name = "org.alljoyn.ControlPanel.HTTPControl"
.end annotation


# static fields
.field public static final ID_MASK:I = 0x2

.field public static final IFNAME:Ljava/lang/String; = "org.alljoyn.ControlPanel.HTTPControl"

.field public static final VERSION:S = 0x1s


# virtual methods
.method public abstract GetRootURL()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusMethod;
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

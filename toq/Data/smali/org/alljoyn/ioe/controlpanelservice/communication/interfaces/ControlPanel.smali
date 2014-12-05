.class public interface abstract Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ControlPanel;
.super Ljava/lang/Object;
.source "ControlPanel.java"


# annotations
.annotation runtime Lorg/alljoyn/bus/annotation/BusInterface;
    name = "org.alljoyn.ControlPanel.ControlPanel"
.end annotation


# static fields
.field public static final ID_MASK:I = 0x1

.field public static final IFNAME:Ljava/lang/String; = "org.alljoyn.ControlPanel.ControlPanel"

.field public static final VERSION:S = 0x1s


# virtual methods
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

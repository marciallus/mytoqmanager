.class public interface abstract Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/Container;
.super Ljava/lang/Object;
.source "Container.java"

# interfaces
.implements Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/ContainerSuper;


# annotations
.annotation runtime Lorg/alljoyn/bus/annotation/BusInterface;
    name = "org.alljoyn.ControlPanel.Container"
.end annotation


# static fields
.field public static final IFNAME:Ljava/lang/String; = "org.alljoyn.ControlPanel.Container"

.field public static final VERSION:S = 0x1s


# virtual methods
.method public abstract MetadataChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusSignal;
    .end annotation
.end method

.method public abstract getOptParams()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Short;",
            "Lorg/alljoyn/bus/Variant;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusProperty;
        signature = "a{qv}"
    .end annotation
.end method

.method public abstract getStates()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusProperty;
        signature = "u"
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

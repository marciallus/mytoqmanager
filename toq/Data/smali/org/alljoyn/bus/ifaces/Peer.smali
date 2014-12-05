.class public interface abstract Lorg/alljoyn/bus/ifaces/Peer;
.super Ljava/lang/Object;
.source "Peer.java"


# annotations
.annotation runtime Lorg/alljoyn/bus/annotation/BusInterface;
    name = "org.freedesktop.DBus.Peer"
.end annotation


# virtual methods
.method public abstract GetMachineId()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusMethod;
    .end annotation
.end method

.method public abstract Ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusMethod;
    .end annotation
.end method

.class public interface abstract Lorg/alljoyn/bus/ifaces/Introspectable;
.super Ljava/lang/Object;
.source "Introspectable.java"


# annotations
.annotation runtime Lorg/alljoyn/bus/annotation/BusInterface;
    name = "org.freedesktop.DBus.Introspectable"
.end annotation


# virtual methods
.method public abstract Introspect()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusMethod;
    .end annotation
.end method

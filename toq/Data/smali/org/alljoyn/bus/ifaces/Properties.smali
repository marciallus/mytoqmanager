.class public interface abstract Lorg/alljoyn/bus/ifaces/Properties;
.super Ljava/lang/Object;
.source "Properties.java"


# annotations
.annotation runtime Lorg/alljoyn/bus/annotation/BusInterface;
    name = "org.freedesktop.DBus.Properties"
.end annotation


# virtual methods
.method public abstract Get(Ljava/lang/String;Ljava/lang/String;)Lorg/alljoyn/bus/Variant;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusMethod;
    .end annotation
.end method

.method public abstract GetAll(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/alljoyn/bus/Variant;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusMethod;
        replySignature = "a{sv}"
        signature = "s"
    .end annotation
.end method

.method public abstract Set(Ljava/lang/String;Ljava/lang/String;Lorg/alljoyn/bus/Variant;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusMethod;
    .end annotation
.end method

.class public interface abstract Lorg/alljoyn/about/transport/AboutTransport;
.super Ljava/lang/Object;
.source "AboutTransport.java"

# interfaces
.implements Lorg/alljoyn/bus/BusObject;


# annotations
.annotation runtime Lorg/alljoyn/bus/annotation/BusInterface;
    name = "org.alljoyn.About"
.end annotation


# static fields
.field public static final INTERFACE_NAME:Ljava/lang/String; = "org.alljoyn.About"

.field public static final OBJ_PATH:Ljava/lang/String; = "/About"


# virtual methods
.method public abstract Announce(SS[Lorg/alljoyn/services/common/BusObjectDescription;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SS[",
            "Lorg/alljoyn/services/common/BusObjectDescription;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/alljoyn/bus/Variant;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusSignal;
        signature = "qqa(oas)a{sv}"
    .end annotation
.end method

.method public abstract GetAboutData(Ljava/lang/String;)Ljava/util/Map;
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

.method public abstract GetObjectDescription()[Lorg/alljoyn/services/common/BusObjectDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusMethod;
        replySignature = "a(oas)"
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

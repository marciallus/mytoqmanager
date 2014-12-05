.class public interface abstract Lorg/alljoyn/about/transport/IconTransport;
.super Ljava/lang/Object;
.source "IconTransport.java"

# interfaces
.implements Lorg/alljoyn/bus/BusObject;


# annotations
.annotation runtime Lorg/alljoyn/bus/annotation/BusInterface;
    name = "org.alljoyn.Icon"
.end annotation


# static fields
.field public static final INTERFACE_NAME:Ljava/lang/String; = "org.alljoyn.Icon"

.field public static final OBJ_PATH:Ljava/lang/String; = "/About/DeviceIcon"


# virtual methods
.method public abstract GetContent()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusMethod;
        replySignature = "ay"
    .end annotation
.end method

.method public abstract GetUrl()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusMethod;
        replySignature = "s"
    .end annotation
.end method

.method public abstract getMimeType()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusProperty;
        signature = "s"
    .end annotation
.end method

.method public abstract getSize()I
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

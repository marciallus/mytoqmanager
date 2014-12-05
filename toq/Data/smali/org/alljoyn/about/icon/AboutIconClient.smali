.class public interface abstract Lorg/alljoyn/about/icon/AboutIconClient;
.super Ljava/lang/Object;
.source "AboutIconClient.java"

# interfaces
.implements Lorg/alljoyn/services/common/ClientBase;


# virtual methods
.method public abstract GetContent()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

.method public abstract GetUrl()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

.method public abstract getMimeType()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

.method public abstract getSize()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

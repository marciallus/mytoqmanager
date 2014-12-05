.class public interface abstract Lorg/alljoyn/services/common/ClientBase;
.super Ljava/lang/Object;
.source "ClientBase.java"


# virtual methods
.method public abstract connect()Lorg/alljoyn/bus/Status;
.end method

.method public abstract disconnect()V
.end method

.method public abstract getPeerName()Ljava/lang/String;
.end method

.method public abstract getSessionId()I
.end method

.method public abstract getVersion()S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

.method public abstract initBus(Lorg/alljoyn/bus/BusAttachment;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isConnected()Z
.end method

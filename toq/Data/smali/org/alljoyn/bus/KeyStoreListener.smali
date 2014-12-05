.class public interface abstract Lorg/alljoyn/bus/KeyStoreListener;
.super Ljava/lang/Object;
.source "KeyStoreListener.java"


# virtual methods
.method public abstract getKeys()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

.method public abstract getPassword()[C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

.method public abstract putKeys([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation
.end method

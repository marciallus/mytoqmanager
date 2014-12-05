.class public interface abstract Lorg/alljoyn/ioe/controlpanelservice/DeviceRegistry;
.super Ljava/lang/Object;
.source "DeviceRegistry.java"


# virtual methods
.method public abstract foundNewDevice(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;)V
.end method

.method public abstract getDevices()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract reachabilityChanged(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;Z)V
.end method

.method public abstract removeDevice(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;)V
.end method

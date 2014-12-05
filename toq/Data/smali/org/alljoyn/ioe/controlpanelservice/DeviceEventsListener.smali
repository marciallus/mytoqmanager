.class public interface abstract Lorg/alljoyn/ioe/controlpanelservice/DeviceEventsListener;
.super Ljava/lang/Object;
.source "DeviceEventsListener.java"


# virtual methods
.method public abstract errorOccurred(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;Ljava/lang/String;)V
.end method

.method public abstract sessionEstablished(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;",
            "Ljava/util/Collection",
            "<",
            "Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sessionLost(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;)V
.end method

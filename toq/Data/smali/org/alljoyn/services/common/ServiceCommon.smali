.class public interface abstract Lorg/alljoyn/services/common/ServiceCommon;
.super Ljava/lang/Object;
.source "ServiceCommon.java"


# virtual methods
.method public abstract getBusObjectDescriptions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/services/common/BusObjectDescription;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isClientRunning()Z
.end method

.method public abstract isServerRunning()Z
.end method

.method public abstract setLogger(Lorg/alljoyn/services/common/utils/GenericLogger;)V
.end method

.class public interface abstract Lorg/alljoyn/bus/ifaces/DBusProxyObj;
.super Ljava/lang/Object;
.source "DBusProxyObj.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/alljoyn/bus/ifaces/DBusProxyObj$StartServiceByNameResult;,
        Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;,
        Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;
    }
.end annotation

.annotation runtime Lorg/alljoyn/bus/annotation/BusInterface;
    name = "org.freedesktop.DBus"
.end annotation


# static fields
.field public static final REQUEST_NAME_ALLOW_REPLACEMENT:I = 0x1

.field public static final REQUEST_NAME_DO_NOT_QUEUE:I = 0x4

.field public static final REQUEST_NAME_NO_FLAGS:I = 0x0

.field public static final REQUEST_NAME_REPLACE_EXISTING:I = 0x2


# virtual methods
.method public abstract AddMatch(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusMethod;
        signature = "s"
    .end annotation
.end method

.method public abstract GetAdtAuditSessionData(Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusMethod;
        replySignature = "ay"
        signature = "s"
    .end annotation
.end method

.method public abstract GetConnectionSELinuxSecurityContext(Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusMethod;
        replySignature = "ay"
        signature = "s"
    .end annotation
.end method

.method public abstract GetConnectionUnixProcessID(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusMethod;
        replySignature = "u"
        signature = "s"
    .end annotation
.end method

.method public abstract GetConnectionUnixUser(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusMethod;
        replySignature = "u"
        signature = "s"
    .end annotation
.end method

.method public abstract GetId()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusMethod;
        replySignature = "s"
    .end annotation
.end method

.method public abstract GetNameOwner(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusMethod;
        replySignature = "s"
        signature = "s"
    .end annotation
.end method

.method public abstract Hello()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusMethod;
        replySignature = "s"
    .end annotation
.end method

.method public abstract ListActivatableNames()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusMethod;
        replySignature = "as"
    .end annotation
.end method

.method public abstract ListNames()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusMethod;
        replySignature = "as"
    .end annotation
.end method

.method public abstract ListQueuedOwners(Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusMethod;
        replySignature = "as"
        signature = "s"
    .end annotation
.end method

.method public abstract NameAcquired(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusSignal;
        signature = "s"
    .end annotation
.end method

.method public abstract NameHasOwner(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusMethod;
        replySignature = "b"
        signature = "s"
    .end annotation
.end method

.method public abstract NameLost(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusSignal;
        signature = "s"
    .end annotation
.end method

.method public abstract NameOwnerChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusSignal;
        signature = "sss"
    .end annotation
.end method

.method public abstract PropertiesChanged(Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/alljoyn/bus/Variant;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusSignal;
        signature = "sa{sv}as"
    .end annotation
.end method

.method public abstract ReleaseName(Ljava/lang/String;)Lorg/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusMethod;
        replySignature = "u"
        signature = "s"
    .end annotation
.end method

.method public abstract ReloadConfig()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusMethod;
    .end annotation
.end method

.method public abstract RemoveMatch(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusMethod;
        signature = "s"
    .end annotation
.end method

.method public abstract RequestName(Ljava/lang/String;I)Lorg/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusMethod;
        replySignature = "u"
        signature = "su"
    .end annotation
.end method

.method public abstract StartServiceByName(Ljava/lang/String;I)Lorg/alljoyn/bus/ifaces/DBusProxyObj$StartServiceByNameResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusMethod;
        replySignature = "u"
        signature = "su"
    .end annotation
.end method

.method public abstract UpdateActivationEnvironment(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .annotation runtime Lorg/alljoyn/bus/annotation/BusMethod;
        signature = "a{ss}"
    .end annotation
.end method

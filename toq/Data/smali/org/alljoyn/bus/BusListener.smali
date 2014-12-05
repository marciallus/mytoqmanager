.class public Lorg/alljoyn/bus/BusListener;
.super Ljava/lang/Object;
.source "BusListener.java"


# instance fields
.field private handle:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/alljoyn/bus/BusListener;->handle:J

    .line 63
    invoke-direct {p0}, Lorg/alljoyn/bus/BusListener;->create()V

    .line 64
    return-void
.end method

.method private native create()V
.end method

.method private native destroy()V
.end method


# virtual methods
.method public busDisconnected()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public busStopping()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 71
    :try_start_0
    invoke-direct {p0}, Lorg/alljoyn/bus/BusListener;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 75
    return-void

    .line 73
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public foundAdvertisedName(Ljava/lang/String;SLjava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public listenerRegistered(Lorg/alljoyn/bus/BusAttachment;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public listenerUnregistered()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public lostAdvertisedName(Ljava/lang/String;SLjava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public nameOwnerChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public propertyChanged(Ljava/lang/String;Lorg/alljoyn/bus/Variant;)V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

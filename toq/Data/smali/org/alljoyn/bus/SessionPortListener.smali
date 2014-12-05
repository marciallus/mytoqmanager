.class public Lorg/alljoyn/bus/SessionPortListener;
.super Ljava/lang/Object;
.source "SessionPortListener.java"


# instance fields
.field private handle:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/alljoyn/bus/SessionPortListener;->handle:J

    .line 64
    invoke-direct {p0}, Lorg/alljoyn/bus/SessionPortListener;->create()V

    .line 65
    return-void
.end method

.method private native create()V
.end method

.method private native destroy()V
.end method


# virtual methods
.method public acceptSessionJoiner(SLjava/lang/String;Lorg/alljoyn/bus/SessionOpts;)Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 72
    :try_start_0
    invoke-direct {p0}, Lorg/alljoyn/bus/SessionPortListener;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 76
    return-void

    .line 74
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public sessionJoined(SILjava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

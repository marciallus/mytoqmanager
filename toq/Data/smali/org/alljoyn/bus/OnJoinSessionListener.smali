.class public Lorg/alljoyn/bus/OnJoinSessionListener;
.super Ljava/lang/Object;
.source "OnJoinSessionListener.java"


# instance fields
.field private handle:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/alljoyn/bus/OnJoinSessionListener;->handle:J

    .line 63
    invoke-direct {p0}, Lorg/alljoyn/bus/OnJoinSessionListener;->create()V

    .line 64
    return-void
.end method

.method private native create()V
.end method

.method private native destroy()V
.end method


# virtual methods
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
    invoke-direct {p0}, Lorg/alljoyn/bus/OnJoinSessionListener;->destroy()V
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

.method public onJoinSession(Lorg/alljoyn/bus/Status;ILorg/alljoyn/bus/SessionOpts;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

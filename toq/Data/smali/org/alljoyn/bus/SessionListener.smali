.class public Lorg/alljoyn/bus/SessionListener;
.super Ljava/lang/Object;
.source "SessionListener.java"


# static fields
.field public static final ALLJOYN_SESSIONLOST_INVALID:I = 0x0

.field public static final ALLJOYN_SESSIONLOST_LINK_TIMEOUT:I = 0x4

.field public static final ALLJOYN_SESSIONLOST_REASON_OTHER:I = 0x5

.field public static final ALLJOYN_SESSIONLOST_REMOTE_END_CLOSED_ABRUPTLY:I = 0x2

.field public static final ALLJOYN_SESSIONLOST_REMOTE_END_LEFT_SESSION:I = 0x1

.field public static final ALLJOYN_SESSIONLOST_REMOVED_BY_BINDER:I = 0x3


# instance fields
.field private handle:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/alljoyn/bus/SessionListener;->handle:J

    .line 63
    invoke-direct {p0}, Lorg/alljoyn/bus/SessionListener;->create()V

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
    invoke-direct {p0}, Lorg/alljoyn/bus/SessionListener;->destroy()V
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

.method public sessionLost(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    return-void
.end method

.method public sessionLost(II)V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public sessionMemberAdded(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public sessionMemberRemoved(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

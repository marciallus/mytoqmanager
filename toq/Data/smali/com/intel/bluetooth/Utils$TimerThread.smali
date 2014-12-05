.class Lcom/intel/bluetooth/Utils$TimerThread;
.super Ljava/lang/Thread;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/bluetooth/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimerThread"
.end annotation


# instance fields
.field delay:J

.field run:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(JLjava/lang/Runnable;)V
    .locals 0
    .param p1, "delay"    # J
    .param p3, "run"    # Ljava/lang/Runnable;

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 264
    iput-wide p1, p0, Lcom/intel/bluetooth/Utils$TimerThread;->delay:J

    .line 265
    iput-object p3, p0, Lcom/intel/bluetooth/Utils$TimerThread;->run:Ljava/lang/Runnable;

    .line 266
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 270
    :try_start_0
    iget-wide v0, p0, Lcom/intel/bluetooth/Utils$TimerThread;->delay:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 271
    iget-object v0, p0, Lcom/intel/bluetooth/Utils$TimerThread;->run:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.class Lcom/intel/bluetooth/IBMJ9Helper;
.super Ljava/lang/Object;
.source "IBMJ9Helper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addShutdownClass(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "hook"    # Ljava/lang/Runnable;

    .prologue
    .line 46
    return-void
.end method

.method static declared-synchronized loadLibrary(Ljava/lang/String;)V
    .locals 1
    .param p0, "libname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    const-class v0, Lcom/intel/bluetooth/IBMJ9Helper;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

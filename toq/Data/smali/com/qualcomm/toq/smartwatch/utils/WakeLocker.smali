.class public abstract Lcom/qualcomm/toq/smartwatch/utils/WakeLocker;
.super Ljava/lang/Object;
.source "WakeLocker.java"


# static fields
.field private static wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquire(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    sget-object v1, Lcom/qualcomm/toq/smartwatch/utils/WakeLocker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 15
    sget-object v1, Lcom/qualcomm/toq/smartwatch/utils/WakeLocker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 17
    :cond_0
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 18
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "WakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/qualcomm/toq/smartwatch/utils/WakeLocker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 21
    sget-object v1, Lcom/qualcomm/toq/smartwatch/utils/WakeLocker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 22
    return-void
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/qualcomm/toq/smartwatch/utils/WakeLocker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 26
    sget-object v0, Lcom/qualcomm/toq/smartwatch/utils/WakeLocker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 27
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/utils/WakeLocker;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 28
    return-void
.end method

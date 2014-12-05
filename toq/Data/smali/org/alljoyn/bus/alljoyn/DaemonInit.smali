.class public Lorg/alljoyn/bus/alljoyn/DaemonInit;
.super Ljava/lang/Object;
.source "DaemonInit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DaemonInit"

.field public static receiver:Landroid/content/BroadcastReceiver;

.field private static sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PrepareDaemon(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 58
    const-string v0, "DaemonInit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/bus/alljoyn/DaemonInit;->sContext:Landroid/content/Context;

    .line 61
    const-string v0, "DaemonInit"

    const-string v1, "Saved application context"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 69
    :cond_0
    sget-object v0, Lorg/alljoyn/bus/alljoyn/DaemonInit;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 71
    :try_start_0
    const-string v0, "org.alljoyn.bus.proximity.ScanResultsReceiver"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 72
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lorg/alljoyn/bus/alljoyn/DaemonInit;->sContext:Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    sput-object v0, Lorg/alljoyn/bus/alljoyn/DaemonInit;->receiver:Landroid/content/BroadcastReceiver;

    .line 73
    sget-object v0, Lorg/alljoyn/bus/alljoyn/DaemonInit;->sContext:Landroid/content/Context;

    sget-object v1, Lorg/alljoyn/bus/alljoyn/DaemonInit;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    const-string v0, "DaemonInit"

    const-string v1, "Registered scan results receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_1
    :goto_0
    return v4

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const-string v0, "DaemonInit"

    const-string v1, "Scan results receiver not found, proximity support disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lorg/alljoyn/bus/alljoyn/DaemonInit;->sContext:Landroid/content/Context;

    return-object v0
.end method

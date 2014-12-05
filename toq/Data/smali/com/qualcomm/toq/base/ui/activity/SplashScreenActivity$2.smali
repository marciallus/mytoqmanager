.class Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2;
.super Ljava/lang/Object;
.source "SplashScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 67
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0a0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "TCP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    invoke-static {}, Lcom/qualcomm/toq/base/utils/Utils;->showBrowserNotInstalledToast()V

    .line 72
    sget-boolean v2, Lcom/qualcomm/toq/smartwatch/service/PHubService;->isPHubServiceRunning:Z

    if-nez v2, :cond_3

    .line 74
    const-string v2, "SplashScreenActivity"

    const-string v3, "Starting PhubService"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/qualcomm/toq/base/utils/Utils;->isEulaAgreementAccepted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/qualcomm/toq/smartwatch/service/PHubService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;

    invoke-virtual {v2, v1}, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 84
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 85
    .local v0, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 86
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 88
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isWDBonded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    sget-boolean v2, Lcom/qualcomm/toq/smartwatch/service/PHubService;->isPHubServiceRunning:Z

    if-nez v2, :cond_4

    .line 91
    const-string v2, "SplashScreenActivity"

    const-string v3, "Starting PhubService"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/qualcomm/toq/base/utils/Utils;->isEulaAgreementAccepted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/qualcomm/toq/smartwatch/service/PHubService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;

    invoke-virtual {v2, v1}, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 108
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 112
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2$1;

    invoke-direct {v3, p0}, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2$1;-><init>(Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2;)V

    invoke-virtual {v2, v3}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 136
    return-void

    .line 81
    .end local v0    # "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_3
    const-string v2, "SplashScreenActivity"

    const-string v3, "PhubService is already running"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    .restart local v0    # "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_4
    const-string v2, "SplashScreenActivity"

    const-string v3, "PhubService is already running"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 105
    :cond_5
    const-string v2, "SplashScreenActivity"

    const-string v3, "BT adapter is null or BT is OFF"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

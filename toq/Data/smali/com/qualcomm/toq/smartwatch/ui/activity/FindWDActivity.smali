.class public Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;
.super Landroid/app/Activity;
.source "FindWDActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FindWDActivity"


# instance fields
.field btReceiver:Landroid/content/BroadcastReceiver;

.field private mFindWDTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;->mFindWDTextView:Landroid/widget/TextView;

    .line 182
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;->btReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;->cancelFindWDReq()V

    return-void
.end method

.method private cancelFindWDReq()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->getSystemController()Lcom/qualcomm/toq/smartwatch/controller/SystemController;

    move-result-object v0

    .line 224
    .local v0, "sysObj":Lcom/qualcomm/toq/smartwatch/controller/SystemController;
    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->sendCancelFindWDReq()V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    const-string v1, "FindWDActivity"

    const-string v2, "SystemController.getSystemController() is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 138
    const-string v0, "FindWDActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 152
    const-string v1, "FindWDActivity"

    const-string v2, "onBackPressed() called"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 156
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;->cancelFindWDReq()V

    .line 157
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;->btReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 158
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FindWDActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;->requestWindowFeature(I)Z

    .line 60
    invoke-static {p0}, Lcom/qualcomm/toq/smartwatch/utils/WakeLocker;->acquire(Landroid/content/Context;)V

    .line 62
    const v2, 0x7f03002b

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;->setContentView(I)V

    .line 64
    const v2, 0x7f0901ad

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;->mFindWDTextView:Landroid/widget/TextView;

    .line 65
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;->mFindWDTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;->mFindWDTextView:Landroid/widget/TextView;

    const-string v3, "Finding WD Device\nPlease click Cancel Button\nto stop Finding"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_BLUETOOTH_NOT_ENABLED:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "btIntentFiler":Landroid/content/IntentFilter;
    if-eqz v0, :cond_1

    .line 74
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FOUND_WD_REQUEST:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CONNECTION_STATE_CHANGE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;->btReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    :cond_1
    const v2, 0x7f0901ae

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 85
    .local v1, "dismissButton":Landroid/widget/Button;
    new-instance v2, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity$1;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/WakeLocker;->release()V

    .line 113
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;->setFinishOnTouchOutside(Z)V

    .line 114
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 170
    const-string v0, "FindWDActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 174
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 120
    const-string v0, "FindWDActivity"

    const-string v1, "FindWDActivity is started"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 127
    const-string v0, "FindWDActivity"

    const-string v1, "FindWDActivity is stopped"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.class public Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;
.super Landroid/app/Activity;
.source "FindPhoneActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FindPhoneActivity"


# instance fields
.field btReceiver:Landroid/content/BroadcastReceiver;

.field private isCancelInitiated:Z

.field private mAndroidUtils:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->mAndroidUtils:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->isCancelInitiated:Z

    .line 264
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->btReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;)Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->mAndroidUtils:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    return-object v0
.end method

.method static synthetic access$102(Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->isCancelInitiated:Z

    return p1
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->resetFindPhoneFlags()V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->foundPhoneReq(Ljava/lang/String;)V

    return-void
.end method

.method private foundPhoneReq(Ljava/lang/String;)V
    .locals 5
    .param p1, "resultDesription"    # Ljava/lang/String;

    .prologue
    .line 375
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->getSystemController()Lcom/qualcomm/toq/smartwatch/controller/SystemController;

    move-result-object v2

    .line 376
    .local v2, "sysObj":Lcom/qualcomm/toq/smartwatch/controller/SystemController;
    if-eqz v2, :cond_0

    .line 378
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 379
    .local v1, "jObj":Lorg/json/JSONObject;
    invoke-virtual {v2, v1}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->sendFoundPhoneReq(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    .end local v1    # "jObj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "FindPhoneActivity"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 387
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const-string v3, "FindPhoneActivity"

    const-string v4, "SystemController.getSystemController() is null"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private phoneRingStatus()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 347
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getPhoneStateListener(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCurrentCallState()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 352
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetFindPhoneFlags()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 361
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->getSystemController()Lcom/qualcomm/toq/smartwatch/controller/SystemController;

    move-result-object v1

    iput-boolean v4, v1, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->mFindPhoneCancel:Z

    .line 362
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->getSystemController()Lcom/qualcomm/toq/smartwatch/controller/SystemController;

    move-result-object v1

    iput-boolean v4, v1, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->bFindPhoneReqOn:Z

    .line 363
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 365
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 366
    const-string v1, "FindPhoneActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting Alarm volume to old state:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mDeviceAlarmVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const/4 v1, 0x4

    sget v2, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->mDeviceAlarmVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 372
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 196
    const-string v0, "FindPhoneActivity"

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

    .line 201
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 211
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 212
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->mAndroidUtils:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->stopMediaPlayer()V

    .line 213
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->isCancelInitiated:Z

    .line 215
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 217
    .local v1, "jsonFindReq":Lorg/json/JSONObject;
    :try_start_1
    const-string v2, "result"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 219
    const-string v2, "description"

    const-string v3, "Found Phone"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 224
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->resetFindPhoneFlags()V

    .line 225
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->foundPhoneReq(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 233
    .end local v1    # "jsonFindReq":Lorg/json/JSONObject;
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->btReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 238
    :goto_2
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->finish()V

    .line 240
    return-void

    .line 221
    .restart local v1    # "jsonFindReq":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Lorg/json/JSONException;
    :try_start_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 228
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "jsonFindReq":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "FindPhoneActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 235
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 236
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->requestWindowFeature(I)Z

    .line 59
    iput-boolean v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->isCancelInitiated:Z

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_BLUETOOTH_NOT_ENABLED:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "btIntentFiler":Landroid/content/IntentFilter;
    if-eqz v0, :cond_0

    .line 66
    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CANCEL_FIND_PHONE_REQUEST:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CONNECTION_STATE_CHANGE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CALL_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CALL_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CALL_STATE_OFF_HOOK:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    :cond_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->btReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/WakeLocker;->acquire(Landroid/content/Context;)V

    .line 89
    const v3, 0x7f03002b

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->setContentView(I)V

    .line 91
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->mAndroidUtils:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    if-nez v3, :cond_1

    .line 93
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->mAndroidUtils:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    .line 98
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->mAndroidUtils:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->createMediaPlayer()V

    .line 99
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->mAndroidUtils:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->startMediaPlayer()V

    .line 109
    const v3, 0x7f0901ae

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 110
    .local v1, "dismissButton":Landroid/widget/Button;
    if-eqz v1, :cond_2

    .line 111
    new-instance v3, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$1;

    invoke-direct {v3, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    :cond_2
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/WakeLocker;->release()V

    .line 153
    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->setFinishOnTouchOutside(Z)V

    .line 159
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->getSystemController()Lcom/qualcomm/toq/smartwatch/controller/SystemController;

    move-result-object v3

    iget-boolean v3, v3, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->mFindPhoneCancel:Z

    if-eqz v3, :cond_3

    .line 160
    iput-boolean v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->isCancelInitiated:Z

    .line 161
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CANCEL_FIND_PHONE_REQUEST:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->mAndroidUtils:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->stopMediaPlayer()V

    .line 163
    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 164
    const-string v3, "FindPhoneActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The broadcast is sent with the action"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CANCEL_FIND_PHONE_REQUEST:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 173
    const-string v0, "FindPhoneActivity"

    const-string v1, "FindPhoneActivity is started"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getPhoneStateListener(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCurrentCallState()I

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->mAndroidUtils:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->resumeMediaPlayer()V

    .line 185
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 244
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 245
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->isCancelInitiated:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->phoneRingStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->mAndroidUtils:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->pauseMediaPlayer()V

    .line 248
    :cond_0
    const-string v0, "FindPhoneActivity"

    const-string v1, "FindPhoneActivity is stopped"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

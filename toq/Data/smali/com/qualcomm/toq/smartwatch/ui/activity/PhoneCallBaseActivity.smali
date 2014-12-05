.class public Lcom/qualcomm/toq/smartwatch/ui/activity/PhoneCallBaseActivity;
.super Landroid/app/Activity;
.source "PhoneCallBaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 18
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 73
    invoke-super/range {p0 .. p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call Rslt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/PhoneCallBaseActivity;->showToastMessage(Ljava/lang/String;Landroid/content/Context;)V

    .line 76
    const/16 v2, 0xc9

    move/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 77
    const-string v2, "Call is about to be ended"

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/PhoneCallBaseActivity;->showToastMessage(Ljava/lang/String;Landroid/content/Context;)V

    .line 80
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getPhoneStateListener(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-result-object v1

    .line 82
    .local v1, "customPhoneStateListener":Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    .line 85
    .local v17, "telphonyManager":Landroid/telephony/TelephonyManager;
    const-string v2, "VoiceCallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneCallBaseActivity: getCallerNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCallerNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->isPhoneOnActiveCall:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCallerNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->isPhoneOnActiveCall:Z

    if-nez v2, :cond_0

    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_0

    .line 108
    const-string v2, "VoiceCallController"

    const-string v3, "PhoneCallBaseActivity Cancel clicked in google Voice dialog!"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getServiceState()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCallerNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getCallerName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const v14, 0x8000

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v15

    invoke-virtual {v15}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v15

    invoke-virtual/range {v1 .. v15}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->sendPhoneStateIndication(IIIIIILjava/lang/String;Ljava/lang/String;IJLjava/lang/String;II)V

    .line 126
    :cond_0
    const-string v2, "Call is ended"

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/PhoneCallBaseActivity;->showToastMessage(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v1    # "customPhoneStateListener":Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;
    .end local v17    # "telphonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PhoneCallBaseActivity;->finish()V

    .line 137
    return-void

    .line 110
    .restart local v1    # "customPhoneStateListener":Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;
    .restart local v17    # "telphonyManager":Landroid/telephony/TelephonyManager;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 129
    .end local v1    # "customPhoneStateListener":Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;
    .end local v17    # "telphonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v16

    .line 131
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    const-string v2, "Exception in ending call"

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/PhoneCallBaseActivity;->showToastMessage(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const-string v4, "VoiceCallController"

    const-string v5, "onCreate is called"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "activityState":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 37
    const-string v4, "activty_state"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PhoneCallBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 40
    .local v2, "intent":Landroid/content/Intent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/qualcomm/toq/base/utils/Constants;->APPLICATION_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".smartwatch.number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, "number":Ljava/lang/String;
    const-string v4, "VoiceCallController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate is called: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "activity sate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    if-eqz v3, :cond_3

    const-string v4, "forced_killed"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 45
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->getVoiceCallController()Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->isNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 46
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, "callIntent":Landroid/content/Intent;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-le v4, v5, :cond_2

    .line 48
    const-string v4, "com.android.telecomm"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 54
    const/16 v4, 0xc9

    invoke-virtual {p0, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 61
    .end local v1    # "callIntent":Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 51
    .restart local v1    # "callIntent":Landroid/content/Intent;
    :cond_2
    const-string v4, "com.android.phone"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 59
    .end local v1    # "callIntent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PhoneCallBaseActivity;->finish()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 160
    const-string v0, "VoiceCallController"

    const-string v1, "PhoneCallBaseActivity onDestroy is called"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 169
    const-string v0, "activty_state"

    const-string v1, "forced_killed"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 67
    const-string v0, "PhoneCallBaseActivity"

    const-string v1, "PhoneCallBaseActivity is started"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 143
    const-string v0, "PhoneCallBaseActivity"

    const-string v1, "PhoneCallBaseActivity is stopped"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public showToastMessage(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    const-string v0, "VoiceCallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneCallBaseActivity call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

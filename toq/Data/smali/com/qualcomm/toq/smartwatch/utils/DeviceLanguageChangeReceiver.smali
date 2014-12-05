.class public Lcom/qualcomm/toq/smartwatch/utils/DeviceLanguageChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeviceLanguageChangeReceiver.java"


# static fields
.field public static final SHARED_PREFS_FILE:Ljava/lang/String; = "phub_prefs_file"

.field private static final TAG:Ljava/lang/String; = "DeviceLanguageChangeReceiver"


# instance fields
.field private mPreference:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0xa

    const/4 v4, 0x0

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "action":Ljava/lang/String;
    const-string v6, "phub_prefs_file"

    invoke-virtual {p1, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/qualcomm/toq/smartwatch/utils/DeviceLanguageChangeReceiver;->mPreference:Landroid/content/SharedPreferences;

    .line 31
    const-string v6, "DeviceLanguageChangeReceiver"

    const-string v7, "OnReceive Called"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 35
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getAPKVariant()Ljava/lang/String;

    move-result-object v6

    const-string v7, "release"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 43
    const-string v6, "DeviceLanguageChangeReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Action : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/utils/DeviceLanguageChangeReceiver;->mPreference:Landroid/content/SharedPreferences;

    const-string v7, "language_setting_auto_button_checked"

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 48
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "deviceLanguage":Ljava/lang/String;
    const-string v6, "DeviceLanguageChangeReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "device Language "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getWDSupportedLanguages()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 53
    .local v3, "index":I
    const-string v6, "DeviceLanguageChangeReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Index of Language: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/utils/DeviceLanguageChangeReceiver;->mPreference:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 57
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v6, -0x1

    if-eq v3, v6, :cond_3

    .line 59
    const-string v6, "locale_key"

    invoke-interface {v2, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;->getUserSettingsController()Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;

    move-result-object v6

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;->sendUserSettingsToWD(Landroid/content/Context;)V

    .line 76
    .end local v1    # "deviceLanguage":Ljava/lang/String;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "index":I
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->updateToqLanguage()V

    .line 78
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;->getInstance()Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;

    move-result-object v5

    .line 82
    .local v5, "toqNotificationManager":Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;
    const-string v6, "com.qualcomm.toq.smartwatch.action.TOQ_NOTIFICATION_ON_CLICK"

    invoke-virtual {v5, v6, v10}, Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;->isToqNotificationVisible(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "com.qualcomm.toq.smartwatch.action.TOQ_NOTIFICATION_ON_DELETE"

    invoke-virtual {v5, v6, v10}, Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;->isToqNotificationVisible(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    .line 87
    .local v4, "isNotificationVisible":Z
    :cond_1
    if-eqz v4, :cond_2

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v6

    if-nez v6, :cond_2

    .line 90
    const-string v6, "DeviceLanguageChangeReceiver"

    const-string v7, "BT disconnection notification is visible"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;->showWatchBTDisconnectNotification()V

    .line 95
    .end local v4    # "isNotificationVisible":Z
    .end local v5    # "toqNotificationManager":Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;
    :cond_2
    return-void

    .line 64
    .restart local v1    # "deviceLanguage":Ljava/lang/String;
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "index":I
    :cond_3
    const-string v6, "locale_key"

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/utils/DeviceLanguageChangeReceiver;->mPreference:Landroid/content/SharedPreferences;

    const-string v8, "default_locale_key"

    const-string v9, "en_US"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

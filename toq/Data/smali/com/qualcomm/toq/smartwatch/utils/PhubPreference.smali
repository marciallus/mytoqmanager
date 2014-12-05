.class public Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
.super Ljava/lang/Object;
.source "PhubPreference.java"


# static fields
.field public static final ADVANCED_SETTINGS_CLOCK_TIMEOUT_KEY:Ljava/lang/String; = "clock_timeout_key"

.field public static final ADVANCED_SETTINGS_DOUBLE_TAP_SPEED_KEY:Ljava/lang/String; = "double_tap_speed_key"

.field public static final ADVANCED_SETTINGS_LIGHT_DURATION_KEY:Ljava/lang/String; = "light_duration_key"

.field public static final ADVANCED_SETTINGS_PRIVATE_NOTIFICATION_KEY:Ljava/lang/String; = "private_notification_key"

.field public static final ADVANCED_SETTINGS_VIBRATING_ALERTS_KEY:Ljava/lang/String; = "vibrating_alerts_key"

.field public static final DEFAULT_LOCALE_KEY:Ljava/lang/String; = "default_locale_key"

.field public static final ICON_THEME_KEY:Ljava/lang/String; = "icon_theme_key_v1"

.field public static final LOCALE_KEY:Ljava/lang/String; = "locale_key"

.field public static final LOCALE_LIST_KEY:Ljava/lang/String; = "locale_list_key"

.field public static final MUSIC_PLAYER_SELECTION_KEY:Ljava/lang/String; = "music_player_selection_key"

.field public static final PHONE_CALL_HISTORY_KEY:Ljava/lang/String; = "CALL_HISTORY"

.field public static final PHONE_INCOMING_KEY:Ljava/lang/String; = "INCOMING_VAL"

.field public static final PHONE_VIBE_REPEAT_KEY:Ljava/lang/String; = "VIBE_COUNT"

.field public static final PHONE_VIBE_STYLE_KEY:Ljava/lang/String; = "VIBE_STYLE"

.field public static final PHONE_VOICE_MAIL_KEY:Ljava/lang/String; = "VOICE_MAIL"

.field public static final SHARED_PREFS_FILE:Ljava/lang/String; = "phub_prefs_file"

.field public static final SMS_INBOX_CURSOR_COUNT:Ljava/lang/String; = "sms_inbox_cursor_count_key"

.field private static final TAG:Ljava/lang/String; = "PhubPreference"

.field public static final TEXT_MESSAGE_DISP_KEY:Ljava/lang/String; = "DISP_MSG"

.field public static final TEXT_MESSAGE_INCOMING_KEY:Ljava/lang/String; = "INCOMING_MSG"

.field public static final TEXT_MESSAGE_VIBE_COUNT_KEY:Ljava/lang/String; = "VIBE_COUNT"

.field public static final TEXT_MESSAGE_VIBE_STYLE_KEY:Ljava/lang/String; = "VIBE_STYLE"

.field public static final TOQ_TALK_SETTINGS_KEY:Ljava/lang/String; = "toq_talk_on_off_key"

.field public static final USAGE_LOG_DELAY:Ljava/lang/String; = "usage_log_delay"

.field public static final USAGE_LOG_LAST_UPLOAD_STATUS:Ljava/lang/String; = "usage_log_last_upload_status"

.field public static final USAGE_LOG_LAST_UPLOAD_TIME:Ljava/lang/String; = "usage_log_last_upload_time"

.field public static final USAGE_LOG_SETTINGS_KEY:Ljava/lang/String; = "usage_log_on_off_key"

.field private static instance:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;


# instance fields
.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->instance:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->prefs:Landroid/content/SharedPreferences;

    .line 44
    const-string v0, "phub_prefs_file"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->prefs:Landroid/content/SharedPreferences;

    .line 46
    return-void
.end method

.method public static getPhubPreference(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    sget-object v0, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->instance:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->instance:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    .line 52
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->instance:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    return-object v0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 74
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->prefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 78
    .end local p2    # "defValue":Z
    :cond_0
    return p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->prefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 69
    .end local p2    # "defValue":I
    :cond_0
    return p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 83
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->prefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    .line 87
    .end local p2    # "defValue":J
    :cond_0
    return-wide p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->prefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 60
    .end local p2    # "defValue":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 109
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->prefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 111
    .local v0, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 112
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    .end local v0    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 100
    const-string v1, "PhubPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prefs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->prefs:Landroid/content/SharedPreferences;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->prefs:Landroid/content/SharedPreferences;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->prefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 103
    .local v0, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 104
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    .end local v0    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 117
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->prefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    .local v0, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    .end local v0    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->prefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 94
    .local v0, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    .end local v0    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

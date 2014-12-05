.class public Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;
.super Lcom/qualcomm/toq/base/controller/DefaultController;
.source "UserSettingsController.java"


# static fields
.field private static final DEFAULT_ACTIVITY_GOAL:I = 0x2710

.field private static final DEFAULT_ACTIVITY_MONITORING_MODE:Z = false

.field private static final DEFAULT_CLOCK_TIMEOUT:I = 0x14

.field private static final DEFAULT_DOUBLE_TAP_SPEED:I = 0x1f4

.field private static final DEFAULT_ICON_THEME:Ljava/lang/String; = "Optima"

.field private static final DEFAULT_LIGHT_DURATION:I = 0xa

.field private static final DEFAULT_PRIVACY_MODE:Z = false

.field private static final DEFAULT_PROFILE:Ljava/lang/String; = "Default"

.field private static final DEFAULT_TOQ_TALK__MODE:Z = true

.field private static final DEFAULT_VIBRATION_MODE:Z = true

.field private static final TAG:Ljava/lang/String; = "UserSettingsController"

.field public static final appName:Ljava/lang/String; = "USER_SETTINGS_CONTROLLER"

.field private static mInstance:Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/qualcomm/toq/base/controller/DefaultController;-><init>()V

    return-void
.end method

.method public static getUserSettingsController()Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;

    .line 51
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;

    return-object v0
.end method

.method private prepareReminderTimes()Lorg/json/JSONArray;
    .locals 11

    .prologue
    .line 215
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 217
    .local v0, "activityAlarms":Lorg/json/JSONArray;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "activity_monitoring_pref"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 220
    .local v5, "prefs":Landroid/content/SharedPreferences;
    if-eqz v5, :cond_0

    .line 222
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v7

    .line 224
    .local v7, "utils":Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    const-string v8, "activity_goal_reminder_times_set_key"

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getDefaultReminderTimes()Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {v9}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 226
    .local v2, "alarmTimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Calendar;>;"
    if-eqz v2, :cond_0

    .line 227
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Calendar;

    .line 228
    .local v6, "time":Ljava/util/Calendar;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 229
    .local v1, "alarm":Lorg/json/JSONObject;
    const-string v8, "Minute"

    const/16 v9, 0xc

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 230
    const-string v8, "Hour"

    const/16 v9, 0xb

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 231
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 235
    .end local v1    # "alarm":Lorg/json/JSONObject;
    .end local v2    # "alarmTimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Calendar;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "time":Ljava/util/Calendar;
    .end local v7    # "utils":Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    :catch_0
    move-exception v3

    .line 236
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 245
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_1
    return-object v0

    .line 238
    :catch_1
    move-exception v3

    .line 239
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 241
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 242
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static setController(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 210
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;

    .line 211
    return-void
.end method

.method private synchUserSettings(Ljava/lang/String;)I
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 167
    const/4 v1, -0x1

    .line 168
    .local v1, "userSettingsPushStatus":I
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v0

    .line 169
    .local v0, "fmsController":Lcom/qualcomm/toq/smartwatch/controller/FMSController;
    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v5, "/settings/usersettings.jsn"

    const/4 v6, -0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsSyncFile(ILjava/io/InputStream;Ljava/lang/String;I)I

    move-result v1

    .line 177
    :cond_0
    return v1
.end method


# virtual methods
.method public createUserSettingsJson(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 25
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    new-instance v19, Lorg/json/JSONObject;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONObject;-><init>()V

    .line 65
    .local v19, "userSettingsDataStore":Lorg/json/JSONObject;
    if-eqz p1, :cond_1

    .line 66
    invoke-static/range {p1 .. p1}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getPhubPreference(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v12

    .line 67
    .local v12, "phubPreference":Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v22

    const-string v23, "activity_monitoring_pref"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 71
    .local v14, "prefs":Landroid/content/SharedPreferences;
    if-eqz v12, :cond_1

    .line 73
    const-string v16, "Default"

    .line 75
    .local v16, "profileName":Ljava/lang/String;
    const-string v22, "clock_timeout_key"

    const/16 v23, 0x14

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 77
    .local v10, "inactivityTimeout":I
    const-string v22, "double_tap_speed_key"

    const/16 v23, 0x1f4

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 79
    .local v8, "frontLightTapTime":I
    const-string v22, "light_duration_key"

    const/16 v23, 0xa

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 81
    .local v7, "frontLightOnTime":I
    const-string v22, "icon_theme_key_v1"

    const-string v23, "Optima"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 86
    .local v9, "iconTheme":Ljava/lang/String;
    const-string v22, "private_notification_key"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 88
    .local v15, "privacyOn":Z
    const-string v22, "activity_monitoring_settings_toggle_key"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 90
    .local v4, "activityMonitoringOn":Z
    const-string v22, "toq_talk_on_off_key"

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 92
    .local v18, "speechReplyOn":Z
    const-string v22, "activity_monitoring_goal_points_key"

    const/16 v23, 0x2710

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 94
    .local v3, "activityGoal":I
    const-string v22, "activity_goal_reminder_switch_state_key"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 97
    .local v5, "activityReminderOn":Z
    new-instance v20, Lorg/json/JSONArray;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONArray;-><init>()V

    .line 99
    .local v20, "userSettingsRecords":Lorg/json/JSONArray;
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 101
    .local v17, "recordPayload":Lorg/json/JSONObject;
    :try_start_0
    const-string v22, "ProfileName"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string v22, "InactivityTimeout"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    const-string v22, "FrontLightTapTime"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 104
    const-string v22, "FrontLightOnTime"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 105
    const-string v22, "IconTheme"

    invoke-static {v9}, Lcom/qualcomm/toq/base/utils/Utils;->getIconStyleValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v22, "locale_key"

    const-string v23, "default_locale_key"

    const-string v24, "en_US"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 113
    .local v11, "locale":Ljava/lang/String;
    const-string v22, "Locale"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 120
    .local v13, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v13, :cond_0

    .line 122
    iget-object v0, v13, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 123
    .local v21, "versionName":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v22

    if-eqz v22, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getAPKVariant()Ljava/lang/String;

    move-result-object v22

    const-string v23, "release"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 131
    if-eqz v21, :cond_0

    const-string v22, "1.5.2"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 133
    const-string v22, "Locale"

    const-string v23, "en_US"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    .end local v13    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v21    # "versionName":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_2
    const-string v22, "PrivacyOn"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 144
    const-string v22, "SpeechReplyOn"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 145
    const-string v22, "IsActivityOn"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 146
    const-string v22, "ActivityGoal"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 147
    const-string v22, "ActivityAlarms"

    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;->prepareReminderTimes()Lorg/json/JSONArray;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    const-string v22, "IsActivityRemindersOn"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 150
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 151
    const-string v22, "Profiles"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    .end local v3    # "activityGoal":I
    .end local v4    # "activityMonitoringOn":Z
    .end local v5    # "activityReminderOn":Z
    .end local v7    # "frontLightOnTime":I
    .end local v8    # "frontLightTapTime":I
    .end local v9    # "iconTheme":Ljava/lang/String;
    .end local v10    # "inactivityTimeout":I
    .end local v11    # "locale":Ljava/lang/String;
    .end local v12    # "phubPreference":Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
    .end local v14    # "prefs":Landroid/content/SharedPreferences;
    .end local v15    # "privacyOn":Z
    .end local v16    # "profileName":Ljava/lang/String;
    .end local v17    # "recordPayload":Lorg/json/JSONObject;
    .end local v18    # "speechReplyOn":Z
    .end local v20    # "userSettingsRecords":Lorg/json/JSONArray;
    :cond_1
    :goto_1
    return-object v19

    .line 139
    .restart local v3    # "activityGoal":I
    .restart local v4    # "activityMonitoringOn":Z
    .restart local v5    # "activityReminderOn":Z
    .restart local v7    # "frontLightOnTime":I
    .restart local v8    # "frontLightTapTime":I
    .restart local v9    # "iconTheme":Ljava/lang/String;
    .restart local v10    # "inactivityTimeout":I
    .restart local v11    # "locale":Ljava/lang/String;
    .restart local v12    # "phubPreference":Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
    .restart local v14    # "prefs":Landroid/content/SharedPreferences;
    .restart local v15    # "privacyOn":Z
    .restart local v16    # "profileName":Ljava/lang/String;
    .restart local v17    # "recordPayload":Lorg/json/JSONObject;
    .restart local v18    # "speechReplyOn":Z
    .restart local v20    # "userSettingsRecords":Lorg/json/JSONArray;
    :catch_0
    move-exception v6

    .line 140
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 153
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11    # "locale":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 154
    .local v6, "e":Lorg/json/JSONException;
    const-string v22, "UserSettingsController"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "JSONException occured while creating JSON for User Settings"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public handleConnHandlerMessage(IILjava/lang/Object;II)V
    .locals 0
    .param p1, "appID"    # I
    .param p2, "command"    # I
    .param p3, "payload"    # Ljava/lang/Object;
    .param p4, "transactionId"    # I
    .param p5, "endpointType"    # I

    .prologue
    .line 59
    return-void
.end method

.method public sendControllerMessageData(IIILjava/lang/Object;II)V
    .locals 2
    .param p1, "endPointType"    # I
    .param p2, "srcAdd"    # I
    .param p3, "destAdd"    # I
    .param p4, "payloadData"    # Ljava/lang/Object;
    .param p5, "messageType"    # I
    .param p6, "transactionId"    # I

    .prologue
    .line 184
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 186
    invoke-super/range {p0 .. p6}, Lcom/qualcomm/toq/base/controller/DefaultController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 193
    :cond_0
    return-void
.end method

.method public sendUserSettingsToWD(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;->createUserSettingsJson(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 199
    .local v0, "clockSettingsDataStore":Lorg/json/JSONObject;
    const-string v2, "UserSettingsController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendUserSettingsToWD() called: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;->synchUserSettings(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v0    # "clockSettingsDataStore":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

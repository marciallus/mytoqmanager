.class public Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;
.super Lcom/qualcomm/toq/base/controller/DefaultController;
.source "ClockSettingsController.java"


# static fields
.field private static final PRISM_CLOCK_JSON_NAME:Ljava/lang/String; = "com.qualcomm.qce.prismclock/Prism"

.field private static final STOCK_CLOCK_JSON_NAME:Ljava/lang/String; = "Stock"

.field private static final TAG:Ljava/lang/String; = "ClockSettingsController"

.field private static final TILE_CLOCK_JSON_NAME:Ljava/lang/String; = "com.qualcomm.qce.tileclock/Tile"

.field public static final appName:Ljava/lang/String; = "CLOCKSETTINGS_CONTROLLER"

.field private static mInstance:Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/qualcomm/toq/base/controller/DefaultController;-><init>()V

    return-void
.end method

.method public static getClockSettingsController()Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;

    .line 40
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;

    return-object v0
.end method

.method private pushClockAppsZipToWD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "appZipName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 335
    const-string v4, "/packages/%s/app.zip"

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "destPathName":Ljava/lang/String;
    :try_start_0
    const-string v4, "ClockSettingsController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Clock Asset file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 343
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockUtils()Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockAppInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 346
    .local v2, "inputStream":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 347
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v2, v0, v6}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsSyncFile(ILjava/io/InputStream;Ljava/lang/String;I)I

    move-result v3

    .line 353
    .local v3, "ret":I
    const-string v4, "ClockSettingsController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Clock app.zip push status for the file name ==>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockUtils()Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->deleteClockAppZip(Ljava/lang/String;)V

    .line 369
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "ret":I
    :cond_0
    :goto_0
    return-void

    .line 361
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    :cond_1
    const-string v4, "ClockSettingsController"

    const-string v5, "pushClockAppsZipToWD : InputStream is NULL"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 366
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "ClockSettingsController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to copy asset file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " details: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setController(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 372
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;

    .line 373
    return-void
.end method

.method private synchClockSettings(Ljava/lang/String;)I
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 224
    const/4 v0, -0x1

    .line 225
    .local v0, "clockSettingsPushStatus":I
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v1

    .line 226
    .local v1, "fmsController":Lcom/qualcomm/toq/smartwatch/controller/FMSController;
    if-eqz v1, :cond_0

    .line 227
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v5, "/settings/clock_list.jsn"

    const/4 v6, -0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsSyncFile(ILjava/io/InputStream;Ljava/lang/String;I)I

    move-result v0

    .line 234
    :cond_0
    return v0
.end method


# virtual methods
.method public createClockSettingsJson(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 24
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 55
    .local v8, "clockSettingsDataStore":Lorg/json/JSONObject;
    const-string v21, "clock_settings_pref"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 57
    .local v19, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockUtils()Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockNamesArray()[Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, "clockNamesArray":[Ljava/lang/String;
    if-eqz v19, :cond_3

    :try_start_0
    const-string v21, "clock_settings_types"

    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {v22 .. v22}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_3

    .line 64
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 66
    .local v10, "clockSettingsRecords":Lorg/json/JSONArray;
    const-string v21, "clock_settings_types"

    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {v22 .. v22}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 69
    .local v9, "clockSettingsHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_b

    .line 71
    const-string v21, "ClockSettingsController"

    const-string v22, "Clock hashmap is empty"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    array-length v0, v7

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v15, v0, :cond_9

    .line 75
    aget-object v6, v7, v15

    .line 78
    .local v6, "clockName":Ljava/lang/String;
    const-string v21, "Bold"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    const-string v21, "Weather Grid"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    const-string v21, "Prism"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    const-string v21, "Agenda"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    const-string v21, "Typographic"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 86
    :cond_0
    const-string v21, "Weather Grid"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 88
    const-string v21, "ambient__pref"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 91
    .local v3, "ambientPrefs":Landroid/content/SharedPreferences;
    const-string v21, "WeatherCurrentCityUpdate"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 94
    .local v17, "isCurrentCityUpdateEnabled":Z
    if-eqz v17, :cond_1

    .line 95
    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    .line 96
    .local v20, "recordPayload":Lorg/json/JSONObject;
    const-string v21, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 100
    .end local v20    # "recordPayload":Lorg/json/JSONObject;
    :cond_1
    const-string v21, "Weather Grid"

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .end local v3    # "ambientPrefs":Landroid/content/SharedPreferences;
    .end local v17    # "isCurrentCityUpdateEnabled":Z
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 106
    :cond_2
    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    .line 108
    .restart local v20    # "recordPayload":Lorg/json/JSONObject;
    aget-object v21, v7, v15

    const-string v22, "Stocks"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 109
    const-string v21, "name"

    const-string v22, "Stock"

    invoke-virtual/range {v20 .. v22}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    :goto_2
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 131
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 216
    .end local v6    # "clockName":Ljava/lang/String;
    .end local v9    # "clockSettingsHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v10    # "clockSettingsRecords":Lorg/json/JSONArray;
    .end local v15    # "i":I
    .end local v20    # "recordPayload":Lorg/json/JSONObject;
    :catch_0
    move-exception v13

    .line 217
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    const-string v21, "ClockSettingsController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    return-object v8

    .line 112
    .restart local v6    # "clockName":Ljava/lang/String;
    .restart local v9    # "clockSettingsHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v10    # "clockSettingsRecords":Lorg/json/JSONArray;
    .restart local v15    # "i":I
    .restart local v20    # "recordPayload":Lorg/json/JSONObject;
    :cond_4
    :try_start_1
    aget-object v21, v7, v15

    const-string v22, "Prism"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 113
    const-string v21, "name"

    const-string v22, "com.qualcomm.qce.prismclock/Prism"

    invoke-virtual/range {v20 .. v22}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 116
    :cond_5
    aget-object v21, v7, v15

    const-string v22, "Tile"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 117
    const-string v21, "name"

    const-string v22, "com.qualcomm.qce.tileclock/Tile"

    invoke-virtual/range {v20 .. v22}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 120
    :cond_6
    aget-object v21, v7, v15

    const-string v22, "Degrees"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 121
    const-string v21, "name"

    const-string v22, "com.qualcomm.qce.degreesclock/Degrees"

    invoke-virtual/range {v20 .. v22}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 125
    :cond_7
    const-string v21, "name"

    aget-object v22, v7, v15

    invoke-virtual/range {v20 .. v22}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 137
    .end local v20    # "recordPayload":Lorg/json/JSONObject;
    :cond_8
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 142
    .end local v6    # "clockName":Ljava/lang/String;
    :cond_9
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 144
    .local v14, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v14, :cond_a

    .line 145
    const-string v21, "clock_settings_types"

    invoke-static {v9}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 147
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 212
    .end local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v15    # "i":I
    :cond_a
    const-string v21, "Clocks"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 153
    :cond_b
    const-string v21, "Sweater"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 154
    const-string v21, "Sweater"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_c
    const-string v21, "2014"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 159
    const-string v21, "2014"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :cond_d
    invoke-static {v9}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->isAtleastOneClockSeleted(Ljava/util/HashMap;)Z

    move-result v21

    if-nez v21, :cond_e

    .line 167
    const-string v21, "Bold"

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 170
    .restart local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v14, :cond_e

    .line 171
    const-string v21, "clock_settings_types"

    invoke-static {v9}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 173
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 176
    .end local v14    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_e
    const-string v11, ""

    .line 177
    .local v11, "clockType":Ljava/lang/String;
    const-string v5, ""

    .line 179
    .local v5, "clockJsonName":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockUtils()Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;

    move-result-object v12

    .line 180
    .local v12, "clockUtils":Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;
    move-object v4, v7

    .local v4, "arr$":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_4
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    aget-object v6, v4, v16

    .line 181
    .restart local v6    # "clockName":Ljava/lang/String;
    invoke-virtual {v9, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_10

    .line 184
    new-instance v20, Lorg/json/JSONObject;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONObject;-><init>()V

    .line 185
    .restart local v20    # "recordPayload":Lorg/json/JSONObject;
    const-string v21, "clockType"

    move-object/from16 v0, v21

    invoke-virtual {v12, v6, v0}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 191
    const-string v21, "Stocks"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 192
    const-string v21, "name"

    const-string v22, "Stock"

    invoke-virtual/range {v20 .. v22}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    :cond_f
    :goto_5
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 180
    .end local v20    # "recordPayload":Lorg/json/JSONObject;
    :cond_10
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 194
    .restart local v20    # "recordPayload":Lorg/json/JSONObject;
    :cond_11
    if-eqz v11, :cond_12

    const-string v21, "dynamic"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 197
    const-string v21, "jsonName"

    move-object/from16 v0, v21

    invoke-virtual {v12, v6, v0}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 199
    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_f

    .line 201
    const-string v21, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    .line 206
    :cond_12
    const-string v21, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method public handleConnHandlerMessage(IILjava/lang/Object;II)V
    .locals 0
    .param p1, "appID"    # I
    .param p2, "command"    # I
    .param p3, "payload"    # Ljava/lang/Object;
    .param p4, "transactionId"    # I
    .param p5, "endpointType"    # I

    .prologue
    .line 48
    return-void
.end method

.method public isClockSelected(Ljava/lang/String;)Z
    .locals 6
    .param p1, "clockName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 378
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clock_settings_pref"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 382
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 383
    const-string v3, "clock_settings_types"

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 386
    .local v0, "clockHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 388
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 389
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 401
    .end local v0    # "clockHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_0
    :goto_0
    return v2

    .line 392
    .restart local v0    # "clockHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_1
    const-string v3, "Ambient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AmbientIntentService "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not selected"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendClockAppsZipToWD(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 274
    const-string v12, "clock_settings_pref"

    const/4 v13, 0x0

    invoke-virtual {p1, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 276
    .local v10, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockUtils()Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockNamesArray()[Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "clockNamesArray":[Ljava/lang/String;
    if-eqz v10, :cond_1

    :try_start_0
    const-string v12, "clock_settings_types"

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 287
    const-string v12, "clock_settings_types"

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 290
    .local v3, "clockSettingsHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v1, v0, v7

    .line 292
    .local v1, "clockName":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 295
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockUtils()Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;

    move-result-object v12

    const-string v13, "packageName"

    invoke-virtual {v12, v1, v13}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 299
    .local v9, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockUtils()Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;

    move-result-object v12

    const-string v13, "appZipName"

    invoke-virtual {v12, v1, v13}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 303
    .local v11, "zipFileName":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockUtils()Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;

    move-result-object v12

    const-string v13, "assetFileName"

    invoke-virtual {v12, v1, v13}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 307
    .local v6, "fileName":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockUtils()Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;

    move-result-object v12

    const-string v13, "clockType"

    invoke-virtual {v12, v1, v13}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 311
    .local v4, "clockType":Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    if-eqz v4, :cond_0

    const-string v12, "dynamic"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 314
    invoke-direct {p0, v6, v11, v9}, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->pushClockAppsZipToWD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 290
    .end local v4    # "clockType":Ljava/lang/String;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v11    # "zipFileName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 325
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "clockName":Ljava/lang/String;
    .end local v3    # "clockSettingsHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :catch_0
    move-exception v5

    .line 326
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 331
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    :goto_1
    return-void

    .line 328
    :catch_1
    move-exception v5

    .line 329
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public sendClockSettingsToWD(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->createClockSettingsJson(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 256
    .local v0, "clockSettingsDataStore":Lorg/json/JSONObject;
    const-string v2, "ClockSettingsController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendClockSettingsToWD() called: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->synchClockSettings(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v0    # "clockSettingsDataStore":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v1

    .line 262
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
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
    .line 241
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 243
    invoke-super/range {p0 .. p6}, Lcom/qualcomm/toq/base/controller/DefaultController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 250
    :cond_0
    return-void
.end method

.class public Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;
.super Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
.source "WeatherController.java"


# static fields
.field private static inst:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;


# instance fields
.field private ambientData:Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;

.field private currentCityInfo:Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

.field private imageCreator:Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;-><init>()V

    .line 47
    const-string v0, "Ambient"

    const-string v1, "WeatherController"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFactory;->getInstance()Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFactory;

    move-result-object v0

    const-string v1, "weather"

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientDataFactory;->getAmbientData(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->ambientData:Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;

    .line 50
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;

    const-string v1, "weather"

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->imageCreator:Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;

    .line 51
    const-string v0, "WeatherController--"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->TAG:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private ambientWeatherImageReSyncIntent()V
    .locals 4

    .prologue
    .line 121
    const-string v1, "Ambient"

    const-string v2, "WeatherController-ambientWeatherImageReSyncIntent"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget v1, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->DATA_SYNC_IN_PROGRESS:I

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->setState(I)V

    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "Ambient"

    const-string v2, "ambientWeatherImageReSyncIntent called"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v1, "service_task"

    const-string v2, "weather_resync_images_to_wd"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v1, "requstNumber"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 132
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 133
    return-void
.end method

.method private ambientWeatherImageSyncIntent()V
    .locals 4

    .prologue
    .line 104
    const-string v1, "Ambient"

    const-string v2, "WeatherController-ambientWeatherImageSyncIntent"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget v1, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->DATA_SYNC_IN_PROGRESS:I

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->setState(I)V

    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "Ambient"

    const-string v2, "ambientWeatherImageSyncIntent called"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "service_task"

    const-string v2, "sync_weather_data_to_wd"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v1, "requstNumber"

    iget-wide v2, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->fileSyncReuestNumber:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 114
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 115
    return-void
.end method

.method private ambientWeatherTaskIntent()V
    .locals 3

    .prologue
    .line 89
    sget v1, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->DATA_FETCH_INPROGRESS:I

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->setState(I)V

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "Ambient"

    const-string v2, "WeatherController-ambientWeatherTaskIntent"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "service_task"

    const-string v2, "weather_polling_task"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 98
    return-void
.end method

.method private currentCityFetchDataIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "city"    # Ljava/lang/String;
    .param p3, "adminArea"    # Ljava/lang/String;

    .prologue
    .line 141
    const-string v1, "Ambient"

    const-string v2, "WeatherController-currentCityFetchDataIntent"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "Ambient"

    const-string v2, "currentCityFetchDataIntent called"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "service_task"

    const-string v2, "currentcity_weather_polling_task"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v1, "requstNumber"

    iget-wide v2, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->fileSyncReuestNumber:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 151
    const-string v1, "city_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v1, "city_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v1, "city_area"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 155
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->inst:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    if-nez v0, :cond_1

    .line 56
    const-class v1, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->inst:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->inst:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    .line 60
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_1
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->inst:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private startClocksTask()V
    .locals 7

    .prologue
    .line 162
    const-string v4, "Ambient"

    const-string v5, "WeatherListActivity startClocksTask"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockUtils()Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;

    move-result-object v4

    const-string v5, "World Time"

    const-string v6, "packageName"

    invoke-virtual {v4, v5, v6}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, "worldClockPackageName":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v0, "clockIntent":Landroid/content/Intent;
    const-string v4, "service_task"

    const-string v5, "generate_world_clock_file"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v4, "clock_type"

    const-string v5, "World Time"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v4, "clock_package_name"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 178
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockUtils()Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;

    move-result-object v4

    const-string v5, "Degrees"

    const-string v6, "packageName"

    invoke-virtual {v4, v5, v6}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "degreeClockPackageName":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .local v1, "clockIntent2":Landroid/content/Intent;
    const-string v4, "service_task"

    const-string v5, "generate_world_clock_file"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v4, "clock_type"

    const-string v5, "Degrees"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v4, "clock_package_name"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 192
    const-string v4, "Ambient"

    const-string v5, "WeatherListActivity AmbientIntentService intnet called for world clock"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method private updateWeatherDestinationLocation(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "destiantionLocation"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 849
    move-object v0, p1

    .line 850
    .local v0, "temp":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 852
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 856
    :cond_0
    return-object p1
.end method


# virtual methods
.method public cleanLocalAmbientFiles()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 629
    const-string v10, "Ambient"

    const-string v11, "WeatherController-cleanLocalAmbientFiles"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "ambient__pref"

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 636
    .local v6, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    const-string v10, "WeatherCitiesBackGround"

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v11}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 638
    .local v8, "weatherAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .local v7, "sourceFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v8, :cond_2

    .line 640
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_2

    .line 641
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 642
    .local v9, "weatherInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    const-string v10, "Ambient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WeatherController-cleanLocalAmbientFiles city="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " key="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v10, "Ambient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WeatherController-cleanLocalAmbientFiles src loc city="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageSourceLocation()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageSourceLocation()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 650
    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageSourceLocation()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    :cond_0
    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getSourceLocation()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 653
    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getSourceLocation()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 657
    .end local v3    # "i":I
    .end local v9    # "weatherInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    :cond_2
    const-string v10, "WeatherCurrentCityUpdate"

    const/4 v11, 0x0

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 659
    .local v4, "isCurrentCityUpdateEnabled":Z
    if-eqz v4, :cond_5

    .line 660
    const-string v10, "WeatherCurrentCity"

    new-instance v11, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    invoke-direct {v11}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;-><init>()V

    invoke-static {v11}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 662
    .local v1, "currentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    if-eqz v1, :cond_5

    .line 663
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageSourceLocation()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 664
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageSourceLocation()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    :cond_3
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getSourceLocation()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 667
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getSourceLocation()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    :cond_4
    move-object v0, v1

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->getClockZipSourceLocation()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 670
    check-cast v1, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    .end local v1    # "currentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->getClockZipSourceLocation()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    :cond_5
    const-string v10, "weather"

    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 675
    .local v5, "parentDirectoryPath":Ljava/io/File;
    const-string v10, "Ambient"

    const-string v11, "weatherController-cleanLocalAmbientFiles Deleting Weather files"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    if-eqz v5, :cond_6

    .line 678
    invoke-virtual {p0, v5, v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->deleteFiles(Ljava/io/File;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 688
    .end local v4    # "isCurrentCityUpdateEnabled":Z
    .end local v5    # "parentDirectoryPath":Ljava/io/File;
    .end local v7    # "sourceFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "weatherAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :cond_6
    :goto_1
    return-void

    .line 682
    :catch_0
    move-exception v2

    .line 683
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 685
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 686
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public currentCityDisabled()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 909
    const-string v7, "Ambient"

    const-string v8, "WeatherController-currentCityDisabled"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->startClocksTask()V

    .line 915
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "ambient__pref"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 920
    .local v5, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getWDState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    .line 921
    const-string v7, "WeatherCurrentCity"

    new-instance v8, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    invoke-direct {v8}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;-><init>()V

    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 923
    .local v2, "currentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    instance-of v7, v2, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    if-eqz v7, :cond_3

    .line 927
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageSourceLocation()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 928
    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageSourceLocation()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 929
    .local v1, "appImageFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 930
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 934
    .end local v1    # "appImageFile":Ljava/io/File;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->getClockZipSourceLocation()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 935
    new-instance v6, Ljava/io/File;

    move-object v0, v2

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->getClockZipSourceLocation()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 936
    .local v6, "zipFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 937
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 941
    .end local v6    # "zipFile":Ljava/io/File;
    :cond_1
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    move-object v0, v2

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->getClockZipDestinationLocation()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 944
    const-string v7, "Ambient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WeatherController-currentCityDisabled Removing File  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    const-string v7, "Ambient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WeatherController-currentCityDisabled Removing File  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->removeFile(Ljava/lang/String;)V

    .line 952
    move-object v0, v2

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->getClockZipDestinationLocation()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->removeFile(Ljava/lang/String;)V

    .line 956
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setCityName(Ljava/lang/String;)V

    .line 957
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setKey(Ljava/lang/String;)V

    .line 958
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setMaxTemp(I)V

    .line 959
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setMinTemp(I)V

    .line 960
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setHourTemp(I)V

    .line 961
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setWeatherCondition(Ljava/lang/String;)V

    .line 962
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    .line 963
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setAppImageDestinationLocation(Ljava/lang/String;)V

    .line 964
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setAppImageSourceLocation(Ljava/lang/String;)V

    .line 965
    const/4 v7, -0x1

    invoke-virtual {v2, v7}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setIconNumber(I)V

    .line 967
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 968
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "WeatherCurrentCity"

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 970
    const-string v7, "WeatherCurrentCityUpdate"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 972
    const-string v7, "current_city_last_update_time"

    const-wide/16 v8, 0x0

    invoke-interface {v4, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 973
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 992
    .end local v2    # "currentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    :goto_0
    return-void

    .line 981
    :catch_0
    move-exception v3

    .line 982
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 984
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 985
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 987
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v3

    .line 988
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "Ambient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WeatherController-currentCityDisabled exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doAmbientPoll(Z)V
    .locals 26
    .param p1, "isTimerPoll"    # Z

    .prologue
    .line 416
    const-string v21, "Ambient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "WeatherController-doAmbientPoll isTimerPoll:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->isTimerPolling:Z

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->getState()I

    move-result v21

    sget v22, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->IDLE_SATE:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->resetPreferenceAmbientInfoList()V

    .line 428
    const-wide/16 v21, 0x0

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->fileSyncReuestNumber:J

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->mState:Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;

    move-object/from16 v21, v0

    sget v22, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->IDLE_SATE:I

    sget v23, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->IDLE_SATE:I

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    invoke-virtual/range {v21 .. v24}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->setState(IJ)V

    .line 434
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->updateWeatherCopyFile()V

    .line 436
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "ambient__pref"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 439
    .local v19, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 440
    .local v6, "currentTime":Ljava/util/Calendar;
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 441
    .local v7, "currentTimeMilli":J
    const-string v21, "weather_last_update_time"

    const-wide/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    .line 446
    .local v15, "lastFetchWeather":J
    const-string v21, "current_city_last_update_time"

    const-wide/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 449
    .local v13, "lastFetchCurrentCity":J
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getWDState()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 451
    const-string v21, "Ambient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "WeatherController-doAmbientPoll Current time : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    new-instance v23, Ljava/util/Date;

    move-object/from16 v0, v23

    invoke-direct {v0, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " Weather last Fetch: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    new-instance v23, Ljava/util/Date;

    move-object/from16 v0, v23

    move-wide v1, v15

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v21, "AmbientController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "WeatherController-doAmbientPoll  Current time : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    new-instance v23, Ljava/util/Date;

    move-object/from16 v0, v23

    invoke-direct {v0, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "  Weather last Fetch: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    new-instance v23, Ljava/util/Date;

    move-object/from16 v0, v23

    move-wide v1, v15

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    cmp-long v21, v15, v7

    if-gtz v21, :cond_1

    cmp-long v21, v13, v7

    if-lez v21, :cond_2

    .line 465
    :cond_1
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 466
    .local v11, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v21, "Ambient"

    const-string v22, "WeatherController-doAmbientPoll Last Fetch Greater than current time resetting it for Weather"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v21, "AmbientController"

    const-string v22, "WeatherController-doAmbientPoll Last Fetch Greater than current time resetting it for Weather!!!"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v21, "weather_last_update_time"

    const-wide/16 v22, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-interface {v11, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 471
    const-string v21, "current_city_last_update_time"

    const-wide/16 v22, 0x0

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-interface {v11, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 472
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 476
    .end local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v21, "WeatherCurrentCityUpdate"

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 478
    .local v12, "isCurrentCityUpdateEnabled":Z
    const-string v21, "weather_timer_interval"

    const-wide/32 v22, 0x2932e0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    .line 480
    .local v17, "pollingInterval":J
    const-string v21, "cc_weather_timer_interval"

    const-wide/32 v22, 0x2932e0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 483
    .local v4, "ccPollingInterval":J
    const-string v21, "Ambient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "isCurrentCityUpdateEnabled ="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v21, "Ambient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "currentTimeMilli ="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " lastFetchCurrentCity="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " ccPollingInterval="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v22, "Ambient"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " cc polling check="

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    if-eqz v12, :cond_7

    sub-long v24, v7, v13

    cmp-long v21, v24, v4

    if-lez v21, :cond_7

    const/16 v21, 0x1

    :goto_0
    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :try_start_0
    const-string v21, "WeatherCitiesBackGround"

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v22 .. v22}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    .line 503
    .local v20, "weatherAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->isTimerPolling:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    sub-long v21, v7, v15

    const-wide/32 v23, 0x1d4c0

    sub-long v23, v17, v23

    cmp-long v21, v21, v23

    if-lez v21, :cond_3

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-gtz v21, :cond_5

    :cond_3
    if-eqz v12, :cond_4

    sub-long v21, v7, v13

    cmp-long v21, v21, v4

    if-gtz v21, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->isTimerPolling:Z

    move/from16 v21, v0

    if-nez v21, :cond_8

    .line 508
    :cond_5
    const-string v21, "Ambient"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "WeatherController-doAmbientPoll -Weather polling happening at : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    new-instance v23, Ljava/util/Date;

    invoke-direct/range {v23 .. v23}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v21, "AmbientController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "WeatherController-doAmbientPoll polling happening at : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    new-instance v23, Ljava/util/Date;

    invoke-direct/range {v23 .. v23}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->resetPreferenceAmbientInfoList()V

    .line 516
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->prefAmbientInfoList:Ljava/util/ArrayList;

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->ambientData:Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->prefAmbientInfoList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;->updateAmbientDataList(Ljava/util/ArrayList;)V

    .line 519
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->ambientWeatherTaskIntent()V

    .line 523
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/qualcomm/toq/base/utils/Utils;->isNetworkConnectivityAvailable(Landroid/content/Context;)Z

    move-result v9

    .line 524
    .local v9, "dataConnectivity":Z
    const-string v21, "Ambient"

    const-string v22, "StockController-doAmbientPoll there is no data connection registring for network change listener"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v21, "Ambient"

    const-string v22, "StockController-doAmbientPoll there is no data connection registring for network change listener"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    if-nez v9, :cond_6

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->registerNetWrokChangeReceiver()V

    .line 553
    .end local v4    # "ccPollingInterval":J
    .end local v9    # "dataConnectivity":Z
    .end local v12    # "isCurrentCityUpdateEnabled":Z
    .end local v17    # "pollingInterval":J
    .end local v20    # "weatherAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :cond_6
    :goto_1
    return-void

    .line 491
    .restart local v4    # "ccPollingInterval":J
    .restart local v12    # "isCurrentCityUpdateEnabled":Z
    .restart local v17    # "pollingInterval":J
    :cond_7
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 539
    .restart local v20    # "weatherAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :cond_8
    const-string v21, "Ambient"

    const-string v22, "WeatherController-doAmbientPoll Weather polling not happening now waiting"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 545
    .end local v20    # "weatherAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :catch_0
    move-exception v10

    .line 546
    .local v10, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v10}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 548
    .end local v10    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v10

    .line 549
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public getAmbientData()Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->ambientData:Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;

    return-object v0
.end method

.method public getAutocompleteResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 1001
    const/4 v7, 0x0

    .line 1003
    .local v7, "weatherURL":Ljava/lang/String;
    const-string v4, ""

    .line 1004
    .local v4, "formattedString":Ljava/lang/String;
    invoke-static {p1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->isStringContainsChineseCharacters(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1005
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    const v10, 0x7f0a004d

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1016
    :goto_0
    :try_start_0
    const-string v8, "UTF-8"

    invoke-static {p1, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1017
    .local v2, "encodedData":Ljava/lang/String;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v8, v10

    const/4 v10, 0x1

    const-string v11, "9fc4b35acecc407e95143c14579a2d84"

    aput-object v11, v8, v10

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1024
    .end local v2    # "encodedData":Ljava/lang/String;
    :goto_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 1025
    .local v3, "executorService":Ljava/util/concurrent/ExecutorService;
    const/4 v6, 0x0

    .line 1028
    .local v6, "responseData":Ljava/lang/String;
    :try_start_1
    new-instance v8, Lcom/qualcomm/toq/smartwatch/utils/DataServer;

    invoke-direct {v8, v7}, Lcom/qualcomm/toq/smartwatch/utils/DataServer;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v5

    .line 1030
    .local v5, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v6, v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1049
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .end local v5    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Ljava/lang/String;>;"
    :goto_2
    move-object v8, v6

    .line 1052
    :goto_3
    return-object v8

    .line 1009
    .end local v3    # "executorService":Ljava/util/concurrent/ExecutorService;
    .end local v6    # "responseData":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    const v10, 0x7f0a004c

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1021
    :catch_0
    move-exception v1

    .line 1022
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 1032
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v3    # "executorService":Ljava/util/concurrent/ExecutorService;
    .restart local v6    # "responseData":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 1033
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v8, "Ambient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WeatherListActivity InterruptedException in setAmbientDisplaysWithInfo "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1049
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    move-object v8, v9

    goto :goto_3

    .line 1039
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v1

    .line 1040
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_3
    const-string v8, "Ambient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WeatherListActivity ExecutionException in setAmbientDisplaysWithInfo "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1049
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    move-object v8, v9

    goto :goto_3

    .line 1045
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_3
    move-exception v1

    .line 1046
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1049
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v8
.end method

.method public getCurrentCityInfoObj()Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->currentCityInfo:Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    return-object v0
.end method

.method public getImageCreator()Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->imageCreator:Lcom/qualcomm/toq/smartwatch/ambient/AmbientImageCreator;

    return-object v0
.end method

.method public onAmbientCurrentCitySyncCompleted(I)V
    .locals 5
    .param p1, "errorCode"    # I

    .prologue
    .line 317
    const-string v2, "Ambient"

    const-string v3, "WeatherController-onAmbientCurrentCitySyncComplete"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ambient__pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 322
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "WeatherCurrentCityUpdate"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 325
    .local v0, "isCurrentCityEnabled":Z
    if-nez v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->currentCityDisabled()V

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->startClocksTask()V

    .line 330
    sget v2, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->DATA_SYNC_COMPLETED:I

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->setState(I)V

    .line 331
    sget v2, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->IDLE_SATE:I

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->setState(I)V

    .line 332
    return-void
.end method

.method public onAmbientImageReSyncComplete(I)V
    .locals 6
    .param p1, "error_code"    # I

    .prologue
    const/4 v5, 0x0

    .line 273
    const-string v2, "Ambient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WeatherController-onAmbientImageReSyncComplete error_code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ambient__pref"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 281
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "WeatherCurrentCityUpdate"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 284
    .local v0, "currentCityState":Z
    const-string v2, "Ambient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WeatherController-onAmbientImageReSyncComplete  isCurrentCityUpdateEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    if-nez v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->currentCityDisabled()V

    .line 291
    :cond_0
    const-string v2, "Ambient"

    const-string v3, "WeatherController-onAmbientImageReSyncComplete  About to start timer sync for the world clock"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->startClocksTask()V

    .line 296
    sget v2, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->DATA_SYNC_COMPLETED:I

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->setState(I)V

    .line 297
    sget v2, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->IDLE_SATE:I

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->setState(I)V

    .line 298
    return-void
.end method

.method public onAmbientImageSyncComplete(I)V
    .locals 6
    .param p1, "error_code"    # I

    .prologue
    const/4 v5, 0x0

    .line 229
    const-string v2, "Ambient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WeatherController-onAmbientImageSyncComplete error_code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->getState()I

    move-result v2

    sget v3, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->DATA_SYNC_IN_PROGRESS:I

    if-eq v2, v3, :cond_0

    .line 236
    const-string v2, "Ambient"

    const-string v3, "WeatherController-onAmbientImageSyncComplete Ignore this is call back either state is not proper or request and response nubmer are different."

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ambient__pref"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 245
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "WeatherCurrentCityUpdate"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 248
    .local v0, "currentCityState":Z
    const-string v2, "Ambient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WeatherController-onAmbientImageSyncComplete  isCurrentCityUpdateEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    if-eqz v0, :cond_1

    .line 254
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->synchCurrentCityImage(Landroid/content/Context;)Z

    goto :goto_0

    .line 259
    :cond_1
    const-string v2, "Ambient"

    const-string v3, "WeatherController-onAmbientImageSyncComplete  About to start timer sync for the world clock"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->startClocksTask()V

    .line 264
    sget v2, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->DATA_SYNC_COMPLETED:I

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->setState(I)V

    .line 265
    sget v2, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->IDLE_SATE:I

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->setState(I)V

    goto :goto_0
.end method

.method public onAmbientInfoUpdated(ILjava/util/ArrayList;)V
    .locals 3
    .param p1, "error_code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p2, "ambientInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    const-string v0, "Ambient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherController-onAmbientInfoUpdated error_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->getState()I

    move-result v0

    sget v1, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->DATA_FETCH_INPROGRESS:I

    if-eq v0, v1, :cond_0

    .line 210
    const-string v0, "Ambient"

    const-string v1, "WeatherController-onAmbientInfoUpdated Ignore this is call back either state is not proper or request and response nubmer are different."

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_0
    return-void

    .line 215
    :cond_0
    sget v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->DATA_FETCH_COMPLETED:I

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->setState(I)V

    .line 218
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->ambientData:Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;

    invoke-virtual {v0, p2}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;->updateAmbientDataList(Ljava/util/ArrayList;)V

    .line 219
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->ambientWeatherImageSyncIntent()V

    goto :goto_0
.end method

.method public onCurrencityNameReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "city"    # Ljava/lang/String;
    .param p3, "adminArea"    # Ljava/lang/String;

    .prologue
    .line 306
    const-string v0, "Ambient"

    const-string v1, "WeatherController-onCurrencityNameReceived"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v0, "Ambient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "city="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AdminAreay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->currentCityFetchDataIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public onNetworkConnected()V
    .locals 19

    .prologue
    .line 340
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v15

    invoke-virtual {v15}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getWDState()I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 342
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 343
    .local v4, "currentTime":Ljava/util/Calendar;
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 345
    .local v5, "currentTimeMilli":J
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v15

    invoke-virtual {v15}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 346
    .local v3, "ctx":Landroid/content/Context;
    const-string v15, "ambient__pref"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 348
    .local v14, "prefs":Landroid/content/SharedPreferences;
    const-string v15, "weather_last_update_time"

    const-wide/16 v16, 0x0

    invoke-interface/range {v14 .. v17}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 352
    .local v10, "lastFetchWeather":J
    const-string v15, "current_city_last_update_time"

    const-wide/16 v16, 0x0

    invoke-interface/range {v14 .. v17}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 355
    .local v8, "lastFetchCurrentCity":J
    const-string v15, "weather_timer_interval"

    const-wide/32 v16, 0x2932e0

    invoke-interface/range {v14 .. v17}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 357
    .local v12, "pollingInterval":J
    const-string v15, "cc_weather_timer_interval"

    const-wide/32 v16, 0x2932e0

    invoke-interface/range {v14 .. v17}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 360
    .local v1, "ccPollingInterval":J
    const-string v15, "WeatherCurrentCityUpdate"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 363
    .local v7, "isCurrentCityUpdateEnabled":Z
    const-string v15, "Ambient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "onReceive (lastFetchCurrentCity)="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v15, "Ambient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "onReceive (currentTimeMilli)="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v15, "Ambient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "onReceive (lastFetchWeather)="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v15, "Ambient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "onReceive (currentTimeMilli - lastFetchWeather)="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sub-long v17, v5, v10

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v15, "Ambient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "onReceive (currentTimeMilli - lastFetchCurrentCity)="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sub-long v17, v5, v8

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-wide/16 v15, 0x0

    cmp-long v15, v10, v15

    if-lez v15, :cond_0

    sub-long v15, v5, v10

    cmp-long v15, v15, v12

    if-gtz v15, :cond_1

    :cond_0
    if-eqz v7, :cond_2

    sub-long v15, v5, v8

    cmp-long v15, v15, v1

    if-lez v15, :cond_2

    const-wide/16 v15, 0x0

    cmp-long v15, v8, v15

    if-lez v15, :cond_2

    .line 387
    :cond_1
    const-string v15, "Ambient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "onReceive Network state changed to connected state, do manual pool"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v15, "AmbientController"

    const-string v16, "onReceive Network connected, Do manual pool"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->processAmbientTask(I)V

    .line 408
    .end local v1    # "ccPollingInterval":J
    .end local v3    # "ctx":Landroid/content/Context;
    .end local v4    # "currentTime":Ljava/util/Calendar;
    .end local v5    # "currentTimeMilli":J
    .end local v7    # "isCurrentCityUpdateEnabled":Z
    .end local v8    # "lastFetchCurrentCity":J
    .end local v10    # "lastFetchWeather":J
    .end local v12    # "pollingInterval":J
    .end local v14    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 396
    .restart local v1    # "ccPollingInterval":J
    .restart local v3    # "ctx":Landroid/content/Context;
    .restart local v4    # "currentTime":Ljava/util/Calendar;
    .restart local v5    # "currentTimeMilli":J
    .restart local v7    # "isCurrentCityUpdateEnabled":Z
    .restart local v8    # "lastFetchCurrentCity":J
    .restart local v10    # "lastFetchWeather":J
    .restart local v12    # "pollingInterval":J
    .restart local v14    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    const-string v15, "Ambient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "onReceive Network connected but weather IDLE threshold value not reached."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 403
    .end local v1    # "ccPollingInterval":J
    .end local v3    # "ctx":Landroid/content/Context;
    .end local v4    # "currentTime":Ljava/util/Calendar;
    .end local v5    # "currentTimeMilli":J
    .end local v7    # "isCurrentCityUpdateEnabled":Z
    .end local v8    # "lastFetchCurrentCity":J
    .end local v10    # "lastFetchWeather":J
    .end local v12    # "pollingInterval":J
    .end local v14    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    const-string v15, "Ambient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "onReceive network chaqnge listener onReceive WD is not connected "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public parseAutocompleteResponse(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "responseData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1063
    .local p2, "resultNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "cityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherDataParser;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherDataParser;-><init>()V

    .line 1064
    .local v0, "weatherParser":Lcom/qualcomm/toq/smartwatch/ambient/WeatherDataParser;
    invoke-virtual {v0, p1, p2, p3}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherDataParser;->parseAutocompleteResponse(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 1067
    const/4 v0, 0x0

    .line 1068
    return-void
.end method

.method public reSetController()V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->inst:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->inst:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->cancelPollingTimer()V

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->inst:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    .line 71
    :cond_0
    return-void
.end method

.method public reSyncImageFilesWithWd()V
    .locals 5

    .prologue
    .line 568
    sget v2, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->DATA_FETCH_INPROGRESS:I

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->setState(I)V

    .line 569
    sget v2, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->DATA_FETCH_COMPLETED:I

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->setState(I)V

    .line 570
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->updateWeatherCopyFile()V

    .line 571
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ambient__pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 577
    .local v1, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->resetPreferenceAmbientInfoList()V

    .line 578
    const-string v2, "WeatherCitiesBackGround"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->prefAmbientInfoList:Ljava/util/ArrayList;

    .line 581
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->ambientData:Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->prefAmbientInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientData;->updateAmbientDataList(Ljava/util/ArrayList;)V

    .line 583
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->ambientWeatherImageReSyncIntent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :goto_0
    return-void

    .line 585
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 588
    const-string v2, "Ambient"

    const-string v3, "!!!WeatherController-reSyncImageFilesWithWd Exception in Ambient BackGround Sync"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    sget v2, Lcom/qualcomm/toq/smartwatch/ambient/AmbientState;->IDLE_SATE:I

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->setState(I)V

    goto :goto_0
.end method

.method public removeTimeStampFromWD()V
    .locals 6

    .prologue
    .line 596
    const-string v3, "Ambient"

    const-string v4, "weatherController-removeTimeStampFromWD"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v0, "/apps/weather/99.img"

    .line 601
    .local v0, "destPath":Ljava/lang/String;
    const-string v3, "weather"

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientAppImageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 603
    .local v2, "rootDirectory":Ljava/io/File;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 604
    const/4 v1, 0x0

    .line 605
    .local v1, "errorFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    .end local v1    # "errorFile":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "time_Stamp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".img"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 608
    .restart local v1    # "errorFile":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 609
    const-string v3, "Ambient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "weatherController-removeTimeStampFromWD removing time stamp file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->removeFile(Ljava/lang/String;)V

    .line 616
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 617
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 618
    const-string v3, "Ambient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "weatherController-removeTimeStampFromWD deleting time stamp fire"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .end local v1    # "errorFile":Ljava/io/File;
    :cond_1
    return-void
.end method

.method public resetAmbientLastFetchTimeStamp()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 693
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ambient__pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 696
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 697
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "weather_last_update_time"

    invoke-interface {v0, v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 698
    const-string v2, "current_city_last_update_time"

    invoke-interface {v0, v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 699
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 700
    return-void
.end method

.method public sendCurrentCityWeatherImage(Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;Z)V
    .locals 8
    .param p1, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .param p2, "isUpdateTimeStamp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 869
    if-eqz p1, :cond_1

    .line 870
    const-string v5, "Ambient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WeatherController-sendCurrentCityWeatherImage Image created successfully for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    const-string v2, "/ad/weather/1.img"

    .line 875
    .local v2, "destPath":Ljava/lang/String;
    const-string v5, "Ambient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WeatherController-sendCurrentCityWeatherImage setDestinationLocation() 2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    invoke-virtual {p1, v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setDestinationLocation(Ljava/lang/String;)V

    .line 879
    const-string v0, "/apps/weather/1.img"

    .line 881
    .local v0, "appDestPath":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setAppImageDestinationLocation(Ljava/lang/String;)V

    .line 882
    const-string v5, "Ambient"

    const-string v6, "WeatherController-sendCurrentCityWeatherImage Setting Destination location for the Clock images"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, p1

    .line 884
    check-cast v5, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    const-string v6, "/res/apps/ClockThree.zip"

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->setClockZipDestinationLocation(Ljava/lang/String;)V

    .line 885
    move-object v1, p1

    .line 886
    .local v1, "currentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "ambient__pref"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 889
    .local v4, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 890
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "WeatherCurrentCity"

    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 892
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 894
    const-string v5, "weather"

    invoke-virtual {p0, p1, v5}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->syncImages(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;Ljava/lang/String;)V

    .line 895
    const-string v5, "Ambient"

    const-string v6, "AmbientIntentService-sendCurrentCityWeatherImage Pushing Timestamp Image to WD for Weather"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    if-eqz p2, :cond_0

    .line 899
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->updateWeatherAppTimeStamp(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 906
    .end local v0    # "appDestPath":Ljava/lang/String;
    .end local v1    # "currentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v2    # "destPath":Ljava/lang/String;
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 903
    :cond_1
    const-string v5, "Ambient"

    const-string v6, "!!! WeatherController-sendCurrentCityWeatherImage ambientInfo = NULL !!!"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public syncAmbientImages()V
    .locals 2

    .prologue
    .line 557
    const-string v0, "Ambient"

    const-string v1, "WeatherController-syncAmbientImages"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->ambientWeatherImageSyncIntent()V

    .line 560
    return-void
.end method

.method public updateLastFetchWeather(Landroid/content/SharedPreferences;J)V
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "timeInMilli"    # J

    .prologue
    .line 861
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 862
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v1, "weather_last_update_time"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 863
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 864
    return-void
.end method

.method public updateWeatherCopyFile()V
    .locals 18

    .prologue
    .line 707
    const-string v15, "Ambient"

    const-string v16, "WeatherController-updateWeatherCopyFile"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "ambient__pref"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 713
    .local v11, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    const-string v15, "WeatherCitiesBackGround"

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v11, v15, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 716
    .local v12, "weatherAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    const-string v15, "WeatherCities"

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v11, v15, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 718
    .local v13, "weatherAmbientInfosCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v8, v15, :cond_8

    .line 719
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 720
    .local v4, "copyInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v9, v15, :cond_4

    .line 722
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 724
    .local v1, "actualInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    const-string v15, "Ambient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "WeatherController-updateWeatherCopy city Name ="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " copy cityName="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " i="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " j="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getKey()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_6

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getKey()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_6

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getKey()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 738
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getStateName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_0

    const-string v15, "--"

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getStateName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 740
    :cond_0
    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getStateName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setStateName(Ljava/lang/String;)V

    .line 741
    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 742
    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 744
    .local v10, "params":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v15, v10, v15

    invoke-virtual {v1, v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setCityName(Ljava/lang/String;)V

    .line 748
    .end local v10    # "params":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCountryName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_2

    const-string v15, "--"

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCountryName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 750
    :cond_2
    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCountryName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setCountryName(Ljava/lang/String;)V

    .line 752
    :cond_3
    const-string v15, "Ambient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "WeatherController- destination Location: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getStateName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "has  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "and source: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getSourceLocation()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_5

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_5

    .line 763
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v2

    .line 764
    .local v2, "appImageDestLocation":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v3

    .line 765
    .local v3, "clockImageLocation":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->updateWeatherDestinationLocation(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 767
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->updateWeatherDestinationLocation(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 769
    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setAppImageDestinationLocation(Ljava/lang/String;)V

    .line 770
    invoke-virtual {v1, v3}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setDestinationLocation(Ljava/lang/String;)V

    .line 772
    const-string v15, "Ambient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "WeatherController- updated destination location: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " cityName="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 777
    invoke-virtual {v13, v8, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 718
    .end local v1    # "actualInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v2    # "appImageDestLocation":Ljava/lang/String;
    .end local v3    # "clockImageLocation":Ljava/lang/String;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 782
    .restart local v1    # "actualInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    :cond_5
    const-string v15, "Ambient"

    const-string v16, "WeatherController-updateWeatherCopyFile destination location is NULL"

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 788
    :cond_6
    const-string v15, "Ambient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "WeatherController-updateWeatherCopyFile not adding this city actualInfo.getKey():"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getKey()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " copyInfo.getKey():"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getKey()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 838
    .end local v1    # "actualInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v4    # "copyInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v8    # "i":I
    .end local v9    # "j":I
    .end local v12    # "weatherAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .end local v13    # "weatherAmbientInfosCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :catch_0
    move-exception v6

    .line 839
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 845
    .end local v6    # "e":Ljava/io/IOException;
    :cond_7
    :goto_3
    return-void

    .line 797
    .restart local v8    # "i":I
    .restart local v12    # "weatherAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .restart local v13    # "weatherAmbientInfosCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :cond_8
    :try_start_1
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 799
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_2
    const-string v15, "WeatherCitiesBackGround"

    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v7, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 806
    :goto_4
    :try_start_3
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 809
    const-string v15, "WeatherCurrentCityUpdate"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v11, v15, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 812
    .local v5, "currentCityState":Z
    const-string v15, "WeatherCitiesBackGround"

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v16 .. v16}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v11, v15, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 815
    .local v14, "weatherAmbientInfos_del":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    const-string v15, "Ambient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "WeatherController-updateWeatherCopyFile before delete count="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " currentCityState="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    rsub-int/lit8 v15, v15, 0x5

    if-lez v15, :cond_a

    .line 823
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_9

    if-nez v5, :cond_9

    .line 825
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->removeTimeStampFromWD()V

    .line 828
    :cond_9
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    rsub-int/lit8 v15, v15, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->removeFilesFromWd(I)V

    .line 833
    :cond_a
    if-nez v5, :cond_7

    .line 834
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->currentCityDisabled()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 841
    .end local v5    # "currentCityState":Z
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v8    # "i":I
    .end local v12    # "weatherAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .end local v13    # "weatherAmbientInfosCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .end local v14    # "weatherAmbientInfos_del":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :catch_1
    move-exception v6

    .line 842
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v6}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    .line 803
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v8    # "i":I
    .restart local v12    # "weatherAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .restart local v13    # "weatherAmbientInfosCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :catch_2
    move-exception v6

    .line 804
    .local v6, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4
.end method

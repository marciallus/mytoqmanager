.class public Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;
.super Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;
.source "ToqConnectionHandlerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl$ToqHandlerStateListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ToqConnectionHandlerImpl"

.field private static mInstance:Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;


# instance fields
.field private connFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

.field private connManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

.field private context:Landroid/content/Context;

.field private dbAdapter:Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;

.field private mOldStockList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOldWeatheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;-><init>()V

    .line 69
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->connFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    .line 73
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->context:Landroid/content/Context;

    .line 81
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl$ToqHandlerStateListenerImpl;

    invoke-direct {v1, p0, v2}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl$ToqHandlerStateListenerImpl;-><init>(Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl$1;)V

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->addStateListener(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListener;)V

    .line 83
    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->deleteOutStandingWDAmbientFile(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->resetAmbientTimeStamps(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->startSynchingStores()V

    return-void
.end method

.method static synthetic access$400(Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->isFirstTimeConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private createAmbientBackupList(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 660
    if-eqz p1, :cond_0

    .line 662
    :try_start_0
    const-string v4, "ambient__pref"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 664
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "AmbientBackUp"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 666
    .local v2, "isAmbientBackUpDone":Z
    if-nez v2, :cond_0

    .line 668
    const-string v4, "WeatherCitiesBackGround"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->mOldWeatheList:Ljava/util/ArrayList;

    .line 671
    const-string v4, "StockSymbolsBackGround"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->mOldStockList:Ljava/util/ArrayList;

    .line 674
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 675
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "weather_city_backup"

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->mOldWeatheList:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 677
    const-string v4, "stock_symbol_backup"

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->mOldStockList:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 680
    const-string v4, "AmbientBackUp"

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 681
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "isAmbientBackUpDone":Z
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private deleteOutStandingWDAmbientFile(Landroid/content/Context;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 703
    if-eqz p1, :cond_a

    .line 706
    :try_start_0
    const-string v18, "ambient__pref"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 709
    .local v16, "prefs":Landroid/content/SharedPreferences;
    if-eqz v16, :cond_a

    .line 711
    const-string v18, "WeatherCurrentCityUpdate"

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 713
    .local v15, "isCurrentCityUpdateEnabled":Z
    if-nez v15, :cond_2

    .line 714
    const-string v18, "WeatherCurrentCity"

    new-instance v19, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    invoke-direct/range {v19 .. v19}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;-><init>()V

    invoke-static/range {v19 .. v19}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 716
    .local v9, "currentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_2

    instance-of v0, v9, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 734
    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageSourceLocation()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 735
    new-instance v5, Ljava/io/File;

    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageSourceLocation()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 736
    .local v5, "appImageFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 737
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 741
    .end local v5    # "appImageFile":Ljava/io/File;
    :cond_0
    move-object v0, v9

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->getClockZipSourceLocation()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_1

    .line 742
    new-instance v17, Ljava/io/File;

    move-object v0, v9

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->getClockZipSourceLocation()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 743
    .local v17, "zipFile":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 744
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 747
    .end local v17    # "zipFile":Ljava/io/File;
    :cond_1
    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_2

    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_2

    move-object v0, v9

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->getClockZipDestinationLocation()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 750
    const-string v18, "ToqConnectionHandlerImpl"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Removing File  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string v18, "ToqConnectionHandlerImpl"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Removing File  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const-string v18, "weather"

    invoke-static/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v3

    .line 763
    .local v3, "ambientController":Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->removeFile(Ljava/lang/String;)V

    .line 764
    check-cast v9, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    .end local v9    # "currentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;->getClockZipDestinationLocation()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->removeFile(Ljava/lang/String;)V

    .line 769
    .end local v3    # "ambientController":Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
    :cond_2
    const-string v18, "weather_city_backup"

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v19 .. v19}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->mOldWeatheList:Ljava/util/ArrayList;

    .line 772
    const-string v18, "stock_symbol_backup"

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v19 .. v19}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->mOldStockList:Ljava/util/ArrayList;

    .line 776
    if-eqz p1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->mOldStockList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->mOldWeatheList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 779
    const-string v18, "WeatherCities"

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v19 .. v19}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 782
    .local v11, "currentWeatherList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    const-string v18, "StockSymbols"

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v19 .. v19}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 786
    .local v10, "currentStockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    if-eqz v11, :cond_9

    if-eqz v10, :cond_9

    .line 788
    const-string v18, "ToqConnectionHandlerImpl"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Old weather List size : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->mOldWeatheList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "And new size: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->mOldWeatheList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_5

    .line 794
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    .local v14, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->mOldWeatheList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_5

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->mOldWeatheList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 796
    .local v4, "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_4

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_4

    .line 799
    const-string v18, "weather"

    invoke-static/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v3

    .line 800
    .restart local v3    # "ambientController":Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->removeFile(Ljava/lang/String;)V

    .line 808
    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getSourceLocation()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_4

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageSourceLocation()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_4

    .line 810
    new-instance v8, Ljava/io/File;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getSourceLocation()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 811
    .local v8, "clockSourcefile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 812
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 814
    :cond_3
    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getAppImageSourceLocation()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 815
    .local v6, "appSourcefile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 816
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 794
    .end local v3    # "ambientController":Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
    .end local v6    # "appSourcefile":Ljava/io/File;
    .end local v8    # "clockSourcefile":Ljava/io/File;
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 824
    .end local v4    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v14    # "i":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->mOldStockList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_9

    .line 825
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    .restart local v14    # "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->mOldStockList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_9

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->mOldStockList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    .line 827
    .local v4, "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_8

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDarkImageDestinationLocation()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_8

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_8

    .line 831
    const-string v18, "weather"

    invoke-static/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v3

    .line 832
    .restart local v3    # "ambientController":Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getAppImageDestinationLocation()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->removeFile(Ljava/lang/String;)V

    .line 833
    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDarkImageDestinationLocation()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->removeFile(Ljava/lang/String;)V

    .line 834
    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDestinationLocation()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->removeFile(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getSourceLocation()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_8

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getAppImageSourceLocation()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_8

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDarkImageSourceLocation()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_8

    .line 838
    new-instance v13, Ljava/io/File;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getSourceLocation()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 839
    .local v13, "file":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 840
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 842
    :cond_6
    new-instance v13, Ljava/io/File;

    .end local v13    # "file":Ljava/io/File;
    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getDarkImageSourceLocation()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 843
    .restart local v13    # "file":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 844
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 846
    :cond_7
    new-instance v13, Ljava/io/File;

    .end local v13    # "file":Ljava/io/File;
    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getAppImageSourceLocation()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 847
    .restart local v13    # "file":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 848
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 825
    .end local v3    # "ambientController":Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
    .end local v13    # "file":Ljava/io/File;
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 857
    .end local v4    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    .end local v10    # "currentStockList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .end local v11    # "currentWeatherList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .end local v14    # "i":I
    :cond_9
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 858
    .local v7, "cityeditor":Landroid/content/SharedPreferences$Editor;
    const-string v18, "AmbientBackUp"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 859
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 860
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->mOldStockList:Ljava/util/ArrayList;

    .line 861
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->mOldWeatheList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    .end local v7    # "cityeditor":Landroid/content/SharedPreferences$Editor;
    .end local v15    # "isCurrentCityUpdateEnabled":Z
    .end local v16    # "prefs":Landroid/content/SharedPreferences;
    :cond_a
    :goto_2
    return-void

    .line 866
    :catch_0
    move-exception v12

    .line 867
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->mInstance:Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->mInstance:Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    .line 89
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->mInstance:Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    return-object v0
.end method

.method private isConnectedFirstTime(Landroid/content/Context;)Z
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 888
    const-string v2, "first_time_connected_pref"

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 891
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "first_time_connected"

    const-string v3, "true"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 894
    const/4 v1, 0x1

    .line 898
    :cond_0
    return v1
.end method

.method private isFirstTimeConnected(Landroid/content/Context;)Z
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 437
    if-eqz p1, :cond_1

    .line 438
    const-string v3, "first_time_connected_pref"

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 441
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "first_time_connected"

    const-string v4, "true"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 444
    const-string v2, "weather"

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->deleteParentDirectoryContent(Ljava/lang/String;)V

    .line 445
    const-string v2, "stock"

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->deleteParentDirectoryContent(Ljava/lang/String;)V

    .line 446
    const-string v2, "ToqConnectionHandlerImpl"

    const-string v3, "First time connected"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 448
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "first_time_connected"

    const-string v3, "false"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 449
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 450
    const/4 v2, 0x1

    .line 460
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return v2

    .line 453
    .restart local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    const-string v3, "ToqConnectionHandlerImpl"

    const-string v4, "Connected again.."

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 458
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    const-string v3, "ToqConnectionHandlerImpl"

    const-string v4, "Context is null in isFirstTimeConnected"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetAmbientTimeStamps(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 873
    if-eqz p1, :cond_1

    .line 874
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->isConnectedFirstTime(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientUtils;->resetAmbientLastFetchTimeStamp()V

    .line 885
    :goto_0
    return-void

    .line 878
    :cond_0
    const-string v0, "ToqConnectionHandlerImpl"

    const-string v1, "Connected again.."

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 883
    :cond_1
    const-string v0, "ToqConnectionHandlerImpl"

    const-string v1, "Context is null in isFirstTimeConnected"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startSynchingStores()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    .line 464
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->connFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v11}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 465
    .local v4, "context":Landroid/content/Context;
    const-string v11, "stock"

    invoke-static {v11}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v8

    .line 466
    .local v8, "stockController":Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
    const-string v11, "weather"

    invoke-static {v11}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v10

    .line 470
    .local v10, "weatherController":Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
    if-eqz v4, :cond_1

    .line 471
    if-eqz v8, :cond_0

    .line 472
    invoke-virtual {v8, v12}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->processAmbientTask(I)V

    .line 473
    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->resetPollingTimer()V

    .line 475
    :cond_0
    if-eqz v10, :cond_1

    .line 476
    invoke-virtual {v10, v12}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->processAmbientTask(I)V

    .line 477
    invoke-virtual {v10}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->resetPollingTimer()V

    .line 483
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    move-result-object v3

    .line 484
    .local v3, "contactController":Lcom/qualcomm/toq/smartwatch/controller/ContactController;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->getAgendaController()Lcom/qualcomm/toq/smartwatch/controller/AgendaController;

    move-result-object v0

    .line 485
    .local v0, "agendaController":Lcom/qualcomm/toq/smartwatch/controller/AgendaController;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->getSMSController()Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    move-result-object v7

    .line 486
    .local v7, "smsController":Lcom/qualcomm/toq/smartwatch/controller/SMSController;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->getCommHubController()Lcom/qualcomm/toq/smartwatch/controller/CommHubController;

    move-result-object v2

    .line 487
    .local v2, "commHubController":Lcom/qualcomm/toq/smartwatch/controller/CommHubController;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->getClockSettingsController()Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;

    move-result-object v1

    .line 488
    .local v1, "clockSettingsController":Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;->getFavoriteAppsController()Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;

    move-result-object v5

    .line 489
    .local v5, "favouriteAppsController":Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;->getUserSettingsController()Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;

    move-result-object v9

    .line 490
    .local v9, "userSettingsController":Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->getMusicController()Lcom/qualcomm/toq/smartwatch/controller/MusicController;

    move-result-object v6

    .line 493
    .local v6, "musicController":Lcom/qualcomm/toq/smartwatch/controller/MusicController;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->getInstance()Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    move-result-object v11

    invoke-virtual {v11}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->syncApp()V

    .line 495
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->connFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    if-eqz v11, :cond_9

    .line 497
    if-eqz v3, :cond_2

    .line 498
    const-string v11, "ToqConnectionHandlerImpl"

    const-string v12, "** Start Synching Contacts **"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const/4 v11, 0x1

    iput-boolean v11, v3, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->bContactStoreCreation:Z

    .line 500
    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->storePhoneContactsToFile()V

    .line 502
    :cond_2
    if-eqz v0, :cond_3

    .line 503
    const-string v11, "ToqConnectionHandlerImpl"

    const-string v12, "** Start Synching Agenda **"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual {v0, v4}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->storeAgendaToFile(Landroid/content/Context;)V

    .line 506
    :cond_3
    if-eqz v7, :cond_4

    .line 507
    const-string v11, "ToqConnectionHandlerImpl"

    const-string v12, "** Start Synching Quick Reply **"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual {v7, v4}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->storeQuickReplyToFile(Landroid/content/Context;)V

    .line 510
    :cond_4
    if-eqz v2, :cond_5

    .line 511
    const-string v11, "ToqConnectionHandlerImpl"

    const-string v12, "** Start Synching Recent Communication **"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->storeCommHubToFile()V

    .line 515
    :cond_5
    if-eqz v1, :cond_6

    .line 516
    const-string v11, "ToqConnectionHandlerImpl"

    const-string v12, "** Start Synching Clock Settings **"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-virtual {v1, v4}, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->sendClockSettingsToWD(Landroid/content/Context;)V

    .line 519
    invoke-virtual {v1, v4}, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->sendClockAppsZipToWD(Landroid/content/Context;)V

    .line 522
    :cond_6
    if-eqz v9, :cond_7

    .line 523
    const-string v11, "ToqConnectionHandlerImpl"

    const-string v12, "** Start Synching User Settings **"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-virtual {v9, v4}, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;->sendUserSettingsToWD(Landroid/content/Context;)V

    .line 526
    :cond_7
    if-eqz v5, :cond_8

    .line 527
    const-string v11, "ToqConnectionHandlerImpl"

    const-string v12, "** Start Synching FavouriteApps **"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-virtual {v5, v4}, Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;->sendFavoriteAppListToWD(Landroid/content/Context;)V

    .line 530
    :cond_8
    if-eqz v6, :cond_9

    .line 531
    const-string v11, "ToqConnectionHandlerImpl"

    const-string v12, "** Start Synching music playlist **"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->sendPlaylistToWD()V

    .line 540
    :cond_9
    return-void
.end method


# virtual methods
.method public deleteParentDirectoryContent(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 645
    invoke-static {p1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 646
    .local v0, "parentDirectoryPath":Ljava/io/File;
    const-string v1, "ToqConnectionHandlerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " files"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    if-eqz v0, :cond_0

    .line 648
    invoke-static {v0}, Lcom/qualcomm/toq/base/utils/Utils;->deleteFiles(Ljava/io/File;)V

    .line 651
    :cond_0
    return-void
.end method

.method public flushAmbientContents(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    .line 548
    if-eqz p1, :cond_4

    .line 551
    const-string v10, "ambient__pref"

    invoke-virtual {p1, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 553
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const-string v10, "ToqConnectionHandlerImpl"

    const-string v11, "Flushing Ambient Contents from respective entries so next connection will fetch Updated data"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    :try_start_0
    const-string v10, "WeatherCities"

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v11}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 559
    .local v1, "ambientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 561
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_0

    .line 563
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    move-object v0, v10

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    move-object v9, v0

    .line 569
    .local v9, "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setMaxTemp(I)V

    .line 570
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setMinTemp(I)V

    .line 571
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setHourTemp(I)V

    .line 572
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setWeatherCondition(Ljava/lang/String;)V

    .line 573
    const/4 v10, -0x1

    invoke-virtual {v9, v10}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setIconNumber(I)V

    .line 574
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 576
    invoke-virtual {v1, v5, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 561
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 579
    .end local v9    # "weatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    :cond_0
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 580
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v10, "WeatherCities"

    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 583
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 585
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "index":I
    :cond_1
    const-string v10, "WeatherCurrentCity"

    new-instance v11, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    invoke-direct {v11}, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;-><init>()V

    invoke-static {v11}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 589
    .local v2, "currentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    instance-of v10, v2, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    if-eqz v10, :cond_2

    .line 595
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setMaxTemp(I)V

    .line 596
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setMinTemp(I)V

    .line 597
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setHourTemp(I)V

    .line 598
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setWeatherCondition(Ljava/lang/String;)V

    .line 599
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    .line 601
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 602
    .restart local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v10, "WeatherCurrentCity"

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 605
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 609
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v10, "StockSymbols"

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v11}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 612
    .local v8, "stocksAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 613
    const/4 v5, 0x0

    .restart local v5    # "index":I
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_3

    .line 614
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    .line 615
    .local v7, "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setLastValue(Ljava/lang/String;)V

    .line 616
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setChange(Ljava/lang/String;)V

    .line 617
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setPercentageChange(Ljava/lang/String;)V

    .line 618
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 620
    invoke-virtual {v8, v5, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 613
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 623
    .end local v7    # "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :cond_3
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 624
    .restart local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v10, "StockSymbols"

    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 627
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    .end local v1    # "ambientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .end local v2    # "currentCitiyAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "index":I
    .end local v6    # "prefs":Landroid/content/SharedPreferences;
    .end local v8    # "stocksAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :cond_4
    :goto_2
    return-void

    .line 631
    .restart local v6    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v3

    .line 632
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 958
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->context:Landroid/content/Context;

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getController(II)Lcom/qualcomm/toq/base/controller/IController;
    .locals 4
    .param p1, "appID"    # I
    .param p2, "endPointType"    # I

    .prologue
    .line 132
    const-string v1, "ToqConnectionHandlerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dest appID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "controller":Lcom/qualcomm/toq/base/controller/IController;
    if-nez p1, :cond_2

    .line 136
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/VersionController;->getVersionController()Lcom/qualcomm/toq/smartwatch/controller/VersionController;

    move-result-object v0

    .line 176
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 177
    invoke-super {p0, p1, p2}, Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;->getController(II)Lcom/qualcomm/toq/base/controller/IController;

    move-result-object v0

    .line 179
    .end local v0    # "controller":Lcom/qualcomm/toq/base/controller/IController;
    :cond_1
    return-object v0

    .line 138
    .restart local v0    # "controller":Lcom/qualcomm/toq/base/controller/IController;
    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 139
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->getVoiceCallController()Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;

    move-result-object v0

    goto :goto_0

    .line 141
    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    .line 142
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->getSMSController()Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_4
    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    .line 145
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->getSystemController()Lcom/qualcomm/toq/smartwatch/controller/SystemController;

    move-result-object v0

    goto :goto_0

    .line 147
    :cond_5
    const/4 v1, 0x7

    if-ne p1, v1, :cond_6

    .line 148
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->getPopUpController()Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_6
    const/16 v1, 0x9

    if-ne p1, v1, :cond_7

    .line 151
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/StorageServiceController;->getStorageServiceController()Lcom/qualcomm/toq/smartwatch/controller/StorageServiceController;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_7
    const/16 v1, 0x11

    if-ne p1, v1, :cond_8

    .line 154
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_8
    const/16 v1, 0x18

    if-ne p1, v1, :cond_9

    .line 157
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->getMusicController()Lcom/qualcomm/toq/smartwatch/controller/MusicController;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_9
    const/16 v1, 0x1a

    if-ne p1, v1, :cond_a

    .line 161
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->getAppMessagingController()Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;

    move-result-object v0

    goto :goto_0

    .line 163
    :cond_a
    const/16 v1, 0x22

    if-ne p1, v1, :cond_b

    .line 164
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/AppLoggingController;->getAppLoggingController()Lcom/qualcomm/toq/smartwatch/controller/AppLoggingController;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_b
    const/16 v1, 0x1c

    if-ne p1, v1, :cond_c

    .line 167
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->getSpeechController()Lcom/qualcomm/toq/smartwatch/controller/SpeechController;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_c
    const/16 v1, 0x1e

    if-ne p1, v1, :cond_d

    .line 170
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->getActivityMonitoringController()Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_d
    const/16 v1, 0x20

    if-ne p1, v1, :cond_0

    .line 173
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FTSController;->getFtsController()Lcom/qualcomm/toq/smartwatch/controller/FTSController;

    move-result-object v0

    goto :goto_0
.end method

.method public getEndPointCheckCompatibilityMode(I)Z
    .locals 5
    .param p1, "endPointType"    # I

    .prologue
    const/4 v1, 0x1

    .line 948
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 949
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "app_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 951
    .local v0, "prefs":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCompatibility"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 953
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return v1
.end method

.method public getEndPointEnableTFTPMode(I)Z
    .locals 5
    .param p1, "endPointType"    # I

    .prologue
    const/4 v0, 0x0

    .line 920
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 921
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "app_pref"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 923
    .local v1, "prefs":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableTFTP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 924
    .local v0, "b":Z
    const-string v2, "ToqConnectionHandlerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEndPointEnableTFTPMode endPointType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    .end local v0    # "b":Z
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return v0

    .line 928
    :cond_0
    const-string v2, "ToqConnectionHandlerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEndPointEnableTFTPMode endPointType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  mode = false"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getState(I)I
    .locals 1
    .param p1, "endPointType"    # I

    .prologue
    .line 185
    invoke-super {p0, p1}, Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;->getState(I)I

    move-result v0

    return v0
.end method

.method public handleControllerData(IIILjava/lang/Object;II)V
    .locals 0
    .param p1, "endPointType"    # I
    .param p2, "srcAdd"    # I
    .param p3, "destAdd"    # I
    .param p4, "payloadData"    # Ljava/lang/Object;
    .param p5, "messageType"    # I
    .param p6, "transactionId"    # I

    .prologue
    .line 341
    invoke-super/range {p0 .. p6}, Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;->handleControllerData(IIILjava/lang/Object;II)V

    .line 347
    return-void
.end method

.method public handleMessage([BLcom/qualcomm/toq/base/endpoint/IEndPoint;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "endPoint"    # Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    .prologue
    .line 190
    invoke-super {p0, p1, p2}, Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;->handleMessage([BLcom/qualcomm/toq/base/endpoint/IEndPoint;)V

    .line 191
    return-void
.end method

.method public initialSync()V
    .locals 4

    .prologue
    .line 350
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "ToqConnectionHandlerImpl"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 351
    .local v2, "syncStoresHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 352
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 353
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 354
    .local v1, "syncStoresHandler":Landroid/os/Handler;
    new-instance v3, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl$1;

    invoke-direct {v3, p0}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl$1;-><init>(Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 432
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->initBatteryMonitorTimer()V

    .line 433
    return-void
.end method

.method public initiateConnectionMgr(Landroid/content/Context;I)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "endPointType"    # I

    .prologue
    const/4 v5, 0x0

    .line 93
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->context:Landroid/content/Context;

    .line 94
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;->getDatabaseAdapter(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->dbAdapter:Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;

    .line 95
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->dbAdapter:Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;->open()Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;

    .line 97
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v1

    .line 99
    .local v1, "prjConfig":Lcom/qualcomm/toq/base/utils/ProjectConfig;
    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getTransferType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TFTP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    const/4 v2, 0x1

    invoke-virtual {p0, v5, v2}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->setEndPointEnableTFTPMode(IZ)V

    .line 103
    :cond_0
    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getConnectionType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BLUETOOTH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 104
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getConnectionManager(Landroid/content/Context;)Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->connManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    .line 113
    :cond_1
    :goto_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    .line 116
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isWDBonded()Z

    move-result v0

    .line 118
    .local v0, "isWDBonded":Z
    const-string v2, "ToqConnectionHandlerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWDBonded value in initiateConnectionMgr(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->connManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    if-eqz v2, :cond_2

    .line 122
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->connManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setConnManager(Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;)V

    .line 124
    sput v5, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_WD_CONNECT_ATTEMPT:I

    .line 125
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->connManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    invoke-interface {v2}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->associatePhoneWD()V

    .line 128
    :cond_2
    return-void

    .line 106
    .end local v0    # "isWDBonded":Z
    :cond_3
    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getConnectionType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TCP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    const-string v2, "ToqConnectionHandlerImpl"

    const-string v3, "ConnectionType TCP/IP"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, v5, v5}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->setEndPointCheckCompatibilityMode(IZ)V

    .line 109
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->getConnectionManager(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->connManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    goto :goto_0
.end method

.method public setEndPointCheckCompatibilityMode(IZ)V
    .locals 5
    .param p1, "endPointType"    # I
    .param p2, "mode"    # Z

    .prologue
    .line 940
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "app_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 942
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 943
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCompatibility"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 944
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 945
    return-void
.end method

.method public setEndPointEnableTFTPMode(IZ)V
    .locals 5
    .param p1, "endPointType"    # I
    .param p2, "mode"    # Z

    .prologue
    .line 910
    const-string v2, "ToqConnectionHandlerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEndPointEnableTFTPMode endPointType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "app_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 914
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 915
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableTFTP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 916
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 917
    return-void
.end method

.method public updateState(II)V
    .locals 13
    .param p1, "endPointType"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 195
    invoke-super {p0, p1, p2}, Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;->updateState(II)V

    .line 197
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 199
    .local v3, "ctx":Landroid/content/Context;
    if-nez p1, :cond_0

    .line 200
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    .line 202
    :cond_0
    if-nez p1, :cond_3

    .line 203
    const/4 v7, 0x3

    if-ne p2, v7, :cond_5

    .line 208
    const-string v7, "ConnectionHandlerImpl"

    const-string v8, "WD State: connected"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->onWatchConnected()V

    .line 214
    sput-boolean v10, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->isStopOPPPush:Z

    .line 215
    sput-boolean v10, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->isStopTFTPPush:Z

    .line 217
    sput v10, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_WD_CONNECT_ATTEMPT:I

    .line 218
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->registerFMSReceiver()V

    .line 221
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->getPopUpController()Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 222
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->getPopUpController()Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 223
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->getPopUpController()Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->unMapPopupAll()V

    .line 226
    :cond_1
    invoke-static {v9}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->setController(Ljava/lang/Object;)V

    .line 227
    invoke-static {v9}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->setController(Ljava/lang/Object;)V

    .line 228
    invoke-static {v9}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->setController(Ljava/lang/Object;)V

    .line 230
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->getSMSController()Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->updateSMSReceivedTime()V

    .line 232
    sget v7, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->DEFAULT_EVENTS:I

    if-nez v7, :cond_4

    .line 233
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->readCalendar(Landroid/content/Context;)V

    .line 244
    :cond_2
    :goto_0
    const-string v7, "ToqConnectionHandlerImpl"

    const-string v8, "sendGetActivityInd() called when connected"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->getActivityMonitoringController()Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->sendActivityUpdateInd()V

    .line 247
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->getActivityMonitoringController()Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->initiateActivityOperation()V

    .line 250
    const-string v7, "ToqConnectionHandlerImpl"

    const-string v8, "ACTION_PHONE_WD_CONNECTED broadcast sent"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 252
    .local v5, "phoneWdConnectedIntent":Landroid/content/Intent;
    sget-object v7, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_PHONE_WD_CONNECTED:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    invoke-virtual {v3, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 335
    .end local v5    # "phoneWdConnectedIntent":Landroid/content/Intent;
    :cond_3
    :goto_1
    return-void

    .line 236
    :cond_4
    sget v7, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->DEFAULT_EVENTS:I

    if-ne v7, v11, :cond_2

    .line 237
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->readCalendarVer2(Landroid/content/Context;)V

    goto :goto_0

    .line 256
    :cond_5
    if-eq p2, v12, :cond_6

    if-nez p2, :cond_3

    .line 258
    :cond_6
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    .line 259
    .local v2, "connFactObj":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    if-eqz v2, :cond_7

    .line 260
    invoke-virtual {v2, v11}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setAppCurrentMode(I)V

    .line 261
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v0

    .line 262
    .local v0, "androidUtilObj":Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    if-eqz v0, :cond_7

    .line 263
    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 265
    .local v1, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->setCurrentRingerMode(I)V

    .line 270
    .end local v0    # "androidUtilObj":Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    .end local v1    # "audioManager":Landroid/media/AudioManager;
    :cond_7
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->getPhubFileTransferClient(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->closeConnection()V

    .line 274
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->cancelBatteryMonitorTimer()V

    .line 275
    if-ne p2, v12, :cond_8

    .line 277
    const-string v7, "ConnectionHandlerImpl"

    const-string v8, "WD State: disconnected"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_8
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->getActivityMonitoringController()Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->stopActivityOperation()V

    .line 286
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->onWatchDisconnected()V

    .line 288
    sput-boolean v11, Lcom/qualcomm/toq/smartwatch/filetransfer/PhubFileTransferClient;->isStopOPPPush:Z

    .line 289
    sput-boolean v11, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->isStopTFTPPush:Z

    .line 290
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v7

    invoke-virtual {v7, v10, v10}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointVersionState(II)V

    .line 294
    const-string v7, "ToqConnectionHandlerImpl"

    const-string v8, "ACTION_PHONE_WD_DISCONNECTED broadcast sent"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 296
    .local v6, "phoneWdDisconnectedIntent":Landroid/content/Intent;
    sget-object v7, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_PHONE_WD_DISCONNECTED:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    invoke-virtual {v3, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 302
    invoke-direct {p0, v3}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->createAmbientBackupList(Landroid/content/Context;)V

    .line 303
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->getSystemController()Lcom/qualcomm/toq/smartwatch/controller/SystemController;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->setIsFindWdReqAllowed(Z)V

    .line 308
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->getPopUpController()Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 309
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->getPopUpController()Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 310
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->getPopUpController()Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->unMapPopupAll()V

    .line 314
    :cond_9
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/controller/VersionController;->setController(Ljava/lang/Object;)V

    .line 316
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->setController(Ljava/lang/Object;)V

    .line 317
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->setController(Ljava/lang/Object;)V

    .line 318
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->setController(Ljava/lang/Object;)V

    .line 319
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->setController(Ljava/lang/Object;)V

    .line 320
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/controller/AgendaController;->setController(Ljava/lang/Object;)V

    .line 321
    const-string v7, "stock"

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->reSetController()V

    .line 323
    const-string v7, "stock"

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->reSetController()V

    .line 325
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->setController(Ljava/lang/Object;)V

    .line 326
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->setController(Ljava/lang/Object;)V

    .line 327
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->setInstance(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 329
    :catch_0
    move-exception v4

    .line 330
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 331
    const-string v7, "ToqConnectionHandlerImpl"

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

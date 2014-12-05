.class public Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;
.super Lcom/qualcomm/toq/base/controller/DefaultController;
.source "FavoriteAppsController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FavoriteAppsController"

.field public static final appName:Ljava/lang/String; = "FAVOURITE_APPS_CONTROLLER"

.field private static mInstance:Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;


# instance fields
.field private isHomeTileSelected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/qualcomm/toq/base/controller/DefaultController;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;->isHomeTileSelected:Z

    return-void
.end method

.method public static getFavoriteAppsController()Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;

    .line 35
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;

    return-object v0
.end method

.method private handleAppletDeletion(Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 9
    .param p1, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 48
    .local v1, "carouselViewsAppInfoListTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;>;"
    if-eqz p1, :cond_1

    .line 49
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 53
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    const-string v7, "favorite_apps_types"

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    .line 56
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    .line 57
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->getTagIndex()I

    move-result v5

    .line 59
    .local v5, "index":I
    sget-object v7, Lcom/qualcomm/toq/base/utils/Constants;->appletImageNames:[Ljava/lang/String;

    array-length v7, v7

    if-lt v5, v7, :cond_2

    .line 60
    const-string v7, "FavoriteAppsController"

    const-string v8, "Version Mismatch..Clearing the preference"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 62
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->setTagIndex(I)V

    .line 63
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->setHomeTitle(Z)V

    .line 61
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 66
    :cond_0
    const-string v7, "favorite_apps_types"

    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "i":I
    .end local v5    # "index":I
    .end local v6    # "j":I
    :cond_1
    :goto_2
    return-object p1

    .line 56
    .restart local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v4    # "i":I
    .restart local v5    # "index":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 73
    .end local v4    # "i":I
    .end local v5    # "index":I
    :catch_0
    move-exception v2

    .line 74
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "FavoriteAppsController"

    const-string v8, "Exception"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static setController(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 230
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;

    .line 231
    return-void
.end method

.method private synchFavoriteApps(Ljava/lang/String;)I
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 166
    const/4 v0, -0x1

    .line 167
    .local v0, "favoriteAppsPushStatus":I
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v1

    .line 168
    .local v1, "fmsController":Lcom/qualcomm/toq/smartwatch/controller/FMSController;
    if-eqz v1, :cond_0

    .line 169
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v5, "/settings/app_list.jsn"

    const/4 v6, -0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsSyncFile(ILjava/io/InputStream;Ljava/lang/String;I)I

    move-result v0

    .line 175
    :cond_0
    return v0
.end method


# virtual methods
.method public createFavoriteAppsJson(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    .line 85
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 87
    .local v3, "favoriteAppsDataStore":Lorg/json/JSONObject;
    iput-boolean v11, p0, Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;->isHomeTileSelected:Z

    .line 88
    const-string v10, "favorite_apps_pref"

    invoke-virtual {p1, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 90
    .local v7, "prefs":Landroid/content/SharedPreferences;
    invoke-direct {p0, v7}, Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;->handleAppletDeletion(Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 92
    if-eqz v7, :cond_2

    :try_start_0
    const-string v10, "favorite_apps_types"

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v11}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 96
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    .local v5, "favoriteAppsRecords":Lorg/json/JSONArray;
    :try_start_1
    const-string v10, "favorite_apps_types"

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v11}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 101
    .local v2, "favoriteAppsArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;>;"
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eqz v10, :cond_5

    .line 103
    const-string v10, "FavoriteAppsController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "favoriteAppsArrayList.size() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "count":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;

    .line 107
    .local v4, "favoriteAppsList":Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 108
    .local v8, "recordPayload":Lorg/json/JSONObject;
    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->getTagIndex()I

    move-result v9

    .line 109
    .local v9, "tagIndex":I
    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 110
    add-int/lit8 v0, v0, 0x1

    .line 111
    const-string v10, "TileName"

    sget-object v11, Lcom/qualcomm/toq/base/utils/Constants;->appletWDNames:[Ljava/lang/String;

    aget-object v11, v11, v9

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->isHomeTitle()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 114
    const-string v10, "IsHomeTile"

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 115
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;->isHomeTileSelected:Z

    .line 119
    :goto_1
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 136
    .end local v0    # "count":I
    .end local v2    # "favoriteAppsArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;>;"
    .end local v4    # "favoriteAppsList":Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "recordPayload":Lorg/json/JSONObject;
    .end local v9    # "tagIndex":I
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    const-string v10, "FavoriteAppsController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in KEY_FAVORITE_APP_TYPES Shared Preference logic: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 143
    .restart local v8    # "recordPayload":Lorg/json/JSONObject;
    const-string v10, "TileName"

    const-string v11, "AppLauncher"

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    iget-boolean v10, p0, Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;->isHomeTileSelected:Z

    if-eqz v10, :cond_6

    .line 145
    const-string v10, "IsHomeTile"

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 149
    :goto_2
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 151
    const-string v10, "Records"

    invoke-virtual {v3, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string v10, "FavoriteAppsController"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 162
    .end local v5    # "favoriteAppsRecords":Lorg/json/JSONArray;
    .end local v8    # "recordPayload":Lorg/json/JSONObject;
    :cond_2
    :goto_3
    return-object v3

    .line 118
    .restart local v0    # "count":I
    .restart local v2    # "favoriteAppsArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;>;"
    .restart local v4    # "favoriteAppsList":Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;
    .restart local v5    # "favoriteAppsRecords":Lorg/json/JSONArray;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v8    # "recordPayload":Lorg/json/JSONObject;
    .restart local v9    # "tagIndex":I
    :cond_3
    :try_start_3
    const-string v10, "IsHomeTile"

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    .line 123
    .end local v4    # "favoriteAppsList":Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;
    .end local v8    # "recordPayload":Lorg/json/JSONObject;
    .end local v9    # "tagIndex":I
    :cond_4
    const-string v10, "FavoriteAppsController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "favoriteAppsList count = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    if-nez v0, :cond_1

    .line 125
    const-string v10, "FavoriteAppsController"

    const-string v11, "return empty JSON as the current state of app_list.jsn is default"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 131
    .end local v0    # "count":I
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_5
    const-string v10, "FavoriteAppsController"

    const-string v11, "return empty JSON as the current state of app_list.jsn is default"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 147
    .end local v2    # "favoriteAppsArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;>;"
    .restart local v8    # "recordPayload":Lorg/json/JSONObject;
    :cond_6
    :try_start_4
    const-string v10, "IsHomeTile"

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 158
    .end local v5    # "favoriteAppsRecords":Lorg/json/JSONArray;
    .end local v8    # "recordPayload":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 159
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    const-string v10, "FavoriteAppsController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public handleConnHandlerMessage(IILjava/lang/Object;II)V
    .locals 0
    .param p1, "appID"    # I
    .param p2, "command"    # I
    .param p3, "payload"    # Ljava/lang/Object;
    .param p4, "transactionId"    # I
    .param p5, "endpointType"    # I

    .prologue
    .line 43
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
    .line 182
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 184
    invoke-super/range {p0 .. p6}, Lcom/qualcomm/toq/base/controller/DefaultController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 191
    :cond_0
    return-void
.end method

.method public sendFavoriteAppListToWD(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    .line 195
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;->createFavoriteAppsJson(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 197
    .local v1, "favoriteAppsDataStore":Lorg/json/JSONObject;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 199
    const-string v4, "FavoriteAppsController"

    const-string v5, "Empty favoriteAppsDataStore time to delete app_list.jsn in FMS"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v2

    .line 202
    .local v2, "fmsController":Lcom/qualcomm/toq/smartwatch/controller/FMSController;
    if-eqz v2, :cond_0

    .line 203
    const-string v4, "FavoriteAppsController"

    const-string v5, "Delete request for app_list.jsn file in fMS"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v4

    const/4 v5, 0x1

    const-string v6, "/settings/app_list.jsn"

    invoke-virtual {v4, v5, v6}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsRemoveFile(ILjava/lang/String;)I

    move-result v3

    .line 207
    .local v3, "result":I
    if-ne v3, v7, :cond_1

    .line 208
    const-string v4, "FavoriteAppsController"

    const-string v5, "Delete request for app_list.jsn file in fMS failed"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .end local v1    # "favoriteAppsDataStore":Lorg/json/JSONObject;
    .end local v2    # "fmsController":Lcom/qualcomm/toq/smartwatch/controller/FMSController;
    .end local v3    # "result":I
    :cond_0
    :goto_0
    return-void

    .line 212
    .restart local v1    # "favoriteAppsDataStore":Lorg/json/JSONObject;
    .restart local v2    # "fmsController":Lcom/qualcomm/toq/smartwatch/controller/FMSController;
    .restart local v3    # "result":I
    :cond_1
    const-string v4, "FavoriteAppsController"

    const-string v5, "Delete request for app_list.jsn file in fMS success"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    .end local v1    # "favoriteAppsDataStore":Lorg/json/JSONObject;
    .end local v2    # "fmsController":Lcom/qualcomm/toq/smartwatch/controller/FMSController;
    .end local v3    # "result":I
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 219
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "favoriteAppsDataStore":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    const-string v4, "FavoriteAppsController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendFavoriteAppListToWD() called: \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;->synchFavoriteApps(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

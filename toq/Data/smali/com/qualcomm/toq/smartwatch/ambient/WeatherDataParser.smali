.class public Lcom/qualcomm/toq/smartwatch/ambient/WeatherDataParser;
.super Ljava/lang/Object;
.source "WeatherDataParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getResourceObject()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 358
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public parseAutocompleteResponse(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 11
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
    .line 308
    .local p2, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "cityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 310
    .local v7, "resultJSONArray":Lorg/json/JSONArray;
    if-eqz v7, :cond_5

    .line 311
    const-string v6, ""

    .line 312
    .local v6, "key":Ljava/lang/String;
    const-string v1, ""

    .line 313
    .local v1, "city":Ljava/lang/String;
    const-string v2, ""

    .line 314
    .local v2, "counrtyName":Ljava/lang/String;
    const-string v0, ""

    .line 316
    .local v0, "adminArea":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/util/HashMap;->clear()V

    .line 318
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_5

    .line 319
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 321
    .local v5, "jsonObject":Lorg/json/JSONObject;
    const-string v8, "Key"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 322
    const-string v8, "LocalizedName"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 323
    const-string v8, "AdministrativeArea"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_3

    const-string v0, ""

    .line 327
    :goto_1
    const-string v8, "Country"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    if-nez v8, :cond_4

    const-string v2, ""

    .line 330
    :goto_2
    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ","

    const-string v10, " "

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 333
    :cond_0
    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ","

    const-string v10, " "

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    :cond_1
    if-eqz v2, :cond_2

    .line 337
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ","

    const-string v10, " "

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 339
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    const-string v8, "Ambient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WeatherListActivity Key  : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " city:  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  Admin Area : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  Country name : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 323
    :cond_3
    const-string v8, "AdministrativeArea"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "LocalizedName"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 327
    :cond_4
    const-string v8, "Country"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "LocalizedName"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto/16 :goto_2

    .line 350
    .end local v0    # "adminArea":Ljava/lang/String;
    .end local v1    # "city":Ljava/lang/String;
    .end local v2    # "counrtyName":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "resultJSONArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v3

    .line 351
    .local v3, "e":Lorg/json/JSONException;
    const-string v8, "Ambient"

    const-string v9, "WeatherListActivity Cannot process JSON results"

    invoke-static {v8, v9, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 355
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_5
    return-void
.end method

.method public parseWeatherKey(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;)I
    .locals 18
    .param p1, "jsonString"    # Ljava/lang/String;
    .param p2, "weatherAmbientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .prologue
    .line 21
    const/4 v13, -0x1

    .line 23
    .local v13, "ret_val":I
    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_7

    .line 25
    :try_start_0
    new-instance v12, Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 27
    .local v12, "responseJsonArray":Lorg/json/JSONArray;
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-nez v15, :cond_0

    .line 28
    const-string v15, "push_data_error_image"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    .line 31
    :cond_0
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v9, v15, :cond_7

    .line 32
    invoke-virtual {v12, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 33
    .local v10, "jsonObject":Lorg/json/JSONObject;
    if-eqz v10, :cond_6

    .line 34
    const/4 v3, 0x0

    .line 35
    .local v3, "administrativeAreaId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 36
    .local v4, "administrativeAreaLocalizedName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 37
    .local v5, "countryID":Ljava/lang/String;
    const/4 v6, 0x0

    .line 38
    .local v6, "countryName":Ljava/lang/String;
    const-string v15, "AdministrativeArea"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 39
    .local v2, "adminObject":Lorg/json/JSONObject;
    const-string v15, "Country"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    .line 40
    .local v7, "countryObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 41
    const-string v15, "ID"

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    const-string v15, "LocalizedName"

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 44
    :cond_1
    if-eqz v7, :cond_2

    .line 45
    const-string v15, "ID"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 46
    const-string v15, "LocalizedName"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 49
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getStateName()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "adminArea":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 54
    :cond_3
    const-string v15, "Key"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 56
    .local v11, "key":Ljava/lang/String;
    const-string v15, "Ambient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "WeaterDataParser-parseWeatherKey Setting Key for  :  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ":  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setKey(Ljava/lang/String;)V

    .line 62
    if-nez v11, :cond_5

    .line 63
    const-string v15, "push_data_error_image"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    .line 31
    .end local v1    # "adminArea":Ljava/lang/String;
    .end local v2    # "adminObject":Lorg/json/JSONObject;
    .end local v3    # "administrativeAreaId":Ljava/lang/String;
    .end local v4    # "administrativeAreaLocalizedName":Ljava/lang/String;
    .end local v5    # "countryID":Ljava/lang/String;
    .end local v6    # "countryName":Ljava/lang/String;
    .end local v7    # "countryObject":Lorg/json/JSONObject;
    .end local v11    # "key":Ljava/lang/String;
    :cond_4
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 66
    .restart local v1    # "adminArea":Ljava/lang/String;
    .restart local v2    # "adminObject":Lorg/json/JSONObject;
    .restart local v3    # "administrativeAreaId":Ljava/lang/String;
    .restart local v4    # "administrativeAreaLocalizedName":Ljava/lang/String;
    .restart local v5    # "countryID":Ljava/lang/String;
    .restart local v6    # "countryName":Ljava/lang/String;
    .restart local v7    # "countryObject":Lorg/json/JSONObject;
    .restart local v11    # "key":Ljava/lang/String;
    :cond_5
    const/4 v13, 0x0

    .line 67
    const-string v15, "push_online_image"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 76
    .end local v1    # "adminArea":Ljava/lang/String;
    .end local v2    # "adminObject":Lorg/json/JSONObject;
    .end local v3    # "administrativeAreaId":Ljava/lang/String;
    .end local v4    # "administrativeAreaLocalizedName":Ljava/lang/String;
    .end local v5    # "countryID":Ljava/lang/String;
    .end local v6    # "countryName":Ljava/lang/String;
    .end local v7    # "countryObject":Lorg/json/JSONObject;
    .end local v9    # "i":I
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "responseJsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v8

    .line 77
    .local v8, "e":Ljava/lang/Exception;
    const-string v15, "Ambient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "!!! WeaterDataParser-parseWeatherKey Exception in parsing Key for  :  "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    move v14, v13

    .line 84
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v13    # "ret_val":I
    .local v14, "ret_val":I
    :goto_2
    return v14

    .line 72
    .end local v14    # "ret_val":I
    .restart local v9    # "i":I
    .restart local v10    # "jsonObject":Lorg/json/JSONObject;
    .restart local v12    # "responseJsonArray":Lorg/json/JSONArray;
    .restart local v13    # "ret_val":I
    :cond_6
    :try_start_1
    const-string v15, "push_data_error_image"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .end local v9    # "i":I
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    .end local v12    # "responseJsonArray":Lorg/json/JSONArray;
    :cond_7
    move v14, v13

    .line 84
    .end local v13    # "ret_val":I
    .restart local v14    # "ret_val":I
    goto :goto_2
.end method

.method public parserWeatherHourTemparatureData(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)I
    .locals 23
    .param p1, "jsonStream"    # Ljava/lang/String;
    .param p2, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;

    .prologue
    .line 161
    const/4 v12, -0x1

    .local v12, "ret_val":I
    move-object/from16 v6, p2

    .line 162
    check-cast v6, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 163
    .local v6, "info":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherDataParser;->getResourceObject()Landroid/content/res/Resources;

    move-result-object v10

    .line 164
    .local v10, "resource":Landroid/content/res/Resources;
    if-eqz v6, :cond_4

    if-eqz v10, :cond_4

    .line 168
    if-eqz p2, :cond_8

    .line 170
    :try_start_0
    new-instance v11, Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 171
    .local v11, "resultJsonArray":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v20

    if-lez v20, :cond_2

    .line 173
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 174
    .local v19, "weatherJSONObject":Lorg/json/JSONObject;
    if-eqz v19, :cond_2

    .line 175
    const/4 v12, 0x0

    .line 176
    const-string v20, "LocalObservationDateTime"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 177
    .local v8, "localDateTime":Ljava/lang/String;
    const-string v20, "Ambient"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "WeatherDataParser-parserWeatherHourTemparatureData OriginaL Local Time : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    if-eqz v8, :cond_0

    .line 182
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x6

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 183
    .local v7, "intSign":C
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 199
    const-string v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 200
    .local v16, "timeArray":[Ljava/lang/String;
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 201
    const/16 v20, 0x0

    aget-object v20, v16, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 202
    .local v3, "hrTemp":I
    const/16 v20, 0x1

    aget-object v20, v16, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 203
    .local v9, "minTemp":I
    const/16 v20, 0x2d

    move/from16 v0, v20

    if-ne v7, v0, :cond_5

    .line 206
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "-"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setGmtOffset(Ljava/lang/String;)V

    .line 223
    :goto_0
    const-string v20, "Ambient"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "WeatherDataParser-parserWeatherHourTemparatureData GMT OFF SET  for "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getCityName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "  is : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getGmtOffset()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .end local v3    # "hrTemp":I
    .end local v7    # "intSign":C
    .end local v9    # "minTemp":I
    .end local v16    # "timeArray":[Ljava/lang/String;
    :cond_0
    const-string v20, "WeatherIcon"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 233
    .local v18, "weatherIcon":Ljava/lang/String;
    :try_start_1
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 234
    .local v4, "iconNumber":I
    invoke-virtual {v6, v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setIconNumber(I)V

    .line 243
    const-string v20, "Ambient"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "WeatherDataParser-parserWeatherHourTemparatureData weatherIcon:  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 254
    .end local v4    # "iconNumber":I
    :goto_1
    :try_start_2
    const-string v20, "WeatherText"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 255
    .local v17, "weatherCondition":Ljava/lang/String;
    if-eqz v17, :cond_1

    .line 256
    const-string v20, "Ambient"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "WeatherDataParser-parserWeatherHourTemparatureData weatherCondition:  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setWeatherCondition(Ljava/lang/String;)V

    .line 261
    :cond_1
    const-string v20, "Temperature"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 262
    .local v15, "tempJSONObject":Lorg/json/JSONObject;
    if-eqz v15, :cond_2

    .line 263
    const-string v20, "Imperial"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 264
    .local v5, "imperialTempOject":Lorg/json/JSONObject;
    if-eqz v5, :cond_2

    .line 265
    const-string v20, "Value"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_7

    const-string v20, "Value"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    .line 267
    .local v14, "temp":F
    :goto_2
    const-string v20, "Ambient"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "WeatherDataParser-parserWeatherHourTemparatureData Temp :  "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    float-to-int v0, v14

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setHourTemp(I)V

    .line 280
    .end local v5    # "imperialTempOject":Lorg/json/JSONObject;
    .end local v8    # "localDateTime":Ljava/lang/String;
    .end local v14    # "temp":F
    .end local v15    # "tempJSONObject":Lorg/json/JSONObject;
    .end local v17    # "weatherCondition":Ljava/lang/String;
    .end local v18    # "weatherIcon":Ljava/lang/String;
    .end local v19    # "weatherJSONObject":Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getWeatherCondition()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_3

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getHourTemp()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, -0x39e3c000

    cmpl-float v20, v20, v21

    if-nez v20, :cond_4

    .line 282
    :cond_3
    const-string v20, "push_data_error_image"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    .end local v11    # "resultJsonArray":Lorg/json/JSONArray;
    :cond_4
    :goto_3
    move v13, v12

    .line 297
    .end local v12    # "ret_val":I
    .local v13, "ret_val":I
    :goto_4
    return v13

    .line 209
    .end local v13    # "ret_val":I
    .restart local v3    # "hrTemp":I
    .restart local v7    # "intSign":C
    .restart local v8    # "localDateTime":Ljava/lang/String;
    .restart local v9    # "minTemp":I
    .restart local v11    # "resultJsonArray":Lorg/json/JSONArray;
    .restart local v12    # "ret_val":I
    .restart local v16    # "timeArray":[Ljava/lang/String;
    .restart local v19    # "weatherJSONObject":Lorg/json/JSONObject;
    :cond_5
    const/16 v20, 0x2b

    move/from16 v0, v20

    if-ne v7, v0, :cond_6

    .line 214
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "+"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setGmtOffset(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 292
    .end local v3    # "hrTemp":I
    .end local v7    # "intSign":C
    .end local v8    # "localDateTime":Ljava/lang/String;
    .end local v9    # "minTemp":I
    .end local v11    # "resultJsonArray":Lorg/json/JSONArray;
    .end local v16    # "timeArray":[Ljava/lang/String;
    .end local v19    # "weatherJSONObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 293
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v13, v12

    .line 294
    .end local v12    # "ret_val":I
    .restart local v13    # "ret_val":I
    goto :goto_4

    .line 219
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v13    # "ret_val":I
    .restart local v3    # "hrTemp":I
    .restart local v7    # "intSign":C
    .restart local v8    # "localDateTime":Ljava/lang/String;
    .restart local v9    # "minTemp":I
    .restart local v11    # "resultJsonArray":Lorg/json/JSONArray;
    .restart local v12    # "ret_val":I
    .restart local v16    # "timeArray":[Ljava/lang/String;
    .restart local v19    # "weatherJSONObject":Lorg/json/JSONObject;
    :cond_6
    :try_start_3
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setGmtOffset(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 247
    .end local v3    # "hrTemp":I
    .end local v7    # "intSign":C
    .end local v9    # "minTemp":I
    .end local v16    # "timeArray":[Ljava/lang/String;
    .restart local v18    # "weatherIcon":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 248
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v20, "Ambient"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exception ocured while parsing weatherIcon "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setIconNumber(I)V

    goto/16 :goto_1

    .line 265
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "imperialTempOject":Lorg/json/JSONObject;
    .restart local v15    # "tempJSONObject":Lorg/json/JSONObject;
    .restart local v17    # "weatherCondition":Ljava/lang/String;
    :cond_7
    const/high16 v14, -0x3b860000

    goto/16 :goto_2

    .line 287
    .end local v5    # "imperialTempOject":Lorg/json/JSONObject;
    .end local v8    # "localDateTime":Ljava/lang/String;
    .end local v11    # "resultJsonArray":Lorg/json/JSONArray;
    .end local v15    # "tempJSONObject":Lorg/json/JSONObject;
    .end local v17    # "weatherCondition":Ljava/lang/String;
    .end local v18    # "weatherIcon":Ljava/lang/String;
    .end local v19    # "weatherJSONObject":Lorg/json/JSONObject;
    :cond_8
    const-string v20, "Ambient"

    const-string v21, "WeatherDataParser-parserWeatherHourTemparatureData Ambient Info is null"

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3
.end method

.method public parserWeatherMinMaxData(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)I
    .locals 16
    .param p1, "jsonStream"    # Ljava/lang/String;
    .param p2, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;

    .prologue
    .line 95
    const/4 v8, -0x1

    .local v8, "ret_val":I
    move-object/from16 v3, p2

    .line 96
    check-cast v3, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 97
    .local v3, "info":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherDataParser;->getResourceObject()Landroid/content/res/Resources;

    move-result-object v6

    .line 98
    .local v6, "resource":Landroid/content/res/Resources;
    if-eqz v3, :cond_3

    if-eqz v6, :cond_3

    .line 101
    if-eqz p2, :cond_6

    .line 102
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 103
    .local v7, "resultObject":Lorg/json/JSONObject;
    if-eqz v7, :cond_2

    .line 104
    const-string v13, "DailyForecasts"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 105
    .local v1, "dailyForecastArray":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-lez v13, :cond_2

    .line 106
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 107
    .local v10, "singleForecastObject":Lorg/json/JSONObject;
    if-eqz v10, :cond_2

    .line 108
    const-string v13, "Temperature"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 109
    .local v11, "temObject":Lorg/json/JSONObject;
    if-eqz v11, :cond_2

    .line 110
    const/4 v8, 0x0

    .line 111
    const/4 v5, 0x0

    .local v5, "minTemp":F
    const/4 v4, 0x0

    .line 112
    .local v4, "maxTemp":F
    const-string v13, "Minimum"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 113
    .local v12, "tempRangeObject":Lorg/json/JSONObject;
    if-eqz v12, :cond_0

    .line 114
    const-string v13, "Value"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    const-string v13, "Value"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 117
    :cond_0
    :goto_0
    const-string v13, "Maximum"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 118
    if-eqz v12, :cond_1

    .line 119
    const-string v13, "Value"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_5

    const-string v13, "Value"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 122
    :cond_1
    :goto_1
    const-string v13, "Ambient"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "WeatherDataParser-parserWeatherMinMaxData Max Temp :  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Min Temp:  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    float-to-int v13, v4

    invoke-virtual {v3, v13}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setMaxTemp(I)V

    .line 127
    float-to-int v13, v5

    invoke-virtual {v3, v13}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->setMinTemp(I)V

    .line 136
    .end local v1    # "dailyForecastArray":Lorg/json/JSONArray;
    .end local v4    # "maxTemp":F
    .end local v5    # "minTemp":F
    .end local v10    # "singleForecastObject":Lorg/json/JSONObject;
    .end local v11    # "temObject":Lorg/json/JSONObject;
    .end local v12    # "tempRangeObject":Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getMinTemp()I

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->getMaxTemp()I

    move-result v13

    if-nez v13, :cond_3

    .line 137
    const/4 v8, -0x1

    .end local v7    # "resultObject":Lorg/json/JSONObject;
    :cond_3
    :goto_2
    move v9, v8

    .line 150
    .end local v8    # "ret_val":I
    .local v9, "ret_val":I
    :goto_3
    return v9

    .line 114
    .end local v9    # "ret_val":I
    .restart local v1    # "dailyForecastArray":Lorg/json/JSONArray;
    .restart local v4    # "maxTemp":F
    .restart local v5    # "minTemp":F
    .restart local v7    # "resultObject":Lorg/json/JSONObject;
    .restart local v8    # "ret_val":I
    .restart local v10    # "singleForecastObject":Lorg/json/JSONObject;
    .restart local v11    # "temObject":Lorg/json/JSONObject;
    .restart local v12    # "tempRangeObject":Lorg/json/JSONObject;
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 119
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 141
    .end local v1    # "dailyForecastArray":Lorg/json/JSONArray;
    .end local v4    # "maxTemp":F
    .end local v5    # "minTemp":F
    .end local v7    # "resultObject":Lorg/json/JSONObject;
    .end local v10    # "singleForecastObject":Lorg/json/JSONObject;
    .end local v11    # "temObject":Lorg/json/JSONObject;
    .end local v12    # "tempRangeObject":Lorg/json/JSONObject;
    :cond_6
    const-string v13, "Ambient"

    const-string v14, "WeatherDataParser-parserWeatherMinMaxData Ambient Info is null"

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 145
    :catch_0
    move-exception v2

    .line 146
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v9, v8

    .line 147
    .end local v8    # "ret_val":I
    .restart local v9    # "ret_val":I
    goto :goto_3
.end method

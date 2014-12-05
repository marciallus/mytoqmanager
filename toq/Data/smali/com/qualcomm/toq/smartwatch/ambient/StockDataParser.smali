.class public Lcom/qualcomm/toq/smartwatch/ambient/StockDataParser;
.super Ljava/lang/Object;
.source "StockDataParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseAutocompleteResponse(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "responseData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p2, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    const-string v9, "Ambient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockListActivityResponse data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 103
    .local v4, "jsonObj":Lorg/json/JSONObject;
    if-eqz v4, :cond_2

    .line 105
    const-string v9, "LookupResponse"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 106
    .local v7, "resultSetJsonObj":Lorg/json/JSONObject;
    if-eqz v7, :cond_2

    .line 108
    const-string v9, "Data"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 110
    .local v6, "resultJsonArray":Lorg/json/JSONArray;
    if-eqz v6, :cond_2

    if-eqz p2, :cond_2

    .line 112
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 113
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "symbol"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 115
    .local v8, "symbol":Ljava/lang/String;
    const-string v9, "[\\s%*!@$^()?,;=]"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "changedSymbol":Ljava/lang/String;
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "description"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 120
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 121
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 124
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "concatenatedString":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "changedSymbol":Ljava/lang/String;
    .end local v1    # "concatenatedString":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "symbol":Ljava/lang/String;
    :cond_1
    const-string v9, "Ambient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "StockListActivityFinal arrayList:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v3    # "i":I
    .end local v4    # "jsonObj":Lorg/json/JSONObject;
    .end local v6    # "resultJsonArray":Lorg/json/JSONArray;
    .end local v7    # "resultSetJsonObj":Lorg/json/JSONObject;
    :cond_2
    :goto_1
    return-void

    .line 136
    :catch_0
    move-exception v2

    .line 137
    .local v2, "e":Lorg/json/JSONException;
    const-string v9, "Ambient"

    const-string v10, "StockListActivityCannot process JSON results"

    invoke-static {v9, v10, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public parseStockDataStream(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)I
    .locals 13
    .param p1, "jsonResponse"    # Ljava/lang/String;
    .param p2, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;

    .prologue
    .line 26
    const/4 v8, -0x1

    .line 28
    .local v8, "ret_code":I
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    move-object v2, p2

    .line 29
    check-cast v2, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    .line 31
    .local v2, "info":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    .local v3, "jsonObj":Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 36
    const-string v10, "QuoteResponse"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 38
    .local v7, "resultSetJsonObj":Lorg/json/JSONObject;
    if-eqz v7, :cond_2

    .line 40
    const/4 v8, 0x0

    .line 42
    const-string v10, "QuoteData"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 44
    .local v6, "resultJsonArray":Lorg/json/JSONArray;
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "All"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 47
    .local v4, "jsonObj1":Lorg/json/JSONObject;
    const-string v10, "lastTrade"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 48
    .local v9, "temp":Ljava/lang/String;
    const-string v10, "Ambient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "StockDataParser last value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    if-eqz v9, :cond_0

    .line 52
    invoke-virtual {v2, v9}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setLastValue(Ljava/lang/String;)V

    .line 53
    const-string v10, "Ambient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Last"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    const-string v10, "changeClose"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "change":Ljava/lang/String;
    const-string v10, "Ambient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "StockDataParser change value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {v2, v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setChange(Ljava/lang/String;)V

    .line 63
    :cond_1
    const-string v10, "changeClosePercentage"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "perChange":Ljava/lang/String;
    const-string v10, "Ambient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "StockDataParser perChange value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    if-eqz v5, :cond_2

    .line 68
    invoke-virtual {v2, v5}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setPercentageChange(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .end local v0    # "change":Ljava/lang/String;
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    .end local v4    # "jsonObj1":Lorg/json/JSONObject;
    .end local v5    # "perChange":Ljava/lang/String;
    .end local v6    # "resultJsonArray":Lorg/json/JSONArray;
    .end local v7    # "resultSetJsonObj":Lorg/json/JSONObject;
    .end local v9    # "temp":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getLastValue()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getPercentageChange()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getChange()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    const-string v10, ""

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getChange()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, ""

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getLastValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, ""

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getPercentageChange()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 86
    :cond_3
    const-string v10, "push_data_error_image"

    invoke-virtual {v2, v10}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    .line 89
    .end local v2    # "info":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :cond_4
    return v8

    .line 76
    .restart local v2    # "info":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

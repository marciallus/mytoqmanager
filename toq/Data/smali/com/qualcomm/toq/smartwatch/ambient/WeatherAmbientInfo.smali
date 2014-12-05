.class public Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
.super Ljava/lang/Object;
.source "WeatherAmbientInfo.java"

# interfaces
.implements Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "WeatherAmbientInfo"

.field protected static final serialVersionUID:J = 0x77bed5938b1fa6e4L


# instance fields
.field protected appImageDestinationLocation:Ljava/lang/String;

.field protected appImageSourceLocation:Ljava/lang/String;

.field protected cityName:Ljava/lang/String;

.field protected countryName:Ljava/lang/String;

.field protected destinationLocation:Ljava/lang/String;

.field protected gmtOffset:Ljava/lang/String;

.field protected hourTemp:I

.field protected iconNumber:I

.field protected key:Ljava/lang/String;

.field protected maxTemp:I

.field protected minTemp:I

.field protected pushImageType:Ljava/lang/String;

.field protected searchKeyText:Ljava/lang/String;

.field protected sourceLocation:Ljava/lang/String;

.field protected stateName:Ljava/lang/String;

.field protected weatherCondition:Ljava/lang/String;

.field protected worldClockWeatherImgPath:Ljava/lang/String;

.field protected worldCockFolderPath:Ljava/lang/String;

.field protected worldCockTempImgPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->weatherCondition:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->cityName:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->stateName:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->countryName:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->sourceLocation:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->destinationLocation:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->appImageSourceLocation:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->appImageDestinationLocation:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->key:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->searchKeyText:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->pushImageType:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->gmtOffset:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->worldCockFolderPath:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->worldCockTempImgPath:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->worldClockWeatherImgPath:Ljava/lang/String;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->iconNumber:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "compareObj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 186
    if-ne p0, p1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v1

    .line 189
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 190
    goto :goto_0

    .line 192
    :cond_2
    instance-of v3, p1, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    if-nez v3, :cond_3

    move v1, v2

    .line 195
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 197
    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;

    .line 203
    .local v0, "compareWeatherAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;
    instance-of v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/CurrentCityWeatherAmbientInfo;

    if-eqz v3, :cond_4

    .line 204
    const-string v3, "WeatherAmbientInfo"

    const-string v4, "Equals getting called for Current City"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_4
    const-string v3, "WeatherAmbientInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "City Name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->cityName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->maxTemp:I

    iget v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->maxTemp:I

    if-eq v3, v4, :cond_5

    .line 209
    const-string v1, "WeatherAmbientInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Max Temp is not same this.maxTemp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->maxTemp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "compareWeatherAmbientInfo.maxTemp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->maxTemp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 212
    goto :goto_0

    .line 214
    :cond_5
    iget v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->minTemp:I

    iget v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->minTemp:I

    if-eq v3, v4, :cond_6

    .line 215
    const-string v1, "WeatherAmbientInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Min Temp is not same this.minTemp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->minTemp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "compareWeatherAmbientInfo.minTemp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->minTemp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 218
    goto/16 :goto_0

    .line 220
    :cond_6
    iget v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->hourTemp:I

    iget v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->hourTemp:I

    if-eq v3, v4, :cond_7

    .line 221
    const-string v1, "WeatherAmbientInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hour Temp is not same this.hourTemp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->hourTemp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "compareWeatherAmbientInfo.hourTemp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->hourTemp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 224
    goto/16 :goto_0

    .line 226
    :cond_7
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->weatherCondition:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->weatherCondition:Ljava/lang/String;

    if-eqz v3, :cond_9

    :cond_8
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->weatherCondition:Ljava/lang/String;

    if-nez v3, :cond_a

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->weatherCondition:Ljava/lang/String;

    if-eqz v3, :cond_a

    :cond_9
    move v1, v2

    .line 228
    goto/16 :goto_0

    .line 230
    :cond_a
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->weatherCondition:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->weatherCondition:Ljava/lang/String;

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->weatherCondition:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 233
    const-string v1, "WeatherAmbientInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Weather Condition is not same this.weatherCondition"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->weatherCondition:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "compareWeatherAmbientInfo.weatherCondition"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->weatherCondition:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 237
    goto/16 :goto_0

    .line 239
    :cond_b
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->cityName:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->cityName:Ljava/lang/String;

    if-eqz v3, :cond_d

    :cond_c
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->cityName:Ljava/lang/String;

    if-nez v3, :cond_e

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->cityName:Ljava/lang/String;

    if-eqz v3, :cond_e

    :cond_d
    move v1, v2

    .line 241
    goto/16 :goto_0

    .line 243
    :cond_e
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->cityName:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->cityName:Ljava/lang/String;

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->cityName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 246
    const-string v1, "WeatherAmbientInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "City Name is not same this.cityName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->cityName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "compareWeatherAmbientInfo.cityName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->cityName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 249
    goto/16 :goto_0

    .line 251
    :cond_f
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->pushImageType:Ljava/lang/String;

    if-nez v3, :cond_10

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->pushImageType:Ljava/lang/String;

    if-nez v3, :cond_11

    :cond_10
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->pushImageType:Ljava/lang/String;

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->pushImageType:Ljava/lang/String;

    if-nez v3, :cond_12

    :cond_11
    move v1, v2

    .line 253
    goto/16 :goto_0

    .line 256
    :cond_12
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->pushImageType:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->pushImageType:Ljava/lang/String;

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->pushImageType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 258
    goto/16 :goto_0
.end method

.method public getAppImageDestinationLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->appImageDestinationLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getAppImageSourceLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->appImageSourceLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->countryName:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationLocation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 169
    const-string v0, "WeatherAmbientInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDestinationLocation() Weather: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->destinationLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->destinationLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getGmtOffset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->gmtOffset:Ljava/lang/String;

    return-object v0
.end method

.method public getHourTemp()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->hourTemp:I

    return v0
.end method

.method public getIconNumber()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->iconNumber:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxTemp()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->maxTemp:I

    return v0
.end method

.method public getMinTemp()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->minTemp:I

    return v0
.end method

.method public getPushImageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->pushImageType:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchKeyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->searchKeyText:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->sourceLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getStateName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->stateName:Ljava/lang/String;

    return-object v0
.end method

.method public getWeatherCondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->weatherCondition:Ljava/lang/String;

    return-object v0
.end method

.method public getWorldClockCityFolderPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->worldCockFolderPath:Ljava/lang/String;

    return-object v0
.end method

.method public getWorldClockTempImgPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->worldCockTempImgPath:Ljava/lang/String;

    return-object v0
.end method

.method public getWorldClockWeatherImgPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->worldClockWeatherImgPath:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 153
    const/16 v0, 0x1f

    .line 154
    .local v0, "primeNumber":I
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->cityName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public setAppImageDestinationLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "appImageDestinationLocation"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->appImageDestinationLocation:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setAppImageSourceLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "appImageSourceLocation"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->appImageSourceLocation:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .locals 0
    .param p1, "cityName"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->cityName:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setCountryName(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryName"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->countryName:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setDestinationLocation(Ljava/lang/String;)V
    .locals 3
    .param p1, "destinationLocation"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->destinationLocation:Ljava/lang/String;

    .line 180
    const-string v0, "WeatherAmbientInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDestinationLocation() Weather: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->destinationLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public setGmtOffset(Ljava/lang/String;)V
    .locals 0
    .param p1, "gmtOffset"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->gmtOffset:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setHourTemp(I)V
    .locals 0
    .param p1, "hourTemp"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->hourTemp:I

    .line 60
    return-void
.end method

.method public setIconNumber(I)V
    .locals 0
    .param p1, "iconNumber"    # I

    .prologue
    .line 290
    iput p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->iconNumber:I

    .line 291
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->key:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setMaxTemp(I)V
    .locals 0
    .param p1, "maxTemp"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->maxTemp:I

    .line 44
    return-void
.end method

.method public setMinTemp(I)V
    .locals 0
    .param p1, "minTemp"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->minTemp:I

    .line 52
    return-void
.end method

.method public setPushImageType(Ljava/lang/String;)V
    .locals 0
    .param p1, "pushImageType"    # Ljava/lang/String;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->pushImageType:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setSearchKeyText(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchKeyText"    # Ljava/lang/String;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->searchKeyText:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public setSourceLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceLocation"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->sourceLocation:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setStateName(Ljava/lang/String;)V
    .locals 0
    .param p1, "stateName"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->stateName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setWeatherCondition(Ljava/lang/String;)V
    .locals 0
    .param p1, "weatherCondition"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->weatherCondition:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setWorldClockCityFolderPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "worldCockFolderPath"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->worldCockFolderPath:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setWorldClockTempImgPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "worldCockTempImgPath"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->worldCockTempImgPath:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setWorldClockWeatherImgPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "worldClockWeatherImgPath"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherAmbientInfo;->worldClockWeatherImgPath:Ljava/lang/String;

    .line 148
    return-void
.end method

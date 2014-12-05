.class public Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
.super Ljava/lang/Object;
.source "StockAmbientInfo.java"

# interfaces
.implements Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "StockAmbientInfo"

.field private static final serialVersionUID:J = -0x1e1b1796c0966ca9L


# instance fields
.field protected appImageDestinationLocation:Ljava/lang/String;

.field protected appImageSourceLocation:Ljava/lang/String;

.field private change:Ljava/lang/String;

.field private companyName:Ljava/lang/String;

.field private companySymbol:Ljava/lang/String;

.field private darkImageDestinationLocation:Ljava/lang/String;

.field private darkImageSourceLocation:Ljava/lang/String;

.field private destinationLocation:Ljava/lang/String;

.field private lastValue:Ljava/lang/String;

.field private percentageChange:Ljava/lang/String;

.field private pushImageType:Ljava/lang/String;

.field private searchKeyText:Ljava/lang/String;

.field private sourceLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->percentageChange:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->change:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->lastValue:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->companyName:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->companySymbol:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->sourceLocation:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->darkImageSourceLocation:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->destinationLocation:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->darkImageDestinationLocation:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->appImageSourceLocation:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->appImageDestinationLocation:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->searchKeyText:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->pushImageType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "compareObj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    if-ne p0, p1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v1

    .line 119
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 120
    goto :goto_0

    .line 122
    :cond_2
    instance-of v3, p1, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    if-nez v3, :cond_3

    move v1, v2

    .line 124
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 126
    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    .line 132
    .local v0, "compareStockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->percentageChange:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->percentageChange:Ljava/lang/String;

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->percentageChange:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->percentageChange:Ljava/lang/String;

    if-eqz v3, :cond_6

    :cond_5
    move v1, v2

    .line 134
    goto :goto_0

    .line 136
    :cond_6
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->lastValue:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->lastValue:Ljava/lang/String;

    if-eqz v3, :cond_8

    :cond_7
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->lastValue:Ljava/lang/String;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->lastValue:Ljava/lang/String;

    if-eqz v3, :cond_9

    :cond_8
    move v1, v2

    .line 138
    goto :goto_0

    .line 140
    :cond_9
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->change:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->change:Ljava/lang/String;

    if-eqz v3, :cond_b

    :cond_a
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->change:Ljava/lang/String;

    if-nez v3, :cond_c

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->change:Ljava/lang/String;

    if-eqz v3, :cond_c

    :cond_b
    move v1, v2

    .line 142
    goto :goto_0

    .line 146
    :cond_c
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->percentageChange:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->percentageChange:Ljava/lang/String;

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->percentageChange:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    move v1, v2

    .line 148
    goto :goto_0

    .line 150
    :cond_d
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->lastValue:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->lastValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->lastValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    move v1, v2

    .line 152
    goto :goto_0

    .line 154
    :cond_e
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->change:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->change:Ljava/lang/String;

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->change:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    move v1, v2

    .line 156
    goto :goto_0

    .line 159
    :cond_f
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->companySymbol:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->companySymbol:Ljava/lang/String;

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->companySymbol:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    move v1, v2

    .line 161
    goto/16 :goto_0

    .line 163
    :cond_10
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->pushImageType:Ljava/lang/String;

    if-nez v3, :cond_11

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->pushImageType:Ljava/lang/String;

    if-nez v3, :cond_12

    :cond_11
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->pushImageType:Ljava/lang/String;

    if-eqz v3, :cond_13

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->pushImageType:Ljava/lang/String;

    if-nez v3, :cond_13

    :cond_12
    move v1, v2

    .line 165
    goto/16 :goto_0

    .line 168
    :cond_13
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->pushImageType:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->pushImageType:Ljava/lang/String;

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->pushImageType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 170
    goto/16 :goto_0
.end method

.method public getAppImageDestinationLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->appImageDestinationLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getAppImageSourceLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->appImageSourceLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getChange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->change:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->companyName:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanySymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->companySymbol:Ljava/lang/String;

    return-object v0
.end method

.method public getDarkImageDestinationLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->darkImageDestinationLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getDarkImageSourceLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->darkImageSourceLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationLocation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    const-string v0, "StockAmbientInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDestinationLocation() Stock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->destinationLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->destinationLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getLastValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->lastValue:Ljava/lang/String;

    return-object v0
.end method

.method public getPercentageChange()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->percentageChange:Ljava/lang/String;

    return-object v0
.end method

.method public getPushImageType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->pushImageType:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchKeyText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->searchKeyText:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->sourceLocation:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 179
    const/16 v0, 0x1f

    .line 180
    .local v0, "primeNumber":I
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->companySymbol:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public setAppImageDestinationLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "appImageDestinationLocation"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->appImageDestinationLocation:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setAppImageSourceLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "appImageSourceLocation"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->appImageSourceLocation:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public setChange(Ljava/lang/String;)V
    .locals 0
    .param p1, "change"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->change:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setCompanyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyName"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->companyName:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setCompanySymbol(Ljava/lang/String;)V
    .locals 0
    .param p1, "companySymbol"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->companySymbol:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setDarkImageDestinationLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "darkImageDestinationLocation"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->darkImageDestinationLocation:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setDarkImageSourceLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "darkImageSourceLocation"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->darkImageSourceLocation:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setDestinationLocation(Ljava/lang/String;)V
    .locals 3
    .param p1, "destinationLocation"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->destinationLocation:Ljava/lang/String;

    .line 110
    const-string v0, "StockAmbientInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDestinationLocation() Stock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->destinationLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public setLastValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastValue"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->lastValue:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setPercentageChange(Ljava/lang/String;)V
    .locals 0
    .param p1, "percentageChange"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->percentageChange:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setPushImageType(Ljava/lang/String;)V
    .locals 0
    .param p1, "pushImageType"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->pushImageType:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setSearchKeyText(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchKeyText"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->searchKeyText:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setSourceLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceLocation"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->sourceLocation:Ljava/lang/String;

    .line 96
    return-void
.end method

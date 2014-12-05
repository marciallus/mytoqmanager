.class public Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;
.super Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;
.source "StockAmbientDisplay.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StockAmbientDisplay"


# instance fields
.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ambient/DefaultAmbientDisplay;-><init>()V

    .line 48
    return-void
.end method

.method private getResourceObject()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 928
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 929
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public retreiveDataFromStream(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    .locals 12
    .param p1, "jsonResponse"    # Ljava/lang/String;
    .param p2, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    .param p3, "queryType"    # Ljava/lang/String;

    .prologue
    .line 867
    move-object v2, p2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    .line 871
    .local v2, "info":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 873
    .local v3, "jsonObj":Lorg/json/JSONObject;
    if-eqz v3, :cond_2

    .line 876
    const-string v9, "QuoteResponse"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 878
    .local v7, "resultSetJsonObj":Lorg/json/JSONObject;
    if-eqz v7, :cond_2

    .line 879
    const-string v9, "QuoteData"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 881
    .local v6, "resultJsonArray":Lorg/json/JSONArray;
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "All"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 884
    .local v4, "jsonObj1":Lorg/json/JSONObject;
    const-string v9, "lastTrade"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 885
    .local v8, "temp":Ljava/lang/String;
    const-string v9, "StockAmbientDisplay"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "last value = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    if-eqz v8, :cond_0

    .line 888
    invoke-virtual {v2, v8}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setLastValue(Ljava/lang/String;)V

    .line 889
    const-string v9, "StockAmbientDisplay"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Last"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    :cond_0
    const-string v9, "changeClose"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 892
    .local v0, "change":Ljava/lang/String;
    const-string v9, "StockAmbientDisplay"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "change value = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    if-eqz v0, :cond_1

    .line 895
    invoke-virtual {v2, v0}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setChange(Ljava/lang/String;)V

    .line 898
    :cond_1
    const-string v9, "changeClosePercentage"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 899
    .local v5, "perChange":Ljava/lang/String;
    const-string v9, "StockAmbientDisplay"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "perChange value = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    if-eqz v5, :cond_2

    .line 902
    invoke-virtual {v2, v5}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setPercentageChange(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    .end local v0    # "change":Ljava/lang/String;
    .end local v3    # "jsonObj":Lorg/json/JSONObject;
    .end local v4    # "jsonObj1":Lorg/json/JSONObject;
    .end local v5    # "perChange":Ljava/lang/String;
    .end local v6    # "resultJsonArray":Lorg/json/JSONArray;
    .end local v7    # "resultSetJsonObj":Lorg/json/JSONObject;
    .end local v8    # "temp":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getLastValue()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getPercentageChange()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getChange()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    const-string v9, ""

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getChange()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, ""

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getLastValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, ""

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getPercentageChange()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 920
    :cond_3
    const-string v9, "push_data_error_image"

    invoke-virtual {v2, v9}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setPushImageType(Ljava/lang/String;)V

    .line 923
    :cond_4
    return-object v2

    .line 910
    :catch_0
    move-exception v1

    .line 912
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public writeClockDataOntoBitmap(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Landroid/graphics/Bitmap;
    .locals 23
    .param p1, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 375
    move-object/from16 v20, p1

    check-cast v20, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getChange()Ljava/lang/String;

    move-result-object v4

    .line 377
    .local v4, "change":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 378
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :cond_0
    move-object/from16 v20, p1

    .line 380
    check-cast v20, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getLastValue()Ljava/lang/String;

    move-result-object v11

    .line 382
    .local v11, "last":Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 383
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    :cond_1
    move-object/from16 v20, p1

    .line 385
    check-cast v20, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getPercentageChange()Ljava/lang/String;

    move-result-object v17

    .line 387
    .local v17, "percentageChange":Ljava/lang/String;
    if-eqz v17, :cond_2

    .line 388
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    :cond_2
    move-object/from16 v20, p1

    .line 390
    check-cast v20, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanyName()Ljava/lang/String;

    move-result-object v6

    .line 391
    .local v6, "companyName":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 392
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    :cond_3
    move-object/from16 v20, p1

    .line 394
    check-cast v20, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanySymbol()Ljava/lang/String;

    move-result-object v7

    .line 395
    .local v7, "companySymbol":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 396
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 399
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->getResourceObject()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    .line 401
    const/4 v10, 0x0

    .line 402
    .local v10, "imageId":I
    const/4 v12, 0x0

    .line 405
    .local v12, "mainImage":Landroid/graphics/Bitmap;
    const v10, 0x7f020124

    .line 407
    const v10, 0x7f020125

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v20

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 411
    const-string v21, "push_offline_image"

    move-object/from16 v20, p1

    check-cast v20, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 412
    if-eqz v17, :cond_5

    if-eqz v11, :cond_5

    if-eqz v4, :cond_5

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 414
    :cond_5
    const-string v11, "-- --"

    .line 415
    const-string v17, ""

    .line 416
    const-string v4, ""

    .line 433
    .end local p1    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    :cond_6
    :goto_0
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 438
    .local v16, "paintText":Landroid/graphics/Paint;
    new-instance v18, Landroid/graphics/Canvas;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 440
    .local v18, "textCanvas":Landroid/graphics/Canvas;
    if-eqz v18, :cond_b

    .line 442
    if-eqz v16, :cond_8

    .line 446
    sget-object v20, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 447
    sget-object v20, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 448
    const/high16 v20, 0x42500000

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 449
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/base/utils/ToqData;->getQcomRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 451
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 453
    const/16 v20, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 455
    const/16 v20, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 457
    if-eqz v7, :cond_e

    .line 458
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_7

    .line 459
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    const/16 v22, 0x6

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ".."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 462
    :cond_7
    const/high16 v20, 0x41a00000

    const/high16 v21, 0x42c20000

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Paint;->descent()F

    move-result v22

    sub-float v21, v21, v22

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v16

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 474
    :cond_8
    :goto_1
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 475
    .local v15, "paintLast":Landroid/graphics/Paint;
    if-eqz v15, :cond_a

    .line 476
    sget-object v20, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 477
    sget-object v20, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 478
    const/high16 v20, 0x42100000

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 479
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/base/utils/ToqData;->getQcomSemiboldTypeFace()Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 481
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 483
    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 485
    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 487
    if-eqz v11, :cond_f

    .line 488
    const-string v20, "--"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_9

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_9

    .line 491
    invoke-static {v11}, Lcom/qualcomm/toq/base/utils/Utils;->getCommaSeparatedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 494
    :cond_9
    const/high16 v20, 0x41a00000

    const/high16 v21, 0x430a0000

    invoke-virtual {v15}, Landroid/graphics/Paint;->descent()F

    move-result v22

    sub-float v21, v21, v22

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v11, v1, v2, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 507
    :cond_a
    :goto_2
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 508
    .local v14, "paintChange_PerChange":Landroid/graphics/Paint;
    if-eqz v14, :cond_b

    .line 509
    sget-object v20, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 510
    sget-object v20, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 511
    const/high16 v20, 0x41b80000

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 512
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/qualcomm/toq/base/utils/ToqData;->getQcomSemiboldTypeFace()Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 514
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 516
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 517
    .local v13, "paintArrow":Landroid/graphics/Paint;
    sget-object v20, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 519
    const-string v5, "-- %"

    .line 521
    .local v5, "change_perChange":Ljava/lang/String;
    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 524
    if-eqz v4, :cond_b

    if-eqz v17, :cond_b

    :try_start_0
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b

    const-string v20, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b

    .line 527
    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v20

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_10

    .line 528
    invoke-static/range {v17 .. v17}, Lcom/qualcomm/toq/base/utils/Utils;->removePositivePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 529
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 532
    const/16 v19, 0x0

    .line 534
    .local v19, "upArrow":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f0200dd

    invoke-static/range {v20 .. v21}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v20

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 539
    const/high16 v20, 0x41a00000

    const/high16 v21, 0x43190000

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 562
    .end local v19    # "upArrow":Landroid/graphics/Bitmap;
    :goto_3
    const/high16 v20, 0x42580000

    const/high16 v21, 0x43330000

    invoke-virtual {v14}, Landroid/graphics/Paint;->descent()F

    move-result v22

    sub-float v21, v21, v22

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v5, v1, v2, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 566
    sget-object v20, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 567
    const v20, 0x438a8000

    const/high16 v21, 0x43330000

    invoke-virtual {v14}, Landroid/graphics/Paint;->descent()F

    move-result v22

    sub-float v21, v21, v22

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v4, v1, v2, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    .end local v5    # "change_perChange":Ljava/lang/String;
    .end local v10    # "imageId":I
    .end local v12    # "mainImage":Landroid/graphics/Bitmap;
    .end local v13    # "paintArrow":Landroid/graphics/Paint;
    .end local v14    # "paintChange_PerChange":Landroid/graphics/Paint;
    .end local v15    # "paintLast":Landroid/graphics/Paint;
    .end local v16    # "paintText":Landroid/graphics/Paint;
    .end local v18    # "textCanvas":Landroid/graphics/Canvas;
    :cond_b
    :goto_4
    return-object v12

    .line 421
    .restart local v10    # "imageId":I
    .restart local v12    # "mainImage":Landroid/graphics/Bitmap;
    .restart local p1    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    :cond_c
    const-string v20, "push_data_error_image"

    check-cast p1, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    .end local p1    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 423
    if-eqz v17, :cond_d

    if-eqz v11, :cond_d

    if-eqz v4, :cond_d

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 425
    :cond_d
    const-string v11, "-- --"

    .line 426
    const-string v17, ""

    .line 427
    const-string v4, ""

    goto/16 :goto_0

    .line 468
    .restart local v16    # "paintText":Landroid/graphics/Paint;
    .restart local v18    # "textCanvas":Landroid/graphics/Canvas;
    :cond_e
    const-string v20, "StockAmbientDisplay"

    const-string v21, "companySymbol is null"

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 500
    .restart local v15    # "paintLast":Landroid/graphics/Paint;
    :cond_f
    const-string v20, "StockAmbientDisplay"

    const-string v21, "last is null"

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 545
    .restart local v5    # "change_perChange":Ljava/lang/String;
    .restart local v13    # "paintArrow":Landroid/graphics/Paint;
    .restart local v14    # "paintChange_PerChange":Landroid/graphics/Paint;
    :cond_10
    :try_start_1
    invoke-static/range {v17 .. v17}, Lcom/qualcomm/toq/base/utils/Utils;->removeNegativePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 546
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "%"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 550
    const/4 v8, 0x0

    .line 552
    .local v8, "downArrow":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f0200db

    invoke-static/range {v20 .. v21}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v20

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 557
    const/high16 v20, 0x41a00000

    const/high16 v21, 0x43190000

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v8, v1, v2, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 573
    .end local v8    # "downArrow":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v9

    .line 574
    .local v9, "e":Ljava/lang/NumberFormatException;
    const-string v20, "StockAmbientDisplay"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unable to retreive percentage change as value is empty or not a number"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 587
    .end local v5    # "change_perChange":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .end local v10    # "imageId":I
    .end local v12    # "mainImage":Landroid/graphics/Bitmap;
    .end local v13    # "paintArrow":Landroid/graphics/Paint;
    .end local v14    # "paintChange_PerChange":Landroid/graphics/Paint;
    .end local v15    # "paintLast":Landroid/graphics/Paint;
    .end local v16    # "paintText":Landroid/graphics/Paint;
    .end local v18    # "textCanvas":Landroid/graphics/Canvas;
    .restart local p1    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    :cond_11
    const-string v20, "StockAmbientDisplay"

    const-string v21, "Context is null, not able to write data on bitmap"

    invoke-static/range {v20 .. v21}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const/4 v12, 0x0

    goto/16 :goto_4
.end method

.method public writeClockDataOntoBitmap(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;I)Landroid/graphics/Bitmap;
    .locals 24
    .param p1, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    .param p2, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 596
    move-object/from16 v21, p1

    check-cast v21, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    invoke-virtual/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getChange()Ljava/lang/String;

    move-result-object v4

    .line 598
    .local v4, "change":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 599
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :cond_0
    move-object/from16 v21, p1

    .line 601
    check-cast v21, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    invoke-virtual/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getLastValue()Ljava/lang/String;

    move-result-object v12

    .line 603
    .local v12, "last":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 604
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    :cond_1
    move-object/from16 v21, p1

    .line 606
    check-cast v21, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    invoke-virtual/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getPercentageChange()Ljava/lang/String;

    move-result-object v18

    .line 608
    .local v18, "percentageChange":Ljava/lang/String;
    if-eqz v18, :cond_2

    .line 609
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    :cond_2
    move-object/from16 v21, p1

    .line 611
    check-cast v21, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    invoke-virtual/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanyName()Ljava/lang/String;

    move-result-object v7

    .line 612
    .local v7, "companyName":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 613
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    :cond_3
    move-object/from16 v21, p1

    .line 615
    check-cast v21, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    invoke-virtual/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanySymbol()Ljava/lang/String;

    move-result-object v8

    .line 616
    .local v8, "companySymbol":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 617
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 620
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->getResourceObject()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    if-eqz v21, :cond_18

    .line 622
    const/4 v11, 0x0

    .line 623
    .local v11, "imageId":I
    const/4 v13, 0x0

    .line 626
    .local v13, "mainImage":Landroid/graphics/Bitmap;
    const v11, 0x7f020124

    .line 628
    if-nez p2, :cond_d

    .line 629
    const v11, 0x7f020125

    .line 635
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v21

    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 637
    const-string v22, "push_offline_image"

    move-object/from16 v21, p1

    check-cast v21, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    invoke-virtual/range {v21 .. v21}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 638
    if-eqz v18, :cond_5

    if-eqz v12, :cond_5

    if-eqz v4, :cond_5

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 640
    :cond_5
    const-string v12, "-- --"

    .line 641
    const-string v18, ""

    .line 642
    const-string v4, ""

    .line 657
    .end local p1    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    :cond_6
    :goto_1
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 659
    .local v17, "paintText":Landroid/graphics/Paint;
    new-instance v19, Landroid/graphics/Canvas;

    move-object/from16 v0, v19

    invoke-direct {v0, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 660
    .local v19, "textCanvas":Landroid/graphics/Canvas;
    const-string v5, ""

    .line 661
    .local v5, "changeSign":Ljava/lang/String;
    if-eqz v19, :cond_b

    .line 663
    if-eqz v17, :cond_8

    .line 667
    sget-object v21, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 668
    sget-object v21, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 669
    const/high16 v21, 0x42500000

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 670
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/qualcomm/toq/base/utils/ToqData;->getQcomRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 672
    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 674
    const/16 v21, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 676
    if-nez p2, :cond_10

    .line 677
    const/16 v21, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 683
    :goto_2
    if-eqz v8, :cond_11

    .line 684
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x6

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_7

    .line 685
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v22, 0x0

    const/16 v23, 0x6

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 688
    :cond_7
    const/high16 v21, 0x41a00000

    const/high16 v22, 0x42c20000

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->descent()F

    move-result v23

    sub-float v22, v22, v23

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v17

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 700
    :cond_8
    :goto_3
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 701
    .local v16, "paintLast":Landroid/graphics/Paint;
    if-eqz v16, :cond_a

    .line 702
    sget-object v21, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 703
    sget-object v21, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 704
    const/high16 v21, 0x42100000

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 705
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/qualcomm/toq/base/utils/ToqData;->getQcomSemiboldTypeFace()Landroid/graphics/Typeface;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 707
    const/16 v21, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 709
    const/16 v21, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 711
    if-nez p2, :cond_12

    .line 712
    const/16 v21, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 718
    :goto_4
    if-eqz v12, :cond_13

    .line 719
    const-string v21, "--"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_9

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_9

    .line 722
    invoke-static {v12}, Lcom/qualcomm/toq/base/utils/Utils;->getCommaSeparatedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 725
    :cond_9
    const/high16 v21, 0x41a00000

    const/high16 v22, 0x430a0000

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Paint;->descent()F

    move-result v23

    sub-float v22, v22, v23

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v16

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 738
    :cond_a
    :goto_5
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 739
    .local v15, "paintChange_PerChange":Landroid/graphics/Paint;
    if-eqz v15, :cond_b

    .line 740
    sget-object v21, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 741
    sget-object v21, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 742
    const/high16 v21, 0x41c00000

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 743
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/qualcomm/toq/base/utils/ToqData;->getQcomSemiboldTypeFace()Landroid/graphics/Typeface;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 745
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 747
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 748
    .local v14, "paintArrow":Landroid/graphics/Paint;
    sget-object v21, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 750
    const-string v6, "-- %"

    .line 751
    .local v6, "change_perChange":Ljava/lang/String;
    if-nez p2, :cond_14

    .line 752
    const/16 v21, -0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 759
    :goto_6
    if-eqz v4, :cond_b

    if-eqz v18, :cond_b

    :try_start_0
    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_b

    const-string v21, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_b

    .line 762
    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Float;->floatValue()F

    move-result v21

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-ltz v21, :cond_16

    .line 763
    const-string v21, "[+]"

    const-string v22, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 765
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "%"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 768
    const/16 v20, 0x0

    .line 769
    .local v20, "upArrow":Landroid/graphics/Bitmap;
    if-nez p2, :cond_15

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0200dd

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v21

    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 782
    :goto_7
    const/high16 v21, 0x41a00000

    const/high16 v22, 0x43190000

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 786
    const-string v5, "+ "

    .line 815
    .end local v20    # "upArrow":Landroid/graphics/Bitmap;
    :goto_8
    const/high16 v21, 0x42580000

    const/high16 v22, 0x43330000

    invoke-virtual {v15}, Landroid/graphics/Paint;->descent()F

    move-result v23

    sub-float v22, v22, v23

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v6, v1, v2, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 819
    sget-object v21, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 820
    const-string v21, "[+-]"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 821
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 822
    const v21, 0x438a8000

    const/high16 v22, 0x43330000

    invoke-virtual {v15}, Landroid/graphics/Paint;->descent()F

    move-result v23

    sub-float v22, v22, v23

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    .end local v6    # "change_perChange":Ljava/lang/String;
    .end local v14    # "paintArrow":Landroid/graphics/Paint;
    .end local v15    # "paintChange_PerChange":Landroid/graphics/Paint;
    .end local v16    # "paintLast":Landroid/graphics/Paint;
    :cond_b
    :goto_9
    if-eqz v13, :cond_c

    .line 839
    const-string v21, "StockAmbientDisplay"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " Has Alpha "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    const-string v21, "StockAmbientDisplay"

    const-string v22, "Bitmap is not null"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    .end local v5    # "changeSign":Ljava/lang/String;
    .end local v11    # "imageId":I
    .end local v13    # "mainImage":Landroid/graphics/Bitmap;
    .end local v17    # "paintText":Landroid/graphics/Paint;
    .end local v19    # "textCanvas":Landroid/graphics/Canvas;
    :cond_c
    :goto_a
    return-object v13

    .line 632
    .restart local v11    # "imageId":I
    .restart local v13    # "mainImage":Landroid/graphics/Bitmap;
    .restart local p1    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    :cond_d
    const v11, 0x7f020126

    goto/16 :goto_0

    .line 647
    :cond_e
    const-string v21, "push_data_error_image"

    check-cast p1, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    .end local p1    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 649
    if-eqz v18, :cond_f

    if-eqz v12, :cond_f

    if-eqz v4, :cond_f

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 651
    :cond_f
    const-string v12, "-- --"

    .line 652
    const-string v18, ""

    .line 653
    const-string v4, ""

    goto/16 :goto_1

    .line 680
    .restart local v5    # "changeSign":Ljava/lang/String;
    .restart local v17    # "paintText":Landroid/graphics/Paint;
    .restart local v19    # "textCanvas":Landroid/graphics/Canvas;
    :cond_10
    const/high16 v21, -0x1000000

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    .line 694
    :cond_11
    const-string v21, "StockAmbientDisplay"

    const-string v22, "companySymbol is null"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 715
    .restart local v16    # "paintLast":Landroid/graphics/Paint;
    :cond_12
    const/high16 v21, -0x1000000

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 731
    :cond_13
    const-string v21, "StockAmbientDisplay"

    const-string v22, "last is null"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 755
    .restart local v6    # "change_perChange":Ljava/lang/String;
    .restart local v14    # "paintArrow":Landroid/graphics/Paint;
    .restart local v15    # "paintChange_PerChange":Landroid/graphics/Paint;
    :cond_14
    const/high16 v21, -0x1000000

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_6

    .line 776
    .restart local v20    # "upArrow":Landroid/graphics/Bitmap;
    :cond_15
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0200dc

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v21

    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v20

    goto/16 :goto_7

    .line 789
    .end local v20    # "upArrow":Landroid/graphics/Bitmap;
    :cond_16
    const-string v21, "[-]"

    const-string v22, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 791
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "%"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 795
    const/4 v9, 0x0

    .line 797
    .local v9, "downArrow":Landroid/graphics/Bitmap;
    if-nez p2, :cond_17

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0200db

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v21

    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 809
    :goto_b
    const/high16 v21, 0x41a00000

    const/high16 v22, 0x43190000

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v9, v1, v2, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 813
    const-string v5, "- "

    goto/16 :goto_8

    .line 804
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    move-object/from16 v21, v0

    const v22, 0x7f0200da

    invoke-static/range {v21 .. v22}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v21

    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto :goto_b

    .line 828
    .end local v9    # "downArrow":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v10

    .line 829
    .local v10, "e":Ljava/lang/NumberFormatException;
    const-string v21, "StockAmbientDisplay"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unable to retreive percentage change as value is empty or not a number"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 847
    .end local v5    # "changeSign":Ljava/lang/String;
    .end local v6    # "change_perChange":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    .end local v11    # "imageId":I
    .end local v13    # "mainImage":Landroid/graphics/Bitmap;
    .end local v14    # "paintArrow":Landroid/graphics/Paint;
    .end local v15    # "paintChange_PerChange":Landroid/graphics/Paint;
    .end local v16    # "paintLast":Landroid/graphics/Paint;
    .end local v17    # "paintText":Landroid/graphics/Paint;
    .end local v19    # "textCanvas":Landroid/graphics/Canvas;
    .restart local p1    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    :cond_18
    const-string v21, "StockAmbientDisplay"

    const-string v22, "Context is null, not able to write data on bitmap"

    invoke-static/range {v21 .. v22}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const/4 v13, 0x0

    goto/16 :goto_a
.end method

.method public writeDataOntoBitmap(Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;)Landroid/graphics/Bitmap;
    .locals 38
    .param p1, "ambientInfo"    # Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    move-object/from16 v3, p1

    check-cast v3, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getChange()Ljava/lang/String;

    move-result-object v20

    .line 66
    .local v20, "change":Ljava/lang/String;
    if-eqz v20, :cond_0

    .line 67
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    :cond_0
    move-object/from16 v3, p1

    .line 69
    check-cast v3, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getLastValue()Ljava/lang/String;

    move-result-object v27

    .line 71
    .local v27, "last":Ljava/lang/String;
    if-eqz v27, :cond_1

    .line 72
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    :cond_1
    move-object/from16 v3, p1

    .line 74
    check-cast v3, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getPercentageChange()Ljava/lang/String;

    move-result-object v36

    .line 76
    .local v36, "percentageChange":Ljava/lang/String;
    if-eqz v36, :cond_2

    .line 77
    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v36

    :cond_2
    move-object/from16 v3, p1

    .line 79
    check-cast v3, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanyName()Ljava/lang/String;

    move-result-object v23

    .line 80
    .local v23, "companyName":Ljava/lang/String;
    if-eqz v23, :cond_3

    .line 81
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    :cond_3
    move-object/from16 v3, p1

    .line 83
    check-cast v3, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getCompanySymbol()Ljava/lang/String;

    move-result-object v24

    .line 84
    .local v24, "companySymbol":Ljava/lang/String;
    if-eqz v24, :cond_4

    .line 85
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    .line 88
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->getResourceObject()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    .line 89
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    if-eqz v3, :cond_16

    .line 91
    const/16 v3, 0x114

    const/16 v4, 0x7b

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v29

    .line 94
    .local v29, "mainImage":Landroid/graphics/Bitmap;
    const-string v4, "push_offline_image"

    move-object/from16 v3, p1

    check-cast v3, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 95
    if-eqz v36, :cond_5

    if-eqz v27, :cond_5

    if-eqz v20, :cond_5

    const-string v3, ""

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 97
    :cond_5
    const-string v27, "--"

    .line 98
    const-string v20, "--"

    .line 99
    const-string v36, "--"

    .line 116
    .end local p1    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    :cond_6
    :goto_0
    new-instance v34, Landroid/graphics/Paint;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/Paint;-><init>()V

    .line 117
    .local v34, "paintText":Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, v29

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 119
    .local v2, "stockCanvas":Landroid/graphics/Canvas;
    if-eqz v2, :cond_d

    .line 120
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 121
    .local v7, "paintBack":Landroid/graphics/Paint;
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    const/4 v3, -0x1

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x438a0000

    const/high16 v6, 0x42f00000

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 126
    const-string v21, ""

    .line 128
    .local v21, "changeSign":Ljava/lang/String;
    if-eqz v34, :cond_8

    .line 132
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f070005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    const/high16 v3, 0x42100000

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 135
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 136
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ToqData;->getQcomSemiboldTypeFace()Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 138
    const/4 v3, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 140
    if-eqz v24, :cond_11

    .line 141
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-le v3, v4, :cond_7

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x7

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 145
    :cond_7
    const/high16 v3, 0x41800000

    const/high16 v4, 0x422c0000

    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 153
    :cond_8
    :goto_1
    new-instance v32, Landroid/graphics/Paint;

    invoke-direct/range {v32 .. v32}, Landroid/graphics/Paint;-><init>()V

    .line 154
    .local v32, "paintChange_Last":Landroid/graphics/Paint;
    if-eqz v32, :cond_b

    .line 155
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 156
    const/4 v3, -0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    const/high16 v3, 0x41d00000

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 158
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ToqData;->getQcomRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 160
    const/4 v3, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 161
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 163
    new-instance v31, Landroid/graphics/Paint;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/Paint;-><init>()V

    .line 164
    .local v31, "paintArrow_Background":Landroid/graphics/Paint;
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 167
    if-eqz v20, :cond_9

    .line 168
    :try_start_0
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 169
    .local v13, "paintRect":Landroid/graphics/Paint;
    if-eqz v13, :cond_9

    .line 170
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f070001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 174
    const-string v3, "--"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, ""

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_12

    .line 177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f070001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f020127

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v37

    .line 182
    .local v37, "upArrow":Landroid/graphics/Bitmap;
    const/high16 v3, 0x435f0000

    const/high16 v4, 0x41700000

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 186
    const-string v3, "[+]"

    const-string v4, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 188
    .local v22, "changeText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f070008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    const-string v21, "+"

    .line 190
    const/high16 v9, 0x40c00000

    const/high16 v10, 0x42a40000

    const/high16 v11, 0x43870000

    const/high16 v12, 0x42e40000

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 195
    const/high16 v3, 0x41800000

    const/high16 v4, 0x42d20000

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 199
    const/4 v3, -0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    const/high16 v3, 0x41f80000

    const/high16 v4, 0x42d20000

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v13    # "paintRect":Landroid/graphics/Paint;
    .end local v22    # "changeText":Ljava/lang/String;
    .end local v37    # "upArrow":Landroid/graphics/Bitmap;
    :cond_9
    :goto_2
    if-eqz v27, :cond_b

    .line 276
    const/high16 v3, -0x1000000

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 277
    const/high16 v3, 0x41e80000

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 278
    const-string v3, "--"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, ""

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 281
    invoke-static/range {v27 .. v27}, Lcom/qualcomm/toq/base/utils/Utils;->getCommaSeparatedText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 284
    :cond_a
    const/high16 v3, 0x41800000

    const/high16 v4, 0x42960000

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 287
    .end local v31    # "paintArrow_Background":Landroid/graphics/Paint;
    :cond_b
    const-string v35, "--"

    .line 288
    .local v35, "perChange":Ljava/lang/String;
    new-instance v33, Landroid/graphics/Paint;

    invoke-direct/range {v33 .. v33}, Landroid/graphics/Paint;-><init>()V

    .line 289
    .local v33, "paintPerChange":Landroid/graphics/Paint;
    if-eqz v33, :cond_c

    .line 290
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 291
    const/4 v3, -0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 292
    const/high16 v3, 0x41d00000

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 293
    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 294
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ToqData;->getQcomRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 296
    const/4 v3, 0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 298
    const-string v3, "StockAmbientDisplay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Per change val : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    if-eqz v36, :cond_15

    if-eqz v20, :cond_15

    const-string v3, "--"

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string v3, "--"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string v3, ""

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string v3, ""

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 303
    const-string v3, "[+-]"

    const-string v4, ""

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 305
    move-object/from16 v35, v36

    .line 307
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_14

    .line 309
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f070008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    const-string v3, "%"

    const/high16 v4, 0x43820000

    const/high16 v5, 0x42d00000

    move-object/from16 v0, v33

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 311
    const/4 v3, -0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 312
    const/high16 v3, 0x43700000

    const/high16 v4, 0x42d20000

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 341
    :cond_c
    :goto_3
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 342
    .local v19, "cardDropShadow":Landroid/graphics/Paint;
    if-eqz v19, :cond_d

    .line 343
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 344
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f070006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 347
    const/4 v15, 0x0

    const/high16 v16, 0x42f00000

    const/high16 v17, 0x438a0000

    const/high16 v18, 0x42f60000

    move-object v14, v2

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 352
    .end local v7    # "paintBack":Landroid/graphics/Paint;
    .end local v19    # "cardDropShadow":Landroid/graphics/Paint;
    .end local v21    # "changeSign":Ljava/lang/String;
    .end local v32    # "paintChange_Last":Landroid/graphics/Paint;
    .end local v33    # "paintPerChange":Landroid/graphics/Paint;
    .end local v35    # "perChange":Ljava/lang/String;
    :cond_d
    const/16 v28, 0x0

    .line 353
    .local v28, "mBitmapConfig":Landroid/graphics/Bitmap$Config;
    sget-object v28, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 354
    new-instance v30, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v30 .. v30}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 355
    .local v30, "options":Landroid/graphics/BitmapFactory$Options;
    move-object/from16 v0, v28

    move-object/from16 v1, v30

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 356
    const/4 v3, 0x0

    move-object/from16 v0, v30

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 358
    if-eqz v29, :cond_e

    .line 359
    const-string v3, "StockAmbientDisplay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Has Alpha "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v3, "StockAmbientDisplay"

    const-string v4, "Bitmap is not null"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .end local v2    # "stockCanvas":Landroid/graphics/Canvas;
    .end local v28    # "mBitmapConfig":Landroid/graphics/Bitmap$Config;
    .end local v29    # "mainImage":Landroid/graphics/Bitmap;
    .end local v30    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v34    # "paintText":Landroid/graphics/Paint;
    :cond_e
    :goto_4
    return-object v29

    .line 103
    .restart local v29    # "mainImage":Landroid/graphics/Bitmap;
    .restart local p1    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    :cond_f
    const-string v3, "push_data_error_image"

    check-cast p1, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    .end local p1    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->getPushImageType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 105
    if-eqz v36, :cond_10

    if-eqz v27, :cond_10

    if-eqz v20, :cond_10

    const-string v3, ""

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 107
    :cond_10
    const-string v27, "--"

    .line 108
    const-string v20, "--"

    .line 109
    const-string v36, "--"

    goto/16 :goto_0

    .line 148
    .restart local v2    # "stockCanvas":Landroid/graphics/Canvas;
    .restart local v7    # "paintBack":Landroid/graphics/Paint;
    .restart local v21    # "changeSign":Ljava/lang/String;
    .restart local v34    # "paintText":Landroid/graphics/Paint;
    :cond_11
    const-string v3, "StockAmbientDisplay"

    const-string v4, "companySymbol is null"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 207
    .restart local v13    # "paintRect":Landroid/graphics/Paint;
    .restart local v31    # "paintArrow_Background":Landroid/graphics/Paint;
    .restart local v32    # "paintChange_Last":Landroid/graphics/Paint;
    :cond_12
    :try_start_1
    const-string v3, "--"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, ""

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_13

    .line 210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f070002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f020128

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v25

    .line 216
    .local v25, "downArrow":Landroid/graphics/Bitmap;
    const/high16 v3, 0x435f0000

    const/high16 v4, 0x41700000

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 220
    const-string v3, "[-]"

    const-string v4, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 222
    .restart local v22    # "changeText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f070009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    const-string v21, "-"

    .line 224
    const/high16 v9, 0x40c00000

    const/high16 v10, 0x42a40000

    const/high16 v11, 0x43870000

    const/high16 v12, 0x42e40000

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 229
    const/high16 v3, 0x41800000

    const/high16 v4, 0x42d20000

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 233
    const/4 v3, -0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    const/high16 v3, 0x41f80000

    const/high16 v4, 0x42d20000

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 268
    .end local v13    # "paintRect":Landroid/graphics/Paint;
    .end local v22    # "changeText":Ljava/lang/String;
    .end local v25    # "downArrow":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v26

    .line 269
    .local v26, "e":Ljava/lang/NumberFormatException;
    const-string v3, "StockAmbientDisplay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to retreive percentage change as value is empty or not a number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    throw v26

    .line 243
    .end local v26    # "e":Ljava/lang/NumberFormatException;
    .restart local v13    # "paintRect":Landroid/graphics/Paint;
    :cond_13
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f070001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v13, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f020127

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v37

    .line 248
    .restart local v37    # "upArrow":Landroid/graphics/Bitmap;
    const/high16 v3, 0x435f0000

    const/high16 v4, 0x41700000

    move-object/from16 v0, v37

    move-object/from16 v1, v31

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 252
    const/high16 v9, 0x40c00000

    const/high16 v10, 0x42a40000

    const/high16 v11, 0x43870000

    const/high16 v12, 0x42e40000

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 258
    const/high16 v3, 0x41800000

    const/high16 v4, 0x42d20000

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 318
    .end local v13    # "paintRect":Landroid/graphics/Paint;
    .end local v31    # "paintArrow_Background":Landroid/graphics/Paint;
    .end local v37    # "upArrow":Landroid/graphics/Bitmap;
    .restart local v33    # "paintPerChange":Landroid/graphics/Paint;
    .restart local v35    # "perChange":Ljava/lang/String;
    :cond_14
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_c

    .line 320
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientDisplay;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f070009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 321
    const-string v3, "%"

    const/high16 v4, 0x43820000

    const/high16 v5, 0x42d00000

    move-object/from16 v0, v33

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 322
    const/4 v3, -0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    const/high16 v3, 0x43700000

    const/high16 v4, 0x42d20000

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 332
    :cond_15
    const/high16 v3, 0x43820000

    const/high16 v4, 0x42d20000

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 366
    .end local v2    # "stockCanvas":Landroid/graphics/Canvas;
    .end local v7    # "paintBack":Landroid/graphics/Paint;
    .end local v21    # "changeSign":Ljava/lang/String;
    .end local v29    # "mainImage":Landroid/graphics/Bitmap;
    .end local v32    # "paintChange_Last":Landroid/graphics/Paint;
    .end local v33    # "paintPerChange":Landroid/graphics/Paint;
    .end local v34    # "paintText":Landroid/graphics/Paint;
    .end local v35    # "perChange":Ljava/lang/String;
    .restart local p1    # "ambientInfo":Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;
    :cond_16
    const-string v3, "StockAmbientDisplay"

    const-string v4, "Context is null, not able to write data on bitmap"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const/16 v29, 0x0

    goto/16 :goto_4
.end method

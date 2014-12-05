.class public Lcom/qualcomm/toq/smartwatch/controller/CommHubController;
.super Lcom/qualcomm/toq/base/controller/DefaultController;
.source "CommHubController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;,
        Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;,
        Lcom/qualcomm/toq/smartwatch/controller/CommHubController$DetailsComparator;,
        Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;
    }
.end annotation


# static fields
.field private static final LOGTYPE_VALUE_MESS:I = 0x12c

.field private static final LOGTYPE_VALUE_MMS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "CommHubController"

.field public static final appName:Ljava/lang/String; = "COMMUNICATION_HUB_CONTROLLER"

.field private static mInstance:Lcom/qualcomm/toq/smartwatch/controller/CommHubController;


# instance fields
.field private COMM_HUB_SEQUENCE:Ljava/lang/String;

.field public bCommHubStoreCreation:Z

.field public bCommHubStoreUpdateCalled:Z

.field private connFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/CommHubController;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/qualcomm/toq/base/controller/DefaultController;-><init>()V

    .line 42
    const-string v0, "recentcommsequence"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->COMM_HUB_SEQUENCE:Ljava/lang/String;

    .line 43
    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->bCommHubStoreCreation:Z

    .line 44
    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->bCommHubStoreUpdateCalled:Z

    .line 45
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->connFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    .line 46
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->connFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->context:Landroid/content/Context;

    .line 643
    return-void
.end method

.method private arrangeDataInJSON(Ljava/util/ArrayList;)Lorg/json/JSONObject;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, "mDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;>;"
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 375
    .local v10, "records":Lorg/json/JSONArray;
    new-instance v11, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$DetailsComparator;

    const/4 v12, 0x1

    invoke-direct {v11, p0, v12}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$DetailsComparator;-><init>(Lcom/qualcomm/toq/smartwatch/controller/CommHubController;I)V

    invoke-static {p1, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 377
    const/4 v9, 0x1

    .line 379
    .local v9, "recordIndex":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v3, v11, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_6

    .line 380
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;

    if-eqz v11, :cond_3

    .line 381
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;

    .line 382
    .local v7, "objCallLog":Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;
    iget-boolean v11, v7, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->isDetailUsed:Z

    if-nez v11, :cond_0

    .line 383
    add-int/lit8 v9, v9, 0x1

    .line 384
    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->callerId:Ljava/lang/String;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->access$000(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;)Ljava/lang/String;

    move-result-object v4

    .line 386
    .local v4, "number":Ljava/lang/String;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 387
    .local v5, "obj":Lorg/json/JSONObject;
    const-string v11, "Name"

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->name:Ljava/lang/String;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->access$100(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 391
    const-string v12, "ContactId"

    iget-object v11, v7, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->contactID:Ljava/lang/String;

    if-nez v11, :cond_1

    sget-object v11, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_1
    invoke-virtual {v5, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    invoke-direct {p0, v4, p1}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->createRecordPayLoad(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v1

    .line 399
    .local v1, "commsRecords":Lorg/json/JSONArray;
    const-string v11, "CommsRecords"

    invoke-virtual {v5, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 404
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 405
    .local v6, "obj1":Lorg/json/JSONObject;
    const-string v11, "RecordPayload"

    invoke-virtual {v6, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    const-string v11, "RecordId"

    invoke-virtual {v6, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 407
    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 379
    .end local v1    # "commsRecords":Lorg/json/JSONArray;
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "obj":Lorg/json/JSONObject;
    .end local v6    # "obj1":Lorg/json/JSONObject;
    .end local v7    # "objCallLog":Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 391
    .restart local v4    # "number":Ljava/lang/String;
    .restart local v5    # "obj":Lorg/json/JSONObject;
    .restart local v7    # "objCallLog":Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;
    :cond_1
    iget-object v11, v7, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->contactID:Ljava/lang/String;

    goto :goto_1

    .line 412
    .restart local v1    # "commsRecords":Lorg/json/JSONArray;
    :cond_2
    add-int/lit8 v9, v9, -0x1

    .line 413
    const-string v11, "CommHubController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CommsRecord is empty not adding the record:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 419
    .end local v1    # "commsRecords":Lorg/json/JSONArray;
    .end local v5    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 420
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 425
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "number":Ljava/lang/String;
    .end local v7    # "objCallLog":Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;
    :cond_3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;

    if-eqz v11, :cond_0

    .line 427
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;

    .line 428
    .local v8, "objSmsDetails":Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;
    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->senderNumber:Ljava/lang/String;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$600(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)Ljava/lang/String;

    move-result-object v4

    .line 429
    .restart local v4    # "number":Ljava/lang/String;
    iget-boolean v11, v8, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->isDetailUsed:Z

    if-nez v11, :cond_0

    .line 430
    add-int/lit8 v9, v9, 0x1

    .line 433
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 434
    .restart local v5    # "obj":Lorg/json/JSONObject;
    const-string v11, "Name"

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->senderName:Ljava/lang/String;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$700(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 435
    const-string v12, "ContactId"

    iget-object v11, v8, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->contactID:Ljava/lang/String;

    if-nez v11, :cond_4

    sget-object v11, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_3
    invoke-virtual {v5, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 438
    const-string v11, "CommHubController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "calling createRecordPayLoad with number: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-direct {p0, v4, p1}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->createRecordPayLoad(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v1

    .line 443
    .restart local v1    # "commsRecords":Lorg/json/JSONArray;
    const-string v11, "CommsRecords"

    invoke-virtual {v5, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 447
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_5

    .line 448
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 449
    .restart local v6    # "obj1":Lorg/json/JSONObject;
    const-string v11, "RecordPayload"

    invoke-virtual {v6, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 450
    const-string v11, "RecordId"

    invoke-virtual {v6, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 451
    const-string v11, "CommHubController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Message RecordPayload"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 463
    .end local v1    # "commsRecords":Lorg/json/JSONArray;
    .end local v5    # "obj":Lorg/json/JSONObject;
    .end local v6    # "obj1":Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    .line 464
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 435
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "obj":Lorg/json/JSONObject;
    :cond_4
    :try_start_2
    iget-object v11, v8, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->contactID:Ljava/lang/String;

    goto :goto_3

    .line 457
    .restart local v1    # "commsRecords":Lorg/json/JSONArray;
    :cond_5
    add-int/lit8 v9, v9, -0x1

    .line 458
    const-string v11, "CommHubController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Msg CommsRecord is empty not adding the record:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    .line 471
    .end local v1    # "commsRecords":Lorg/json/JSONArray;
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "obj":Lorg/json/JSONObject;
    .end local v8    # "objSmsDetails":Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;
    :cond_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 473
    .local v0, "DataStore":Lorg/json/JSONObject;
    :try_start_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 474
    .restart local v5    # "obj":Lorg/json/JSONObject;
    const-string v11, "Name"

    const-string v12, "Phub.Phone.RecentComms"

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 475
    const-string v11, "Records"

    invoke-virtual {v5, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 476
    const-string v11, "DataStore"

    invoke-virtual {v0, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 484
    .end local v5    # "obj":Lorg/json/JSONObject;
    :goto_4
    return-object v0

    .line 479
    :catch_2
    move-exception v2

    .line 480
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 481
    const-string v11, "CommHubController"

    const-string v12, "Inside DATStore Json exception"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private createRecordPayLoad(Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 11
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .local p2, "mDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;>;"
    const/4 v10, 0x1

    .line 498
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 499
    .local v1, "commsRecords":Lorg/json/JSONArray;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_6

    .line 500
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;

    if-eqz v7, :cond_1

    .line 502
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;

    .line 503
    .local v5, "obj_CallLog":Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;
    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->callerId:Ljava/lang/String;
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->access$000(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->callerId:Ljava/lang/String;
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->access$000(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 506
    :cond_0
    iput-boolean v10, v5, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->isDetailUsed:Z

    .line 512
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 514
    .local v4, "obj":Lorg/json/JSONObject;
    const-string v7, "CommsType"

    const-string v8, "Call"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 515
    const-string v7, "ReceivedTime"

    iget-wide v8, v5, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->receivedTime:J

    invoke-virtual {v4, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 517
    const-string v7, "CallerId"

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->callerId:Ljava/lang/String;
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->access$000(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/toq/base/utils/Utils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 519
    const-string v7, "ItemId"

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->itemID:I
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->access$800(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 521
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 522
    .local v0, "commsDetails":Lorg/json/JSONObject;
    const-string v7, "Duration"

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->duration:J
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->access$300(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;)J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 523
    const-string v7, "PhoneType"

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->phoneType:Ljava/lang/String;
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->access$400(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 524
    const-string v8, "Direction"

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->direction:Ljava/lang/String;
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->access$200(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v7, "Unknown"

    :goto_1
    invoke-virtual {v0, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 527
    const-string v7, "IsMissedCall"

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->isMissedCall:Z
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->access$500(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;)Z

    move-result v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 530
    const-string v7, "CommsDetails"

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 531
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    .end local v0    # "commsDetails":Lorg/json/JSONObject;
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v5    # "obj_CallLog":Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;
    :cond_1
    :goto_2
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;

    if-eqz v7, :cond_3

    .line 540
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;

    .line 543
    .local v6, "obj_SmsdeDetail":Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;
    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->senderNumber:Ljava/lang/String;
    invoke-static {v6}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$600(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->senderNumber:Ljava/lang/String;
    invoke-static {v6}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$600(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 546
    :cond_2
    iput-boolean v10, v6, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->isDetailUsed:Z

    .line 551
    :try_start_1
    const-string v7, "CommHubController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found match. obj_SmsdeDetail.sendernumber: ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->senderNumber:Ljava/lang/String;
    invoke-static {v6}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$600(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")   number: ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 557
    .restart local v4    # "obj":Lorg/json/JSONObject;
    const-string v7, "CommsType"

    const-string v8, "Text"

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 558
    const-string v7, "ReceivedTime"

    iget-wide v8, v6, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->receivedTime:J

    invoke-virtual {v4, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 560
    const-string v7, "CallerId"

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->senderNumber:Ljava/lang/String;
    invoke-static {v6}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$600(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/toq/base/utils/Utils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 562
    const-string v7, "ItemId"

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->itemID:I
    invoke-static {v6}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$900(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 564
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 565
    .restart local v0    # "commsDetails":Lorg/json/JSONObject;
    const-string v8, "Message"

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->message:Ljava/lang/String;
    invoke-static {v6}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$1000(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    const-string v7, ""

    :goto_3
    invoke-virtual {v0, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 568
    const-string v7, "IsRead"

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->isRead:Z
    invoke-static {v6}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$1100(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)Z

    move-result v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 569
    const-string v7, "privileged"

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->privileged:I
    invoke-static {v6}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$1200(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 571
    const-string v7, "Direction"

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->direction:I
    invoke-static {v6}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$1300(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 573
    const-string v7, "CommsDetails"

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 574
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 499
    .end local v0    # "commsDetails":Lorg/json/JSONObject;
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v6    # "obj_SmsdeDetail":Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;
    :cond_3
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 524
    .restart local v0    # "commsDetails":Lorg/json/JSONObject;
    .restart local v4    # "obj":Lorg/json/JSONObject;
    .restart local v5    # "obj_CallLog":Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;
    :cond_4
    :try_start_2
    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->direction:Ljava/lang/String;
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->access$200(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v7

    goto/16 :goto_1

    .line 533
    .end local v0    # "commsDetails":Lorg/json/JSONObject;
    .end local v4    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 534
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 565
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "obj_CallLog":Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;
    .restart local v0    # "commsDetails":Lorg/json/JSONObject;
    .restart local v4    # "obj":Lorg/json/JSONObject;
    .restart local v6    # "obj_SmsdeDetail":Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;
    :cond_5
    :try_start_3
    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->message:Ljava/lang/String;
    invoke-static {v6}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$1000(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v7

    goto :goto_3

    .line 576
    .end local v0    # "commsDetails":Lorg/json/JSONObject;
    .end local v4    # "obj":Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    .line 577
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 578
    const-string v7, "CommHubController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in message payload creation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 585
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "obj_SmsdeDetail":Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;
    :cond_6
    return-object v1
.end method

.method private createTempStoreFile(Ljava/lang/String;)V
    .locals 12
    .param p1, "jsonValue"    # Ljava/lang/String;

    .prologue
    .line 854
    const-string v9, "CommHubController"

    const-string v10, "Inside createTempStoreFile()"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    new-instance v7, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/PHUB_JSON"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 862
    .local v7, "resultFileFolderLocation":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Phub.Phone.RecentComms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_Temp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jsn"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 866
    .local v8, "tempFileLocation":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/qualcomm/toq/base/utils/Utils;->deleteOldStoreFile(Ljava/lang/String;)V

    .line 868
    const/4 v0, 0x0

    .line 869
    .local v0, "bw":Ljava/io/BufferedWriter;
    const/4 v5, 0x0

    .line 870
    .local v5, "fw":Ljava/io/FileWriter;
    const/4 v3, 0x0

    .line 872
    .local v3, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 873
    new-instance v4, Ljava/io/File;

    const-string v9, "Phub.Phone.RecentComms_Temp.jsn"

    invoke-direct {v4, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 875
    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    :try_start_1
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 876
    .end local v5    # "fw":Ljava/io/FileWriter;
    .local v6, "fw":Ljava/io/FileWriter;
    :try_start_2
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    move-object v0, v1

    .line 887
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 888
    :try_start_3
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 889
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 890
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 891
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 894
    :cond_1
    if-eqz v5, :cond_2

    .line 895
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 896
    const/4 v5, 0x0

    .line 899
    :cond_2
    if-eqz v3, :cond_3

    .line 900
    const/4 v3, 0x0

    .line 911
    :cond_3
    :try_start_4
    const-string v9, "CommHubController"

    const-string v10, "Called file nulling createTempStore() #2"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    if-eqz v0, :cond_4

    .line 913
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 914
    const/4 v0, 0x0

    .line 917
    :cond_4
    if-eqz v5, :cond_5

    .line 918
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 919
    const/4 v5, 0x0

    .line 922
    :cond_5
    if-eqz v3, :cond_6

    .line 923
    const/4 v3, 0x0

    .line 926
    :cond_6
    if-eqz v7, :cond_7

    .line 927
    const/4 v7, 0x0

    .line 929
    :cond_7
    if-eqz v8, :cond_8

    .line 930
    const/4 v8, 0x0

    .line 938
    :cond_8
    :goto_1
    return-void

    .line 879
    :cond_9
    :try_start_5
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 880
    new-instance v6, Ljava/io/FileWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Phub.Phone.RecentComms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_Temp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jsn"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v6, v9, v10}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 883
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :try_start_6
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 933
    :catch_0
    move-exception v2

    .line 934
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "CommHubController"

    const-string v10, "Exception while nulling createTempStore() #2"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 904
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 905
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_7
    const-string v9, "CommHubController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception in createTempStoreFile(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 911
    :try_start_8
    const-string v9, "CommHubController"

    const-string v10, "Called file nulling createTempStore() #2"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    if-eqz v0, :cond_a

    .line 913
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 914
    const/4 v0, 0x0

    .line 917
    :cond_a
    if-eqz v5, :cond_b

    .line 918
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 919
    const/4 v5, 0x0

    .line 922
    :cond_b
    if-eqz v3, :cond_c

    .line 923
    const/4 v3, 0x0

    .line 926
    :cond_c
    if-eqz v7, :cond_d

    .line 927
    const/4 v7, 0x0

    .line 929
    :cond_d
    if-eqz v8, :cond_8

    .line 930
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 933
    :catch_2
    move-exception v2

    .line 934
    const-string v9, "CommHubController"

    const-string v10, "Exception while nulling createTempStore() #2"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 910
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 911
    :goto_3
    :try_start_9
    const-string v10, "CommHubController"

    const-string v11, "Called file nulling createTempStore() #2"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    if-eqz v0, :cond_e

    .line 913
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 914
    const/4 v0, 0x0

    .line 917
    :cond_e
    if-eqz v5, :cond_f

    .line 918
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 919
    const/4 v5, 0x0

    .line 922
    :cond_f
    if-eqz v3, :cond_10

    .line 923
    const/4 v3, 0x0

    .line 926
    :cond_10
    if-eqz v7, :cond_11

    .line 927
    const/4 v7, 0x0

    .line 929
    :cond_11
    if-eqz v8, :cond_12

    .line 930
    const/4 v8, 0x0

    .line 936
    :cond_12
    :goto_4
    throw v9

    .line 933
    :catch_3
    move-exception v2

    .line 934
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "CommHubController"

    const-string v11, "Exception while nulling createTempStore() #2"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 910
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_3

    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_2
    move-exception v9

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_3

    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_3
    move-exception v9

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_3

    .line 904
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_2

    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto/16 :goto_2

    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_6
    move-exception v2

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto/16 :goto_2
.end method

.method private fillMessageDetails(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, "mMessageDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;>;"
    const/4 v0, 0x0

    .line 310
    .local v0, "commHubMessagesList":I
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getPhubPreference(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 312
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getPhubPreference(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v7

    const-string v8, "DISP_MSG"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 315
    .local v4, "messHistoryIndex":I
    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants;->setCommsHistoryValue()V

    .line 316
    sget-object v7, Lcom/qualcomm/toq/base/utils/Constants;->commsHistoryValue:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 319
    .end local v4    # "messHistoryIndex":I
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v5, "msgDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;>;"
    :try_start_0
    const-string v3, ""

    .line 323
    .local v3, "limit":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 325
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " LIMIT "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 328
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "date DESC"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 330
    .local v6, "sortOrder":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-direct {p0, v5, v6, v7}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->getSMSMessageDetailsObject(Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 333
    const-string v7, "CommHubController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " MessageDetail SMS Inbox size"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/4 v7, 0x2

    invoke-direct {p0, v5, v6, v7}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->getSMSMessageDetailsObject(Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 337
    const-string v7, "CommHubController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " MessageDetail SMS Inbox+outBox size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const/4 v7, 0x1

    invoke-direct {p0, v5, v6, v7}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->getMMSMessageDetailObject(Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 342
    const-string v7, "CommHubController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " MessageDetail SMS Inbox+outBox+ MMS Inbox size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const/4 v7, 0x2

    invoke-direct {p0, v5, v6, v7}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->getMMSMessageDetailObject(Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 347
    const-string v7, "CommHubController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " MessageDetail SMS+MMS Inbox+outBox size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    new-instance v7, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$DetailsComparator;

    const/4 v8, -0x1

    invoke-direct {v7, p0, v8}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$DetailsComparator;-><init>(Lcom/qualcomm/toq/smartwatch/controller/CommHubController;I)V

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 355
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 356
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 363
    .end local v2    # "i":I
    .end local v3    # "limit":Ljava/lang/String;
    .end local v6    # "sortOrder":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 364
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "CommHubController"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 367
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return-object p1
.end method

.method public static getCommHubController()Lcom/qualcomm/toq/smartwatch/controller/CommHubController;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/CommHubController;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/CommHubController;

    .line 87
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/CommHubController;

    return-object v0
.end method

.method private getMMSMessageDetailObject(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 19
    .param p2, "sortOrder"    # Ljava/lang/String;
    .param p3, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1133
    .local p1, "msgDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;>;"
    const-string v1, "content://mms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1134
    .local v2, "uriMms":Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg_box = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1135
    .local v4, "where":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1137
    .local v13, "mmsCursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1142
    const-string v1, "CommHubController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    :cond_0
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1144
    const-string v1, "_ID"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1145
    .local v9, "id":Ljava/lang/String;
    invoke-static {v9}, Lcom/qualcomm/toq/smartwatch/utils/MMSUtil;->getMmsSenderAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1146
    .local v18, "senderNumber":Ljava/lang/String;
    if-eqz v18, :cond_1

    const-string v1, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1149
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->context:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0, v3}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactInfoFromPhone(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v17, v1, v3

    .line 1152
    .local v17, "senderName":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->context:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0, v3}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactInfoFromPhone(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aget-object v7, v1, v3

    .line 1155
    .local v7, "contactId":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->context:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0, v3}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->isPriviledgeContact(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v11, 0x1

    .line 1159
    .local v11, "isfavorite":I
    :goto_1
    invoke-static {v9}, Lcom/qualcomm/toq/smartwatch/utils/MMSUtil;->getMmsText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1160
    .local v12, "message":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1163
    const-string v1, "read"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1164
    .local v10, "isSMSRead":I
    const-string v1, "date"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1167
    .local v15, "receivedMMSTime":J
    new-instance v14, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;-><init>(Lcom/qualcomm/toq/smartwatch/controller/CommHubController;)V

    .line 1168
    .local v14, "obj_MMSDetails":Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;
    if-nez v7, :cond_2

    const/4 v7, 0x0

    .end local v7    # "contactId":Ljava/lang/String;
    :cond_2
    iput-object v7, v14, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->contactID:Ljava/lang/String;

    .line 1170
    iput-wide v15, v14, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->receivedTime:J

    .line 1171
    if-eqz v17, :cond_3

    const-string v1, "Unknown"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ""

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .end local v17    # "senderName":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v17

    # setter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->senderName:Ljava/lang/String;
    invoke-static {v14, v0}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$702(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;Ljava/lang/String;)Ljava/lang/String;

    .line 1175
    # setter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->message:Ljava/lang/String;
    invoke-static {v14, v12}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$1002(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;Ljava/lang/String;)Ljava/lang/String;

    .line 1176
    if-nez v10, :cond_9

    const/4 v1, 0x0

    :goto_2
    # setter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->isRead:Z
    invoke-static {v14, v1}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$1102(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;Z)Z

    .line 1177
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->itemID:I
    invoke-static {v14, v1}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$902(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;I)I

    .line 1178
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->recordID:I
    invoke-static {v14, v1}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$1402(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;I)I

    .line 1179
    # setter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->privileged:I
    invoke-static {v14, v11}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$1202(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;I)I

    .line 1180
    move-object/from16 v0, v18

    # setter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->senderNumber:Ljava/lang/String;
    invoke-static {v14, v0}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$602(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;Ljava/lang/String;)Ljava/lang/String;

    .line 1181
    move/from16 v0, p3

    # setter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->direction:I
    invoke-static {v14, v0}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$1302(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;I)I

    .line 1186
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->UNKNOWN_NUMBER:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->PRIVATE_NUMBER:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->PAYPHONE_NUMBER:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1189
    :cond_5
    const-string v1, ""

    # setter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->senderNumber:Ljava/lang/String;
    invoke-static {v14, v1}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$602(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;Ljava/lang/String;)Ljava/lang/String;

    .line 1190
    const-string v1, "Unknown"

    # setter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->senderName:Ljava/lang/String;
    invoke-static {v14, v1}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$702(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;Ljava/lang/String;)Ljava/lang/String;

    .line 1193
    :cond_6
    const-string v1, "CommHubController"

    const-string v3, "-------MMS details------"

    invoke-static {v1, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    const-string v1, "CommHubController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " contactID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v14, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->contactID:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " receivedTime="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v5, v14, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->receivedTime:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " SenderName="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->senderName:Ljava/lang/String;
    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$700(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " Message="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->message:Ljava/lang/String;
    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$1000(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    const-string v1, "CommHubController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " isRead="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->isRead:Z
    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$1100(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " itemID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->itemID:I
    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$900(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " recordID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->recordID:I
    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$1400(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " privileged="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->privileged:I
    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$1200(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 1206
    .end local v9    # "id":Ljava/lang/String;
    .end local v10    # "isSMSRead":I
    .end local v11    # "isfavorite":I
    .end local v12    # "message":Ljava/lang/String;
    .end local v14    # "obj_MMSDetails":Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;
    .end local v15    # "receivedMMSTime":J
    .end local v18    # "senderNumber":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1207
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "CommHubController"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1211
    if-eqz v13, :cond_7

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1212
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1213
    const/4 v13, 0x0

    .line 1216
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_3
    return-void

    .line 1155
    .restart local v7    # "contactId":Ljava/lang/String;
    .restart local v9    # "id":Ljava/lang/String;
    .restart local v17    # "senderName":Ljava/lang/String;
    .restart local v18    # "senderNumber":Ljava/lang/String;
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 1176
    .end local v7    # "contactId":Ljava/lang/String;
    .end local v17    # "senderName":Ljava/lang/String;
    .restart local v10    # "isSMSRead":I
    .restart local v11    # "isfavorite":I
    .restart local v12    # "message":Ljava/lang/String;
    .restart local v14    # "obj_MMSDetails":Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;
    .restart local v15    # "receivedMMSTime":J
    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 1211
    .end local v9    # "id":Ljava/lang/String;
    .end local v10    # "isSMSRead":I
    .end local v11    # "isfavorite":I
    .end local v12    # "message":Ljava/lang/String;
    .end local v14    # "obj_MMSDetails":Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;
    .end local v15    # "receivedMMSTime":J
    .end local v18    # "senderNumber":Ljava/lang/String;
    :cond_a
    if-eqz v13, :cond_7

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1212
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1213
    const/4 v13, 0x0

    goto :goto_3

    .line 1211
    :catchall_0
    move-exception v1

    if-eqz v13, :cond_b

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1212
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1213
    const/4 v13, 0x0

    :cond_b
    throw v1
.end method

.method private getSMSMessageDetailsObject(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 20
    .param p2, "sortOrder"    # Ljava/lang/String;
    .param p3, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1029
    .local p1, "msgDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;>;"
    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1030
    .local v2, "uriSms":Landroid/net/Uri;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1031
    .local v4, "where":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1033
    .local v19, "smsCursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 1038
    const-string v1, "CommHubController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    :cond_0
    :goto_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1040
    const-string v1, "_ID"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1041
    .local v16, "recordId":Ljava/lang/String;
    const-string v1, "thread_id"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1042
    .local v9, "id":Ljava/lang/String;
    const-string v1, "address"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1043
    .local v18, "senderNumber":Ljava/lang/String;
    if-eqz v18, :cond_1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1050
    :cond_1
    if-eqz v18, :cond_2

    const-string v1, "@"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1051
    invoke-static/range {v18 .. v18}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1054
    :cond_2
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->context:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0, v3}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactInfoFromPhone(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v17, v1, v3

    .line 1057
    .local v17, "senderName":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->context:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0, v3}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactInfoFromPhone(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aget-object v7, v1, v3

    .line 1061
    .local v7, "contactId":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->context:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0, v3}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->isPriviledgeContact(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v11, 0x1

    .line 1064
    .local v11, "isfavorite":I
    :goto_1
    const-string v1, "body"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1065
    .local v12, "message":Ljava/lang/String;
    const-string v1, "read"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1067
    .local v10, "isSMSRead":I
    const-string v1, "date"

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1069
    .local v14, "receivedSMSTime":J
    new-instance v13, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;-><init>(Lcom/qualcomm/toq/smartwatch/controller/CommHubController;)V

    .line 1071
    .local v13, "obj_SMSDetails":Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;
    if-nez v7, :cond_3

    const/4 v7, 0x0

    .end local v7    # "contactId":Ljava/lang/String;
    :cond_3
    iput-object v7, v13, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->contactID:Ljava/lang/String;

    .line 1073
    const-wide/16 v5, 0x3e8

    div-long v5, v14, v5

    iput-wide v5, v13, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->receivedTime:J

    .line 1074
    if-eqz v17, :cond_4

    const-string v1, "Unknown"

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ""

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .end local v17    # "senderName":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v17

    # setter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->senderName:Ljava/lang/String;
    invoke-static {v13, v0}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$702(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;Ljava/lang/String;)Ljava/lang/String;

    .line 1078
    # setter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->message:Ljava/lang/String;
    invoke-static {v13, v12}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$1002(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;Ljava/lang/String;)Ljava/lang/String;

    .line 1079
    if-nez v10, :cond_a

    const/4 v1, 0x0

    :goto_2
    # setter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->isRead:Z
    invoke-static {v13, v1}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$1102(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;Z)Z

    .line 1080
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->itemID:I
    invoke-static {v13, v1}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$902(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;I)I

    .line 1081
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    # setter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->recordID:I
    invoke-static {v13, v1}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$1402(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;I)I

    .line 1082
    # setter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->privileged:I
    invoke-static {v13, v11}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$1202(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;I)I

    .line 1083
    move-object/from16 v0, v18

    # setter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->senderNumber:Ljava/lang/String;
    invoke-static {v13, v0}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$602(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;Ljava/lang/String;)Ljava/lang/String;

    .line 1084
    move/from16 v0, p3

    # setter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->direction:I
    invoke-static {v13, v0}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$1302(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;I)I

    .line 1090
    if-eqz v18, :cond_7

    .line 1091
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->UNKNOWN_NUMBER:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->PRIVATE_NUMBER:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->PAYPHONE_NUMBER:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1094
    :cond_6
    const-string v1, ""

    # setter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->senderNumber:Ljava/lang/String;
    invoke-static {v13, v1}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$602(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;Ljava/lang/String;)Ljava/lang/String;

    .line 1095
    const-string v1, "Unknown"

    # setter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->senderName:Ljava/lang/String;
    invoke-static {v13, v1}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$702(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;Ljava/lang/String;)Ljava/lang/String;

    .line 1099
    :cond_7
    const-string v1, "CommHubController"

    const-string v3, "-------SMS details------"

    invoke-static {v1, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    const-string v1, "CommHubController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " contactID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v13, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->contactID:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " receivedTime="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v5, v13, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->receivedTime:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " SenderName="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->senderName:Ljava/lang/String;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$700(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " Message="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->message:Ljava/lang/String;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$1000(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    const-string v1, "CommHubController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " isRead="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->isRead:Z
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$1100(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " itemID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->itemID:I
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$900(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " recordID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->recordID:I
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$1400(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " privileged="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->privileged:I
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;->access$1200(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 1112
    .end local v9    # "id":Ljava/lang/String;
    .end local v10    # "isSMSRead":I
    .end local v11    # "isfavorite":I
    .end local v12    # "message":Ljava/lang/String;
    .end local v13    # "obj_SMSDetails":Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;
    .end local v14    # "receivedSMSTime":J
    .end local v16    # "recordId":Ljava/lang/String;
    .end local v18    # "senderNumber":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1113
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "CommHubController"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1117
    if-eqz v19, :cond_8

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1118
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1119
    const/16 v19, 0x0

    .line 1122
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_3
    return-void

    .line 1061
    .restart local v7    # "contactId":Ljava/lang/String;
    .restart local v9    # "id":Ljava/lang/String;
    .restart local v16    # "recordId":Ljava/lang/String;
    .restart local v17    # "senderName":Ljava/lang/String;
    .restart local v18    # "senderNumber":Ljava/lang/String;
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 1079
    .end local v7    # "contactId":Ljava/lang/String;
    .end local v17    # "senderName":Ljava/lang/String;
    .restart local v10    # "isSMSRead":I
    .restart local v11    # "isfavorite":I
    .restart local v12    # "message":Ljava/lang/String;
    .restart local v13    # "obj_SMSDetails":Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;
    .restart local v14    # "receivedSMSTime":J
    :cond_a
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 1117
    .end local v9    # "id":Ljava/lang/String;
    .end local v10    # "isSMSRead":I
    .end local v11    # "isfavorite":I
    .end local v12    # "message":Ljava/lang/String;
    .end local v13    # "obj_SMSDetails":Lcom/qualcomm/toq/smartwatch/controller/CommHubController$MessageDetail;
    .end local v14    # "receivedSMSTime":J
    .end local v16    # "recordId":Ljava/lang/String;
    .end local v18    # "senderNumber":Ljava/lang/String;
    :cond_b
    if-eqz v19, :cond_8

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1118
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1119
    const/16 v19, 0x0

    goto :goto_3

    .line 1117
    :catchall_0
    move-exception v1

    if-eqz v19, :cond_c

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_c

    .line 1118
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 1119
    const/16 v19, 0x0

    :cond_c
    throw v1
.end method

.method public static setController(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 1015
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/CommHubController;

    .line 1016
    return-void
.end method

.method private writeCommHubToFile(Ljava/lang/String;J)Z
    .locals 14
    .param p1, "commHubJsonString"    # Ljava/lang/String;
    .param p2, "checksum"    # J

    .prologue
    .line 941
    const-string v11, "CommHubController"

    const-string v12, "Writing Comm Hub JSON data to file"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const/4 v0, 0x0

    .line 944
    .local v0, "bw":Ljava/io/BufferedWriter;
    const/4 v5, 0x0

    .line 945
    .local v5, "fw":Ljava/io/FileWriter;
    const/4 v3, 0x0

    .line 946
    .local v3, "file":Ljava/io/File;
    const/4 v7, 0x0

    .line 949
    .local v7, "resultFileLocation":Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v12

    invoke-virtual {v12}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/PHUB_JSON"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 954
    .end local v7    # "resultFileLocation":Ljava/io/File;
    .local v8, "resultFileLocation":Ljava/io/File;
    move-wide/from16 v9, p2

    .line 956
    .local v9, "sequenceNo":J
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 957
    new-instance v4, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Phub.Phone.RecentComms_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".jsn"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v8, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 959
    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    :try_start_2
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 960
    .end local v5    # "fw":Ljava/io/FileWriter;
    .local v6, "fw":Ljava/io/FileWriter;
    :try_start_3
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    move-object v0, v1

    .line 973
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 974
    :try_start_4
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 975
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 976
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 977
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 986
    :cond_1
    :try_start_5
    const-string v11, "CommHubController"

    const-string v12, "Called file nulling writeCommHubToFile() #2"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    if-eqz v0, :cond_2

    .line 988
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 989
    const/4 v0, 0x0

    .line 992
    :cond_2
    if-eqz v5, :cond_3

    .line 993
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 994
    const/4 v5, 0x0

    .line 997
    :cond_3
    if-eqz v3, :cond_4

    .line 998
    const/4 v3, 0x0

    .line 1001
    :cond_4
    if-eqz v8, :cond_e

    .line 1002
    const/4 v7, 0x0

    .line 1011
    .end local v8    # "resultFileLocation":Ljava/io/File;
    .restart local v7    # "resultFileLocation":Ljava/io/File;
    :goto_1
    const/4 v11, 0x1

    .end local v9    # "sequenceNo":J
    :cond_5
    :goto_2
    return v11

    .line 964
    .end local v7    # "resultFileLocation":Ljava/io/File;
    .restart local v8    # "resultFileLocation":Ljava/io/File;
    .restart local v9    # "sequenceNo":J
    :cond_6
    :try_start_6
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 965
    new-instance v6, Ljava/io/FileWriter;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Phub.Phone.RecentComms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".jsn"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v6, v11, v12}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 968
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :try_start_7
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 1006
    :catch_0
    move-exception v2

    .line 1007
    .local v2, "e":Ljava/lang/Exception;
    const-string v11, "CommHubController"

    const-string v12, "Exception while nulling writeCommHubToFile() #2"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v8

    .line 1010
    .end local v8    # "resultFileLocation":Ljava/io/File;
    .restart local v7    # "resultFileLocation":Ljava/io/File;
    goto :goto_1

    .line 981
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v9    # "sequenceNo":J
    :catch_1
    move-exception v2

    .line 982
    .local v2, "e":Ljava/io/IOException;
    :goto_3
    const/4 v11, 0x0

    .line 986
    :try_start_8
    const-string v12, "CommHubController"

    const-string v13, "Called file nulling writeCommHubToFile() #2"

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    if-eqz v0, :cond_7

    .line 988
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 989
    const/4 v0, 0x0

    .line 992
    :cond_7
    if-eqz v5, :cond_8

    .line 993
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 994
    const/4 v5, 0x0

    .line 997
    :cond_8
    if-eqz v3, :cond_9

    .line 998
    const/4 v3, 0x0

    .line 1001
    :cond_9
    if-eqz v7, :cond_5

    .line 1002
    const/4 v7, 0x0

    goto :goto_2

    .line 1006
    :catch_2
    move-exception v2

    .line 1007
    .local v2, "e":Ljava/lang/Exception;
    const-string v12, "CommHubController"

    const-string v13, "Exception while nulling writeCommHubToFile() #2"

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 985
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 986
    :goto_4
    :try_start_9
    const-string v12, "CommHubController"

    const-string v13, "Called file nulling writeCommHubToFile() #2"

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    if-eqz v0, :cond_a

    .line 988
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 989
    const/4 v0, 0x0

    .line 992
    :cond_a
    if-eqz v5, :cond_b

    .line 993
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 994
    const/4 v5, 0x0

    .line 997
    :cond_b
    if-eqz v3, :cond_c

    .line 998
    const/4 v3, 0x0

    .line 1001
    :cond_c
    if-eqz v7, :cond_d

    .line 1002
    const/4 v7, 0x0

    .line 1009
    :cond_d
    :goto_5
    throw v11

    .line 1006
    :catch_3
    move-exception v2

    .line 1007
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v12, "CommHubController"

    const-string v13, "Exception while nulling writeCommHubToFile() #2"

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 985
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "resultFileLocation":Ljava/io/File;
    .restart local v8    # "resultFileLocation":Ljava/io/File;
    .restart local v9    # "sequenceNo":J
    :catchall_1
    move-exception v11

    move-object v7, v8

    .end local v8    # "resultFileLocation":Ljava/io/File;
    .restart local v7    # "resultFileLocation":Ljava/io/File;
    goto :goto_4

    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "resultFileLocation":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v8    # "resultFileLocation":Ljava/io/File;
    :catchall_2
    move-exception v11

    move-object v7, v8

    .end local v8    # "resultFileLocation":Ljava/io/File;
    .restart local v7    # "resultFileLocation":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_4

    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .end local v7    # "resultFileLocation":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    .restart local v8    # "resultFileLocation":Ljava/io/File;
    :catchall_3
    move-exception v11

    move-object v7, v8

    .end local v8    # "resultFileLocation":Ljava/io/File;
    .restart local v7    # "resultFileLocation":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .end local v5    # "fw":Ljava/io/FileWriter;
    .end local v7    # "resultFileLocation":Ljava/io/File;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    .restart local v8    # "resultFileLocation":Ljava/io/File;
    :catchall_4
    move-exception v11

    move-object v7, v8

    .end local v8    # "resultFileLocation":Ljava/io/File;
    .restart local v7    # "resultFileLocation":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_4

    .line 981
    .end local v7    # "resultFileLocation":Ljava/io/File;
    .restart local v8    # "resultFileLocation":Ljava/io/File;
    :catch_4
    move-exception v2

    move-object v7, v8

    .end local v8    # "resultFileLocation":Ljava/io/File;
    .restart local v7    # "resultFileLocation":Ljava/io/File;
    goto :goto_3

    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "resultFileLocation":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v8    # "resultFileLocation":Ljava/io/File;
    :catch_5
    move-exception v2

    move-object v7, v8

    .end local v8    # "resultFileLocation":Ljava/io/File;
    .restart local v7    # "resultFileLocation":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_3

    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fw":Ljava/io/FileWriter;
    .end local v7    # "resultFileLocation":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    .restart local v8    # "resultFileLocation":Ljava/io/File;
    :catch_6
    move-exception v2

    move-object v7, v8

    .end local v8    # "resultFileLocation":Ljava/io/File;
    .restart local v7    # "resultFileLocation":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_3

    .end local v5    # "fw":Ljava/io/FileWriter;
    .end local v7    # "resultFileLocation":Ljava/io/File;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    .restart local v8    # "resultFileLocation":Ljava/io/File;
    :catch_7
    move-exception v2

    move-object v7, v8

    .end local v8    # "resultFileLocation":Ljava/io/File;
    .restart local v7    # "resultFileLocation":Ljava/io/File;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_3

    .end local v7    # "resultFileLocation":Ljava/io/File;
    .restart local v8    # "resultFileLocation":Ljava/io/File;
    :cond_e
    move-object v7, v8

    .end local v8    # "resultFileLocation":Ljava/io/File;
    .restart local v7    # "resultFileLocation":Ljava/io/File;
    goto/16 :goto_1
.end method


# virtual methods
.method public createCommHubJson()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 661
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 662
    .local v2, "mDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 664
    .local v0, "commData":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->fillCallLogDetails(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 665
    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->fillMessageDetails(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 666
    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->arrangeDataInJSON(Ljava/util/ArrayList;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 676
    if-eqz v2, :cond_0

    .line 677
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 678
    const/4 v2, 0x0

    .line 681
    :cond_0
    :goto_0
    return-object v0

    .line 669
    :catch_0
    move-exception v1

    .line 670
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 671
    const-string v3, "CommHubController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 676
    if-eqz v2, :cond_0

    .line 677
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 678
    const/4 v2, 0x0

    goto :goto_0

    .line 676
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 677
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 678
    const/4 v2, 0x0

    :cond_1
    throw v3
.end method

.method public declared-synchronized createJSONFile()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    .line 746
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->createCommHubJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 747
    .local v0, "commHubStore":Lorg/json/JSONObject;
    const-string v8, "CommHubController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "storeCommHubToFile() called: \n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v9

    invoke-virtual {v9}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/PHUB_JSON"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 756
    .local v4, "resultFileFolderLocation":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Phub.Phone.RecentComms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->getSequence()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jsn"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 760
    .local v5, "resultFileLocation":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_4

    .line 763
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->createTempStoreFile(Ljava/lang/String;)V

    .line 765
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Phub.Phone.RecentComms_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->getSequence()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jsn"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/toq/base/utils/Utils;->getCheckSum(Ljava/lang/String;)J

    move-result-wide v1

    .line 770
    .local v1, "currentChecksum":J
    const-string v8, "Phub.Phone.RecentComms_Temp.jsn"

    invoke-static {v8}, Lcom/qualcomm/toq/base/utils/Utils;->getCheckSum(Ljava/lang/String;)J

    move-result-wide v6

    .line 772
    .local v6, "tempChecksum":J
    const-string v8, "CommHubController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentChecksum = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " tempChecksum = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    cmp-long v8, v1, v6

    if-nez v8, :cond_1

    .line 777
    const-string v8, "CommHubController"

    const-string v9, " Comm Hub Data did not change"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 794
    const/4 v5, 0x0

    .line 797
    iget-boolean v8, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->bCommHubStoreUpdateCalled:Z

    if-eqz v8, :cond_3

    .line 798
    const-string v8, "CommHubController"

    const-string v9, "Comm Hub update has been called. Comm Hub Store Creation again"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->bCommHubStoreUpdateCalled:Z

    .line 801
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->createJSONFile()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 851
    .end local v0    # "commHubStore":Lorg/json/JSONObject;
    .end local v1    # "currentChecksum":J
    .end local v4    # "resultFileFolderLocation":Ljava/io/File;
    .end local v5    # "resultFileLocation":Ljava/io/File;
    .end local v6    # "tempChecksum":J
    :goto_1
    monitor-exit p0

    return-void

    .line 780
    .restart local v0    # "commHubStore":Lorg/json/JSONObject;
    .restart local v1    # "currentChecksum":J
    .restart local v4    # "resultFileFolderLocation":Ljava/io/File;
    .restart local v5    # "resultFileLocation":Ljava/io/File;
    .restart local v6    # "tempChecksum":J
    :cond_1
    :try_start_2
    const-string v8, "CommHubController"

    const-string v9, " Comm Hub Data is been changed.Update the sequence.Write the new file to SD card"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v6, v7}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->writeCommHubToFile(Ljava/lang/String;J)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 784
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->getSequence()J

    move-result-wide v8

    cmp-long v8, v8, v11

    if-eqz v8, :cond_2

    .line 785
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/toq/base/utils/Utils;->deleteOldStoreFile(Ljava/lang/String;)V

    .line 787
    :cond_2
    invoke-virtual {p0, v6, v7}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->setSequence(J)V

    .line 789
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->sendCommHubStoreUpdateInd()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 809
    .end local v1    # "currentChecksum":J
    .end local v6    # "tempChecksum":J
    :catch_0
    move-exception v3

    .line 810
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 848
    .end local v0    # "commHubStore":Lorg/json/JSONObject;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "resultFileFolderLocation":Ljava/io/File;
    .end local v5    # "resultFileLocation":Ljava/io/File;
    :catch_1
    move-exception v3

    .line 849
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 746
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 805
    .restart local v0    # "commHubStore":Lorg/json/JSONObject;
    .restart local v1    # "currentChecksum":J
    .restart local v4    # "resultFileFolderLocation":Ljava/io/File;
    .restart local v5    # "resultFileLocation":Ljava/io/File;
    .restart local v6    # "tempChecksum":J
    :cond_3
    const/4 v8, 0x0

    :try_start_5
    iput-boolean v8, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->bCommHubStoreCreation:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 815
    .end local v1    # "currentChecksum":J
    .end local v6    # "tempChecksum":J
    :cond_4
    :try_start_6
    const-string v8, "CommHubController"

    const-string v9, "File not Found. "

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->createTempStoreFile(Ljava/lang/String;)V

    .line 819
    const-string v8, "Phub.Phone.RecentComms_Temp.jsn"

    invoke-static {v8}, Lcom/qualcomm/toq/base/utils/Utils;->getCheckSum(Ljava/lang/String;)J

    move-result-wide v6

    .line 822
    .restart local v6    # "tempChecksum":J
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v6, v7}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->writeCommHubToFile(Ljava/lang/String;J)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 823
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->getSequence()J

    move-result-wide v8

    cmp-long v8, v8, v11

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->getSequence()J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-eqz v8, :cond_5

    .line 824
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/toq/base/utils/Utils;->deleteOldStoreFile(Ljava/lang/String;)V

    .line 826
    :cond_5
    invoke-virtual {p0, v6, v7}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->setSequence(J)V

    .line 828
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->sendCommHubStoreUpdateInd()V

    .line 831
    :cond_6
    const/4 v0, 0x0

    .line 832
    const/4 v5, 0x0

    .line 835
    iget-boolean v8, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->bCommHubStoreUpdateCalled:Z

    if-eqz v8, :cond_7

    .line 836
    const-string v8, "CommHubController"

    const-string v9, "Comm Hub update has been called. Comm Hub Store Creation again"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->bCommHubStoreUpdateCalled:Z

    .line 839
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->createJSONFile()V

    goto/16 :goto_1

    .line 843
    :cond_7
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->bCommHubStoreCreation:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1
.end method

.method public declared-synchronized fillCallLogDetails(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "mCallLogDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/controller/CommHubController$Commondetails;>;"
    monitor-enter p0

    const/16 v16, 0x0

    .line 102
    .local v16, "commHubCallsList":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getPhubPreference(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 104
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getPhubPreference(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v3

    const-string v4, "CALL_HISTORY"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getInt(Ljava/lang/String;I)I

    move-result v27

    .line 107
    .local v27, "phoneCallHistoryIndex":I
    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants;->setCommsHistoryValue()V

    .line 108
    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->commsHistoryValue:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 111
    .end local v27    # "phoneCallHistoryIndex":I
    :cond_0
    const/16 v24, 0x0

    .line 112
    .local v24, "mCallCursor":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 113
    .local v11, "callLogProjection":[Ljava/lang/String;
    sget-object v18, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 118
    .local v18, "deviceManufacturer":Ljava/lang/String;
    const-string v9, "logtype"

    .line 121
    .local v9, "COLUMN_LOGTYPE":Ljava/lang/String;
    const-string v10, "messageid"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 128
    .local v10, "COLUMN_MESSAGE_ID":Ljava/lang/String;
    const/4 v3, 0x7

    :try_start_1
    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v12, v3

    const/4 v3, 0x1

    const-string v4, "number"

    aput-object v4, v12, v3

    const/4 v3, 0x2

    const-string v4, "numbertype"

    aput-object v4, v12, v3

    const/4 v3, 0x3

    const-string v4, "type"

    aput-object v4, v12, v3

    const/4 v3, 0x4

    const-string v4, "name"

    aput-object v4, v12, v3

    const/4 v3, 0x5

    const-string v4, "date"

    aput-object v4, v12, v3

    const/4 v3, 0x6

    const-string v4, "duration"

    aput-object v4, v12, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 135
    .end local v11    # "callLogProjection":[Ljava/lang/String;
    .local v12, "callLogProjection":[Ljava/lang/String;
    :try_start_2
    const-string v22, ""

    .line 136
    .local v22, "limit":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " LIMIT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 143
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "date DESC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 144
    .local v8, "sortOrder":Ljava/lang/String;
    const/16 v33, 0x0

    .line 148
    .local v33, "typeOfCall":Ljava/lang/String;
    if-eqz v18, :cond_d

    const-string v3, "samsung"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 166
    :cond_2
    :goto_0
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 175
    if-eqz v18, :cond_4

    const-string v3, "samsung"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_4

    .line 180
    :try_start_3
    const-string v3, "logtype"

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 181
    const-string v3, "logtype"

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 182
    .local v23, "logType":I
    const/16 v3, 0x12c

    move/from16 v0, v23

    if-eq v0, v3, :cond_2

    const/16 v3, 0xc8

    move/from16 v0, v23

    if-eq v0, v3, :cond_2

    .line 189
    .end local v23    # "logType":I
    :cond_3
    const-string v3, "messageid"

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    .line 190
    const-string v3, "messageid"

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v25

    .line 191
    .local v25, "messageId":Ljava/lang/String;
    if-nez v25, :cond_2

    .line 204
    .end local v25    # "messageId":Ljava/lang/String;
    :cond_4
    :goto_1
    const/16 v33, 0x0

    .line 205
    :try_start_4
    new-instance v30, Lorg/json/JSONObject;

    invoke-direct/range {v30 .. v30}, Lorg/json/JSONObject;-><init>()V

    .line 206
    .local v30, "record":Lorg/json/JSONObject;
    const-string v3, "RecordId"

    const-string v4, "_id"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 209
    const-string v3, "type"

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 211
    .local v13, "callType":I
    packed-switch v13, :pswitch_data_0

    .line 225
    :goto_2
    if-nez v33, :cond_5

    const/16 v3, 0xa

    if-ne v13, v3, :cond_5

    .line 227
    const-string v33, "Incoming"

    .line 228
    const/4 v13, 0x3

    .line 231
    :cond_5
    const-string v3, "number"

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 232
    .local v15, "callerNumber":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->context:Landroid/content/Context;

    invoke-virtual {v3, v15, v4}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactInfoFromPhone(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v14, v3, v4

    .line 235
    .local v14, "callerName":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->context:Landroid/content/Context;

    invoke-virtual {v3, v15, v4}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactInfoFromPhone(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v17, v3, v4

    .line 238
    .local v17, "contactId":Ljava/lang/String;
    const-string v29, "Other"

    .line 239
    .local v29, "phoneType":Ljava/lang/String;
    const-string v3, "numbertype"

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 240
    .local v28, "phoneNumType":I
    const/4 v3, 0x1

    move/from16 v0, v28

    if-ne v0, v3, :cond_f

    .line 241
    const-string v29, "Home"

    .line 253
    :cond_6
    :goto_3
    const-string v3, "date"

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 254
    .local v31, "timeOfCall":J
    const-string v3, "duration"

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 255
    .local v19, "duration":J
    invoke-static {v15}, Lcom/qualcomm/toq/base/utils/Utils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 256
    if-eqz v14, :cond_7

    const-string v3, "Unknown"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, ""

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 262
    :cond_8
    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->UNKNOWN_NUMBER:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->PRIVATE_NUMBER:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->PAYPHONE_NUMBER:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 265
    :cond_9
    const-string v15, ""

    .line 266
    const-string v14, "Unknown"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 270
    :cond_a
    :try_start_5
    new-instance v26, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;-><init>(Lcom/qualcomm/toq/smartwatch/controller/CommHubController;)V

    .line 271
    .local v26, "obj_CallLogDetail":Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;
    const-wide/16 v3, 0x3e8

    div-long v3, v31, v3

    move-object/from16 v0, v26

    iput-wide v3, v0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->receivedTime:J

    .line 272
    if-nez v17, :cond_b

    const/16 v17, 0x0

    .end local v17    # "contactId":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v17

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->contactID:Ljava/lang/String;

    .line 277
    move-object/from16 v0, v26

    # setter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->callerId:Ljava/lang/String;
    invoke-static {v0, v15}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->access$002(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    move-object/from16 v0, v26

    # setter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->name:Ljava/lang/String;
    invoke-static {v0, v14}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->access$102(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    move-object/from16 v0, v26

    move-object/from16 v1, v33

    # setter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->direction:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->access$202(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;Ljava/lang/String;)Ljava/lang/String;

    .line 280
    move-object/from16 v0, v26

    move-wide/from16 v1, v19

    # setter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->duration:J
    invoke-static {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->access$302(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;J)J

    .line 281
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    # setter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->phoneType:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->access$402(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;Ljava/lang/String;)Ljava/lang/String;

    .line 282
    const/4 v3, 0x3

    if-ne v13, v3, :cond_11

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, v26

    # setter for: Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->isMissedCall:Z
    invoke-static {v0, v3}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;->access$502(Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;Z)Z

    .line 284
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 287
    .end local v26    # "obj_CallLogDetail":Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;
    :catch_0
    move-exception v21

    .line 288
    .local v21, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 295
    .end local v8    # "sortOrder":Ljava/lang/String;
    .end local v13    # "callType":I
    .end local v14    # "callerName":Ljava/lang/String;
    .end local v15    # "callerNumber":Ljava/lang/String;
    .end local v19    # "duration":J
    .end local v21    # "e":Ljava/lang/Exception;
    .end local v22    # "limit":Ljava/lang/String;
    .end local v28    # "phoneNumType":I
    .end local v29    # "phoneType":Ljava/lang/String;
    .end local v30    # "record":Lorg/json/JSONObject;
    .end local v31    # "timeOfCall":J
    .end local v33    # "typeOfCall":Ljava/lang/String;
    :catch_1
    move-exception v21

    move-object v11, v12

    .line 296
    .end local v12    # "callLogProjection":[Ljava/lang/String;
    .restart local v11    # "callLogProjection":[Ljava/lang/String;
    .restart local v21    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_7
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 299
    if-eqz v24, :cond_c

    :try_start_8
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_c

    .line 300
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 301
    const/16 v24, 0x0

    .line 304
    .end local v21    # "e":Ljava/lang/Exception;
    :cond_c
    :goto_6
    monitor-exit p0

    return-object p1

    .line 158
    .end local v11    # "callLogProjection":[Ljava/lang/String;
    .restart local v8    # "sortOrder":Ljava/lang/String;
    .restart local v12    # "callLogProjection":[Ljava/lang/String;
    .restart local v22    # "limit":Ljava/lang/String;
    .restart local v33    # "typeOfCall":Ljava/lang/String;
    :cond_d
    :try_start_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v12

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    goto/16 :goto_0

    .line 196
    :catch_2
    move-exception v21

    .line 197
    .restart local v21    # "e":Ljava/lang/Exception;
    const-string v3, "CommHubController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception inside logtype check and message id check for Samsung devices"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 299
    .end local v8    # "sortOrder":Ljava/lang/String;
    .end local v21    # "e":Ljava/lang/Exception;
    .end local v22    # "limit":Ljava/lang/String;
    .end local v33    # "typeOfCall":Ljava/lang/String;
    :catchall_0
    move-exception v3

    move-object v11, v12

    .end local v12    # "callLogProjection":[Ljava/lang/String;
    .restart local v11    # "callLogProjection":[Ljava/lang/String;
    :goto_7
    if-eqz v24, :cond_e

    :try_start_a
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_e

    .line 300
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 301
    const/16 v24, 0x0

    :cond_e
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 101
    .end local v9    # "COLUMN_LOGTYPE":Ljava/lang/String;
    .end local v10    # "COLUMN_MESSAGE_ID":Ljava/lang/String;
    .end local v11    # "callLogProjection":[Ljava/lang/String;
    .end local v18    # "deviceManufacturer":Ljava/lang/String;
    .end local v24    # "mCallCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 213
    .restart local v8    # "sortOrder":Ljava/lang/String;
    .restart local v9    # "COLUMN_LOGTYPE":Ljava/lang/String;
    .restart local v10    # "COLUMN_MESSAGE_ID":Ljava/lang/String;
    .restart local v12    # "callLogProjection":[Ljava/lang/String;
    .restart local v13    # "callType":I
    .restart local v18    # "deviceManufacturer":Ljava/lang/String;
    .restart local v22    # "limit":Ljava/lang/String;
    .restart local v24    # "mCallCursor":Landroid/database/Cursor;
    .restart local v30    # "record":Lorg/json/JSONObject;
    .restart local v33    # "typeOfCall":Ljava/lang/String;
    :pswitch_0
    :try_start_b
    const-string v33, "Incoming"

    .line 214
    goto/16 :goto_2

    .line 216
    :pswitch_1
    const-string v33, "Outgoing"

    .line 217
    goto/16 :goto_2

    .line 219
    :pswitch_2
    const-string v33, "Incoming"

    goto/16 :goto_2

    .line 244
    .restart local v14    # "callerName":Ljava/lang/String;
    .restart local v15    # "callerNumber":Ljava/lang/String;
    .restart local v17    # "contactId":Ljava/lang/String;
    .restart local v28    # "phoneNumType":I
    .restart local v29    # "phoneType":Ljava/lang/String;
    :cond_f
    const/4 v3, 0x2

    move/from16 v0, v28

    if-ne v0, v3, :cond_10

    .line 245
    const-string v29, "Mobile"

    goto/16 :goto_3

    .line 248
    :cond_10
    const/4 v3, 0x3

    move/from16 v0, v28

    if-ne v0, v3, :cond_6

    .line 249
    const-string v29, "Work"

    goto/16 :goto_3

    .line 282
    .end local v17    # "contactId":Ljava/lang/String;
    .restart local v19    # "duration":J
    .restart local v26    # "obj_CallLogDetail":Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;
    .restart local v31    # "timeOfCall":J
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 292
    .end local v13    # "callType":I
    .end local v14    # "callerName":Ljava/lang/String;
    .end local v15    # "callerNumber":Ljava/lang/String;
    .end local v19    # "duration":J
    .end local v26    # "obj_CallLogDetail":Lcom/qualcomm/toq/smartwatch/controller/CommHubController$CallLogDetail;
    .end local v28    # "phoneNumType":I
    .end local v29    # "phoneType":Ljava/lang/String;
    .end local v30    # "record":Lorg/json/JSONObject;
    .end local v31    # "timeOfCall":J
    :cond_12
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 299
    if-eqz v24, :cond_13

    :try_start_c
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_13

    .line 300
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 301
    const/16 v24, 0x0

    move-object v11, v12

    .end local v12    # "callLogProjection":[Ljava/lang/String;
    .restart local v11    # "callLogProjection":[Ljava/lang/String;
    goto :goto_6

    .line 299
    .end local v8    # "sortOrder":Ljava/lang/String;
    .end local v22    # "limit":Ljava/lang/String;
    .end local v33    # "typeOfCall":Ljava/lang/String;
    :catchall_2
    move-exception v3

    goto :goto_7

    .line 295
    :catch_3
    move-exception v21

    goto/16 :goto_5

    .end local v11    # "callLogProjection":[Ljava/lang/String;
    .restart local v8    # "sortOrder":Ljava/lang/String;
    .restart local v12    # "callLogProjection":[Ljava/lang/String;
    .restart local v22    # "limit":Ljava/lang/String;
    .restart local v33    # "typeOfCall":Ljava/lang/String;
    :cond_13
    move-object v11, v12

    .end local v12    # "callLogProjection":[Ljava/lang/String;
    .restart local v11    # "callLogProjection":[Ljava/lang/String;
    goto/16 :goto_6

    .line 211
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSequence()J
    .locals 6

    .prologue
    .line 56
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 58
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "stores_pref"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 62
    .local v2, "prefs":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->COMM_HUB_SEQUENCE:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 63
    .local v0, "latestSequence":J
    const-string v3, "CommHubController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GET sequence:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .end local v0    # "latestSequence":J
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public handleConnHandlerMessage(IILjava/lang/Object;II)V
    .locals 0
    .param p1, "appID"    # I
    .param p2, "command"    # I
    .param p3, "payload"    # Ljava/lang/Object;
    .param p4, "transactionId"    # I
    .param p5, "endpointType"    # I

    .prologue
    .line 95
    return-void
.end method

.method public sendCommHubStoreUpdateInd()V
    .locals 8

    .prologue
    .line 687
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 688
    .local v4, "responsePayload":Lorg/json/JSONObject;
    const-string v0, "store"

    const-string v1, "Phub.Phone.RecentComms"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 689
    const-string v0, "sequence"

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->getSequence()J

    move-result-wide v1

    invoke-virtual {v4, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 690
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 692
    const-string v0, "CommHubController"

    const-string v1, "Sending SyncStoreUpdatedInd to WD for CommHub"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    const/16 v2, 0x9

    const/16 v3, 0xa

    const v5, 0x8000

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 703
    const-string v0, "CommHubController"

    const-string v1, "SyncStoreUpdatedInd sent to WD"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v0, "CommHubController"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    .end local v4    # "responsePayload":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 707
    :catch_0
    move-exception v7

    .line 708
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "CommHubController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in sendCommHubStoreUpdateInd(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

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
    .line 718
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 720
    invoke-super/range {p0 .. p6}, Lcom/qualcomm/toq/base/controller/DefaultController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 727
    :cond_0
    return-void
.end method

.method public setSequence(J)V
    .locals 5
    .param p1, "sequence"    # J

    .prologue
    .line 70
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 72
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "stores_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 76
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 77
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->COMM_HUB_SEQUENCE:Ljava/lang/String;

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 78
    const-string v2, "CommHubController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set sequence:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 81
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public storeCommHubToFile()V
    .locals 2

    .prologue
    .line 731
    :try_start_0
    new-instance v1, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController$1;-><init>(Lcom/qualcomm/toq/smartwatch/controller/CommHubController;)V

    .line 737
    .local v1, "fileCreationThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    .end local v1    # "fileCreationThread":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 739
    :catch_0
    move-exception v0

    .line 740
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

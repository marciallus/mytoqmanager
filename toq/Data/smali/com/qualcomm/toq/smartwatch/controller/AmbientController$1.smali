.class Lcom/qualcomm/toq/smartwatch/controller/AmbientController$1;
.super Ljava/lang/Object;
.source "AmbientController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->pushTimeStampImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

.field final synthetic val$ambientType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/controller/AmbientController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController$1;->val$ambientType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 427
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 429
    .local v2, "context":Landroid/content/Context;
    if-eqz v2, :cond_1

    .line 430
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientNotificationDisplay;

    invoke-direct {v0, v2}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientNotificationDisplay;-><init>(Landroid/content/Context;)V

    .line 431
    .local v0, "ambientNotificationDisplay":Lcom/qualcomm/toq/smartwatch/ambient/AmbientNotificationDisplay;
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController$1;->val$ambientType:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientNotificationDisplay;->writeTimeStampOnBitmap(ZLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 433
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 434
    .local v5, "outArray":[B
    if-eqz v1, :cond_2

    .line 435
    const/4 v8, 0x1

    invoke-virtual {v0, v1, v8}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientNotificationDisplay;->writeBitmapinIMGFormat(Landroid/graphics/Bitmap;Z)[B

    move-result-object v5

    .line 444
    :goto_0
    const/4 v1, 0x0

    .line 445
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController$1;->val$ambientType:Ljava/lang/String;

    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAmbientAppImageDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 446
    .local v6, "rootDirectory":Ljava/io/File;
    if-eqz v6, :cond_1

    .line 447
    const/4 v7, 0x0

    .line 448
    .local v7, "timeStampFile":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    .end local v7    # "timeStampFile":Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "time_Stamp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".img"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    .restart local v7    # "timeStampFile":Ljava/io/File;
    const-string v8, "Ambient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    iget-object v10, v10, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Source File Location for Time Stamp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 457
    invoke-virtual {v0, v5, v7}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientNotificationDisplay;->writeBytesToFile([BLjava/io/File;)V

    .line 459
    const/4 v3, 0x0

    .line 460
    .local v3, "destPath":Ljava/lang/String;
    const-string v8, "stock"

    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController$1;->val$ambientType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 461
    const-string v3, "/apps/stock/99.img"

    .line 468
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 469
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v3}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->syncFileToWd(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    .end local v0    # "ambientNotificationDisplay":Lcom/qualcomm/toq/smartwatch/ambient/AmbientNotificationDisplay;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "destPath":Ljava/lang/String;
    .end local v5    # "outArray":[B
    .end local v6    # "rootDirectory":Ljava/io/File;
    .end local v7    # "timeStampFile":Ljava/io/File;
    :cond_1
    :goto_2
    return-void

    .line 440
    .restart local v0    # "ambientNotificationDisplay":Lcom/qualcomm/toq/smartwatch/ambient/AmbientNotificationDisplay;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v5    # "outArray":[B
    :cond_2
    const-string v8, "Ambient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    iget-object v10, v10, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->TAG:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Returning Bitmap is null File not written"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 475
    .end local v0    # "ambientNotificationDisplay":Lcom/qualcomm/toq/smartwatch/ambient/AmbientNotificationDisplay;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "context":Landroid/content/Context;
    .end local v5    # "outArray":[B
    :catch_0
    move-exception v4

    .line 476
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 464
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "ambientNotificationDisplay":Lcom/qualcomm/toq/smartwatch/ambient/AmbientNotificationDisplay;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v3    # "destPath":Ljava/lang/String;
    .restart local v5    # "outArray":[B
    .restart local v6    # "rootDirectory":Ljava/io/File;
    .restart local v7    # "timeStampFile":Ljava/io/File;
    :cond_3
    :try_start_1
    const-string v8, "weather"

    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController$1;->val$ambientType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 465
    const-string v3, "/apps/weather/99.img"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

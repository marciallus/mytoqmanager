.class public abstract Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;
.super Ljava/lang/Object;
.source "AbstractToqLoggerImpl.java"

# interfaces
.implements Lcom/qualcomm/toq/smartwatch/logger/ToqLogger;


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractToqLoggerImpl"

.field private static loggerExecutorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;->loggerExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDate(Ljava/io/File;)Ljava/util/Date;
    .locals 12
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 325
    const/4 v2, 0x0

    .line 328
    .local v2, "date":Ljava/util/Date;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v3, v2

    .line 375
    .end local v2    # "date":Ljava/util/Date;
    .local v3, "date":Ljava/util/Date;
    :goto_0
    return-object v3

    .line 332
    .end local v3    # "date":Ljava/util/Date;
    .restart local v2    # "date":Ljava/util/Date;
    :cond_0
    const/4 v8, 0x0

    .line 334
    .local v8, "timeStamp":Ljava/lang/String;
    const/4 v5, 0x0

    .line 335
    .local v5, "fileStream":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 337
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    .end local v5    # "fileStream":Ljava/io/FileInputStream;
    .local v6, "fileStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 339
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 340
    .local v7, "temp":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 341
    const/4 v9, 0x0

    const/16 v10, 0x13

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 342
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd HH:mm:ss"

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v9, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v9, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    .line 363
    :cond_1
    if-eqz v1, :cond_2

    .line 364
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 367
    :cond_2
    if-eqz v6, :cond_3

    .line 368
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileStream":Ljava/io/FileInputStream;
    .end local v7    # "temp":Ljava/lang/String;
    .restart local v5    # "fileStream":Ljava/io/FileInputStream;
    :cond_4
    :goto_1
    move-object v3, v2

    .line 375
    .end local v2    # "date":Ljava/util/Date;
    .restart local v3    # "date":Ljava/util/Date;
    goto :goto_0

    .line 371
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "date":Ljava/util/Date;
    .end local v5    # "fileStream":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "date":Ljava/util/Date;
    .restart local v6    # "fileStream":Ljava/io/FileInputStream;
    .restart local v7    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 372
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 374
    .end local v6    # "fileStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_1

    .line 346
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "temp":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 347
    .local v4, "e":Ljava/text/ParseException;
    :goto_2
    :try_start_4
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 363
    if-eqz v0, :cond_5

    .line 364
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 367
    :cond_5
    if-eqz v5, :cond_4

    .line 368
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 371
    :catch_2
    move-exception v4

    .line 372
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 349
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 350
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 363
    if-eqz v0, :cond_6

    .line 364
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 367
    :cond_6
    if-eqz v5, :cond_4

    .line 368
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 371
    :catch_4
    move-exception v4

    .line 372
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 352
    .end local v4    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v4

    .line 353
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_8
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 363
    if-eqz v0, :cond_7

    .line 364
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 367
    :cond_7
    if-eqz v5, :cond_4

    .line 368
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_1

    .line 371
    :catch_6
    move-exception v4

    .line 372
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 355
    .end local v4    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v4

    .line 356
    .local v4, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_a
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 357
    const-string v9, "AbstractToqLoggerImpl"

    const-string v10, "Excetion!!! while getting the date"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 363
    if-eqz v0, :cond_8

    .line 364
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 367
    :cond_8
    if-eqz v5, :cond_4

    .line 368
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_1

    .line 371
    :catch_8
    move-exception v4

    .line 372
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 360
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 363
    :goto_6
    if-eqz v0, :cond_9

    .line 364
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 367
    :cond_9
    if-eqz v5, :cond_a

    .line 368
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 373
    :cond_a
    :goto_7
    throw v9

    .line 371
    :catch_9
    move-exception v4

    .line 372
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 360
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "fileStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "fileStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fileStream":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fileStream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 355
    .end local v5    # "fileStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileStream":Ljava/io/FileInputStream;
    :catch_a
    move-exception v4

    move-object v5, v6

    .end local v6    # "fileStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fileStream":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fileStream":Ljava/io/FileInputStream;
    :catch_b
    move-exception v4

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 352
    .end local v5    # "fileStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileStream":Ljava/io/FileInputStream;
    :catch_c
    move-exception v4

    move-object v5, v6

    .end local v6    # "fileStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fileStream":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fileStream":Ljava/io/FileInputStream;
    :catch_d
    move-exception v4

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 349
    .end local v5    # "fileStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileStream":Ljava/io/FileInputStream;
    :catch_e
    move-exception v4

    move-object v5, v6

    .end local v6    # "fileStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fileStream":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fileStream":Ljava/io/FileInputStream;
    :catch_f
    move-exception v4

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 346
    .end local v5    # "fileStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileStream":Ljava/io/FileInputStream;
    :catch_10
    move-exception v4

    move-object v5, v6

    .end local v6    # "fileStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileStream":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "fileStream":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "fileStream":Ljava/io/FileInputStream;
    :catch_11
    move-exception v4

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fileStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileStream":Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private getLoggerFilteredFileArray(Ljava/lang/String;)[Ljava/io/File;
    .locals 2
    .param p1, "filterName"    # Ljava/lang/String;

    .prologue
    .line 106
    new-instance v0, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl$1;-><init>(Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;Ljava/lang/String;)V

    .line 118
    .local v0, "textFilter":Ljava/io/FilenameFilter;
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;->getLoggerDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getScheduledLoogerExecuterService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 50
    const-class v1, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;->loggerExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;->loggerExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 55
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;->loggerExecutorService:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private printJSONInUsageLog()V
    .locals 5

    .prologue
    .line 617
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 620
    .local v1, "jsonDetails":Lorg/json/JSONObject;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;->getUserSettingsController()Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;

    move-result-object v2

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;->createUserSettingsJson(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 623
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 624
    const-string v2, "UserSettingsController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usersettings.jsn contents : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :goto_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;->getFavoriteAppsController()Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;

    move-result-object v2

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/controller/FavoriteAppsController;->createFavoriteAppsJson(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 637
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 638
    const-string v2, "FavoriteAppsController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app_list.jsn contents : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    :goto_1
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->getClockSettingsController()Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;

    move-result-object v2

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->createClockSettingsJson(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 650
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 651
    const-string v2, "ClockSettingsController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clock_list.jsn contents : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    .end local v1    # "jsonDetails":Lorg/json/JSONObject;
    :goto_2
    return-void

    .line 629
    .restart local v1    # "jsonDetails":Lorg/json/JSONObject;
    :cond_0
    const-string v2, "UserSettingsController"

    const-string v3, "Unable to print usersettings json string"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 660
    .end local v1    # "jsonDetails":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 661
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 643
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "jsonDetails":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v2, "FavoriteAppsController"

    const-string v3, "Unable to print app_list json string"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 656
    :cond_2
    const-string v2, "ClockSettingsController"

    const-string v3, "Unable to print clock_list json string"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private writeProjectConfigInfoToFile(Ljava/io/FileOutputStream;)V
    .locals 11
    .param p1, "outputStream"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 537
    const-string v3, "***************************\n"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 538
    const-string v3, "BAMBOO BUILD NUMBER: %s \n"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0002

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 543
    :try_start_0
    const-string v3, "BAMBOO VERSION NUMBER: %s \n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :goto_0
    const-string v3, "MANUFACTURER: %s \n"

    new-array v4, v10, [Ljava/lang/Object;

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 557
    const-string v3, "MODEL: %s \n"

    new-array v4, v10, [Ljava/lang/Object;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 559
    const-string v3, "BOARD: %s \n"

    new-array v4, v10, [Ljava/lang/Object;

    sget-object v5, Landroid/os/Build;->BOARD:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 561
    const-string v3, "BRAND: %s \n"

    new-array v4, v10, [Ljava/lang/Object;

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 563
    const-string v3, "DEVICE: %s \n"

    new-array v4, v10, [Ljava/lang/Object;

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 565
    const-string v3, "DISPLAY: %s \n"

    new-array v4, v10, [Ljava/lang/Object;

    sget-object v5, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 567
    const-string v3, "FINGERPRINT: %s \n"

    new-array v4, v10, [Ljava/lang/Object;

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 570
    const-string v3, "HARDWARE: %s \n"

    new-array v4, v10, [Ljava/lang/Object;

    sget-object v5, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 572
    const-string v3, "HOST: %s \n"

    new-array v4, v10, [Ljava/lang/Object;

    sget-object v5, Landroid/os/Build;->HOST:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 574
    const-string v3, "ID: %s \n"

    new-array v4, v10, [Ljava/lang/Object;

    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 576
    const-string v3, "PRODUCT: %s \n"

    new-array v4, v10, [Ljava/lang/Object;

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 579
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getAPKVariant()Ljava/lang/String;

    move-result-object v3

    const-string v4, "release"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 584
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "watch_details_pref"

    invoke-virtual {v3, v4, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 588
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 589
    const-string v3, "serial_number0"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 593
    .local v2, "serialNumber":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 595
    const-string v3, "WD_CCA_ID: %s \n"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v2, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 606
    .end local v2    # "serialNumber":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v3, "***************************\n\n"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 608
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    return-void

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 599
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "prefs":Landroid/content/SharedPreferences;
    .restart local v2    # "serialNumber":Ljava/lang/String;
    :cond_2
    const-string v3, "WD_CCA_ID: %s \n"

    new-array v4, v10, [Ljava/lang/Object;

    const-string v5, "Not Available"

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_1
.end method


# virtual methods
.method public convertInputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 8
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 244
    const-string v4, ""

    .line 245
    .local v4, "result":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 247
    const/4 v0, 0x0

    .line 249
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "line":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 255
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 260
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 267
    if-eqz v1, :cond_3

    .line 268
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 269
    const/4 v0, 0x0

    .line 278
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v4

    .line 272
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 273
    .local v2, "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 262
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v3    # "line":Ljava/lang/String;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 263
    .restart local v2    # "ex":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 267
    if-eqz v0, :cond_1

    .line 268
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 269
    const/4 v0, 0x0

    goto :goto_1

    .line 272
    :catch_2
    move-exception v2

    .line 273
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 266
    .end local v2    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 267
    :goto_3
    if-eqz v0, :cond_2

    .line 268
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 269
    const/4 v0, 0x0

    .line 274
    :cond_2
    :goto_4
    throw v5

    .line 272
    :catch_3
    move-exception v2

    .line 273
    .restart local v2    # "ex":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 266
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 262
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :cond_3
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public deleteExistingMergedFile(Ljava/lang/String;)V
    .locals 6
    .param p1, "logFileNameStart"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;->getLoggerFilteredFileArray(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    .line 128
    .local v2, "files":[Ljava/io/File;
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 130
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    .line 131
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 128
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 134
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    return-void
.end method

.method public getLoggerDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getLoggerFileInputStreamEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/entity/InputStreamEntity;
    .locals 7
    .param p1, "logFileNameStart"    # Ljava/lang/String;
    .param p2, "currentFileNameStart"    # Ljava/lang/String;

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;->deleteExistingMergedFile(Ljava/lang/String;)V

    .line 293
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;->getLoggerDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;->getNewLoggerMergeFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 297
    .local v3, "newFile":Ljava/io/File;
    invoke-virtual {p0, v3, p2}, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;->mergeFiles(Ljava/io/File;Ljava/lang/String;)Z

    .line 299
    const/4 v1, 0x0

    .line 302
    .local v1, "inputStreamEntity":Lorg/apache/http/entity/InputStreamEntity;
    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 304
    new-instance v2, Lorg/apache/http/entity/InputStreamEntity;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-direct {v2, v4, v5, v6}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v1    # "inputStreamEntity":Lorg/apache/http/entity/InputStreamEntity;
    .local v2, "inputStreamEntity":Lorg/apache/http/entity/InputStreamEntity;
    :try_start_1
    const-string v4, "text/plain"

    invoke-virtual {v2, v4}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    .line 308
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/apache/http/entity/InputStreamEntity;->setChunked(Z)V

    .line 309
    const-string v4, "utf-8"

    invoke-virtual {v2, v4}, Lorg/apache/http/entity/InputStreamEntity;->setContentEncoding(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 315
    .end local v2    # "inputStreamEntity":Lorg/apache/http/entity/InputStreamEntity;
    .restart local v1    # "inputStreamEntity":Lorg/apache/http/entity/InputStreamEntity;
    :cond_0
    :goto_0
    return-object v1

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "f":Ljava/io/FileNotFoundException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 312
    .end local v0    # "f":Ljava/io/FileNotFoundException;
    .end local v1    # "inputStreamEntity":Lorg/apache/http/entity/InputStreamEntity;
    .restart local v2    # "inputStreamEntity":Lorg/apache/http/entity/InputStreamEntity;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "inputStreamEntity":Lorg/apache/http/entity/InputStreamEntity;
    .restart local v1    # "inputStreamEntity":Lorg/apache/http/entity/InputStreamEntity;
    goto :goto_1
.end method

.method public getLoggerFullFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 63
    const/4 v1, 0x0

    .line 65
    .local v1, "filePath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "state":Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "mounted_ro"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;->getLoggerDirectory()Ljava/io/File;

    move-result-object v0

    .line 75
    .local v0, "directory":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;->getLoggerDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .end local v0    # "directory":Ljava/io/File;
    :cond_0
    return-object v1
.end method

.method public getNewLoggerMergeFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "fileNameStart"    # Ljava/lang/String;

    .prologue
    .line 145
    const/4 v4, 0x0

    .line 146
    .local v4, "hashedSerialNumber":Ljava/lang/String;
    const/4 v8, 0x0

    .line 148
    .local v8, "newLoggerMergeFileName":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "watch_details_pref"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 152
    .local v9, "prefs":Landroid/content/SharedPreferences;
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v12, "yyyyMMddHHmmss"

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v10, v12, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 154
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "currentDateandTime":Ljava/lang/String;
    const-string v3, "%s_%s_%s.txt"

    .line 157
    .local v3, "fileNameToformat":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 158
    const-string v12, "serial_number0"

    const-string v13, ""

    invoke-interface {v9, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 163
    .local v11, "serialNumber":Ljava/lang/String;
    if-eqz v11, :cond_1

    :try_start_0
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    .line 165
    const-string v12, "MD5"

    invoke-static {v12}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 166
    .local v1, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/security/MessageDigest;->update([B)V

    .line 167
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    .line 170
    .local v7, "messageDigest":[B
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 171
    .local v5, "hexString":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v12, v7

    if-ge v6, v12, :cond_0

    .line 172
    aget-byte v12, v7, v6

    and-int/lit16 v12, v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 176
    const-string v12, "AbstractToqLoggerImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CCAID "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " MD5 CCCAID"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 181
    const-string v12, "%s_%s_%s.txt"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    const/4 v14, 0x1

    aput-object v4, v13, v14

    const/4 v14, 0x2

    aput-object v0, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 209
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v5    # "hexString":Ljava/lang/StringBuffer;
    .end local v6    # "i":I
    .end local v7    # "messageDigest":[B
    .end local v11    # "serialNumber":Ljava/lang/String;
    :goto_1
    const-string v12, "AbstractToqLoggerImpl"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " File Name : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-object v8

    .line 188
    .restart local v11    # "serialNumber":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v12, "AbstractToqLoggerImpl"

    const-string v13, "Serial Number is empty fetched from preference"

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v12, "%s_%s_%s.txt"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    const/4 v14, 0x1

    const-string v15, "_NoCcaId_"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    aput-object v0, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto :goto_1

    .line 197
    :catch_0
    move-exception v2

    .line 198
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v12, "AbstractToqLoggerImpl"

    invoke-static {v12, v2}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 202
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v11    # "serialNumber":Ljava/lang/String;
    :cond_2
    const-string v12, "AbstractToqLoggerImpl"

    const-string v13, "Preference is null"

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v12, "%s_%s_%s.txt"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    const/4 v14, 0x1

    const-string v15, "_NoCcaId_"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    aput-object v0, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method public mergeFiles(Ljava/io/File;Ljava/lang/String;)Z
    .locals 21
    .param p1, "dest"    # Ljava/io/File;
    .param p2, "fileNameStart"    # Ljava/lang/String;

    .prologue
    .line 386
    const-string v16, "AbstractToqLoggerImpl"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Is Current city enabled "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getCurrentCityEnabledStatus()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v16, "AbstractToqLoggerImpl"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Number of weather cities "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getNumWeatherCities()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v16, "AbstractToqLoggerImpl"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Number of stocks "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getNumStocks()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;->printJSONInUsageLog()V

    .line 399
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;->getLoggerFilteredFileArray(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v9

    .line 401
    .local v9, "filesArray":[Ljava/io/File;
    const/4 v14, 0x0

    .line 403
    .local v14, "result":Z
    if-nez v9, :cond_0

    .line 404
    const-string v16, "AbstractToqLoggerImpl"

    const-string v17, "log4j directory is empty"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const/16 v16, 0x0

    .line 526
    :goto_0
    return v16

    .line 407
    :cond_0
    array-length v0, v9

    move/from16 v16, v0

    if-nez v16, :cond_1

    .line 408
    const-string v16, "AbstractToqLoggerImpl"

    const-string v17, "log4j directory is empty"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const/16 v16, 0x0

    goto :goto_0

    .line 414
    :cond_1
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    array-length v0, v9

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v10, v0, :cond_8

    .line 415
    move v13, v10

    .line 416
    .local v13, "oldestFileIndex":I
    move v12, v10

    .local v12, "j":I
    :goto_2
    array-length v0, v9

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v12, v0, :cond_3

    .line 418
    aget-object v16, v9, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;->getDate(Ljava/io/File;)Ljava/util/Date;

    move-result-object v3

    .line 419
    .local v3, "date_1":Ljava/util/Date;
    aget-object v16, v9, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;->getDate(Ljava/io/File;)Ljava/util/Date;

    move-result-object v4

    .line 421
    .local v4, "date_2":Ljava/util/Date;
    if-nez v3, :cond_4

    .line 423
    aget-object v16, v9, v13

    if-eqz v16, :cond_2

    aget-object v16, v9, v13

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_2

    aget-object v16, v9, v13

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isFile()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 426
    const-string v16, "AbstractToqLoggerImpl"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "deleting unrequired file in log4j directory :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v9, v13

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    aget-object v16, v9, v13

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 431
    :cond_2
    const/16 v16, 0x0

    aput-object v16, v9, v13

    .line 454
    .end local v3    # "date_1":Ljava/util/Date;
    .end local v4    # "date_2":Ljava/util/Date;
    :cond_3
    aget-object v8, v9, v10

    .line 455
    .local v8, "file":Ljava/io/File;
    aget-object v16, v9, v13

    aput-object v16, v9, v10

    .line 456
    aput-object v8, v9, v13

    .line 414
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 435
    .end local v8    # "file":Ljava/io/File;
    .restart local v3    # "date_1":Ljava/util/Date;
    .restart local v4    # "date_2":Ljava/util/Date;
    :cond_4
    if-nez v4, :cond_7

    .line 437
    aget-object v16, v9, v12

    if-eqz v16, :cond_5

    aget-object v16, v9, v12

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_5

    aget-object v16, v9, v12

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isFile()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 439
    const-string v16, "AbstractToqLoggerImpl"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "deleting unrequired file in log4j directory :"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v9, v12

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    aget-object v16, v9, v12

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 444
    :cond_5
    const/16 v16, 0x0

    aput-object v16, v9, v12

    .line 416
    :cond_6
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 448
    :cond_7
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    .line 449
    aget-object v16, v9, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;->getDate(Ljava/io/File;)Ljava/util/Date;

    move-result-object v16

    aget-object v17, v9, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;->getDate(Ljava/io/File;)Ljava/util/Date;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 450
    move v13, v12

    goto :goto_3

    .line 459
    .end local v3    # "date_1":Ljava/util/Date;
    .end local v4    # "date_2":Ljava/util/Date;
    .end local v12    # "j":I
    .end local v13    # "oldestFileIndex":I
    :cond_8
    const/4 v5, 0x0

    .line 461
    .local v5, "destinationFile":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 465
    .end local v5    # "destinationFile":Ljava/io/FileOutputStream;
    .local v6, "destinationFile":Ljava/io/FileOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;->writeProjectConfigInfoToFile(Ljava/io/FileOutputStream;)V

    .line 467
    const/4 v10, 0x0

    :goto_4
    array-length v0, v9

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v10, v0, :cond_f

    .line 469
    aget-object v16, v9, v10

    if-eqz v16, :cond_d

    aget-object v16, v9, v10

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v16

    if-eqz v16, :cond_d

    aget-object v16, v9, v10

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isDirectory()Z

    move-result v16

    if-nez v16, :cond_d

    .line 472
    const-string v16, "AbstractToqLoggerImpl"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " Log4j file index : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " Content length : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v9, v10

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " File name : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    aget-object v18, v9, v10

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    new-instance v15, Ljava/io/FileInputStream;

    aget-object v16, v9, v10

    invoke-direct/range {v15 .. v16}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 478
    .local v15, "sourceFile":Ljava/io/FileInputStream;
    const/high16 v16, 0x80000

    move/from16 v0, v16

    new-array v2, v0, [B

    .line 481
    .local v2, "buffer":[B
    :goto_5
    invoke-virtual {v15, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v11

    .local v11, "index":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v11, v0, :cond_c

    .line 483
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v2, v0, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 495
    .end local v2    # "buffer":[B
    .end local v11    # "index":I
    .end local v15    # "sourceFile":Ljava/io/FileInputStream;
    :catch_0
    move-exception v7

    move-object v5, v6

    .line 496
    .end local v6    # "destinationFile":Ljava/io/FileOutputStream;
    .restart local v5    # "destinationFile":Ljava/io/FileOutputStream;
    .local v7, "e":Ljava/io/IOException;
    :goto_6
    :try_start_2
    const-string v16, "AbstractToqLoggerImpl"

    const-string v17, "Exception while merging log4j files"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 500
    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    const-string v17, "ENOSPC"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_9

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v16

    const-string v17, "No space left on device"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 502
    :cond_9
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v16

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a01cd

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 513
    :cond_a
    if-eqz v5, :cond_b

    .line 515
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 517
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gtz v16, :cond_12

    .line 518
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 485
    .end local v5    # "destinationFile":Ljava/io/FileOutputStream;
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v2    # "buffer":[B
    .restart local v6    # "destinationFile":Ljava/io/FileOutputStream;
    .restart local v11    # "index":I
    .restart local v15    # "sourceFile":Ljava/io/FileInputStream;
    :cond_c
    :try_start_4
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    .line 467
    .end local v2    # "buffer":[B
    .end local v11    # "index":I
    .end local v15    # "sourceFile":Ljava/io/FileInputStream;
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 488
    :cond_d
    const-string v16, "AbstractToqLoggerImpl"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Log4j file at index : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " doesn\'t exist or is a directory"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    .line 512
    :catchall_0
    move-exception v16

    move-object v5, v6

    .line 513
    .end local v6    # "destinationFile":Ljava/io/FileOutputStream;
    .restart local v5    # "destinationFile":Ljava/io/FileOutputStream;
    :goto_8
    if-eqz v5, :cond_e

    .line 515
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 517
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-gtz v17, :cond_13

    .line 518
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 493
    .end local v5    # "destinationFile":Ljava/io/FileOutputStream;
    .restart local v6    # "destinationFile":Ljava/io/FileOutputStream;
    :cond_f
    const/4 v14, 0x1

    .line 513
    if-eqz v6, :cond_10

    .line 515
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 517
    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gtz v16, :cond_11

    .line 518
    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_11
    move-object v5, v6

    .end local v6    # "destinationFile":Ljava/io/FileOutputStream;
    .restart local v5    # "destinationFile":Ljava/io/FileOutputStream;
    :cond_12
    :goto_9
    move/from16 v16, v14

    .line 526
    goto/16 :goto_0

    .line 521
    .end local v5    # "destinationFile":Ljava/io/FileOutputStream;
    .restart local v6    # "destinationFile":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v7

    .line 522
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v16, "AbstractToqLoggerImpl"

    const-string v17, "Exception while closing Merged Log file"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 525
    .end local v6    # "destinationFile":Ljava/io/FileOutputStream;
    .restart local v5    # "destinationFile":Ljava/io/FileOutputStream;
    goto :goto_9

    .line 521
    :catch_2
    move-exception v7

    .line 522
    const-string v16, "AbstractToqLoggerImpl"

    const-string v17, "Exception while closing Merged Log file"

    invoke-static/range {v16 .. v17}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 521
    .end local v7    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 522
    .restart local v7    # "e":Ljava/io/IOException;
    const-string v17, "AbstractToqLoggerImpl"

    const-string v18, "Exception while closing Merged Log file"

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 524
    .end local v7    # "e":Ljava/io/IOException;
    :cond_13
    throw v16

    .line 512
    :catchall_1
    move-exception v16

    goto :goto_8

    .line 495
    :catch_4
    move-exception v7

    goto/16 :goto_6
.end method

.method public stopLoggerExecutorService()V
    .locals 4

    .prologue
    .line 218
    const-string v1, "AbstractToqLoggerImpl"

    const-string v2, "Inside stopLogUploadExecutorService()"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :try_start_0
    sget-object v1, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;->loggerExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;->loggerExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    sget-object v1, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;->loggerExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 225
    const/4 v1, 0x0

    sput-object v1, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;->loggerExecutorService:Ljava/util/concurrent/ScheduledExecutorService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AbstractToqLoggerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in stopping the executor service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.class public Lcom/qualcomm/toq/base/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final EP_GENERAL_LOGS:B = 0x1t

.field public static final EP_OUT:B = 0x7t

.field public static final EP_UI_STATUS_LOGS:B = 0x4t

.field public static final EP_USAGE_LOGS:B = 0x2t

.field private static final KEY_EULA_VERSION:Ljava/lang/String; = "EULA_VERSION"

.field private static final TAG:Ljava/lang/String; = "Utils"

.field private static mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanReminderTimes(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Calendar;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "reminderTimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Calendar;>;"
    const/4 v1, 0x0

    .line 1302
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1303
    .local v7, "cleanedReminderTimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Calendar;>;"
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1305
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Calendar;

    .line 1306
    .local v12, "reminderTime":Ljava/util/Calendar;
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    const-string v3, "GMT+00:00"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1310
    const-string v2, "GMT+00:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 1311
    .local v0, "cal":Ljava/util/Calendar;
    const-string v2, "Utils"

    const-string v3, "Activity Reminder Timezone mismatch"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 1313
    const/16 v2, 0xb

    invoke-virtual {v12, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v2, 0xc

    invoke-virtual {v12, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move v2, v1

    move v3, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 1319
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1323
    .end local v0    # "cal":Ljava/util/Calendar;
    :cond_0
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1327
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "reminderTime":Ljava/util/Calendar;
    :cond_1
    const/4 p0, 0x0

    .line 1328
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity_monitoring_pref"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 1331
    .local v11, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 1336
    .local v9, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    const-string v1, "activity_goal_reminder_times_set_key"

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1345
    :goto_1
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1347
    return-object v7

    .line 1339
    :catch_0
    move-exception v8

    .line 1340
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1342
    .end local v8    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 1343
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static deleteFiles(Ljava/io/File;)V
    .locals 6
    .param p0, "parentDirectoryPath"    # Ljava/io/File;

    .prologue
    .line 1043
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 1046
    .local v2, "list":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    .line 1047
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 1048
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1051
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1052
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting File: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1047
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1055
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1056
    invoke-static {v0}, Lcom/qualcomm/toq/base/utils/Utils;->deleteFiles(Ljava/io/File;)V

    .line 1057
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 1064
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public static deleteOldStoreFile(Ljava/lang/String;)V
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 325
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/PHUB_JSON"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    .local v2, "resultFolderLocation":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    .local v1, "resultFileLocation":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 332
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/io/File;->setWritable(Z)Z

    .line 333
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 334
    const-string v3, "Utils"

    const-string v4, "File Deleted Success"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .end local v1    # "resultFileLocation":Ljava/io/File;
    .end local v2    # "resultFolderLocation":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 337
    .restart local v1    # "resultFileLocation":Ljava/io/File;
    .restart local v2    # "resultFolderLocation":Ljava/io/File;
    :cond_1
    const-string v3, "Utils"

    const-string v4, "File Deleted Failed"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 341
    .end local v1    # "resultFileLocation":Ljava/io/File;
    .end local v2    # "resultFolderLocation":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteOldStoreFile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static deleteOldStoreFile(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 372
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/PHUB_JSON"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    .local v2, "resultFolderLocation":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 376
    .local v1, "resultFileLocation":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 377
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/io/File;->setWritable(Z)Z

    .line 378
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 379
    const-string v3, "Utils"

    const-string v4, "File Deleted Success"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .end local v1    # "resultFileLocation":Ljava/io/File;
    .end local v2    # "resultFolderLocation":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 382
    .restart local v1    # "resultFileLocation":Ljava/io/File;
    .restart local v2    # "resultFolderLocation":Ljava/io/File;
    :cond_1
    const-string v3, "Utils"

    const-string v4, "File Deleted Failed"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 386
    .end local v1    # "resultFileLocation":Ljava/io/File;
    .end local v2    # "resultFolderLocation":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteOldStoreFile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static deleteStoreFiles()V
    .locals 10

    .prologue
    .line 349
    :try_start_0
    const-string v7, "Utils"

    const-string v8, "Folder Deleted"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/PHUB_JSON"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 355
    .local v6, "resultFolderLocation":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 356
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 357
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 358
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 359
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 364
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catch_0
    move-exception v1

    .line 365
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "Utils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleteStoreFolder"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 368
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public static deleteStoreFiles(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 394
    :try_start_0
    const-string v7, "Utils"

    const-string v8, "Folder Deleted"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/PHUB_JSON"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 398
    .local v6, "resultFolderLocation":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 399
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 400
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 401
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 402
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 407
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "resultFolderLocation":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 408
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "Utils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleteStoreFolder"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 411
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public static geIconStyleLocalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1140
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 1141
    .local v0, "iconLocalName":Ljava/lang/String;
    const-string v1, "Optima"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1142
    sget-object v1, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1159
    :cond_0
    :goto_0
    return-object v0

    .line 1144
    :cond_1
    const-string v1, "Luminous"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1145
    sget-object v1, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1147
    :cond_2
    const-string v1, "Vibrant"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1148
    sget-object v1, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1150
    :cond_3
    const-string v1, "Solar"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1151
    sget-object v1, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1153
    :cond_4
    const-string v1, "Aurora"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1154
    sget-object v1, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1156
    :cond_5
    const-string v1, "Innova"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1157
    sget-object v1, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCRCChecksum([B)J
    .locals 10
    .param p0, "inputByte"    # [B

    .prologue
    .line 180
    const-wide/16 v1, 0x0

    .line 181
    .local v1, "checksum":J
    const/4 v3, 0x0

    .line 185
    .local v3, "cis":Ljava/util/zip/CheckedInputStream;
    :try_start_0
    new-instance v4, Ljava/util/zip/CheckedInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v7, Ljava/util/zip/CRC32;

    invoke-direct {v7}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v4, v6, v7}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    .end local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    .local v4, "cis":Ljava/util/zip/CheckedInputStream;
    const/16 v6, 0x400

    :try_start_1
    new-array v0, v6, [B

    .line 189
    .local v0, "buf":[B
    :cond_0
    invoke-virtual {v4, v0}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v6

    if-gez v6, :cond_0

    .line 191
    invoke-virtual {v4}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v1

    .line 193
    const/4 v0, 0x0

    .line 194
    invoke-virtual {v4}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 195
    const/4 v3, 0x0

    .line 203
    .end local v4    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    if-eqz v3, :cond_1

    .line 204
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 205
    const/4 v3, 0x0

    .line 213
    .end local v0    # "buf":[B
    :cond_1
    :goto_0
    return-wide v1

    .line 208
    .restart local v0    # "buf":[B
    :catch_0
    move-exception v5

    .line 209
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to close CheckedInputStream.."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 198
    .end local v0    # "buf":[B
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 199
    .local v5, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v6, "Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception occured in getting CRC checksum .."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    if-eqz v3, :cond_1

    .line 204
    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 205
    const/4 v3, 0x0

    goto :goto_0

    .line 208
    :catch_2
    move-exception v5

    .line 209
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to close CheckedInputStream.."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 202
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 203
    :goto_2
    if-eqz v3, :cond_2

    .line 204
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 205
    const/4 v3, 0x0

    .line 211
    :cond_2
    :goto_3
    throw v6

    .line 208
    :catch_3
    move-exception v5

    .line 209
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v7, "Utils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to close CheckedInputStream.."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 202
    .end local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v4    # "cis":Ljava/util/zip/CheckedInputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    goto :goto_2

    .line 198
    .end local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v4    # "cis":Ljava/util/zip/CheckedInputStream;
    :catch_4
    move-exception v5

    move-object v3, v4

    .end local v4    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v3    # "cis":Ljava/util/zip/CheckedInputStream;
    goto :goto_1
.end method

.method public static declared-synchronized getCheckSum(Ljava/lang/String;)J
    .locals 14
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, -0x1

    .line 218
    const-class v10, Lcom/qualcomm/toq/base/utils/Utils;

    monitor-enter v10

    :try_start_0
    new-instance v5, Ljava/io/File;

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

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .local v5, "resultFolderLocation":Ljava/io/File;
    new-instance v4, Ljava/io/File;

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

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    .local v4, "resultFileLocation":Ljava/io/File;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 231
    const-string v11, "Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v13

    invoke-virtual {v13}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/PHUB_JSON"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " folder doesnot exist"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v0, v8

    .line 256
    :goto_0
    monitor-exit v10

    return-wide v0

    .line 239
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 240
    const-string v11, "Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " doesnot exist"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v8

    .line 241
    goto :goto_0

    .line 243
    :cond_1
    new-instance v2, Ljava/util/zip/CheckedInputStream;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v12, Ljava/util/zip/CRC32;

    invoke-direct {v12}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v2, v11, v12}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 245
    .local v2, "cis":Ljava/util/zip/CheckedInputStream;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v11

    long-to-int v6, v11

    .line 246
    .local v6, "size":I
    new-array v7, v6, [B

    .line 247
    .local v7, "tempBuf":[B
    const/4 v11, 0x0

    invoke-virtual {v2, v7, v11, v6}, Ljava/util/zip/CheckedInputStream;->read([BII)I

    .line 248
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    .line 249
    .local v0, "checksum":J
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    const/4 v2, 0x0

    .line 251
    goto :goto_0

    .line 253
    .end local v0    # "checksum":J
    .end local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    .end local v6    # "size":I
    .end local v7    # "tempBuf":[B
    :catch_0
    move-exception v3

    .line 254
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v11, "Utils"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide v0, v8

    .line 256
    goto :goto_0

    .line 218
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "resultFileLocation":Ljava/io/File;
    .end local v5    # "resultFolderLocation":Ljava/io/File;
    :catchall_0
    move-exception v8

    monitor-exit v10

    throw v8
.end method

.method public static getClockTimeoutIndex(I)I
    .locals 1
    .param p0, "index"    # I

    .prologue
    const/4 v0, 0x1

    .line 513
    sparse-switch p0, :sswitch_data_0

    .line 521
    :goto_0
    :sswitch_0
    return v0

    .line 515
    :sswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 519
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 513
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0x14 -> :sswitch_0
        0x1e -> :sswitch_2
    .end sparse-switch
.end method

.method public static getClockTimeoutSecondaryText(I)Ljava/lang/String;
    .locals 5
    .param p0, "index"    # I

    .prologue
    const/16 v4, 0xa

    const v2, 0x7f0a00ba

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 496
    sparse-switch p0, :sswitch_data_0

    .line 507
    sget-object v0, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 498
    :sswitch_0
    sget-object v0, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 501
    :sswitch_1
    sget-object v0, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 504
    :sswitch_2
    sget-object v0, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 496
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
    .end sparse-switch
.end method

.method public static getClockTimeoutValue(I)I
    .locals 1
    .param p0, "index"    # I

    .prologue
    const/16 v0, 0x14

    .line 526
    packed-switch p0, :pswitch_data_0

    .line 534
    :goto_0
    :pswitch_0
    return v0

    .line 528
    :pswitch_1
    const/16 v0, 0xa

    goto :goto_0

    .line 532
    :pswitch_2
    const/16 v0, 0x1e

    goto :goto_0

    .line 526
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getCommaSeparatedText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "sourceData"    # Ljava/lang/String;

    .prologue
    .line 799
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 801
    .local v1, "doubleValue":D
    const/4 v0, 0x0

    .line 803
    .local v0, "df":Ljava/text/DecimalFormat;
    const-wide/high16 v4, 0x3ff0000000000000L

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v4, v1, v4

    if-lez v4, :cond_2

    .line 804
    new-instance v0, Ljava/text/DecimalFormat;

    .end local v0    # "df":Ljava/text/DecimalFormat;
    const-string v4, ",##0.00"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 814
    .restart local v0    # "df":Ljava/text/DecimalFormat;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 815
    new-instance v0, Ljava/text/DecimalFormat;

    .end local v0    # "df":Ljava/text/DecimalFormat;
    const-string v4, ",##0.00"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 818
    .restart local v0    # "df":Ljava/text/DecimalFormat;
    :cond_1
    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    .line 824
    .end local v0    # "df":Ljava/text/DecimalFormat;
    .end local v1    # "doubleValue":D
    :goto_1
    return-object p0

    .line 806
    .restart local v0    # "df":Ljava/text/DecimalFormat;
    .restart local v1    # "doubleValue":D
    :cond_2
    const-wide/high16 v4, 0x3ff0000000000000L

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double v4, v1, v4

    if-gtz v4, :cond_3

    const-wide v4, 0x3fb999999999999aL

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpl-double v4, v1, v4

    if-ltz v4, :cond_3

    .line 808
    new-instance v0, Ljava/text/DecimalFormat;

    .end local v0    # "df":Ljava/text/DecimalFormat;
    const-string v4, ",##0.000"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .restart local v0    # "df":Ljava/text/DecimalFormat;
    goto :goto_0

    .line 810
    :cond_3
    const-wide v4, 0x3fb999999999999aL

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double v4, v1, v4

    if-gez v4, :cond_0

    .line 811
    new-instance v0, Ljava/text/DecimalFormat;

    .end local v0    # "df":Ljava/text/DecimalFormat;
    const-string v4, ",##0.0000"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "df":Ljava/text/DecimalFormat;
    goto :goto_0

    .line 820
    .end local v0    # "df":Ljava/text/DecimalFormat;
    .end local v1    # "doubleValue":D
    :catch_0
    move-exception v3

    .line 821
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "Utils"

    const-string v5, "Exception in formating"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getCommunicationList(I)Ljava/lang/String;
    .locals 5
    .param p0, "index"    # I

    .prologue
    const/16 v4, 0xa

    const v2, 0x7f0a00b6

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 476
    packed-switch p0, :pswitch_data_0

    .line 490
    sget-object v0, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 478
    :pswitch_0
    sget-object v0, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 481
    :pswitch_1
    sget-object v0, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 484
    :pswitch_2
    sget-object v0, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 487
    :pswitch_3
    sget-object v0, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x28

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getDate(JLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "milliSeconds"    # J
    .param p2, "dateFormat"    # Ljava/lang/String;

    .prologue
    .line 759
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, p2, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 762
    .local v1, "formatter":Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 763
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 764
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getDisplayValue(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 677
    packed-switch p0, :pswitch_data_0

    .line 687
    const-string v0, "10"

    :goto_0
    return-object v0

    .line 679
    :pswitch_0
    const-string v0, "10"

    goto :goto_0

    .line 681
    :pswitch_1
    const-string v0, "20"

    goto :goto_0

    .line 683
    :pswitch_2
    const-string v0, "30"

    goto :goto_0

    .line 685
    :pswitch_3
    const-string v0, "40"

    goto :goto_0

    .line 677
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getEulaVersion()Ljava/lang/String;
    .locals 14

    .prologue
    .line 120
    const/4 v4, 0x0

    .line 121
    .local v4, "eulaVersion":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 122
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .line 123
    .local v3, "eulaPropertiesExist":Z
    const/4 v6, 0x0

    .line 125
    .local v6, "files":[Ljava/lang/String;
    :try_start_0
    const-string v11, ""

    invoke-virtual {v1, v11}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 126
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v9, v0

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v5, v0, v7

    .line 127
    .local v5, "filename":Ljava/lang/String;
    const-string v11, "eula.properties"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 128
    const/4 v3, 0x1

    .line 129
    invoke-virtual {v1, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 130
    .local v8, "inputStream":Ljava/io/InputStream;
    new-instance v10, Ljava/util/Properties;

    invoke-direct {v10}, Ljava/util/Properties;-><init>()V

    .line 131
    .local v10, "properties":Ljava/util/Properties;
    invoke-virtual {v10, v8}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 132
    const-string v11, "EULA_VERSION"

    invoke-virtual {v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 135
    const/4 v8, 0x0

    .line 137
    invoke-virtual {v10}, Ljava/util/Properties;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    const/4 v10, 0x0

    .line 148
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v5    # "filename":Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "len$":I
    .end local v10    # "properties":Ljava/util/Properties;
    :cond_0
    :goto_1
    if-nez v3, :cond_1

    .line 149
    const-string v11, "Utils"

    const-string v12, "Eula Properties file does not exists"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_1
    return-object v4

    .line 126
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v5    # "filename":Ljava/lang/String;
    .restart local v7    # "i$":I
    .restart local v9    # "len$":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v5    # "filename":Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    :catch_0
    move-exception v2

    .line 145
    .local v2, "e":Ljava/lang/Exception;
    const-string v11, "Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to retreive eula version "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getFavouriteAppLocalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1104
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 1105
    .local v0, "appletLocalName":Ljava/lang/String;
    const-string v1, "Comm Hub"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1106
    sget-object v1, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a00ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1132
    :cond_0
    :goto_0
    return-object v0

    .line 1108
    :cond_1
    const-string v1, "Weather"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1109
    sget-object v1, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0100

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1111
    :cond_2
    const-string v1, "Calendar"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1112
    sget-object v1, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0101

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1114
    :cond_3
    const-string v1, "Activity"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1115
    sget-object v1, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0102

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1117
    :cond_4
    const-string v1, "Stocks"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1118
    sget-object v1, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0103

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1120
    :cond_5
    const-string v1, "Music"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1121
    sget-object v1, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0104

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1123
    :cond_6
    const-string v1, "Status"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1124
    sget-object v1, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0105

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1126
    :cond_7
    const-string v1, "Notifications"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1127
    sget-object v1, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0106

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1129
    :cond_8
    const-string v1, "Alarm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1130
    sget-object v1, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0107

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static getFirstTimeQRDispPrefsKeyForLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "localeKey"    # Ljava/lang/String;

    .prologue
    .line 1202
    const-string v0, "first_time_quick_reply_shown"

    .line 1204
    .local v0, "prefsKey":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getWDSupportedLanguages()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1209
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1216
    :cond_0
    :goto_0
    return-object v0

    .line 1213
    :cond_1
    const-string v0, "first_time_quick_reply_shown"

    goto :goto_0
.end method

.method public static getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "PhoneNumber"    # Ljava/lang/String;

    .prologue
    .line 782
    if-nez p0, :cond_0

    .line 783
    const-string v0, "Utils"

    const-string v1, "Got invalid Phonenumber"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const-string v0, "NA"

    .line 787
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getIconStyleValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "iconStyle"    # Ljava/lang/String;

    .prologue
    .line 610
    const-string v0, "Optima"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    const-string v0, "optima"

    .line 628
    :goto_0
    return-object v0

    .line 613
    :cond_0
    const-string v0, "Luminous"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    const-string v0, "luminous"

    goto :goto_0

    .line 616
    :cond_1
    const-string v0, "Vibrant"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 617
    const-string v0, "vibrant"

    goto :goto_0

    .line 619
    :cond_2
    const-string v0, "Solar"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 620
    const-string v0, "solar"

    goto :goto_0

    .line 622
    :cond_3
    const-string v0, "Aurora"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 623
    const-string v0, "aurora"

    goto :goto_0

    .line 625
    :cond_4
    const-string v0, "Innova"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 626
    const-string v0, "innova"

    goto :goto_0

    .line 628
    :cond_5
    const-string v0, "optima"

    goto :goto_0
.end method

.method public static getLightDoubleTapSpeedIndex(I)I
    .locals 2
    .param p0, "index"    # I

    .prologue
    const/4 v0, 0x1

    .line 596
    const/16 v1, 0x2ee

    if-ne p0, v1, :cond_1

    .line 597
    const/4 v0, 0x0

    .line 605
    :cond_0
    :goto_0
    return v0

    .line 599
    :cond_1
    const/16 v1, 0x1f4

    if-eq p0, v1, :cond_0

    .line 602
    const/16 v1, 0x15e

    if-ne p0, v1, :cond_0

    .line 603
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getLightDoubleTapSpeedSecondaryText(I)Ljava/lang/String;
    .locals 2
    .param p0, "index"    # I

    .prologue
    const v1, 0x7f0a00b8

    .line 582
    const/16 v0, 0x2ee

    if-ne p0, v0, :cond_0

    .line 583
    sget-object v0, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a00b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 591
    :goto_0
    return-object v0

    .line 585
    :cond_0
    const/16 v0, 0x1f4

    if-ne p0, v0, :cond_1

    .line 586
    sget-object v0, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 588
    :cond_1
    const/16 v0, 0x15e

    if-ne p0, v0, :cond_2

    .line 589
    sget-object v0, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a00b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 591
    :cond_2
    sget-object v0, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLightDoubleTapSpeedValue(I)I
    .locals 1
    .param p0, "index"    # I

    .prologue
    const/16 v0, 0x1f4

    .line 632
    packed-switch p0, :pswitch_data_0

    .line 640
    :goto_0
    :pswitch_0
    return v0

    .line 634
    :pswitch_1
    const/16 v0, 0x2ee

    goto :goto_0

    .line 638
    :pswitch_2
    const/16 v0, 0x15e

    goto :goto_0

    .line 632
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getLightDurationIndex(I)I
    .locals 1
    .param p0, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 556
    sparse-switch p0, :sswitch_data_0

    .line 564
    :goto_0
    :sswitch_0
    return v0

    .line 560
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 562
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 556
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
    .end sparse-switch
.end method

.method public static getLightDurationSecondaryText(I)Ljava/lang/String;
    .locals 5
    .param p0, "index"    # I

    .prologue
    const/16 v4, 0xa

    const v2, 0x7f0a00ba

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 539
    sparse-switch p0, :sswitch_data_0

    .line 550
    sget-object v0, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 541
    :sswitch_0
    sget-object v0, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 544
    :sswitch_1
    sget-object v0, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 547
    :sswitch_2
    sget-object v0, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x1e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 539
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
    .end sparse-switch
.end method

.method public static getLightDurationValue(I)I
    .locals 1
    .param p0, "index"    # I

    .prologue
    const/16 v0, 0xa

    .line 569
    packed-switch p0, :pswitch_data_0

    .line 577
    :goto_0
    :pswitch_0
    return v0

    .line 573
    :pswitch_1
    const/16 v0, 0x14

    goto :goto_0

    .line 575
    :pswitch_2
    const/16 v0, 0x1e

    goto :goto_0

    .line 569
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getLocalizedAMPMText(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    const/16 v1, 0x9

    .line 1351
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1352
    sget-object v0, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a01fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1358
    :goto_0
    return-object v0

    .line 1354
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1355
    sget-object v0, Lcom/qualcomm/toq/base/utils/Utils;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a01ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1358
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static declared-synchronized getLuaCheckSum(Ljava/lang/String;)J
    .locals 15
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v9, -0x1

    .line 261
    const-class v11, Lcom/qualcomm/toq/base/utils/Utils;

    monitor-enter v11

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 262
    .local v6, "sdCardRoot":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/PHUB_NOTIFICATIONS"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    .local v5, "resultFolderLocation":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/PHUB_NOTIFICATIONS"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    .local v4, "resultFileLocation":Ljava/io/File;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 269
    const-string v12, "Utils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/PHUB_NOTIFICATIONS"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " folder doesnot exist"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v0, v9

    .line 291
    :goto_0
    monitor-exit v11

    return-wide v0

    .line 274
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 275
    const-string v12, "Utils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " doesnot exist"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v9

    .line 276
    goto :goto_0

    .line 278
    :cond_1
    new-instance v2, Ljava/util/zip/CheckedInputStream;

    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v13, Ljava/util/zip/CRC32;

    invoke-direct {v13}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v2, v12, v13}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 280
    .local v2, "cis":Ljava/util/zip/CheckedInputStream;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v12

    long-to-int v7, v12

    .line 281
    .local v7, "size":I
    new-array v8, v7, [B

    .line 282
    .local v8, "tempBuf":[B
    const/4 v12, 0x0

    invoke-virtual {v2, v8, v12, v7}, Ljava/util/zip/CheckedInputStream;->read([BII)I

    .line 283
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    .line 284
    .local v0, "checksum":J
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 285
    const/4 v2, 0x0

    .line 286
    goto :goto_0

    .line 288
    .end local v0    # "checksum":J
    .end local v2    # "cis":Ljava/util/zip/CheckedInputStream;
    .end local v7    # "size":I
    .end local v8    # "tempBuf":[B
    :catch_0
    move-exception v3

    .line 289
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v12, "Utils"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide v0, v9

    .line 291
    goto :goto_0

    .line 261
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "resultFileLocation":Ljava/io/File;
    .end local v5    # "resultFolderLocation":Ljava/io/File;
    .end local v6    # "sdCardRoot":Ljava/io/File;
    :catchall_0
    move-exception v9

    monitor-exit v11

    throw v9
.end method

.method public static getPhoneDisplayList(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 446
    packed-switch p0, :pswitch_data_0

    .line 456
    const-string v0, "Display 10"

    :goto_0
    return-object v0

    .line 448
    :pswitch_0
    const-string v0, "Display 10"

    goto :goto_0

    .line 450
    :pswitch_1
    const-string v0, "Display 20"

    goto :goto_0

    .line 452
    :pswitch_2
    const-string v0, "Display 30"

    goto :goto_0

    .line 454
    :pswitch_3
    const-string v0, "Display 40"

    goto :goto_0

    .line 446
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getQuickReplyPrefsKeyForLocale(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "localeKey"    # Ljava/lang/String;

    .prologue
    .line 1173
    const-string v0, "qr"

    .line 1175
    .local v0, "prefsKey":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getWDSupportedLanguages()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1180
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1187
    :cond_0
    :goto_0
    return-object v0

    .line 1184
    :cond_1
    const-string v0, "qr"

    goto :goto_0
.end method

.method public static getStringArrayPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefFileName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 737
    const/4 v7, 0x0

    invoke-virtual {p0, p1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 739
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const/4 v7, 0x0

    invoke-interface {v4, p2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 740
    .local v2, "json":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 741
    .local v6, "strList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 743
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 744
    .local v3, "jsonArr":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 745
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 746
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 749
    .end local v1    # "i":I
    .end local v3    # "jsonArr":Lorg/json/JSONArray;
    .end local v5    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 750
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 753
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v6
.end method

.method public static getTemperatureUnitFromIndex(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 704
    packed-switch p0, :pswitch_data_0

    .line 710
    const-string v0, "Fahrenheit"

    :goto_0
    return-object v0

    .line 706
    :pswitch_0
    const-string v0, "Fahrenheit"

    goto :goto_0

    .line 708
    :pswitch_1
    const-string v0, "Celsius"

    goto :goto_0

    .line 704
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getTemperatureUnitsListViewIndex(Ljava/lang/String;)I
    .locals 2
    .param p0, "weatherUnit"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 692
    const-string v1, "Fahrenheit"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 699
    :cond_0
    :goto_0
    return v0

    .line 695
    :cond_1
    const-string v1, "Celsius"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 696
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getTextMessageDisplayList(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 461
    packed-switch p0, :pswitch_data_0

    .line 471
    const-string v0, "10 Messages listed"

    :goto_0
    return-object v0

    .line 463
    :pswitch_0
    const-string v0, "10 Messages listed"

    goto :goto_0

    .line 465
    :pswitch_1
    const-string v0, "20 Messages listed"

    goto :goto_0

    .line 467
    :pswitch_2
    const-string v0, "30 Messages listed"

    goto :goto_0

    .line 469
    :pswitch_3
    const-string v0, "40 Messages listed"

    goto :goto_0

    .line 461
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getVibeRepeat(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 429
    packed-switch p0, :pswitch_data_0

    .line 441
    const-string v0, "Vibe repeat none"

    :goto_0
    return-object v0

    .line 431
    :pswitch_0
    const-string v0, "Vibe repeat none"

    goto :goto_0

    .line 433
    :pswitch_1
    const-string v0, "Vibe repeat 1 time"

    goto :goto_0

    .line 435
    :pswitch_2
    const-string v0, "Vibe repeat 2 times"

    goto :goto_0

    .line 437
    :pswitch_3
    const-string v0, "Vibe repeat 3 times"

    goto :goto_0

    .line 439
    :pswitch_4
    const-string v0, "Vibe repeat 4 times"

    goto :goto_0

    .line 429
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getVibeRepeatValue(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 660
    packed-switch p0, :pswitch_data_0

    .line 672
    const-string v0, "Vibe repeat none"

    :goto_0
    return-object v0

    .line 662
    :pswitch_0
    const-string v0, "0"

    goto :goto_0

    .line 664
    :pswitch_1
    const-string v0, "1"

    goto :goto_0

    .line 666
    :pswitch_2
    const-string v0, "2"

    goto :goto_0

    .line 668
    :pswitch_3
    const-string v0, "3"

    goto :goto_0

    .line 670
    :pswitch_4
    const-string v0, "4"

    goto :goto_0

    .line 660
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getVibeStyle(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 414
    packed-switch p0, :pswitch_data_0

    .line 424
    const-string v0, "Vibe Style A"

    :goto_0
    return-object v0

    .line 416
    :pswitch_0
    const-string v0, "Vibe Style A"

    goto :goto_0

    .line 418
    :pswitch_1
    const-string v0, "Vibe Style B"

    goto :goto_0

    .line 420
    :pswitch_2
    const-string v0, "Vibe Style C"

    goto :goto_0

    .line 422
    :pswitch_3
    const-string v0, "Vibe Style D"

    goto :goto_0

    .line 414
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getVibeStyleValue(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 645
    packed-switch p0, :pswitch_data_0

    .line 655
    const-string v0, "A"

    :goto_0
    return-object v0

    .line 647
    :pswitch_0
    const-string v0, "A"

    goto :goto_0

    .line 649
    :pswitch_1
    const-string v0, "B"

    goto :goto_0

    .line 651
    :pswitch_2
    const-string v0, "C"

    goto :goto_0

    .line 653
    :pswitch_3
    const-string v0, "D"

    goto :goto_0

    .line 645
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static isETradeDown()Z
    .locals 14

    .prologue
    .line 863
    const-string v11, "GMT"

    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    .line 865
    .local v3, "gmtCalendar":Ljava/util/Calendar;
    const/4 v6, 0x0

    .line 866
    .local v6, "lowerlimit":I
    const/4 v10, 0x0

    .line 867
    .local v10, "upperLimit":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 868
    .local v2, "defaultCalendar":Ljava/util/Calendar;
    const-string v11, "America/New_York"

    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    .line 869
    .local v9, "tz":Ljava/util/TimeZone;
    const-string v11, "Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TimeZone :  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ID: + "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Offset: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 872
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v9, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v5

    .line 873
    .local v5, "isDayLightSaving":Z
    const-string v11, "Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Is DayLight Saving On: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    if-eqz v5, :cond_1

    .line 876
    const/16 v6, 0x30c

    .line 877
    const/16 v10, 0x4ce

    .line 886
    :goto_0
    const-string v11, "Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Device Calendar : GMT Time Zone Offset: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0xf

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\nMonth: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " \nYear: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\nDate of Month: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x5

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\nHour: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0xb

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\nMin: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0xc

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\nDay  of Week: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x7

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    const-string v11, "Utils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "GMT Calendar: GMT Time Zone Offset: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0xf

    invoke-virtual {v3, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " \nMonth: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v3, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " \nYear: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\nDate: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x5

    invoke-virtual {v3, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\nHour: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0xb

    invoke-virtual {v3, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\nMin: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0xc

    invoke-virtual {v3, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n Day  of Week: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x7

    invoke-virtual {v3, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    const/4 v11, 0x7

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 909
    .local v1, "dayofWeek":I
    const/16 v11, 0xb

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 910
    .local v4, "hourOfDay":I
    const/16 v11, 0xc

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 911
    .local v7, "minutes":I
    mul-int/lit8 v11, v4, 0x3c

    add-int v8, v11, v7

    .line 915
    .local v8, "timeMinutes":I
    const/4 v11, 0x1

    if-eq v1, v11, :cond_0

    const/4 v11, 0x7

    if-eq v1, v11, :cond_0

    if-lt v8, v6, :cond_0

    if-le v8, v10, :cond_2

    .line 917
    :cond_0
    const/4 v11, 0x1

    .line 919
    :goto_1
    return v11

    .line 882
    .end local v1    # "dayofWeek":I
    .end local v4    # "hourOfDay":I
    .end local v7    # "minutes":I
    .end local v8    # "timeMinutes":I
    :cond_1
    const/16 v6, 0x348

    .line 883
    const/16 v10, 0x50a

    goto/16 :goto_0

    .line 919
    .restart local v1    # "dayofWeek":I
    .restart local v4    # "hourOfDay":I
    .restart local v7    # "minutes":I
    .restart local v8    # "timeMinutes":I
    :cond_2
    const/4 v11, 0x0

    goto :goto_1
.end method

.method public static isEulaAgreementAccepted()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "eula_dialog_check_prefs"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 94
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    const-string v4, "eula_accepted"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "eula_accepted"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    const-string v4, "eula_version"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 98
    invoke-static {}, Lcom/qualcomm/toq/base/utils/Utils;->getEulaVersion()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "currentEulaVersion":Ljava/lang/String;
    const-string v4, "eula_version"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "storedEulaVersion":Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 103
    const-string v3, "Utils"

    const-string v4, "Eula Version match"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v3, 0x1

    .line 115
    .end local v0    # "currentEulaVersion":Ljava/lang/String;
    .end local v2    # "storedEulaVersion":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 107
    .restart local v0    # "currentEulaVersion":Ljava/lang/String;
    .restart local v2    # "storedEulaVersion":Ljava/lang/String;
    :cond_1
    const-string v4, "Utils"

    const-string v5, "Eula Version does not match"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    .end local v0    # "currentEulaVersion":Ljava/lang/String;
    .end local v2    # "storedEulaVersion":Ljava/lang/String;
    :cond_2
    const-string v4, "Utils"

    const-string v5, "Eula Version do not present in Shared Preference"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isNetworkConnectivityAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 157
    if-eqz p0, :cond_0

    .line 158
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 159
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 160
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    const/4 v2, 0x1

    .line 164
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v1    # "netInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isWIFIConnectivityAvailable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 169
    if-eqz p0, :cond_0

    .line 170
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 171
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 172
    .local v1, "wifi":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v1    # "wifi":Landroid/net/NetworkInfo;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static printAlohaVersionIndicationPayload(Ljava/lang/Object;)V
    .locals 7
    .param p0, "payload"    # Ljava/lang/Object;

    .prologue
    .line 1073
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1074
    .local v3, "jsonPayloadData":Lorg/json/JSONObject;
    const-string v4, "CCA_Id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1076
    .local v1, "ccaId":Ljava/lang/String;
    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1077
    .local v0, "arr":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v2, v0, v4

    .line 1079
    .local v2, "ccaIdModel":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "xyz"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1081
    const-string v4, "CCA_Id"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1083
    const-string v4, "VersionController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received VersionInd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v1    # "ccaId":Ljava/lang/String;
    .end local v2    # "ccaIdModel":Ljava/lang/String;
    .end local v3    # "jsonPayloadData":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1086
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static printEarpieceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "lineNumber"    # I

    .prologue
    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    return-void
.end method

.method public static readFileAsString(Ljava/lang/String;J)Ljava/lang/String;
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "fileLength"    # J

    .prologue
    const/4 v4, 0x0

    .line 296
    const-string v5, "Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reading file:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const/4 v2, 0x0

    .line 299
    .local v2, "f":Ljava/io/BufferedInputStream;
    long-to-int v5, p1

    new-array v0, v5, [B

    .line 302
    .local v0, "buffer":[B
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    .end local v2    # "f":Ljava/io/BufferedInputStream;
    .local v3, "f":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 314
    if-eqz v3, :cond_0

    .line 316
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 320
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    move-object v2, v3

    .end local v3    # "f":Ljava/io/BufferedInputStream;
    .restart local v2    # "f":Ljava/io/BufferedInputStream;
    :cond_1
    :goto_1
    return-object v4

    .line 306
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    if-eqz v2, :cond_1

    .line 316
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 318
    :catch_1
    move-exception v5

    goto :goto_1

    .line 309
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 314
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    if-eqz v2, :cond_1

    .line 316
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 318
    :catch_3
    move-exception v5

    goto :goto_1

    .line 314
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v2, :cond_2

    .line 316
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 318
    :cond_2
    :goto_5
    throw v4

    .end local v2    # "f":Ljava/io/BufferedInputStream;
    .restart local v3    # "f":Ljava/io/BufferedInputStream;
    :catch_4
    move-exception v4

    goto :goto_0

    .end local v3    # "f":Ljava/io/BufferedInputStream;
    .restart local v2    # "f":Ljava/io/BufferedInputStream;
    :catch_5
    move-exception v5

    goto :goto_5

    .line 314
    .end local v2    # "f":Ljava/io/BufferedInputStream;
    .restart local v3    # "f":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "f":Ljava/io/BufferedInputStream;
    .restart local v2    # "f":Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 309
    .end local v2    # "f":Ljava/io/BufferedInputStream;
    .restart local v3    # "f":Ljava/io/BufferedInputStream;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3    # "f":Ljava/io/BufferedInputStream;
    .restart local v2    # "f":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 306
    .end local v2    # "f":Ljava/io/BufferedInputStream;
    .restart local v3    # "f":Ljava/io/BufferedInputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3    # "f":Ljava/io/BufferedInputStream;
    .restart local v2    # "f":Ljava/io/BufferedInputStream;
    goto :goto_2
.end method

.method public static removeNegativePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 848
    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 849
    .local v0, "index":I
    add-int/lit8 v0, v0, 0x1

    .line 850
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 851
    return-object p0
.end method

.method public static removePositivePrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 834
    const/16 v1, 0x2b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 835
    .local v0, "index":I
    add-int/lit8 v0, v0, 0x1

    .line 836
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 837
    return-object p0
.end method

.method public static setStringArrayPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefFileName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 716
    .local p3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 718
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 719
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 720
    .local v2, "jsonArr":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 721
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 720
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 723
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 724
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 729
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 731
    const-string v4, "Utils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Array Pref"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    return-void

    .line 727
    :cond_1
    const/4 v4, 0x0

    invoke-interface {v0, p2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static showBrowserNotInstalledToast()V
    .locals 3

    .prologue
    .line 1092
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0024

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1097
    return-void
.end method

.method public static showErrorMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 768
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 769
    return-void
.end method

.method public static declared-synchronized updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V
    .locals 8
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "endpointType"    # I
    .param p3, "operation"    # I
    .param p4, "mask"    # B

    .prologue
    const/4 v5, 0x1

    .line 943
    const-class v4, Lcom/qualcomm/toq/base/utils/Utils;

    monitor-enter v4

    if-nez p2, :cond_1

    .line 1028
    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    .line 947
    :cond_1
    and-int/lit8 v3, p4, 0x1

    if-ne v3, v5, :cond_2

    .line 948
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v5

    aget-object v5, v5, p2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    :cond_2
    and-int/lit8 v3, p4, 0x2

    const/4 v5, 0x2

    if-ne v3, v5, :cond_3

    .line 953
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v5

    aget-object v5, v5, p2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    :cond_3
    and-int/lit8 v3, p4, 0x4

    const/4 v5, 0x4

    if-ne v3, v5, :cond_0

    .line 959
    invoke-static {p2}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getInstance(I)Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 961
    .local v1, "mFileTransferStatusLogger":Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 965
    :pswitch_0
    :try_start_1
    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->clearHeaderList()V

    .line 966
    const/4 v3, 0x1

    invoke-static {p0, p1, p2, v3, p4}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1023
    :catch_0
    move-exception v0

    .line 1024
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in updateStatus(: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 943
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "mFileTransferStatusLogger":Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 974
    .restart local v1    # "mFileTransferStatusLogger":Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;
    :pswitch_1
    :try_start_3
    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getHeading()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getHeading()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 978
    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getHeadingDetails()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getHeadingDetails()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 982
    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->updateUI()V

    goto/16 :goto_0

    .line 991
    :pswitch_2
    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getHeading()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getHeading()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 996
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 999
    .local v2, "timeAndDate":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getHeadingDetails()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getHeadingDetails()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TimeStamp: started on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1005
    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->updateUI()V

    goto/16 :goto_0

    .line 1013
    .end local v2    # "timeAndDate":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getHeading()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v5, 0x64

    if-le v3, v5, :cond_4

    .line 1014
    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getHeading()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1015
    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->getHeadingDetails()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1018
    :cond_4
    invoke-virtual {v1, p1}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->addHeading(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 961
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

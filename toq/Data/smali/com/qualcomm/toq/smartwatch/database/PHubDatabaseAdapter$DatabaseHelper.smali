.class Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PHubDatabaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    const-string v0, "pHubDataBase"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 221
    return-void
.end method

.method private createAppID(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 6
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "appID":I
    const-string v3, "PHubDatabaseAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inside createAppID() for appname = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v3, "TIME_CONTROLLER"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 252
    const/4 v0, 0x5

    .line 273
    :cond_0
    :goto_0
    const-string v3, "PHubDatabaseAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "End of createAppID() appID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for appName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 276
    .local v1, "initialValues":Landroid/content/ContentValues;
    const/4 v2, 0x0

    .line 277
    .local v2, "test":[B
    const-string v3, "app_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 278
    const-string v3, "app_name"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v3, "icon"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 280
    const-string v3, "status"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 281
    const-string v3, "app_type"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 282
    const-string v3, "appDatabase"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 284
    return v0

    .line 254
    .end local v1    # "initialValues":Landroid/content/ContentValues;
    .end local v2    # "test":[B
    :cond_1
    const-string v3, "SMS_CONTROLLER"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 255
    const/4 v0, 0x3

    goto :goto_0

    .line 257
    :cond_2
    const-string v3, "STORAGE_SERVICE_CONTROLLER"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 258
    const/16 v0, 0x9

    goto :goto_0

    .line 260
    :cond_3
    const-string v3, "VOICE_CALL_CONTROLLER"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 261
    const/4 v0, 0x1

    goto :goto_0

    .line 263
    :cond_4
    const-string v3, "FMS_CONTROLLER"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 264
    const/16 v0, 0x11

    goto :goto_0

    .line 266
    :cond_5
    const-string v3, "VERSION_CONTROLLER"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 267
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 269
    :cond_6
    const-string v3, "ACTIVITY_MONITORING_CONTROLLER"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    const/16 v0, 0x1e

    goto/16 :goto_0
.end method

.method private insertNativeAppData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 231
    const-string v0, "PHubDatabaseAdapter"

    const-string v1, "Inside insertNativeAppData()"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->getSystemController()Lcom/qualcomm/toq/smartwatch/controller/SystemController;

    move-result-object v0

    const-string v1, "TIME_CONTROLLER"

    invoke-direct {p0, v1, p1}, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter$DatabaseHelper;->createAppID(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    iput v1, v0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->appID:I

    .line 234
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->getSMSController()Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    move-result-object v0

    const-string v1, "SMS_CONTROLLER"

    invoke-direct {p0, v1, p1}, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter$DatabaseHelper;->createAppID(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    iput v1, v0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->appID:I

    .line 236
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->getPopUpController()Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    move-result-object v0

    const-string v1, "POPUP_CONTROLLER"

    invoke-direct {p0, v1, p1}, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter$DatabaseHelper;->createAppID(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    iput v1, v0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->appID:I

    .line 238
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/StorageServiceController;->getStorageServiceController()Lcom/qualcomm/toq/smartwatch/controller/StorageServiceController;

    move-result-object v0

    const-string v1, "STORAGE_SERVICE_CONTROLLER"

    invoke-direct {p0, v1, p1}, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter$DatabaseHelper;->createAppID(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    iput v1, v0, Lcom/qualcomm/toq/smartwatch/controller/StorageServiceController;->appID:I

    .line 240
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->getVoiceCallController()Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;

    move-result-object v0

    const-string v1, "VOICE_CALL_CONTROLLER"

    invoke-direct {p0, v1, p1}, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter$DatabaseHelper;->createAppID(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    iput v1, v0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->appID:I

    .line 242
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v0

    const-string v1, "FMS_CONTROLLER"

    invoke-direct {p0, v1, p1}, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter$DatabaseHelper;->createAppID(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    iput v1, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->appID:I

    .line 244
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->getActivityMonitoringController()Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;

    move-result-object v0

    const-string v1, "ACTIVITY_MONITORING_CONTROLLER"

    invoke-direct {p0, v1, p1}, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter$DatabaseHelper;->createAppID(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    iput v1, v0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->appID:I

    .line 246
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 225
    const-string v0, "PHubDatabaseAdapter"

    const-string v1, "inside DatabaseHelper:onCreate"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v0, "create table appDatabase (_id integer primary key autoincrement, app_id interger unique, app_name text not null, icon blob, status bool true, app_type text not null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 227
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter$DatabaseHelper;->insertNativeAppData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 228
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 297
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 298
    const-string v1, "appDatabase"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "app_id"

    aput-object v0, v2, v6

    const-string v0, "app_name"

    aput-object v0, v2, v4

    const-string v3, "app_type = ?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v0, "0"

    aput-object v0, v4, v6

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 306
    .local v10, "localCursor":Landroid/database/Cursor;
    if-eqz v10, :cond_9

    .line 308
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 309
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 310
    const-string v0, "app_name"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 311
    .local v9, "appName":Ljava/lang/String;
    const-string v0, "app_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 312
    .local v8, "appID":I
    const-string v0, "TIME_CONTROLLER"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->getSystemController()Lcom/qualcomm/toq/smartwatch/controller/SystemController;

    move-result-object v0

    iput v8, v0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->appID:I

    goto :goto_0

    .line 315
    :cond_1
    const-string v0, "SMS_CONTROLLER"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 316
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->getSMSController()Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    move-result-object v0

    iput v8, v0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->appID:I

    goto :goto_0

    .line 318
    :cond_2
    const-string v0, "POPUP_CONTROLLER"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 319
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->getPopUpController()Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    move-result-object v0

    iput v8, v0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->appID:I

    goto :goto_0

    .line 321
    :cond_3
    const-string v0, "STORAGE_SERVICE_CONTROLLER"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 322
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/StorageServiceController;->getStorageServiceController()Lcom/qualcomm/toq/smartwatch/controller/StorageServiceController;

    move-result-object v0

    iput v8, v0, Lcom/qualcomm/toq/smartwatch/controller/StorageServiceController;->appID:I

    goto :goto_0

    .line 324
    :cond_4
    const-string v0, "VOICE_CALL_CONTROLLER"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 325
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->getVoiceCallController()Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;

    move-result-object v0

    iput v8, v0, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->appID:I

    goto :goto_0

    .line 327
    :cond_5
    const-string v0, "FMS_CONTROLLER"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 328
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v0

    iput v8, v0, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->appID:I

    goto :goto_0

    .line 330
    :cond_6
    const-string v0, "VERSION_CONTROLLER"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 331
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/VersionController;->getVersionController()Lcom/qualcomm/toq/smartwatch/controller/VersionController;

    move-result-object v0

    iput v8, v0, Lcom/qualcomm/toq/smartwatch/controller/VersionController;->appID:I

    goto/16 :goto_0

    .line 333
    :cond_7
    const-string v0, "ACTIVITY_MONITORING_CONTROLLER"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->getActivityMonitoringController()Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;

    move-result-object v0

    iput v8, v0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->appID:I

    goto/16 :goto_0

    .line 337
    .end local v8    # "appID":I
    .end local v9    # "appName":Ljava/lang/String;
    :cond_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 338
    const/4 v10, 0x0

    .line 340
    :cond_9
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 289
    const-string v0, "PHubDatabaseAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v0, "DROP TABLE IF EXISTS appDatabase"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 293
    return-void
.end method

.class public Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;
.super Ljava/lang/Object;
.source "PHubDatabaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table appDatabase (_id integer primary key autoincrement, app_id interger unique, app_name text not null, icon blob, status bool true, app_type text not null);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "pHubDataBase"

.field private static final DATABASE_TABLE:Ljava/lang/String; = "appDatabase"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final KEY_APPID:Ljava/lang/String; = "app_id"

.field public static final KEY_APPNAME:Ljava/lang/String; = "app_name"

.field public static final KEY_APP_TYPE:Ljava/lang/String; = "app_type"

.field public static final KEY_ICON:Ljava/lang/String; = "icon"

.field public static final KEY_ROWID:Ljava/lang/String; = "_id"

.field public static final KEY_STATUS:Ljava/lang/String; = "status"

.field private static final TAG:Ljava/lang/String; = "PHubDatabaseAdapter"

.field private static mInstance:Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;


# instance fields
.field private DBHelper:Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter$DatabaseHelper;

.field private final PROJECTION:[Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "app_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "app_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "icon"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "app_type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;->PROJECTION:[Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;->context:Landroid/content/Context;

    .line 62
    new-instance v0, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter$DatabaseHelper;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;->DBHelper:Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter$DatabaseHelper;

    .line 63
    return-void
.end method

.method public static getDatabaseAdapter(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    sget-object v0, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;->mInstance:Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;->mInstance:Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;

    .line 69
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;->mInstance:Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;

    return-object v0
.end method


# virtual methods
.method public InitiatePhubDatabaseHelper()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter$DatabaseHelper;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;->DBHelper:Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter$DatabaseHelper;

    .line 95
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;->DBHelper:Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter$DatabaseHelper;->close()V

    .line 91
    return-void
.end method

.method public deleteAppData(J)Z
    .locals 4
    .param p1, "appID"    # J

    .prologue
    .line 116
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "appDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllAppData()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 121
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "appDatabase"

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getAppID(Ljava/lang/String;)I
    .locals 12
    .param p1, "appName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 151
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "appDatabase"

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;->PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "app_name=\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 161
    .local v11, "mCursor":Landroid/database/Cursor;
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const-string v0, "app_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 163
    .local v10, "appID":I
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 164
    const/4 v11, 0x0

    .line 168
    .end local v10    # "appID":I
    :goto_0
    return v10

    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public getController(I)Lcom/qualcomm/toq/base/controller/IController;
    .locals 13
    .param p1, "appID"    # I

    .prologue
    const/4 v5, 0x0

    .line 173
    const/4 v11, 0x0

    .line 174
    .local v11, "controller":Lcom/qualcomm/toq/base/controller/IController;
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "appDatabase"

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;->PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "app_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 184
    .local v12, "mCursor":Landroid/database/Cursor;
    if-eqz v12, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    const-string v0, "app_name"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 186
    .local v10, "appName":Ljava/lang/String;
    const-string v0, "TIME_CONTROLLER"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->getSystemController()Lcom/qualcomm/toq/smartwatch/controller/SystemController;

    move-result-object v11

    .line 211
    :cond_0
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 212
    const/4 v12, 0x0

    .line 215
    .end local v10    # "appName":Ljava/lang/String;
    :cond_1
    return-object v11

    .line 189
    .restart local v10    # "appName":Ljava/lang/String;
    :cond_2
    const-string v0, "SMS_CONTROLLER"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->getSMSController()Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    move-result-object v11

    goto :goto_0

    .line 192
    :cond_3
    const-string v0, "VOICE_CALL_CONTROLLER"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 193
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->getVoiceCallController()Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;

    move-result-object v11

    goto :goto_0

    .line 195
    :cond_4
    const-string v0, "STORAGE_SERVICE_CONTROLLER"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 196
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/StorageServiceController;->getStorageServiceController()Lcom/qualcomm/toq/smartwatch/controller/StorageServiceController;

    move-result-object v11

    goto :goto_0

    .line 198
    :cond_5
    const-string v0, "POPUP_CONTROLLER"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 199
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->getPopUpController()Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    move-result-object v11

    goto :goto_0

    .line 201
    :cond_6
    const-string v0, "FMS_CONTROLLER"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 202
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v11

    goto :goto_0

    .line 204
    :cond_7
    const-string v0, "VERSION_CONTROLLER"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 205
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/VersionController;->getVersionController()Lcom/qualcomm/toq/smartwatch/controller/VersionController;

    move-result-object v11

    goto :goto_0

    .line 207
    :cond_8
    const-string v0, "ACTIVITY_MONITORING_CONTROLLER"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->getActivityMonitoringController()Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;

    move-result-object v11

    goto :goto_0
.end method

.method public getSingleAppData(J)Landroid/database/Cursor;
    .locals 11
    .param p1, "appID"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 133
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "appDatabase"

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;->PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "app_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 143
    .local v10, "mCursor":Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 144
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 146
    :cond_0
    return-object v10
.end method

.method public insertAppData(ILjava/lang/String;ZI)J
    .locals 7
    .param p1, "appID"    # I
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "status"    # Z
    .param p4, "appType"    # I

    .prologue
    .line 99
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 100
    .local v0, "initialValues":Landroid/content/ContentValues;
    const/4 v3, 0x0

    .line 101
    .local v3, "test":[B
    const-string v4, "app_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string v4, "app_name"

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v4, "icon"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 104
    const-string v4, "status"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 105
    const-string v4, "app_type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "appDatabase"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 107
    .local v1, "returnValue":J
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-eqz v4, :cond_0

    .line 108
    int-to-long v1, p1

    .line 111
    .end local v1    # "returnValue":J
    :cond_0
    return-wide v1
.end method

.method public open()Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;
    .locals 2

    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;->DBHelper:Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter$DatabaseHelper;

    if-nez v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;->InitiatePhubDatabaseHelper()V

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;->DBHelper:Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter$DatabaseHelper;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local p0    # "this":Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;
    :goto_0
    return-object p0

    .line 82
    .restart local p0    # "this":Lcom/qualcomm/toq/smartwatch/database/PHubDatabaseAdapter;
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    const/4 p0, 0x0

    goto :goto_0
.end method

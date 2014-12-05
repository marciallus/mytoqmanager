.class public Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;
.super Ljava/lang/Object;
.source "FMSDatabaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter$FMSDatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table FMSTransactionDatabase (_id integer primary key autoincrement, app_id interger, dest_path text not null, checksum long, state integer, timestamp long, priority integer);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "FMSDataBase"

.field private static final DATABASE_TABLE:Ljava/lang/String; = "FMSTransactionDatabase"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final KEY_APPID:Ljava/lang/String; = "app_id"

.field public static final KEY_CHECKSUM:Ljava/lang/String; = "checksum"

.field public static final KEY_DESTINATIONPATH:Ljava/lang/String; = "dest_path"

.field public static final KEY_PRIORITY:Ljava/lang/String; = "priority"

.field public static final KEY_ROWID:Ljava/lang/String; = "_id"

.field public static final KEY_STATE:Ljava/lang/String; = "state"

.field public static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final TAG:Ljava/lang/String; = "FMSController"

.field private static mInstance:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;


# instance fields
.field private FMSDBHelper:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter$FMSDatabaseHelper;

.field private final PROJECTION:[Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "app_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "dest_path"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "checksum"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "state"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "priority"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->PROJECTION:[Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->context:Landroid/content/Context;

    .line 61
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->InitiateFMSDatabaseHelper()V

    .line 62
    return-void
.end method

.method public static getFMSDatabaseAdapter(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    sget-object v0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->mInstance:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    if-nez v0, :cond_0

    .line 66
    const-string v0, "FMSController"

    const-string v1, "FMSDatabaseAdapter mInstance is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->mInstance:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    .line 69
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->mInstance:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    return-object v0
.end method


# virtual methods
.method public InitiateFMSDatabaseHelper()V
    .locals 2

    .prologue
    .line 73
    const-string v0, "FMSController"

    const-string v1, "InitiateFMSDatabaseHelper()"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter$FMSDatabaseHelper;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter$FMSDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->FMSDBHelper:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter$FMSDatabaseHelper;

    .line 75
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 116
    const-string v0, "FMSController"

    const-string v1, "FMSDBHelper: close() called"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->FMSDBHelper:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter$FMSDatabaseHelper;

    if-nez v0, :cond_0

    .line 118
    const-string v0, "FMSController"

    const-string v1, "close(): FMSDBHelper is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->InitiateFMSDatabaseHelper()V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->FMSDBHelper:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter$FMSDatabaseHelper;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter$FMSDatabaseHelper;->close()V

    .line 122
    return-void
.end method

.method public deleteFMSEntry(Ljava/lang/String;)Z
    .locals 5
    .param p1, "destPath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 159
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "FMSTransactionDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dest_path= \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_2

    .line 165
    const-string v1, "FMSController"

    const-string v2, "deleteFMSEntry(): db is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    const-string v1, "FMSController"

    const-string v2, "deleteFMSEntry(): db is not open"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dropDB()V
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->context:Landroid/content/Context;

    const-string v1, "FMSDataBase"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 670
    return-void
.end method

.method public fmsResetStates()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x7

    .line 678
    :try_start_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->resetFailedPriorities()V

    .line 680
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getAllData()Landroid/database/Cursor;

    move-result-object v2

    .line 682
    .local v2, "fmsCursor":Landroid/database/Cursor;
    if-eqz v2, :cond_3

    .line 683
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 684
    const-string v4, "state"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 685
    .local v0, "currentState":I
    const/4 v4, 0x6

    if-eq v0, v4, :cond_1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_1

    .line 688
    const-string v4, "_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 689
    .local v3, "rowID":I
    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->updateFMSDBState(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 703
    .end local v0    # "currentState":I
    .end local v2    # "fmsCursor":Landroid/database/Cursor;
    .end local v3    # "rowID":I
    :catch_0
    move-exception v1

    .line 704
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "FMSController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FMSDatabaseAdapter: Exception in fmsResetStates(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 709
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 691
    .restart local v0    # "currentState":I
    .restart local v2    # "fmsCursor":Landroid/database/Cursor;
    :cond_1
    if-ne v0, v6, :cond_0

    .line 692
    :try_start_1
    const-string v4, "_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 693
    .restart local v3    # "rowID":I
    const/4 v4, 0x7

    invoke-virtual {p0, v3, v4}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->updateFMSDBState(II)V

    goto :goto_0

    .line 697
    .end local v0    # "currentState":I
    .end local v3    # "rowID":I
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 700
    :cond_3
    const-string v4, "FMSController"

    const-string v5, "fmsResetStates(): fmsCursor IS NULL"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getAllData()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 177
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "FMSTransactionDatabase"

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v7, "priority ASC"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 193
    :cond_0
    :goto_0
    return-object v3

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    .line 188
    const-string v0, "FMSController"

    const-string v1, "getAllData(): db is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    const-string v0, "FMSController"

    const-string v1, "getAllData(): db is not open"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAllDestinationPath()[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 736
    :try_start_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getAllData()Landroid/database/Cursor;

    move-result-object v2

    .line 737
    .local v2, "fmsCursor":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 738
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    .line 739
    .local v0, "destPaths":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_0

    .line 740
    const-string v5, "dest_path"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    .line 741
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 739
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 743
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 757
    .end local v0    # "destPaths":[Ljava/lang/String;
    .end local v2    # "fmsCursor":Landroid/database/Cursor;
    .end local v3    # "i":I
    :goto_1
    return-object v0

    .line 747
    .restart local v2    # "fmsCursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v2, :cond_2

    .line 748
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 750
    :cond_2
    const-string v5, "FMSController"

    const-string v6, "getDestinationPath(): fmsCursor is null or fmsCursor.moveToFirst() returns false"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 752
    goto :goto_1

    .line 755
    .end local v2    # "fmsCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 756
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "FMSController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in getAllDestinationPath(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 757
    goto :goto_1
.end method

.method public getAppPriority(Ljava/lang/String;)I
    .locals 4
    .param p1, "destPath"    # Ljava/lang/String;

    .prologue
    .line 617
    const/16 v0, 0x63

    .line 618
    .local v0, "prior":I
    const-string v1, "/firmware/1234.zip"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    const/4 v0, 0x1

    .line 632
    :goto_0
    const-string v1, "FMSController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppPriority for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    return v0

    .line 621
    :cond_0
    const-string v1, "/settings/app_list.jsn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/settings/usersettings.jsn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 623
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 625
    :cond_2
    const-string v1, "/settings/clock_list.jsn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "/musicplayer/playlist.jsn"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 627
    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    .line 630
    :cond_4
    const/16 v0, 0x63

    goto :goto_0
.end method

.method public getDataFromDB(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 198
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "FMSTransactionDatabase"

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->PROJECTION:[Ljava/lang/String;

    const-string v7, "priority ASC"

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 214
    :cond_0
    :goto_0
    return-object v5

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_2

    .line 209
    const-string v0, "FMSController"

    const-string v1, "getDataFromDB(): db is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    const-string v0, "FMSController"

    const-string v1, "getDataFromDB(): db is not open"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDestinationPath(I)[Ljava/lang/String;
    .locals 7
    .param p1, "state"    # I

    .prologue
    .line 713
    const-string v3, "state = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getDataFromDB(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 715
    .local v1, "fmsCursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 716
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 717
    .local v0, "destPaths":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 718
    const-string v3, "dest_path"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 719
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 717
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 721
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 730
    .end local v0    # "destPaths":[Ljava/lang/String;
    .end local v2    # "i":I
    :goto_1
    return-object v0

    .line 725
    :cond_1
    if-eqz v1, :cond_2

    .line 726
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 728
    :cond_2
    const-string v3, "FMSController"

    const-string v4, "getDestinationPath(int state): fmsCursor is null or fmsCursor.moveToFirst() returns false"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getFMSChecksum(Ljava/lang/String;)J
    .locals 13
    .param p1, "destPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v5, 0x0

    .line 338
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "FMSTransactionDatabase"

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dest_path=\'"

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

    move-result-object v12

    .line 350
    .local v12, "mCursor":Landroid/database/Cursor;
    if-eqz v12, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    const-string v0, "checksum"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 352
    .local v10, "fmsChksum":J
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 369
    .end local v10    # "fmsChksum":J
    .end local v12    # "mCursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-wide v10

    .line 356
    .restart local v12    # "mCursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v12, :cond_0

    .line 357
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 363
    .end local v12    # "mCursor":Landroid/database/Cursor;
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_3

    .line 364
    const-string v0, "FMSController"

    const-string v1, "getFMSChecksum(): db is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 366
    :cond_3
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    const-string v0, "FMSController"

    const-string v1, "getFMSChecksum(): db is not open"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFMSId(Ljava/lang/String;)I
    .locals 12
    .param p1, "destPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 249
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "FMSTransactionDatabase"

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dest_path=\'"

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

    .line 261
    .local v11, "mCursor":Landroid/database/Cursor;
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    const-string v0, "_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 263
    .local v10, "fmsId":I
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 280
    .end local v10    # "fmsId":I
    .end local v11    # "mCursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return v10

    .line 267
    .restart local v11    # "mCursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v11, :cond_0

    .line 268
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 274
    .end local v11    # "mCursor":Landroid/database/Cursor;
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_3

    .line 275
    const-string v0, "FMSController"

    const-string v1, "getFMSId(): db is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_3
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    const-string v0, "FMSController"

    const-string v1, "getFMSId(): db is not open"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getFMSState(Ljava/lang/String;)I
    .locals 12
    .param p1, "destPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 285
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "FMSTransactionDatabase"

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dest_path=\'"

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

    .line 297
    .local v11, "mCursor":Landroid/database/Cursor;
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    const-string v0, "state"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 299
    .local v10, "fmsState":I
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 316
    .end local v10    # "fmsState":I
    .end local v11    # "mCursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return v10

    .line 303
    .restart local v11    # "mCursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v11, :cond_0

    .line 304
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 310
    .end local v11    # "mCursor":Landroid/database/Cursor;
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_3

    .line 311
    const-string v0, "FMSController"

    const-string v1, "getFMSState(): db is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_3
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    const-string v0, "FMSController"

    const-string v1, "getFMSState(): db is not open"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getHighestPriorityEntry()I
    .locals 4

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getAllData()Landroid/database/Cursor;

    move-result-object v0

    .line 654
    .local v0, "fmsCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 655
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 656
    .local v1, "rowId":I
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 664
    .end local v1    # "rowId":I
    :goto_0
    return v1

    .line 660
    :cond_0
    const-string v2, "FMSController"

    const-string v3, "getHighestPriorityEntry(): fmsCursor is null"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    if-eqz v0, :cond_1

    .line 662
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 664
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNextFileTransferPath()Ljava/lang/String;
    .locals 6

    .prologue
    .line 791
    const-string v2, "state = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getDataFromDB(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 793
    .local v1, "fmsCursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 794
    .local v0, "destPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 795
    const-string v2, "dest_path"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 796
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 797
    const-string v2, "FMSController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNextFileTransferPath() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    .line 806
    :goto_0
    return-object v2

    .line 801
    :cond_0
    if-eqz v1, :cond_1

    .line 802
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 804
    :cond_1
    const-string v2, "FMSController"

    const-string v3, "getNextFileTransferPath(): fmsCursor is null or fmsCursor.moveToFirst() returns false"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPendingReqDestPath()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 762
    const-string v3, "state = ? or state = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getDataFromDB(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 765
    .local v1, "fmsCursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 766
    const-string v3, "FMSController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fmsCursor.getCount() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :cond_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 771
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 772
    .local v0, "destPaths":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 773
    const-string v3, "dest_path"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 774
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 772
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 776
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 785
    .end local v0    # "destPaths":[Ljava/lang/String;
    .end local v2    # "i":I
    :goto_1
    return-object v0

    .line 780
    :cond_2
    if-eqz v1, :cond_3

    .line 781
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 783
    :cond_3
    const-string v3, "FMSController"

    const-string v4, "getPendingReqDestPath(): fmsCursor is null or fmsCursor.moveToFirst() returns false"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getPriorityDBEntry(Ljava/lang/String;)I
    .locals 5
    .param p1, "destPath"    # Ljava/lang/String;

    .prologue
    .line 637
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getSingleFMSEntry(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 638
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 639
    const-string v2, "priority"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 640
    .local v1, "priority":I
    const-string v2, "FMSController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPriorityDBEntry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 649
    .end local v1    # "priority":I
    :goto_0
    return v1

    .line 645
    :cond_0
    if-eqz v0, :cond_1

    .line 646
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 649
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSingleFMSEntry(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "destPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 220
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "FMSTransactionDatabase"

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dest_path=\'"

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

    move-result-object v10

    .line 232
    .local v10, "mCursor":Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 233
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 244
    .end local v10    # "mCursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v10

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_3

    .line 239
    const-string v0, "FMSController"

    const-string v1, "getSingleFMSEntry(): db is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    move-object v10, v5

    .line 244
    goto :goto_0

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2

    .line 242
    const-string v0, "FMSController"

    const-string v1, "getSingleFMSEntry(): db is not open"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getTimeStamp(Ljava/lang/String;)J
    .locals 13
    .param p1, "destPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const-wide/16 v11, 0x0

    const/4 v5, 0x0

    .line 374
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    const-string v2, "FMSTransactionDatabase"

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dest_path=\'"

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

    move-result-object v10

    .line 386
    .local v10, "mCursor":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    const-string v0, "timestamp"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 388
    .local v11, "timeStamp":J
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 405
    .end local v10    # "mCursor":Landroid/database/Cursor;
    .end local v11    # "timeStamp":J
    :cond_0
    :goto_0
    return-wide v11

    .line 392
    .restart local v10    # "mCursor":Landroid/database/Cursor;
    :cond_1
    if-eqz v10, :cond_0

    .line 393
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 399
    .end local v10    # "mCursor":Landroid/database/Cursor;
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_3

    .line 400
    const-string v0, "FMSController"

    const-string v1, "getTimeStamp(): db is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 402
    :cond_3
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    const-string v0, "FMSController"

    const-string v1, "getTimeStamp(): db is not open"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public insertFMSData(ILjava/lang/String;JIJI)J
    .locals 6
    .param p1, "appID"    # I
    .param p2, "destPath"    # Ljava/lang/String;
    .param p3, "checksum"    # J
    .param p5, "state"    # I
    .param p6, "timeStamp"    # J
    .param p8, "priority"    # I

    .prologue
    .line 127
    const-wide/16 v1, -0x1

    .line 129
    .local v1, "returnValue":J
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 130
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v3, "app_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    const-string v3, "dest_path"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v3, "checksum"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 133
    const-string v3, "state"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    const-string v3, "timestamp"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 135
    const-string v3, "priority"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 138
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "FMSTransactionDatabase"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 149
    :cond_0
    :goto_0
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    .line 150
    int-to-long v1, p1

    .line 153
    .end local v1    # "returnValue":J
    :cond_1
    return-wide v1

    .line 141
    .restart local v1    # "returnValue":J
    :cond_2
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_3

    .line 142
    const-string v3, "FMSController"

    const-string v4, "insertFMSData(): db is null"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_3
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    const-string v3, "FMSController"

    const-string v4, "insertFMSData(): db is not open"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isFMSDBOpen()Z
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    .line 84
    :goto_0
    return v0

    .line 82
    :cond_0
    const-string v0, "FMSController"

    const-string v1, "isFMSDBOpen(): db is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFMSEntryAvailable(Ljava/lang/String;)Z
    .locals 3
    .param p1, "destPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getAllData()Landroid/database/Cursor;

    move-result-object v0

    .line 323
    .local v0, "fmsCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 324
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    const-string v2, "dest_path"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "path":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 328
    const/4 v2, 0x1

    .line 334
    .end local v1    # "path":Ljava/lang/String;
    :goto_0
    return v2

    .line 331
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 334
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isFileTransferInProgress()Z
    .locals 3

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getAllData()Landroid/database/Cursor;

    move-result-object v0

    .line 592
    .local v0, "fmsCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 593
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 594
    const-string v2, "state"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 595
    .local v1, "state":I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 596
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 597
    const/4 v2, 0x1

    .line 603
    .end local v1    # "state":I
    :goto_0
    return v2

    .line 600
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 603
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public open()Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;
    .locals 4

    .prologue
    .line 89
    const-string v1, "FMSController"

    const-string v2, "FMSDatabaseAdapter open() called"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->FMSDBHelper:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter$FMSDatabaseHelper;

    if-nez v1, :cond_0

    .line 92
    const-string v1, "FMSController"

    const-string v2, "open(): FMSDBHelper is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->InitiateFMSDatabaseHelper()V

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_2

    .line 96
    const-string v1, "FMSDatabaseAdapter"

    const-string v2, "open(): db is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "FMSController"

    const-string v2, "open(): db is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->FMSDBHelper:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter$FMSDatabaseHelper;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter$FMSDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 111
    :cond_1
    :goto_0
    return-object p0

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    const-string v1, "FMSDatabaseAdapter"

    const-string v2, "open(): db is not open"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "FMSController"

    const-string v2, "open(): db is not open"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->FMSDBHelper:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter$FMSDatabaseHelper;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter$FMSDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    const-string v1, "FMSController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in open(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resetFMSPriority(Ljava/lang/String;I)V
    .locals 6
    .param p1, "destPath"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .prologue
    .line 511
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 512
    .local v0, "args":Landroid/content/ContentValues;
    const-string v1, "priority"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 513
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 514
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "FMSTransactionDatabase"

    const-string v3, "dest_path=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_2

    .line 521
    const-string v1, "FMSController"

    const-string v2, "resetFMSPriority(): db is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 523
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 524
    const-string v1, "FMSController"

    const-string v2, "resetFMSPriority(): db is not open"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resetFailedPriorities()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 553
    const-string v0, "FMSController"

    const-string v1, "DB: resetFailedPriorities()"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string v3, "state=? AND priority=?"

    .line 555
    .local v3, "where":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 559
    .local v4, "args":[Ljava/lang/String;
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "FMSTransactionDatabase"

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 568
    .local v9, "fmsCursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 569
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    const-string v0, "dest_path"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 573
    .local v8, "destPath":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getAppPriority(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v8, v0}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->resetFMSPriority(Ljava/lang/String;I)V

    goto :goto_0

    .line 575
    .end local v8    # "destPath":Ljava/lang/String;
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 586
    .end local v9    # "fmsCursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    return-void

    .line 579
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_3

    .line 580
    const-string v0, "FMSController"

    const-string v1, "resetFailedPriorities(): db is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 582
    :cond_3
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 583
    const-string v0, "FMSController"

    const-string v1, "resetFailedPriorities(): db is not open"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setFailedFMSPriority(Ljava/lang/String;)V
    .locals 6
    .param p1, "destpath"    # Ljava/lang/String;

    .prologue
    .line 530
    if-nez p1, :cond_1

    .line 531
    const-string v1, "FMSController"

    const-string v2, "DB: No Transaction with Failed Priority"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 535
    .local v0, "args":Landroid/content/ContentValues;
    const-string v1, "priority"

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 536
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 537
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "FMSTransactionDatabase"

    const-string v3, "dest_path=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 543
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_3

    .line 544
    const-string v1, "FMSController"

    const-string v2, "setFailedFMSPriority(): db is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 546
    :cond_3
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 547
    const-string v1, "FMSController"

    const-string v2, "setFailedFMSPriority(): db is not open"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setStateReadyToTransfer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 833
    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getDestinationPath(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 834
    const-string v0, "FMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DB: setStateReadyToTransfer() FMS_TRANSFER_IN_PROGRESS destpath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getDestinationPath(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const-string v0, "FMSController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMS DB Update: FMS State updated to FMS_READY_TO_TRANSFER: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getDestinationPath(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getDestinationPath(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    const/4 v1, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->updateFMSState(Ljava/lang/String;IJ)V

    .line 851
    :goto_0
    return-void

    .line 849
    :cond_0
    const-string v0, "FMSController"

    const-string v1, "DB: No Transaction in state FMS_TRANSFER_IN_PROGRESS"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setStateTransferComplete()Z
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x0

    .line 811
    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getDestinationPath(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 812
    const-string v1, "FMSController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DB: setStateTransferComplete() FMS_TRANSFER_IN_PROGRESS destpath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getDestinationPath(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const-string v1, "FMSController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FMS DB Update: FMS State updated to FMS_TRANSFER_COMPLETE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getDestinationPath(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getDestinationPath(I)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v0

    const/4 v1, 0x5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->updateFMSState(Ljava/lang/String;IJ)V

    .line 824
    const/4 v0, 0x1

    .line 828
    :goto_0
    return v0

    .line 827
    :cond_0
    const-string v1, "FMSController"

    const-string v2, "DB: No Transaction in state FMS_TRANSFER_IN_PROGRESS"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateFMSDBState(II)V
    .locals 7
    .param p1, "_id"    # I
    .param p2, "state"    # I

    .prologue
    .line 492
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 493
    .local v0, "args":Landroid/content/ContentValues;
    const-string v1, "state"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 494
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 495
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "FMSTransactionDatabase"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_2

    .line 502
    const-string v1, "FMSController"

    const-string v2, "updateFMSDBState(): db is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 504
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 505
    const-string v1, "FMSController"

    const-string v2, "updateFMSDBState(): db is not open"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateFMSEntry(Ljava/lang/String;IJJI)V
    .locals 6
    .param p1, "destPath"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "checksum"    # J
    .param p5, "timeStamp"    # J
    .param p7, "priority"    # I

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, -0x1

    .line 412
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 413
    .local v0, "args":Landroid/content/ContentValues;
    if-eq p2, v3, :cond_0

    .line 414
    const-string v1, "state"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 416
    :cond_0
    cmp-long v1, p3, v4

    if-eqz v1, :cond_1

    .line 417
    const-string v1, "checksum"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 419
    :cond_1
    cmp-long v1, p5, v4

    if-eqz v1, :cond_2

    .line 420
    const-string v1, "timestamp"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 422
    :cond_2
    if-eq p7, v3, :cond_3

    .line 423
    const-string v1, "priority"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 425
    :cond_3
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 426
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "FMSTransactionDatabase"

    const-string v3, "dest_path=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 439
    :cond_4
    :goto_0
    return-void

    .line 432
    :cond_5
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_6

    .line 433
    const-string v1, "FMSController"

    const-string v2, "updateFMSEntry(): db is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_6
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_4

    .line 436
    const-string v1, "FMSController"

    const-string v2, "updateFMSEntry(): db is not open"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateFMSState(Ljava/lang/String;IJ)V
    .locals 15
    .param p1, "destPath"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "timeStamp"    # J

    .prologue
    .line 443
    const-string v1, "FMSController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DB: destPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 445
    .local v11, "args":Landroid/content/ContentValues;
    const-string v1, "state"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 446
    const-string v1, "timestamp"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 447
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 448
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "FMSTransactionDatabase"

    const-string v3, "dest_path=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v11, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 452
    .local v12, "i":I
    const-string v1, "FMSController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DB: update rows?:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    const-string v3, "FMSTransactionDatabase"

    const/4 v4, 0x0

    const-string v5, "dest_path=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 463
    .local v14, "mCursor":Landroid/database/Cursor;
    if-eqz v14, :cond_1

    .line 464
    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    const-string v1, "FMSController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DB: destPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :cond_0
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 472
    :cond_1
    const/4 v1, 0x6

    move/from16 v0, p2

    if-ne v0, v1, :cond_2

    .line 473
    new-instance v13, Landroid/content/Intent;

    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_SMARTWATCH_FMS_FILE_SYNCED:Ljava/lang/String;

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 474
    .local v13, "intent":Landroid/content/Intent;
    const-string v1, "DESTPATH"

    move-object/from16 v0, p1

    invoke-virtual {v13, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    const-string v1, "FMSController"

    const-string v2, "Sending ACTION_SMARTWATCH_FMS_FILE_SYNCED Broadcast"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 489
    .end local v12    # "i":I
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "mCursor":Landroid/database/Cursor;
    :cond_2
    :goto_1
    return-void

    .line 482
    :cond_3
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_4

    .line 483
    const-string v1, "FMSController"

    const-string v2, "updateFMSState(): db is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 485
    :cond_4
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_2

    .line 486
    const-string v1, "FMSController"

    const-string v2, "updateFMSState(): db is not open"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

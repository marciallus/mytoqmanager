.class public Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;
.super Ljava/lang/Object;
.source "ActivityPointsDatabaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table pointsTable (_id integer primary key autoincrement, epoc_time long unique, points integer);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "activityDb"

.field private static final DATABASE_TABLE:Ljava/lang/String; = "pointsTable"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final HOURS_IN_DAY:I = 0x18

.field public static final KEY_EPOC_TIME:Ljava/lang/String; = "epoc_time"

.field public static final KEY_POINTS:Ljava/lang/String; = "points"

.field public static final KEY_ROWID:Ljava/lang/String; = "_id"

.field private static final MAX_TIME_GAP:J = 0x2a30L

.field private static final ONE_DAY_IN_MILLISEC:J = 0x5265c00L

.field private static final ONE_HOUR_IN_SEC:J = 0xe10L

.field private static final TAG:Ljava/lang/String; = "ActivityPointsDatabaseAdapter"

.field private static mInstance:Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;


# instance fields
.field private DBHelper:Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter$DatabaseHelper;

.field private final PROJECTION:[Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "epoc_time"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "points"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->PROJECTION:[Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity_monitoring_pref"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->prefs:Landroid/content/SharedPreferences;

    .line 64
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->context:Landroid/content/Context;

    .line 65
    new-instance v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter$DatabaseHelper;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->DBHelper:Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter$DatabaseHelper;

    .line 66
    return-void
.end method

.method private fetchActivityData(JJ)Ljava/util/ArrayList;
    .locals 18
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;",
            ">;"
        }
    .end annotation

    .prologue
    .line 624
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 625
    .local v10, "activityPointsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;>;"
    const/4 v11, 0x0

    .line 627
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    .line 628
    .local v17, "start":Ljava/lang/String;
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    .line 630
    .local v13, "end":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v17, v5, v1

    const/4 v1, 0x1

    aput-object v13, v5, v1

    .line 631
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-string v4, "epoc_time BETWEEN ? AND ?"

    .line 632
    .local v4, "selection":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 633
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "pointsTable"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "epoc_time ASC"

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 641
    :goto_0
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 642
    const-string v1, "epoc_time"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 643
    .local v14, "epochTime":J
    const-string v1, "points"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 645
    .local v16, "points":I
    new-instance v9, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;

    invoke-direct {v9}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;-><init>()V

    .line 646
    .local v9, "activityPoints":Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;
    invoke-virtual {v9, v14, v15}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->setEpochTime(J)V

    .line 647
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->setPoints(I)V

    .line 648
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 667
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v9    # "activityPoints":Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;
    .end local v13    # "end":Ljava/lang/String;
    .end local v14    # "epochTime":J
    .end local v16    # "points":I
    .end local v17    # "start":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 668
    .local v12, "e":Ljava/lang/Exception;
    const-string v1, "ActivityPointsDatabaseAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in fetchActivityData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 671
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 672
    const/4 v11, 0x0

    .line 675
    :cond_0
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 678
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v10

    .line 651
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    .restart local v13    # "end":Ljava/lang/String;
    .restart local v17    # "start":Ljava/lang/String;
    :cond_2
    if-eqz v11, :cond_1

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 652
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 653
    const/4 v11, 0x0

    goto :goto_1

    .line 659
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_4

    .line 660
    const-string v1, "ActivityPointsDatabaseAdapter"

    const-string v2, "fetchData(): db is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 662
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 663
    const-string v1, "ActivityPointsDatabaseAdapter"

    const-string v2, "fetchData(): db is not open"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getActivityPointsDatabaseAdapter(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    sget-object v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->mInstance:Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->mInstance:Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;

    .line 78
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->mInstance:Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;

    return-object v0
.end method

.method private getData(JJI)Ljava/util/ArrayList;
    .locals 38
    .param p1, "endTime"    # J
    .param p3, "duration"    # J
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;",
            ">;"
        }
    .end annotation

    .prologue
    .line 693
    move/from16 v0, p5

    int-to-long v0, v0

    move-wide/from16 v33, v0

    mul-long v33, v33, p3

    sub-long v30, p1, v33

    .line 695
    .local v30, "startTime":J
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 698
    .local v22, "normalizedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;>;"
    :try_start_0
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    move-wide/from16 v3, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->fetchActivityData(JJ)Ljava/util/ArrayList;

    move-result-object v29

    .line 703
    .local v29, "sampleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;>;"
    new-instance v11, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;

    invoke-direct {v11}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;-><init>()V

    .line 704
    .local v11, "leftGuard":Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;
    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->getMinPoints(J)Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;

    move-result-object v12

    .line 705
    .local v12, "leftGuardPoints":Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;
    invoke-virtual {v12}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->getPoints()I

    move-result v21

    .line 706
    .local v21, "minPoints":I
    invoke-virtual {v12}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->getEpochTime()J

    move-result-wide v19

    .line 708
    .local v19, "minEpochTime":J
    move/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->setPoints(I)V

    .line 711
    move-wide/from16 v0, v19

    invoke-virtual {v11, v0, v1}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->setEpochTime(J)V

    .line 712
    const-string v33, "ActivityPointsDatabaseAdapter"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "LeftGuard="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    new-instance v24, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;

    invoke-direct/range {v24 .. v24}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;-><init>()V

    .line 719
    .local v24, "rightGuard":Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;
    invoke-virtual/range {p0 .. p2}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->getMaxPoints(J)Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;

    move-result-object v25

    .line 720
    .local v25, "rightGuardPoints":Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;
    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->getPoints()I

    move-result v18

    .line 721
    .local v18, "maxPoints":I
    invoke-virtual/range {v25 .. v25}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->getEpochTime()J

    move-result-wide v16

    .line 723
    .local v16, "maxEpochTime":J
    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->setPoints(I)V

    .line 730
    move-object/from16 v0, v24

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->setEpochTime(J)V

    .line 731
    const-string v33, "ActivityPointsDatabaseAdapter"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "RightGuard="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, " : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 738
    .local v32, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;>;"
    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 740
    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    move-object/from16 v29, v32

    .line 744
    const/4 v6, 0x0

    .line 746
    .local v6, "currentSample":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move/from16 v0, p5

    if-gt v10, v0, :cond_2

    .line 748
    int-to-long v0, v10

    move-wide/from16 v33, v0

    mul-long v33, v33, p3

    add-long v7, v30, v33

    .line 750
    .local v7, "currentTime":J
    :goto_1
    add-int/lit8 v33, v6, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;

    invoke-virtual/range {v33 .. v33}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->getEpochTime()J

    move-result-wide v33

    cmp-long v33, v33, v7

    if-gtz v33, :cond_0

    .line 751
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 754
    :cond_0
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;

    invoke-virtual/range {v33 .. v33}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->getEpochTime()J

    move-result-wide v33

    cmp-long v33, v33, v7

    if-nez v33, :cond_1

    .line 756
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 760
    :cond_1
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;

    invoke-virtual/range {v33 .. v33}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->getEpochTime()J

    move-result-wide v14

    .line 762
    .local v14, "leftTime":J
    add-int/lit8 v33, v6, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;

    invoke-virtual/range {v33 .. v33}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->getEpochTime()J

    move-result-wide v27

    .line 765
    .local v27, "rightTime":J
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;

    invoke-virtual/range {v33 .. v33}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->getPoints()I

    move-result v13

    .line 766
    .local v13, "leftPoints":I
    add-int/lit8 v33, v6, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;

    invoke-virtual/range {v33 .. v33}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->getPoints()I

    move-result v26

    .line 768
    .local v26, "rightPoints":I
    const/16 v23, 0x0

    .line 769
    .local v23, "points":I
    sub-long v33, v27, v14

    const-wide/16 v35, 0x0

    cmp-long v33, v33, v35

    if-eqz v33, :cond_3

    .line 770
    sub-int v33, v26, v13

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v33, v0

    sub-long v35, v7, v14

    mul-long v33, v33, v35

    sub-long v35, v27, v14

    div-long v33, v33, v35

    move-wide/from16 v0, v33

    long-to-int v0, v0

    move/from16 v33, v0

    add-int v23, v13, v33

    .line 777
    :goto_3
    new-instance v5, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;

    invoke-direct {v5}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;-><init>()V

    .line 778
    .local v5, "activityPoints":Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;
    invoke-virtual {v5, v7, v8}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->setEpochTime(J)V

    .line 779
    move/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->setPoints(I)V

    .line 781
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 787
    .end local v5    # "activityPoints":Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;
    .end local v6    # "currentSample":I
    .end local v7    # "currentTime":J
    .end local v10    # "i":I
    .end local v11    # "leftGuard":Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;
    .end local v12    # "leftGuardPoints":Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;
    .end local v13    # "leftPoints":I
    .end local v14    # "leftTime":J
    .end local v16    # "maxEpochTime":J
    .end local v18    # "maxPoints":I
    .end local v19    # "minEpochTime":J
    .end local v21    # "minPoints":I
    .end local v23    # "points":I
    .end local v24    # "rightGuard":Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;
    .end local v25    # "rightGuardPoints":Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;
    .end local v26    # "rightPoints":I
    .end local v27    # "rightTime":J
    .end local v29    # "sampleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;>;"
    .end local v32    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;>;"
    :catch_0
    move-exception v9

    .line 788
    .local v9, "e":Ljava/lang/Exception;
    const-string v33, "ActivityPointsDatabaseAdapter"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Exception in getData : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 792
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v33, "NormalizedData"

    const-string v34, "=================Normalized list From DB======================"

    invoke-static/range {v33 .. v34}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_4
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v33

    if-ge v10, v0, :cond_4

    .line 795
    const-string v34, "ActivityPointsDatabaseAdapter"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Epoc Time "

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, "="

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;

    invoke-virtual/range {v33 .. v33}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->getEpochTime()J

    move-result-wide v36

    invoke-virtual/range {v35 .. v37}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const-string v34, "ActivityPointsDatabaseAdapter"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Points "

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, "="

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;

    invoke-virtual/range {v33 .. v33}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->getPoints()I

    move-result v33

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 774
    .restart local v6    # "currentSample":I
    .restart local v7    # "currentTime":J
    .restart local v11    # "leftGuard":Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;
    .restart local v12    # "leftGuardPoints":Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;
    .restart local v13    # "leftPoints":I
    .restart local v14    # "leftTime":J
    .restart local v16    # "maxEpochTime":J
    .restart local v18    # "maxPoints":I
    .restart local v19    # "minEpochTime":J
    .restart local v21    # "minPoints":I
    .restart local v23    # "points":I
    .restart local v24    # "rightGuard":Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;
    .restart local v25    # "rightGuardPoints":Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;
    .restart local v26    # "rightPoints":I
    .restart local v27    # "rightTime":J
    .restart local v29    # "sampleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;>;"
    .restart local v32    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;>;"
    :cond_3
    move/from16 v23, v26

    goto/16 :goto_3

    .line 802
    .end local v6    # "currentSample":I
    .end local v7    # "currentTime":J
    .end local v11    # "leftGuard":Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;
    .end local v12    # "leftGuardPoints":Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;
    .end local v13    # "leftPoints":I
    .end local v14    # "leftTime":J
    .end local v16    # "maxEpochTime":J
    .end local v18    # "maxPoints":I
    .end local v19    # "minEpochTime":J
    .end local v21    # "minPoints":I
    .end local v23    # "points":I
    .end local v24    # "rightGuard":Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;
    .end local v25    # "rightGuardPoints":Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;
    .end local v26    # "rightPoints":I
    .end local v27    # "rightTime":J
    .end local v29    # "sampleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;>;"
    .end local v32    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;>;"
    :cond_4
    return-object v22
.end method


# virtual methods
.method public InitiatePhubDatabaseHelper()V
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter$DatabaseHelper;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->DBHelper:Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter$DatabaseHelper;

    .line 135
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->DBHelper:Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter$DatabaseHelper;

    if-nez v0, :cond_0

    .line 123
    const-string v0, "ActivityPointsDatabaseAdapter"

    const-string v1, "close(): DBHelper is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->InitiatePhubDatabaseHelper()V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->DBHelper:Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter$DatabaseHelper;->close()V

    .line 127
    return-void
.end method

.method public deleteEpocTimeEntry(J)Z
    .locals 4
    .param p1, "epocTime"    # J

    .prologue
    .line 270
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pointsTable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "epoc_time="

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

.method public deleteOldDBEntries(I)I
    .locals 9
    .param p1, "olderThan"    # I

    .prologue
    .line 283
    const/4 v4, 0x0

    .line 286
    .local v4, "numberOfDeletedRows":I
    add-int/lit8 v5, p1, -0x1

    if-lez v5, :cond_0

    .line 288
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 290
    .local v0, "currentDay":Ljava/util/Calendar;
    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 292
    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 294
    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 296
    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 298
    const/4 v5, 0x5

    add-int/lit8 v6, p1, -0x1

    neg-int v6, v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 300
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long v1, v5, v7

    .line 302
    .local v1, "deleteStartTime":J
    const-string v5, "ActivityPointsDatabaseAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete Start time"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 306
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "pointsTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "epoc_time<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 323
    .end local v0    # "currentDay":Ljava/util/Calendar;
    .end local v1    # "deleteStartTime":J
    :cond_0
    :goto_0
    const-string v5, "ActivityPointsDatabaseAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteOldDBEntries deleted rows="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return v4

    .line 318
    :catch_0
    move-exception v3

    .line 319
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "ActivityPointsDatabaseAdapter"

    const-string v6, "Exception in deleteOldDBEntries"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public dropDB()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->context:Landroid/content/Context;

    const-string v1, "activityDb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 131
    return-void
.end method

.method public fetchDayData(J)Lcom/qualcomm/toq/smartwatch/activitytracker/Day;
    .locals 17
    .param p1, "endTime"    # J

    .prologue
    .line 813
    const-string v2, "ActivityPointsDatabaseAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetch Day Data called with end time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    const-wide/16 v5, 0x3e8

    mul-long v5, v5, p1

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    new-instance v10, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    invoke-direct {v10}, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;-><init>()V

    .line 820
    .local v10, "day":Lcom/qualcomm/toq/smartwatch/activitytracker/Day;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 822
    .local v12, "hourlyData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;>;"
    const-wide/16 v5, 0xe10

    const/16 v7, 0x18

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->getData(JJI)Ljava/util/ArrayList;

    move-result-object v8

    .line 825
    .local v8, "activityPointsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 827
    .local v9, "calendar":Ljava/util/Calendar;
    const/4 v14, 0x0

    .local v14, "index":I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v14, v2, :cond_1

    .line 828
    new-instance v11, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;

    invoke-direct {v11}, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;-><init>()V

    .line 830
    .local v11, "hourData":Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->getEpochTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v9, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 832
    const/16 v2, 0xb

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 833
    .local v13, "hours":I
    const/16 v2, 0xc

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 834
    .local v15, "minutes":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;->setCurrentHour(Ljava/lang/String;)V

    .line 836
    add-int/lit8 v2, v14, 0x1

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->getPoints()I

    move-result v3

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->getPoints()I

    move-result v2

    sub-int v16, v3, v2

    .line 839
    .local v16, "points":I
    if-gez v16, :cond_0

    .line 840
    const/16 v16, 0x0

    .line 843
    :cond_0
    move/from16 v0, v16

    int-to-long v2, v0

    invoke-virtual {v11, v2, v3}, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;->setPoints(J)V

    .line 844
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->getEpochTime()J

    move-result-wide v2

    invoke-virtual {v11, v2, v3}, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;->setEpocTime(J)V

    .line 845
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 847
    .end local v11    # "hourData":Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;
    .end local v13    # "hours":I
    .end local v15    # "minutes":I
    .end local v16    # "points":I
    :cond_1
    invoke-virtual {v10, v12}, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;->setHourDataList(Ljava/util/ArrayList;)V

    .line 848
    return-object v10
.end method

.method public fetchMonthData()Lcom/qualcomm/toq/smartwatch/activitytracker/Month;
    .locals 28

    .prologue
    .line 886
    const-string v24, "ActivityPointsDatabaseAdapter"

    const-string v25, "Inside fetchMonthData"

    invoke-static/range {v24 .. v25}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 888
    .local v5, "currentDay":Ljava/util/Calendar;
    const-string v24, "ActivityPointsDatabaseAdapter"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "CurrentDay"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    const/16 v24, 0xb

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 891
    const/16 v24, 0xc

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 892
    const/16 v24, 0xd

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 893
    const/16 v24, 0xe

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 894
    const-string v24, "ActivityPointsDatabaseAdapter"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "CurrentDay Start"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v24

    const-wide/32 v26, 0x5265c00

    add-long v24, v24, v26

    const-wide/16 v26, 0x3e8

    div-long v13, v24, v26

    .line 897
    .local v13, "monthEndTime":J
    const-string v24, "ActivityPointsDatabaseAdapter"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Month End Date"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    new-instance v26, Ljava/util/Date;

    move-object/from16 v0, v26

    invoke-direct {v0, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    const/16 v24, 0x5

    const/16 v25, -0x1d

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 902
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v15, v24, v26

    .line 903
    .local v15, "monthStartTime":J
    const-string v24, "ActivityPointsDatabaseAdapter"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Month Start Date"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    new-instance v26, Ljava/util/Date;

    move-object/from16 v0, v26

    move-wide v1, v15

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v22, v24, v26

    .line 912
    .local v22, "weekStartTime":J
    const-wide/16 v20, 0x0

    .line 914
    .local v20, "weekEndTime":J
    new-instance v12, Lcom/qualcomm/toq/smartwatch/activitytracker/Month;

    invoke-direct {v12}, Lcom/qualcomm/toq/smartwatch/activitytracker/Month;-><init>()V

    .line 915
    .local v12, "month":Lcom/qualcomm/toq/smartwatch/activitytracker/Month;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 917
    .local v19, "weekData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/activitytracker/Week;>;"
    const/4 v7, 0x0

    .line 918
    .local v7, "dayCount":I
    :goto_0
    cmp-long v24, v22, v13

    if-gez v24, :cond_0

    .line 920
    const/16 v24, 0x1d

    move/from16 v0, v24

    if-ne v7, v0, :cond_1

    .line 921
    new-instance v18, Lcom/qualcomm/toq/smartwatch/activitytracker/Week;

    invoke-direct/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/activitytracker/Week;-><init>()V

    .line 922
    .local v18, "week":Lcom/qualcomm/toq/smartwatch/activitytracker/Week;
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v24

    const-wide/32 v26, 0x5265c00

    add-long v24, v24, v26

    const-wide/16 v26, 0x3e8

    div-long v20, v24, v26

    .line 923
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->fetchWeekData(JJ)Lcom/qualcomm/toq/smartwatch/activitytracker/Week;

    move-result-object v18

    .line 924
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    move-wide/from16 v22, v20

    .line 944
    .end local v18    # "week":Lcom/qualcomm/toq/smartwatch/activitytracker/Week;
    :cond_0
    const/4 v10, 0x0

    .line 945
    .local v10, "index":I
    :goto_1
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v24

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    .line 946
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 930
    .end local v10    # "index":I
    :cond_1
    const/16 v24, 0x7

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v24

    const/16 v25, 0x7

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 931
    const-string v24, "ActivityPointsDatabaseAdapter"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Splitting at"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const-string v24, "ActivityPointsDatabaseAdapter"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Week Start Time"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v24

    const-wide/32 v26, 0x5265c00

    add-long v24, v24, v26

    const-wide/16 v26, 0x3e8

    div-long v20, v24, v26

    .line 934
    new-instance v18, Lcom/qualcomm/toq/smartwatch/activitytracker/Week;

    invoke-direct/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/activitytracker/Week;-><init>()V

    .line 935
    .restart local v18    # "week":Lcom/qualcomm/toq/smartwatch/activitytracker/Week;
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->fetchWeekData(JJ)Lcom/qualcomm/toq/smartwatch/activitytracker/Week;

    move-result-object v18

    .line 936
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    move-wide/from16 v22, v20

    .line 939
    .end local v18    # "week":Lcom/qualcomm/toq/smartwatch/activitytracker/Week;
    :cond_2
    const/16 v24, 0x5

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 940
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 948
    .restart local v10    # "index":I
    :cond_3
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/qualcomm/toq/smartwatch/activitytracker/Month;->setWeekDataList(Ljava/util/ArrayList;)V

    .line 950
    const/4 v11, 0x1

    .line 952
    .local v11, "j":I
    invoke-virtual {v12}, Lcom/qualcomm/toq/smartwatch/activitytracker/Month;->getWeekDataList()Ljava/util/ArrayList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/qualcomm/toq/smartwatch/activitytracker/Week;

    .line 953
    .restart local v18    # "week":Lcom/qualcomm/toq/smartwatch/activitytracker/Week;
    const-string v24, "ActivityPointsDatabaseAdapter"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "-----Week Data ----"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const/16 v17, 0x1

    .line 955
    .local v17, "p":I
    invoke-virtual/range {v18 .. v18}, Lcom/qualcomm/toq/smartwatch/activitytracker/Week;->getDayDataList()Ljava/util/ArrayList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    .line 956
    .local v6, "day":Lcom/qualcomm/toq/smartwatch/activitytracker/Day;
    const-string v24, "ActivityPointsDatabaseAdapter"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "-----Day  Data ----"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    const-string v24, "ActivityPointsDatabaseAdapter"

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 960
    .end local v6    # "day":Lcom/qualcomm/toq/smartwatch/activitytracker/Day;
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 961
    goto :goto_2

    .line 962
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v17    # "p":I
    .end local v18    # "week":Lcom/qualcomm/toq/smartwatch/activitytracker/Week;
    :cond_5
    return-object v12
.end method

.method public fetchWeekData(JJ)Lcom/qualcomm/toq/smartwatch/activitytracker/Week;
    .locals 10
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .prologue
    const-wide/32 v8, 0x15180

    .line 860
    new-instance v6, Lcom/qualcomm/toq/smartwatch/activitytracker/Week;

    invoke-direct {v6}, Lcom/qualcomm/toq/smartwatch/activitytracker/Week;-><init>()V

    .line 862
    .local v6, "week":Lcom/qualcomm/toq/smartwatch/activitytracker/Week;
    move-wide v4, p1

    .line 863
    .local v4, "dayStartTime":J
    add-long v2, v4, v8

    .line 865
    .local v2, "dayEndTime":J
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 867
    .local v1, "dayData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/activitytracker/Day;>;"
    :goto_0
    cmp-long v7, v4, p3

    if-gez v7, :cond_0

    .line 868
    invoke-virtual {p0, v2, v3}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->fetchDayData(J)Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    move-result-object v0

    .line 869
    .local v0, "day":Lcom/qualcomm/toq/smartwatch/activitytracker/Day;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    move-wide v4, v2

    .line 872
    add-long v2, v4, v8

    .line 874
    goto :goto_0

    .line 875
    .end local v0    # "day":Lcom/qualcomm/toq/smartwatch/activitytracker/Day;
    :cond_0
    invoke-virtual {v6, v1}, Lcom/qualcomm/toq/smartwatch/activitytracker/Week;->setDayDataList(Ljava/util/ArrayList;)V

    .line 876
    return-object v6
.end method

.method public getActivityPointAt(J)I
    .locals 19
    .param p1, "epochTime"    # J

    .prologue
    .line 973
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    .line 974
    .local v11, "epoch":Ljava/lang/String;
    const/4 v15, 0x0

    .line 976
    .local v15, "points":I
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v11, v5, v1

    .line 978
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-string v4, "epoc_time = ? "

    .line 980
    .local v4, "selection":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 981
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "pointsTable"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 989
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 991
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 992
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 994
    const-string v1, "ActivityPointsDatabaseAdapter"

    const-string v2, "getActivityPointAt--Cannot fetch the given epochTime from the Db.Interpolating the data"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1000
    const/4 v10, 0x0

    .line 1001
    invoke-virtual/range {p0 .. p2}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->getMinPoints(J)Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;

    move-result-object v9

    .line 1002
    .local v9, "activityPoints":Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;
    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->getPoints()I

    move-result v14

    .line 1003
    .local v14, "leftPoints":I
    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->getEpochTime()J

    move-result-wide v12

    .line 1005
    .local v12, "leftEpochTime":J
    invoke-virtual/range {p0 .. p2}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->getMaxPoints(J)Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;

    move-result-object v9

    .line 1006
    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->getPoints()I

    move-result v18

    .line 1007
    .local v18, "rightPoints":I
    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->getEpochTime()J

    move-result-wide v16

    .line 1009
    .local v16, "rightEpochTime":J
    sub-long v1, v16, v12

    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    if-eqz v1, :cond_1

    .line 1010
    sub-int v1, v18, v14

    int-to-long v1, v1

    sub-long v6, p1, v12

    mul-long/2addr v1, v6

    sub-long v6, v16, v12

    div-long/2addr v1, v6

    long-to-int v1, v1

    add-int v15, v14, v1

    .line 1017
    :goto_0
    const-string v1, "ActivityPointsDatabaseAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Points Retrieved After Interpolating"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    .end local v9    # "activityPoints":Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;
    .end local v12    # "leftEpochTime":J
    .end local v14    # "leftPoints":I
    .end local v16    # "rightEpochTime":J
    .end local v18    # "rightPoints":I
    :goto_1
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1029
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1030
    const/4 v10, 0x0

    :cond_0
    move v1, v15

    .line 1043
    .end local v10    # "cursor":Landroid/database/Cursor;
    :goto_2
    return v1

    .line 1014
    .restart local v9    # "activityPoints":Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "leftEpochTime":J
    .restart local v14    # "leftPoints":I
    .restart local v16    # "rightEpochTime":J
    .restart local v18    # "rightPoints":I
    :cond_1
    move/from16 v15, v18

    goto :goto_0

    .line 1020
    .end local v9    # "activityPoints":Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;
    .end local v12    # "leftEpochTime":J
    .end local v14    # "leftPoints":I
    .end local v16    # "rightEpochTime":J
    .end local v18    # "rightPoints":I
    :cond_2
    const-string v1, "points"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1021
    const-string v1, "ActivityPointsDatabaseAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Points Retrieved without Interpolating"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1037
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_5

    .line 1038
    const-string v1, "ActivityPointsDatabaseAdapter"

    const-string v2, "fetchData(): db is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    :cond_4
    :goto_3
    const/4 v1, 0x0

    goto :goto_2

    .line 1040
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1041
    const-string v1, "ActivityPointsDatabaseAdapter"

    const-string v2, "fetchData(): db is not open"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public getAllAppData()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 335
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pointsTable"

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDayProgress(I)I
    .locals 7
    .param p1, "currentCounterPoints"    # I

    .prologue
    .line 1110
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getCurrentDayStartTimeInSec()J

    move-result-wide v1

    .line 1113
    .local v1, "currentDayStartTime":J
    invoke-virtual {p0, v1, v2}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->getActivityPointAt(J)I

    move-result v0

    .line 1115
    .local v0, "currentDayStartPoints":I
    const-string v4, "ActivityPointsDatabaseAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current Day Start Points ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    const-string v4, "ActivityPointsDatabaseAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current Day Counter Points ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    const-string v4, "ActivityPointsDatabaseAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Progress ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-int v6, p1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    sub-int v3, p1, v0

    .line 1122
    .local v3, "progress":I
    const-string v4, "ProgressGraphChartBuilder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CurrentCount from WD(with offset) stored in preference is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , and the current day start points is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Final progress calculated ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    return v3
.end method

.method public getMaxPoints(J)Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;
    .locals 26
    .param p1, "endTime"    # J

    .prologue
    .line 511
    const-string v3, "ActivityPointsDatabaseAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " inside getMaxPoints : endTime= "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    .line 514
    .local v22, "end":Ljava/lang/String;
    new-instance v19, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;

    invoke-direct/range {v19 .. v19}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;-><init>()V

    .line 515
    .local v19, "activityPoints":Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;
    const/16 v25, 0x0

    .line 516
    .local v25, "points":I
    const-wide/16 v3, 0x1

    add-long v23, p1, v3

    .line 518
    .local v23, "epochTime":J
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v22, v7, v3

    .line 520
    .local v7, "selectionArgs":[Ljava/lang/String;
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "epoc_time"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "points"

    aput-object v4, v5, v3

    .line 522
    .local v5, "projection":[Ljava/lang/String;
    const-string v6, "epoc_time > ? "

    .line 524
    .local v6, "minSelection":Ljava/lang/String;
    const-string v10, "epoc_time ASC"

    .line 526
    .local v10, "minSortOrder":Ljava/lang/String;
    const/16 v20, 0x0

    .line 528
    .local v20, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "pointsTable"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 537
    if-eqz v20, :cond_3

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_3

    .line 539
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 540
    const-string v3, "points"

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 541
    const-string v3, "epoc_time"

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 543
    const-string v3, "ActivityPointsDatabaseAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "There is data after the given endTime.Points :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " Epoch :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v23

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :cond_0
    :goto_0
    if-eqz v20, :cond_1

    .line 580
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    const/16 v20, 0x0

    .line 600
    :cond_1
    :goto_1
    if-eqz v20, :cond_2

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 601
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 602
    const/16 v20, 0x0

    .line 606
    :cond_2
    :goto_2
    move-object/from16 v0, v19

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->setEpochTime(J)V

    .line 607
    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->setPoints(I)V

    .line 609
    return-object v19

    .line 547
    :cond_3
    :try_start_1
    const-string v3, "ActivityPointsDatabaseAdapter"

    const-string v4, "There is no epoc time greater than the provided end time.Fetching data less than or equal to end time"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    if-eqz v20, :cond_4

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 552
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 553
    const/16 v20, 0x0

    .line 556
    :cond_4
    const-string v14, "epoc_time <= ? "

    .line 558
    .local v14, "maxSelection":Ljava/lang/String;
    const-string v18, "epoc_time DESC"

    .line 560
    .local v18, "maxSortOrder":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "pointsTable"

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v5

    move-object v15, v7

    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 568
    if-eqz v20, :cond_0

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 570
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 572
    const-string v3, "points"

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 574
    const-string v3, "ActivityPointsDatabaseAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Data Retrieved :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " Epoch :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v23

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 595
    .end local v14    # "maxSelection":Ljava/lang/String;
    .end local v18    # "maxSortOrder":Ljava/lang/String;
    :catch_0
    move-exception v21

    .line 596
    .local v21, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "ActivityPointsDatabaseAdapter"

    const-string v4, "Exception in getMaxPoints"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 600
    if-eqz v20, :cond_2

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 601
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 602
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 586
    .end local v21    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_7

    .line 587
    const-string v3, "ActivityPointsDatabaseAdapter"

    const-string v4, "fetchData(): db is null"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 600
    :catchall_0
    move-exception v3

    if-eqz v20, :cond_6

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_6

    .line 601
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 602
    const/16 v20, 0x0

    :cond_6
    throw v3

    .line 589
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_1

    .line 590
    const-string v3, "ActivityPointsDatabaseAdapter"

    const-string v4, "fetchData(): db is not open"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method public getMinPoints(J)Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;
    .locals 26
    .param p1, "startTime"    # J

    .prologue
    .line 380
    const-string v3, "ActivityPointsDatabaseAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " inside getMinPoints : startTime= "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v25

    .line 383
    .local v25, "start":Ljava/lang/String;
    new-instance v19, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;

    invoke-direct/range {v19 .. v19}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;-><init>()V

    .line 385
    .local v19, "activityPoints":Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;
    const/16 v24, 0x0

    .line 386
    .local v24, "points":I
    const-wide/16 v22, 0x0

    .line 388
    .local v22, "epochTime":J
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v25, v7, v3

    .line 390
    .local v7, "selectionArgs":[Ljava/lang/String;
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "epoc_time"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "points"

    aput-object v4, v5, v3

    .line 392
    .local v5, "projection":[Ljava/lang/String;
    const-string v6, "epoc_time < ? "

    .line 394
    .local v6, "maxSelection":Ljava/lang/String;
    const-string v10, "epoc_time DESC"

    .line 396
    .local v10, "sortOrder":Ljava/lang/String;
    const/16 v20, 0x0

    .line 399
    .local v20, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 400
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "pointsTable"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 408
    if-eqz v20, :cond_4

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_4

    .line 410
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 411
    const-string v3, "points"

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 412
    const-string v3, "epoc_time"

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 414
    const-string v3, "ActivityPointsDatabaseAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "There is data before the given startTime.Points :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " Epoch :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_0
    :goto_0
    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 457
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 458
    const/16 v20, 0x0

    .line 461
    :cond_1
    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->setEpochTime(J)V

    .line 462
    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/activitytracker/ActivityPoints;->setPoints(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    :cond_2
    :goto_1
    if-eqz v20, :cond_3

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 481
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 482
    const/16 v20, 0x0

    .line 486
    :cond_3
    :goto_2
    return-object v19

    .line 419
    :cond_4
    :try_start_1
    const-string v3, "ActivityPointsDatabaseAdapter"

    const-string v4, "There is no epoc time less than the provided start time.Fetching data greater than or equal to start time"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    if-eqz v20, :cond_5

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 425
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 426
    const/16 v20, 0x0

    .line 429
    :cond_5
    const-string v14, "epoc_time >= ? "

    .line 431
    .local v14, "minSelection":Ljava/lang/String;
    const-string v18, "epoc_time ASC"

    .line 433
    .local v18, "minSortOrder":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "pointsTable"

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v5

    move-object v15, v7

    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 441
    if-eqz v20, :cond_0

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 443
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 445
    const-string v3, "points"

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 449
    const-wide/16 v22, 0x0

    .line 451
    const-string v3, "ActivityPointsDatabaseAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Data Retrieved :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " Epoch :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 475
    .end local v14    # "minSelection":Ljava/lang/String;
    .end local v18    # "minSortOrder":Ljava/lang/String;
    :catch_0
    move-exception v21

    .line 476
    .local v21, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "ActivityPointsDatabaseAdapter"

    const-string v4, "Exception in getMinPoints"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 480
    if-eqz v20, :cond_3

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 481
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 482
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 466
    .end local v21    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_8

    .line 467
    const-string v3, "ActivityPointsDatabaseAdapter"

    const-string v4, "fetchData(): db is null"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 480
    :catchall_0
    move-exception v3

    if-eqz v20, :cond_7

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_7

    .line 481
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 482
    const/16 v20, 0x0

    :cond_7
    throw v3

    .line 469
    :cond_8
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_2

    .line 470
    const-string v3, "ActivityPointsDatabaseAdapter"

    const-string v4, "fetchData(): db is not open"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method public insertActivitydata(JI)V
    .locals 12
    .param p1, "epochTime"    # J
    .param p3, "activityPoints"    # I

    .prologue
    .line 146
    const-string v8, "ActivityPointsDatabaseAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "epochTime Received = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v8, "ActivityPointsDatabaseAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "activityPoints Received = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v6, 0x0

    .line 151
    .local v6, "lastReceivedPoints":I
    const-wide/16 v4, 0x0

    .line 152
    .local v4, "lastReceivedEpochTime":J
    const/4 v7, 0x0

    .line 153
    .local v7, "offsetPoints":I
    const-wide/16 v1, 0x0

    .line 155
    .local v1, "currentDayEndTime":J
    :try_start_0
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->prefs:Landroid/content/SharedPreferences;

    if-eqz v8, :cond_0

    .line 156
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->prefs:Landroid/content/SharedPreferences;

    const-string v9, "activity_last_received_points"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 158
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->prefs:Landroid/content/SharedPreferences;

    const-string v9, "activity_last_epoc_time"

    const-wide/16 v10, 0x0

    invoke-interface {v8, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 160
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->prefs:Landroid/content/SharedPreferences;

    const-string v9, "activity_monitoring_offset_points"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 163
    :cond_0
    const-string v8, "ActivityPointsDatabaseAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lastReceivedEpochTime = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v8, "ActivityPointsDatabaseAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "activityPoints Offset = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getCurrentDayEndTimeInSec()J

    move-result-wide v1

    .line 177
    const-string v8, "ActivityPointsDatabaseAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Current Day End Time="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    cmp-long v8, p1, v4

    if-lez v8, :cond_1

    cmp-long v8, p1, v1

    if-lez v8, :cond_3

    .line 184
    :cond_1
    cmp-long v8, p1, v1

    if-lez v8, :cond_2

    .line 185
    const-string v8, "ActivityPointsDatabaseAdapter"

    const-string v9, "epochtime is greater than current day end time"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :goto_0
    return-void

    .line 190
    :cond_2
    const-string v8, "ActivityPointsDatabaseAdapter"

    const-string v9, "epochtime is either less or same as the lastReceivedEpochTime"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v3

    .line 238
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 198
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    if-lt p3, v6, :cond_4

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-eqz v8, :cond_5

    sub-long v8, p1, v4

    const-wide/16 v10, 0x2a30

    cmp-long v8, v8, v10

    if-lez v8, :cond_5

    .line 200
    :cond_4
    :try_start_1
    const-string v8, "ActivityPointsDatabaseAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "activityPoints less than previous/ 3 hour gap= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    sub-int v8, v6, p3

    add-int/2addr v7, v8

    .line 204
    const-string v8, "ActivityPointsDatabaseAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updated Offset = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    if-ge p3, v6, :cond_6

    .line 207
    const-string v8, "ActivityPointsDatabaseAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " WD Reset occurred.Activitypoints less than previous value: updated offset = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_5
    :goto_1
    const-string v8, "ActivityPointsDatabaseAdapter"

    const-string v9, "=======Inserted Data ======== "

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v8, "ActivityPointsDatabaseAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "epochTime Inserted = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v8, "ActivityPointsDatabaseAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "activityPoints Inserted = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int v10, v7, p3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    add-int v8, v7, p3

    invoke-virtual {p0, p1, p2, v8}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->insertData(JI)J

    .line 225
    move v6, p3

    .line 226
    move-wide v4, p1

    .line 228
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 229
    .local v0, "activityPrefsEditor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "activity_last_epoc_time"

    invoke-interface {v0, v8, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 231
    const-string v8, "activity_last_received_points"

    invoke-interface {v0, v8, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 233
    const-string v8, "activity_monitoring_offset_points"

    invoke-interface {v0, v8, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 235
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 212
    .end local v0    # "activityPrefsEditor":Landroid/content/SharedPreferences$Editor;
    :cond_6
    const-string v8, "ActivityPointsDatabaseAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " There is a 3 hour gap between the current and last received time : updated offset = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public insertData(JI)J
    .locals 6
    .param p1, "epocTime"    # J
    .param p3, "activityPoints"    # I

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->isDBOpen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->open()Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;

    .line 256
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 257
    .local v0, "initialValues":Landroid/content/ContentValues;
    const-string v3, "epoc_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 258
    const-string v3, "points"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 259
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "pointsTable"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 260
    .local v1, "returnValue":J
    return-wide v1
.end method

.method public isAnyDataAfterCurrentDatePresent(Z)Z
    .locals 14
    .param p1, "start"    # Z

    .prologue
    .line 1187
    const/4 v13, 0x0

    .line 1188
    .local v13, "isDataPresent":Z
    const-wide/16 v9, 0x0

    .line 1190
    .local v9, "dayTime":J
    if-eqz p1, :cond_2

    .line 1191
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getCurrentDayStartTimeInSec()J

    move-result-wide v9

    .line 1200
    :goto_0
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    .line 1202
    .local v12, "epoch":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v12, v4, v0

    .line 1204
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string v3, "epoc_time >= ?"

    .line 1205
    .local v3, "selection":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1207
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pointsTable"

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1216
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1217
    const-string v0, "ActivityPointsDatabaseAdapter"

    const-string v1, "Future data present"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    const/4 v13, 0x1

    .line 1222
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1223
    const/4 v8, 0x0

    .line 1234
    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1235
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1236
    const/4 v8, 0x0

    .line 1239
    :cond_1
    :goto_1
    return v13

    .line 1196
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v12    # "epoch":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getCurrentDayEndTimeInSec()J

    move-result-wide v9

    goto :goto_0

    .line 1228
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "epoch":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1229
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ActivityPointsDatabaseAdapter"

    const-string v1, "Exception in isAnyDataAfterCurrentDatePresent"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1234
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1235
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1236
    const/4 v8, 0x0

    goto :goto_1

    .line 1234
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1235
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1236
    const/4 v8, 0x0

    :cond_3
    throw v0
.end method

.method public isAnyDataBeforeCurrentDatePresent()Z
    .locals 14

    .prologue
    .line 1140
    const/4 v13, 0x0

    .line 1141
    .local v13, "isDataPresent":Z
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getCurrentDayStartTimeInSec()J

    move-result-wide v9

    .line 1143
    .local v9, "dayStartTime":J
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    .line 1145
    .local v12, "epoch":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v12, v4, v0

    .line 1147
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string v3, "epoc_time <= ?"

    .line 1148
    .local v3, "selection":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1150
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pointsTable"

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1159
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1160
    const/4 v13, 0x1

    .line 1161
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1162
    const/4 v8, 0x0

    .line 1172
    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1173
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1174
    const/4 v8, 0x0

    .line 1177
    :cond_1
    :goto_0
    return v13

    .line 1167
    :catch_0
    move-exception v11

    .line 1168
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 1169
    const-string v0, "ActivityPointsDatabaseAdapter"

    const-string v1, "Exception in isAnyDataBeforeCurrentDatePresent"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1172
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1173
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1174
    const/4 v8, 0x0

    goto :goto_0

    .line 1172
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1173
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1174
    const/4 v8, 0x0

    :cond_2
    throw v0
.end method

.method public isDBEmpty()Z
    .locals 11

    .prologue
    .line 1243
    const/4 v10, 0x1

    .line 1244
    .local v10, "isEmpty":Z
    const/4 v8, 0x0

    .line 1246
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pointsTable"

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1255
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1256
    const-string v0, "ActivityPointsDatabaseAdapter"

    const-string v1, "DB is not Empty"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    const/4 v10, 0x0

    .line 1261
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1262
    const/4 v8, 0x0

    .line 1273
    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1274
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1275
    const/4 v8, 0x0

    .line 1279
    :cond_1
    :goto_0
    return v10

    .line 1267
    :catch_0
    move-exception v9

    .line 1268
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ActivityPointsDatabaseAdapter"

    const-string v1, "Exception in isDBEmpty"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1273
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1274
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1275
    const/4 v8, 0x0

    goto :goto_0

    .line 1273
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1274
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1275
    const/4 v8, 0x0

    :cond_2
    throw v0
.end method

.method public isDBOpen()Z
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    .line 115
    :goto_0
    return v0

    .line 113
    :cond_0
    const-string v0, "ActivityPointsDatabaseAdapter"

    const-string v1, "isDBOpen(): db is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open()Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;
    .locals 3

    .prologue
    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->DBHelper:Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter$DatabaseHelper;

    if-nez v1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->InitiatePhubDatabaseHelper()V

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_2

    .line 92
    const-string v1, "ActivityPointsDatabaseAdapter"

    const-string v2, "open(): db is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->DBHelper:Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter$DatabaseHelper;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 105
    .end local p0    # "this":Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;
    :cond_1
    :goto_0
    return-object p0

    .line 95
    .restart local p0    # "this":Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    const-string v1, "ActivityPointsDatabaseAdapter"

    const-string v2, "open(): db is not open"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->DBHelper:Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter$DatabaseHelper;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public printDBValues()V
    .locals 13

    .prologue
    .line 1054
    const/4 v8, 0x0

    .line 1056
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1057
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "pointsTable"

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1064
    const/4 v12, 0x1

    .line 1066
    .local v12, "i":I
    if-eqz v8, :cond_1

    .line 1067
    const-string v0, "ActivityPointsDatabaseAdapter"

    const-string v1, "==========Database Contents=========="

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    const-string v0, "epoc_time"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1070
    .local v10, "epoch":J
    const-string v0, "ActivityPointsDatabaseAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - Epoch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - Points : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "points"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - Date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, v10

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    add-int/lit8 v12, v12, 0x1

    .line 1079
    goto :goto_0

    .line 1080
    .end local v10    # "epoch":J
    :cond_0
    const-string v0, "ActivityPointsDatabaseAdapter"

    const-string v1, "======================================="

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    :cond_1
    if-eqz v8, :cond_2

    .line 1083
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    const/4 v8, 0x0

    .line 1094
    .end local v12    # "i":I
    :cond_2
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1095
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1096
    const/4 v8, 0x0

    .line 1100
    :cond_3
    :goto_1
    return-void

    .line 1089
    :catch_0
    move-exception v9

    .line 1090
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "ActivityPointsDatabaseAdapter"

    const-string v1, "Exception in fetching data from DB"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1094
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1095
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1096
    const/4 v8, 0x0

    goto :goto_1

    .line 1094
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1095
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1096
    const/4 v8, 0x0

    :cond_4
    throw v0
.end method

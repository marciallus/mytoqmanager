.class public Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;
.super Ljava/lang/Object;
.source "ProgressGraphChartBuilder.java"


# static fields
.field private static final MAX_THRESHOLD_GOALPOINTS_PERCENTAGE:D = 999.0

.field private static final PROGRESS_BAR_NINETY_NINE_PERCENTAGE_VALUE:I = 0x63

.field private static final PROGRESS_BAR_THRITY_THREE_PERCENTAGE_VALUE:I = 0x21

.field private static final PROGRESS_BAR_ZERO_PERCENTAGE_VALUE:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private activityPointsSum:D

.field private mContext:Landroid/content/Context;

.field private mDay:Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

.field private percentage:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "ProgressGraphChartBuilder"

    sput-object v0, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qualcomm/toq/smartwatch/activitytracker/Day;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "day"    # Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    .prologue
    const-wide/16 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide v0, p0, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->activityPointsSum:D

    .line 53
    iput-wide v0, p0, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->percentage:D

    .line 39
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->mDay:Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    .line 41
    return-void
.end method


# virtual methods
.method public getActivityPointsSumTotal()D
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->activityPointsSum:D

    return-wide v0
.end method

.method public getPercentage()D
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->percentage:D

    return-wide v0
.end method

.method public getProgressGraphChart(II)Lorg/achartengine/GraphicalView;
    .locals 33
    .param p1, "backgroundColor"    # I
    .param p2, "targetDiffColor"    # I

    .prologue
    .line 67
    const-wide/16 v28, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->setActivityPointsSumTotal(D)V

    .line 68
    const-wide/16 v28, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->setPercentage(D)V

    .line 70
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v28

    const-string v29, "activity_monitoring_pref"

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 74
    .local v18, "prefs":Landroid/content/SharedPreferences;
    const-wide/16 v24, 0x0

    .line 75
    .local v24, "targetGoalPoints":D
    if-eqz v18, :cond_0

    .line 76
    const-string v28, "activity_monitoring_goal_points_key"

    const/16 v29, 0x2710

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v28

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v24, v0

    .line 82
    :cond_0
    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [D

    move-object/from16 v27, v0

    .line 84
    .local v27, "values":[D
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->getActivityPointsDatabaseAdapter(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;

    move-result-object v4

    .line 86
    .local v4, "adapter":Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getCurrentDayStartTimeInSec()J

    move-result-wide v10

    .line 89
    .local v10, "currentDayStart":J
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getCurrentDayEndTimeInSec()J

    move-result-wide v8

    .line 92
    .local v8, "currentDayEnd":J
    const/16 v16, 0x0

    .line 93
    .local v16, "isCurrentDay":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->mDay:Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;->getHourDataList()Ljava/util/ArrayList;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;

    .line 94
    .local v13, "hour":Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;
    if-eqz v13, :cond_1

    invoke-virtual {v13}, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;->getEpocTime()J

    move-result-wide v28

    cmp-long v28, v28, v10

    if-lez v28, :cond_1

    invoke-virtual {v13}, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;->getEpocTime()J

    move-result-wide v28

    cmp-long v28, v28, v8

    if-gez v28, :cond_1

    .line 96
    const/16 v16, 0x1

    .line 101
    .end local v13    # "hour":Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;
    :cond_2
    const/16 v20, 0x0

    .line 102
    .local v20, "progressGoalPoints":I
    const/4 v12, 0x0

    .line 105
    .local v12, "currentRunningCount":I
    if-eqz v18, :cond_3

    .line 106
    const-string v28, "activity_final_points"

    const/16 v29, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 117
    :cond_3
    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->mDay:Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    move-object/from16 v28, v0

    if-eqz v28, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->mDay:Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;->getTotalPoints()I

    move-result v28

    move/from16 v0, v28

    if-lt v12, v0, :cond_7

    if-eqz v4, :cond_7

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->isAnyDataAfterCurrentDatePresent(Z)Z

    move-result v28

    if-nez v28, :cond_7

    .line 121
    if-eqz v4, :cond_4

    .line 130
    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->isDBEmpty()Z

    move-result v28

    if-eqz v28, :cond_5

    .line 131
    sget-object v28, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->TAG:Ljava/lang/String;

    const-string v29, "Activity DB is empty"

    invoke-static/range {v28 .. v29}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/16 v20, 0x0

    .line 232
    :cond_4
    :goto_0
    sget-object v28, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Progress Goal Points="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v28, "ProgressGraphChartBuilder"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Progress calculated = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    if-gez v20, :cond_8

    const/16 v20, 0x0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v28, v0

    :goto_1
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->setActivityPointsSumTotal(D)V

    .line 238
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->activityPointsSum:D

    move-wide/from16 v28, v0

    div-double v28, v28, v24

    const-wide/high16 v30, 0x4059000000000000L

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->percentage:D

    .line 239
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->percentage:D

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmpg-double v28, v28, v30

    if-gez v28, :cond_9

    .line 240
    const-wide/16 v28, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->setPercentage(D)V

    .line 249
    :goto_2
    sget-object v28, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->TAG:Ljava/lang/String;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Target goal points percentage  ==> "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->percentage:D

    move-wide/from16 v30, v0

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " Target goal points value ==>"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->percentage:D

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x4059000000000000L

    cmpg-double v28, v28, v30

    if-gez v28, :cond_b

    .line 253
    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->percentage:D

    move-wide/from16 v29, v0

    aput-wide v29, v27, v28

    .line 254
    const/16 v28, 0x1

    const-wide/high16 v29, 0x4059000000000000L

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->percentage:D

    move-wide/from16 v31, v0

    sub-double v29, v29, v31

    aput-wide v29, v27, v28

    .line 255
    const/16 v28, 0x2

    const-wide/16 v29, 0x0

    aput-wide v29, v27, v28

    .line 263
    :goto_3
    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v28, 0x0

    const-string v29, "P1"

    aput-object v29, v26, v28

    const/16 v28, 0x1

    const-string v29, "P2"

    aput-object v29, v26, v28

    const/16 v28, 0x2

    const-string v29, "P3"

    aput-object v29, v26, v28

    .line 269
    .local v26, "titles":[Ljava/lang/String;
    const/16 v19, 0x0

    .line 271
    .local v19, "progressBarFillColor":I
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->getPercentage()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    if-ltz v28, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->getPercentage()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    const/16 v29, 0x21

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_c

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f070020

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    .line 286
    :goto_4
    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v7, v0, [I

    const/16 v28, 0x0

    aput v19, v7, v28

    const/16 v28, 0x1

    aput p2, v7, v28

    const/16 v28, 0x2

    aput p1, v7, v28

    .line 288
    .local v7, "colors":[I
    new-instance v22, Lorg/achartengine/renderer/DefaultRenderer;

    invoke-direct/range {v22 .. v22}, Lorg/achartengine/renderer/DefaultRenderer;-><init>()V

    .line 289
    .local v22, "renderer":Lorg/achartengine/renderer/DefaultRenderer;
    move-object v5, v7

    .local v5, "arr$":[I
    array-length v0, v5

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_5
    move/from16 v0, v17

    if-ge v15, v0, :cond_e

    aget v6, v5, v15

    .line 290
    .local v6, "color":I
    new-instance v21, Lorg/achartengine/renderer/SimpleSeriesRenderer;

    invoke-direct/range {v21 .. v21}, Lorg/achartengine/renderer/SimpleSeriesRenderer;-><init>()V

    .line 291
    .local v21, "r":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->setColor(I)V

    .line 292
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/DefaultRenderer;->addSeriesRenderer(Lorg/achartengine/renderer/SimpleSeriesRenderer;)V

    .line 289
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 145
    .end local v5    # "arr$":[I
    .end local v6    # "color":I
    .end local v7    # "colors":[I
    .end local v17    # "len$":I
    .end local v19    # "progressBarFillColor":I
    .end local v21    # "r":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    .end local v22    # "renderer":Lorg/achartengine/renderer/DefaultRenderer;
    .end local v26    # "titles":[Ljava/lang/String;
    .local v15, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->isAnyDataBeforeCurrentDatePresent()Z

    move-result v28

    if-eqz v28, :cond_6

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->isAnyDataAfterCurrentDatePresent(Z)Z

    move-result v28

    if-nez v28, :cond_6

    .line 147
    sget-object v28, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->TAG:Ljava/lang/String;

    const-string v29, "Previous day data present but no data for the current day found in DB"

    invoke-static/range {v28 .. v29}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 154
    :cond_6
    sget-object v28, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->TAG:Ljava/lang/String;

    const-string v29, "Fetching data for current day progress from DB"

    invoke-static/range {v28 .. v29}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v4, v12}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->getCurrentDayProgress(I)I

    move-result v20

    goto/16 :goto_0

    .line 223
    :cond_7
    sget-object v28, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->TAG:Ljava/lang/String;

    const-string v29, "The Day selected is not the current Day/There exists a future date"

    invoke-static/range {v28 .. v29}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->mDay:Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    move-object/from16 v28, v0

    if-eqz v28, :cond_4

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->mDay:Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;->getTotalPoints()I

    move-result v20

    goto/16 :goto_0

    .line 235
    :cond_8
    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v28, v0

    goto/16 :goto_1

    .line 242
    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->percentage:D

    move-wide/from16 v28, v0

    const-wide v30, 0x408f380000000000L

    cmpl-double v28, v28, v30

    if-lez v28, :cond_a

    .line 243
    const-wide v28, 0x408f380000000000L

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->setPercentage(D)V

    goto/16 :goto_2

    .line 246
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->percentage:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->setPercentage(D)V

    goto/16 :goto_2

    .line 258
    :cond_b
    const/16 v28, 0x0

    const-wide/high16 v29, 0x4059000000000000L

    aput-wide v29, v27, v28

    .line 259
    const/16 v28, 0x1

    const-wide/16 v29, 0x0

    aput-wide v29, v27, v28

    .line 260
    const/16 v28, 0x2

    const-wide/16 v29, 0x0

    aput-wide v29, v27, v28

    goto/16 :goto_3

    .line 276
    .restart local v19    # "progressBarFillColor":I
    .restart local v26    # "titles":[Ljava/lang/String;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->getPercentage()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    const/16 v29, 0x21

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->getPercentage()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    const/16 v29, 0x63

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_d

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f070021

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    goto/16 :goto_4

    .line 282
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f070022

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    goto/16 :goto_4

    .line 295
    .restart local v5    # "arr$":[I
    .restart local v7    # "colors":[I
    .local v15, "i$":I
    .restart local v17    # "len$":I
    .restart local v22    # "renderer":Lorg/achartengine/renderer/DefaultRenderer;
    :cond_e
    const/16 v28, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/DefaultRenderer;->setApplyBackgroundColor(Z)V

    .line 296
    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/DefaultRenderer;->setBackgroundColor(I)V

    .line 297
    const/16 v28, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/DefaultRenderer;->setShowLabels(Z)V

    .line 298
    const/16 v28, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/DefaultRenderer;->setInScroll(Z)V

    .line 299
    const/16 v28, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/DefaultRenderer;->setShowLegend(Z)V

    .line 300
    const/high16 v28, 0x43870000

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/DefaultRenderer;->setStartAngle(F)V

    .line 301
    const/16 v28, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/DefaultRenderer;->setPanEnabled(Z)V

    .line 302
    const/16 v28, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/DefaultRenderer;->setZoomEnabled(Z)V

    .line 303
    const/16 v28, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/DefaultRenderer;->setExternalZoomEnabled(Z)V

    .line 304
    const v28, 0x3fa66666

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/achartengine/renderer/DefaultRenderer;->setScale(F)V

    .line 306
    new-instance v23, Lorg/achartengine/model/MultipleCategorySeries;

    const-string v28, "Progress Chart"

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/achartengine/model/MultipleCategorySeries;-><init>(Ljava/lang/String;)V

    .line 307
    .local v23, "series":Lorg/achartengine/model/MultipleCategorySeries;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_6
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v14, v0, :cond_f

    .line 308
    const-string v28, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/achartengine/model/MultipleCategorySeries;->add(Ljava/lang/String;[Ljava/lang/String;[D)V

    .line 310
    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [D

    move-object/from16 v27, v0

    .end local v27    # "values":[D
    fill-array-data v27, :array_0

    .line 307
    .restart local v27    # "values":[D
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 312
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lorg/achartengine/ChartFactory;->getDoughnutChartView(Landroid/content/Context;Lorg/achartengine/model/MultipleCategorySeries;Lorg/achartengine/renderer/DefaultRenderer;)Lorg/achartengine/GraphicalView;

    move-result-object v28

    return-object v28

    .line 310
    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x4059000000000000L
    .end array-data
.end method

.method public setActivityPointsSumTotal(D)V
    .locals 0
    .param p1, "activityPointsSumTotal"    # D

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->activityPointsSum:D

    .line 51
    return-void
.end method

.method public setPercentage(D)V
    .locals 0
    .param p1, "percentage"    # D

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->percentage:D

    .line 61
    return-void
.end method

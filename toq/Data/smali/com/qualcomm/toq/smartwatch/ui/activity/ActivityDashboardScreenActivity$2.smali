.class Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$2;
.super Ljava/lang/Object;
.source "ActivityDashboardScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->showWholeMonthActivityGraph(Lcom/qualcomm/toq/smartwatch/activitytracker/Week;IDZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;

.field final synthetic val$isLastWeekOfMonth:Z

.field final synthetic val$week:Lcom/qualcomm/toq/smartwatch/activitytracker/Week;

.field final synthetic val$weekNumber:I


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;Lcom/qualcomm/toq/smartwatch/activitytracker/Week;ZI)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;

    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$2;->val$week:Lcom/qualcomm/toq/smartwatch/activitytracker/Week;

    iput-boolean p3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$2;->val$isLastWeekOfMonth:Z

    iput p4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$2;->val$weekNumber:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 21
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 316
    check-cast p1, Lorg/achartengine/GraphicalView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lorg/achartengine/GraphicalView;->getCurrentSeriesAndPoint()Lorg/achartengine/model/SeriesSelection;

    move-result-object v14

    .line 318
    .local v14, "seriesSelection":Lorg/achartengine/model/SeriesSelection;
    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$2;->val$week:Lcom/qualcomm/toq/smartwatch/activitytracker/Week;

    if-eqz v15, :cond_1

    .line 319
    const-string v15, "ActivityDashboardScreenActivity"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "The week object is ==> "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$2;->val$week:Lcom/qualcomm/toq/smartwatch/activitytracker/Week;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "The X value is ==> "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Lorg/achartengine/model/SeriesSelection;->getXValue()D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " The Y value is ==> "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Lorg/achartengine/model/SeriesSelection;->getValue()D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v14}, Lorg/achartengine/model/SeriesSelection;->getXValue()D

    move-result-wide v15

    double-to-int v8, v15

    .line 330
    .local v8, "dateSelected":I
    new-instance v9, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    invoke-direct {v9}, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;-><init>()V

    .line 331
    .local v9, "day":Lcom/qualcomm/toq/smartwatch/activitytracker/Day;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$2;->val$week:Lcom/qualcomm/toq/smartwatch/activitytracker/Week;

    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/activitytracker/Week;->getDayDataList()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x7

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$2;->val$isLastWeekOfMonth:Z

    if-eqz v15, :cond_2

    .line 333
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$2;->val$week:Lcom/qualcomm/toq/smartwatch/activitytracker/Week;

    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/activitytracker/Week;->getDayDataList()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-gt v8, v15, :cond_1

    .line 334
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$2;->val$week:Lcom/qualcomm/toq/smartwatch/activitytracker/Week;

    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/activitytracker/Week;->getDayDataList()Ljava/util/ArrayList;

    move-result-object v15

    add-int/lit8 v16, v8, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "day":Lcom/qualcomm/toq/smartwatch/activitytracker/Day;
    check-cast v9, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    .line 356
    .restart local v9    # "day":Lcom/qualcomm/toq/smartwatch/activitytracker/Day;
    :goto_0
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;->getTotalPoints()I

    move-result v15

    if-eqz v15, :cond_1

    .line 358
    const-string v15, "ActivityDashboardScreenActivity"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "The activity points for the particular day  ====> "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;->getTotalPoints()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v15, "EEEE, MMMM dd, yyyy"

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v7, v15, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 369
    .local v7, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 371
    .local v2, "calendar":Ljava/util/Calendar;
    const-string v15, "ActivityDashboardScreenActivity"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Current day of week"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const/4 v15, 0x7

    invoke-virtual {v2, v15}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 377
    .local v3, "currentDayOfWeek":I
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    const-wide/32 v17, 0x240c8400

    move-object/from16 v0, p0

    iget v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$2;->val$weekNumber:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    mul-long v17, v17, v19

    sub-long v4, v15, v17

    .line 381
    .local v4, "currentTime":J
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 383
    .local v6, "dateDetails":Ljava/lang/String;
    if-le v8, v3, :cond_3

    .line 384
    sub-int v15, v8, v3

    int-to-long v15, v15

    const-wide/32 v17, 0x5265c00

    mul-long v15, v15, v17

    add-long/2addr v15, v4

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 397
    :goto_1
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v15

    invoke-virtual {v15, v9}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getMaxActivityPointForDay(Lcom/qualcomm/toq/smartwatch/activitytracker/Day;)D

    move-result-wide v12

    .line 400
    .local v12, "maxActivityPointForDay":D
    new-instance v11, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;

    const-class v16, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;

    move-object/from16 v0, v16

    invoke-direct {v11, v15, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 402
    .local v11, "intent":Landroid/content/Intent;
    const-string v15, "Day object"

    invoke-virtual {v11, v15, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 403
    const-string v15, "Date Details"

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const-string v15, "Day max activity point"

    invoke-virtual {v11, v15, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 409
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;

    invoke-virtual {v15, v11}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 412
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v3    # "currentDayOfWeek":I
    .end local v4    # "currentTime":J
    .end local v6    # "dateDetails":Ljava/lang/String;
    .end local v7    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v8    # "dateSelected":I
    .end local v9    # "day":Lcom/qualcomm/toq/smartwatch/activitytracker/Day;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "maxActivityPointForDay":D
    :cond_1
    return-void

    .line 342
    .restart local v8    # "dateSelected":I
    .restart local v9    # "day":Lcom/qualcomm/toq/smartwatch/activitytracker/Day;
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$2;->val$week:Lcom/qualcomm/toq/smartwatch/activitytracker/Week;

    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/activitytracker/Week;->getDayDataList()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    rsub-int/lit8 v10, v15, 0x7

    .line 344
    .local v10, "dayCount":I
    sub-int v15, v8, v10

    if-ltz v15, :cond_1

    .line 345
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$2;->val$week:Lcom/qualcomm/toq/smartwatch/activitytracker/Week;

    invoke-virtual {v15}, Lcom/qualcomm/toq/smartwatch/activitytracker/Week;->getDayDataList()Ljava/util/ArrayList;

    move-result-object v15

    sub-int v16, v8, v10

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "day":Lcom/qualcomm/toq/smartwatch/activitytracker/Day;
    check-cast v9, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    .restart local v9    # "day":Lcom/qualcomm/toq/smartwatch/activitytracker/Day;
    goto/16 :goto_0

    .line 388
    .end local v10    # "dayCount":I
    .restart local v2    # "calendar":Ljava/util/Calendar;
    .restart local v3    # "currentDayOfWeek":I
    .restart local v4    # "currentTime":J
    .restart local v6    # "dateDetails":Ljava/lang/String;
    .restart local v7    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_3
    if-ge v8, v3, :cond_4

    .line 389
    sub-int v15, v3, v8

    int-to-long v15, v15

    const-wide/32 v17, 0x5265c00

    mul-long v15, v15, v17

    sub-long v15, v4, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 394
    :cond_4
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1
.end method

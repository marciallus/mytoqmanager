.class public Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;
.super Landroid/app/Activity;
.source "ActivityDashboardScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$UIReciever;,
        Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;,
        Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$Callback;
    }
.end annotation


# static fields
.field private static final ONE_DAY_IN_MILLI_SECONDS:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "ActivityDashboardScreenActivity"

.field private static final TOTAL_DAYS_IN_WEEK:I = 0x7


# instance fields
.field isMonthUpdated:Z

.field private mActivityDashboardDayGraphLayout:Landroid/widget/LinearLayout;

.field private mUIReceiver:Landroid/content/BroadcastReceiver;

.field prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    iput-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->isMonthUpdated:Z

    .line 65
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity_monitoring_pref"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->prefs:Landroid/content/SharedPreferences;

    .line 638
    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;Lcom/qualcomm/toq/smartwatch/activitytracker/Month;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;
    .param p1, "x1"    # Lcom/qualcomm/toq/smartwatch/activitytracker/Month;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->getWholeMonthValidatedWeekList(Lcom/qualcomm/toq/smartwatch/activitytracker/Month;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;Lcom/qualcomm/toq/smartwatch/activitytracker/Week;IDZ)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;
    .param p1, "x1"    # Lcom/qualcomm/toq/smartwatch/activitytracker/Week;
    .param p2, "x2"    # I
    .param p3, "x3"    # D
    .param p5, "x4"    # Z

    .prologue
    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->showWholeMonthActivityGraph(Lcom/qualcomm/toq/smartwatch/activitytracker/Week;IDZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->updateUI()V

    return-void
.end method

.method private getActivityDashboardDayGraphLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->mActivityDashboardDayGraphLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 72
    const v0, 0x7f09001b

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->mActivityDashboardDayGraphLayout:Landroid/widget/LinearLayout;

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->mActivityDashboardDayGraphLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getWeekRange(I)Ljava/lang/String;
    .locals 20
    .param p1, "weekNumber"    # I

    .prologue
    .line 453
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 455
    .local v2, "calendar":Ljava/util/Calendar;
    const-string v14, "ActivityDashboardScreenActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Current day of week"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x7

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const/4 v14, 0x7

    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 459
    .local v3, "currentDayOfWeek":I
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    const-wide/32 v16, 0x240c8400

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    sub-long v4, v14, v16

    .line 462
    .local v4, "currentTime":J
    const-wide/16 v12, 0x0

    .line 463
    .local v12, "startTime":J
    const-wide/16 v8, 0x0

    .line 466
    .local v8, "endTime":J
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    .line 467
    .local v11, "startOfWeek":Ljava/lang/String;
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 469
    .local v7, "endOfWeek":Ljava/lang/String;
    rsub-int/lit8 v14, v3, 0x7

    int-to-long v14, v14

    const-wide/32 v16, 0x5265c00

    mul-long v14, v14, v16

    add-long v8, v4, v14

    .line 471
    const-wide/32 v14, 0x1ee62800

    sub-long v12, v8, v14

    .line 473
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string v14, "MMM"

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget-object v15, v15, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v10, v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 477
    .local v10, "monthFormat":Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v14, "dd"

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget-object v15, v15, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v6, v14, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 482
    .local v6, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget-object v15, v15, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 487
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget-object v15, v15, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 492
    invoke-virtual {v11, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 494
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 498
    :goto_0
    return-object v14

    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_0
.end method

.method private getWholeMonthValidatedWeekList(Lcom/qualcomm/toq/smartwatch/activitytracker/Month;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "month"    # Lcom/qualcomm/toq/smartwatch/activitytracker/Month;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qualcomm/toq/smartwatch/activitytracker/Month;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/activitytracker/Week;",
            ">;"
        }
    .end annotation

    .prologue
    .line 606
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .local v5, "validatedWeekList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/activitytracker/Week;>;"
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/activitytracker/Month;->getWeekDataList()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 609
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/activitytracker/Month;->getWeekDataList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qualcomm/toq/smartwatch/activitytracker/Week;

    .line 610
    .local v6, "week":Lcom/qualcomm/toq/smartwatch/activitytracker/Week;
    if-eqz v6, :cond_0

    .line 611
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/activitytracker/Month;->getWeekDataList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/activitytracker/Month;->getWeekDataList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_1

    .line 613
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 616
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 617
    const-wide/16 v3, 0x0

    .line 618
    .local v3, "sumOfWholeWeekActivityPoints":J
    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/activitytracker/Week;->getDayDataList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    .line 619
    .local v0, "day":Lcom/qualcomm/toq/smartwatch/activitytracker/Day;
    if-eqz v0, :cond_2

    .line 620
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;->getTotalPoints()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v3, v7

    goto :goto_1

    .line 623
    .end local v0    # "day":Lcom/qualcomm/toq/smartwatch/activitytracker/Day;
    :cond_3
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-lez v7, :cond_0

    .line 624
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 628
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "sumOfWholeWeekActivityPoints":J
    :cond_4
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 635
    .end local v6    # "week":Lcom/qualcomm/toq/smartwatch/activitytracker/Week;
    :cond_5
    return-object v5
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 156
    const v1, 0x7f090018

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 157
    .local v0, "activityDashBoardBackLayout":Landroid/widget/LinearLayout;
    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    return-void
.end method

.method private registerUIReceiver()V
    .locals 5

    .prologue
    .line 507
    :try_start_0
    new-instance v2, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$UIReciever;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$UIReciever;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;)V

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->mUIReceiver:Landroid/content/BroadcastReceiver;

    .line 508
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 510
    .local v1, "filter":Landroid/content/IntentFilter;
    if-eqz v1, :cond_0

    .line 512
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_ACTIVITY_MONITORING_UPDATE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 513
    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 514
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 515
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 518
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->mUIReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ActivityDashboardScreenActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in registerUIReceiver(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showActivityGoalGraph(Lcom/qualcomm/toq/smartwatch/activitytracker/Day;)V
    .locals 12
    .param p1, "day"    # Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    .prologue
    const/4 v10, -0x2

    .line 215
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->getActivityDashboardDayGraphLayout()Landroid/widget/LinearLayout;

    move-result-object v8

    const v9, 0x7f090027

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 217
    .local v1, "activityGoalsLayout":Landroid/widget/FrameLayout;
    new-instance v0, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;-><init>(Landroid/content/Context;Lcom/qualcomm/toq/smartwatch/activitytracker/Day;)V

    .line 220
    .local v0, "activityGoalGraph":Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;
    new-instance v2, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;-><init>(Landroid/content/Context;)V

    .line 222
    .local v2, "activityGoalsPercentageText":Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    const/high16 v8, 0x41a80000

    invoke-virtual {v2, v8}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTextSize(F)V

    .line 223
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070018

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTextColor(I)V

    .line 226
    const/16 v8, 0x11

    invoke-virtual {v2, v8}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setGravity(I)V

    .line 228
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 229
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 233
    :cond_0
    const/4 v8, -0x1

    const/high16 v9, -0x1000000

    invoke-virtual {v0, v8, v9}, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->getProgressGraphChart(II)Lorg/achartengine/GraphicalView;

    move-result-object v5

    .line 236
    .local v5, "goalChartView":Lorg/achartengine/GraphicalView;
    if-eqz v5, :cond_1

    .line 237
    invoke-virtual {v1, v5, v10, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 243
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->getPercentage()D

    move-result-wide v9

    double-to-int v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 248
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->getActivityDashboardDayGraphLayout()Landroid/widget/LinearLayout;

    move-result-object v8

    const v9, 0x7f090028

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 249
    .local v3, "activityPointsAchievedText":Landroid/widget/TextView;
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v8}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v8

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->getActivityPointsSumTotal()D

    move-result-wide v9

    double-to-int v9, v9

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "activity_monitoring_pref"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 256
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const/4 v7, 0x0

    .line 257
    .local v7, "targetGoalPoints":I
    if-eqz v6, :cond_2

    .line 258
    const-string v8, "activity_monitoring_goal_points_key"

    const/16 v9, 0x2710

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 263
    :cond_2
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->getActivityDashboardDayGraphLayout()Landroid/widget/LinearLayout;

    move-result-object v8

    const v9, 0x7f090029

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 264
    .local v4, "activityPointsTargetText":Landroid/widget/TextView;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v9}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v9

    int-to-long v10, v7

    invoke-virtual {v9, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    const-string v8, "ActivityDashboardScreenActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Target goal points percentage  ==> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->getPercentage()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Target goal points value ==>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method private showDateDetails()V
    .locals 5

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->getActivityDashboardDayGraphLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x7f090025

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 168
    .local v1, "dateText":Landroid/widget/TextView;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 171
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/text/DateFormatSymbols;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v3, v4}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    aget-object v3, v3, v4

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/text/DateFormatSymbols;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v3, v4}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    aget-object v3, v3, v4

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    return-void
.end method

.method private showPresentDayActivityGraph(Lcom/qualcomm/toq/smartwatch/activitytracker/Day;)V
    .locals 8
    .param p1, "day"    # Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    .prologue
    const/4 v7, -0x2

    .line 190
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->getActivityDashboardDayGraphLayout()Landroid/widget/LinearLayout;

    move-result-object v5

    const v6, 0x7f090026

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 192
    .local v0, "activityDashBoardBarGraph":Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getMaxActivityPointForDay(Lcom/qualcomm/toq/smartwatch/activitytracker/Day;)D

    move-result-wide v3

    .line 195
    .local v3, "maxActivityPointForDay":D
    new-instance v1, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;

    const-string v5, "day_bar_chart"

    invoke-direct {v1, p0, p1, v5}, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;-><init>(Landroid/content/Context;Lcom/qualcomm/toq/smartwatch/activitytracker/Day;Ljava/lang/String;)V

    .line 198
    .local v1, "barChartBuilder":Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;
    invoke-virtual {v1, v3, v4}, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->setMaxActivityPoint(D)V

    .line 200
    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->getBarChart(IZ)Lorg/achartengine/GraphicalView;

    move-result-object v2

    .line 203
    .local v2, "barChartView":Lorg/achartengine/GraphicalView;
    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 205
    invoke-virtual {v0, v2, v7, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 209
    :cond_0
    return-void
.end method

.method private showWholeMonthActivityGraph(Lcom/qualcomm/toq/smartwatch/activitytracker/Week;IDZ)V
    .locals 13
    .param p1, "week"    # Lcom/qualcomm/toq/smartwatch/activitytracker/Week;
    .param p2, "weekNumber"    # I
    .param p3, "maxActivityPoint"    # D
    .param p5, "isLastWeekOfMonth"    # Z

    .prologue
    .line 280
    const v10, 0x7f09001c

    invoke-virtual {p0, v10}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 282
    .local v2, "activityMonitorWeekBarChart":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 283
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v10, 0x7f030003

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 285
    .local v9, "week_graph_container_view":Landroid/view/View;
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 287
    const v10, 0x7f09001d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 289
    .local v8, "weekRangeTitleText":Landroid/widget/TextView;
    invoke-direct {p0, p2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->getWeekRange(I)Ljava/lang/String;

    move-result-object v7

    .line 290
    .local v7, "weekRange":Ljava/lang/String;
    const-string v10, "ActivityDashboardScreenActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Week Bar Chart week range : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    if-eqz v7, :cond_0

    .line 292
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    :cond_0
    const v10, 0x7f09001e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 297
    .local v6, "weekDashBoardGraph":Landroid/widget/LinearLayout;
    new-instance v3, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;

    const-string v10, "week_bar_chart"

    invoke-direct {v3, p0, p1, v10}, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;-><init>(Landroid/content/Context;Lcom/qualcomm/toq/smartwatch/activitytracker/Week;Ljava/lang/String;)V

    .line 300
    .local v3, "barChartBuilder":Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;
    move/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->setLastWeekOfMonth(Z)V

    .line 302
    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->setMaxActivityPoint(D)V

    .line 303
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f07000c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->getBarChart(IZ)Lorg/achartengine/GraphicalView;

    move-result-object v4

    .line 308
    .local v4, "barChartView":Lorg/achartengine/GraphicalView;
    if-eqz v4, :cond_1

    .line 309
    const/4 v10, -0x2

    const/4 v11, -0x2

    invoke-virtual {v6, v4, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 313
    new-instance v10, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$2;

    move/from16 v0, p5

    invoke-direct {v10, p0, p1, v0, p2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;Lcom/qualcomm/toq/smartwatch/activitytracker/Week;ZI)V

    invoke-virtual {v4, v10}, Lorg/achartengine/GraphicalView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    :cond_1
    return-void
.end method

.method private updateUI()V
    .locals 7

    .prologue
    .line 526
    const/4 v2, 0x0

    .line 527
    .local v2, "day":Lcom/qualcomm/toq/smartwatch/activitytracker/Day;
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->prefs:Landroid/content/SharedPreferences;

    if-eqz v4, :cond_0

    .line 530
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v5, "activity_monitoring_new_key_value"

    new-instance v6, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    invoke-direct {v6}, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;-><init>()V

    invoke-static {v6}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 543
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->showDateDetails()V

    .line 544
    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->showPresentDayActivityGraph(Lcom/qualcomm/toq/smartwatch/activitytracker/Day;)V

    .line 545
    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->showActivityGoalGraph(Lcom/qualcomm/toq/smartwatch/activitytracker/Day;)V

    .line 547
    iget-boolean v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->isMonthUpdated:Z

    if-eqz v4, :cond_1

    .line 548
    const-string v4, "ActivityDashboardScreenActivity"

    const-string v5, "Month Updated"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$3;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$3;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;)V

    .line 587
    .local v1, "callback":Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$Callback;
    new-instance v4, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, v5, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;-><init>(Landroid/os/Handler;Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$Callback;)V

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$FetchMonthThread;->start()V

    .line 589
    .end local v1    # "callback":Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$Callback;
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->isMonthUpdated:Z

    .line 591
    return-void

    .line 533
    :catch_0
    move-exception v3

    .line 535
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 537
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 539
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->setContentView(I)V

    .line 85
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->initialize()V

    .line 86
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->registerUIReceiver()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->isMonthUpdated:Z

    .line 89
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->mUIReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 110
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "t":Ljava/lang/Exception;
    const-string v1, "ActivityDashboardScreenActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in onDestroy(): "

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

.method protected onResume()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 94
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->updateUI()V

    .line 98
    return-void
.end method

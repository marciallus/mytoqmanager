.class public Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;
.super Landroid/app/Activity;
.source "ActivityDayScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity$UIReciever;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityDayScreenActivity"


# instance fields
.field isCurrentDay:Z

.field private mActivityDayGraphContainer:Landroid/widget/LinearLayout;

.field private mUIReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;->isCurrentDay:Z

    .line 238
    return-void
.end method

.method private registerUIReceiver()V
    .locals 5

    .prologue
    .line 223
    :try_start_0
    new-instance v2, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity$UIReciever;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity$UIReciever;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;)V

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;->mUIReceiver:Landroid/content/BroadcastReceiver;

    .line 224
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 226
    .local v1, "filter":Landroid/content/IntentFilter;
    if-eqz v1, :cond_0

    .line 228
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_ACTIVITY_MONITORING_UPDATE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;->mUIReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ActivityDayScreenActivity"

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

    .line 167
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;->getActivityDayGraphContainer()Landroid/widget/LinearLayout;

    move-result-object v8

    const v9, 0x7f090027

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 169
    .local v1, "activityGoalsLayout":Landroid/widget/FrameLayout;
    new-instance v0, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;-><init>(Landroid/content/Context;Lcom/qualcomm/toq/smartwatch/activitytracker/Day;)V

    .line 172
    .local v0, "activityGoalGraph":Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;
    new-instance v2, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;-><init>(Landroid/content/Context;)V

    .line 174
    .local v2, "activityGoalsPercentageText":Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    const/high16 v8, 0x41a80000

    invoke-virtual {v2, v8}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTextSize(F)V

    .line 175
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070018

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTextColor(I)V

    .line 178
    const/16 v8, 0x11

    invoke-virtual {v2, v8}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setGravity(I)V

    .line 180
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 181
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 185
    :cond_0
    const/4 v8, -0x1

    const/high16 v9, -0x1000000

    invoke-virtual {v0, v8, v9}, Lcom/qualcomm/toq/smartwatch/utils/ProgressGraphChartBuilder;->getProgressGraphChart(II)Lorg/achartengine/GraphicalView;

    move-result-object v5

    .line 188
    .local v5, "goalChartView":Lorg/achartengine/GraphicalView;
    if-eqz v5, :cond_1

    .line 189
    invoke-virtual {v1, v5, v10, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 195
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

    .line 197
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 200
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;->getActivityDayGraphContainer()Landroid/widget/LinearLayout;

    move-result-object v8

    const v9, 0x7f090028

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 201
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

    .line 204
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "activity_monitoring_pref"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 208
    .local v6, "prefs":Landroid/content/SharedPreferences;
    const/4 v7, 0x0

    .line 209
    .local v7, "targetGoalPoints":I
    if-eqz v6, :cond_2

    .line 210
    const-string v8, "activity_monitoring_goal_points_key"

    const/16 v9, 0x2710

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 215
    :cond_2
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;->getActivityDayGraphContainer()Landroid/widget/LinearLayout;

    move-result-object v8

    const v9, 0x7f090029

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 216
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

    .line 219
    return-void
.end method

.method private showDateDetails(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;->getActivityDayGraphContainer()Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x7f090025

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 141
    .local v1, "dateText":Landroid/widget/TextView;
    const-string v2, "Date Details"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "dateDetails":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .end local v0    # "dateDetails":Ljava/lang/String;
    .end local v1    # "dateText":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private showDayGraph(Lcom/qualcomm/toq/smartwatch/activitytracker/Day;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "day"    # Lcom/qualcomm/toq/smartwatch/activitytracker/Day;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 149
    new-instance v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;

    const-string v3, "day_bar_chart"

    invoke-direct {v0, p0, p1, v3}, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;-><init>(Landroid/content/Context;Lcom/qualcomm/toq/smartwatch/activitytracker/Day;Ljava/lang/String;)V

    .line 152
    .local v0, "barChartBuilder":Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;
    const-string v3, "Day max activity point"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->setMaxActivityPoint(D)V

    .line 154
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;->getActivityDayGraphContainer()Landroid/widget/LinearLayout;

    move-result-object v3

    const v4, 0x7f090026

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 156
    .local v1, "dayBargraphLayout":Landroid/widget/LinearLayout;
    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->getBarChart(IZ)Lorg/achartengine/GraphicalView;

    move-result-object v2

    .line 158
    .local v2, "graphicalView":Lorg/achartengine/GraphicalView;
    if-eqz v2, :cond_0

    .line 159
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    :cond_0
    return-void
.end method


# virtual methods
.method public getActivityDayGraphContainer()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;->mActivityDayGraphContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 51
    const v0, 0x7f090024

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;->mActivityDayGraphContainer:Landroid/widget/LinearLayout;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;->mActivityDayGraphContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v12, 0x7f030004

    invoke-virtual {p0, v12}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 62
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v12, "Day object"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    .line 64
    .local v7, "day":Lcom/qualcomm/toq/smartwatch/activitytracker/Day;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getCurrentDayStartTimeInSec()J

    move-result-wide v5

    .line 67
    .local v5, "currentDayStart":J
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getCurrentDayEndTimeInSec()J

    move-result-wide v3

    .line 70
    .local v3, "currentDayEnd":J
    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;->getHourDataList()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;

    .line 71
    .local v9, "hour":Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;
    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;->getEpocTime()J

    move-result-wide v12

    cmp-long v12, v12, v5

    if-lez v12, :cond_0

    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;->getEpocTime()J

    move-result-wide v12

    cmp-long v12, v12, v3

    if-gez v12, :cond_0

    .line 73
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;->isCurrentDay:Z

    .line 78
    .end local v9    # "hour":Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;
    :cond_1
    iget-boolean v12, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;->isCurrentDay:Z

    if-eqz v12, :cond_2

    .line 79
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "activity_monitoring_pref"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 82
    .local v11, "prefs":Landroid/content/SharedPreferences;
    if-eqz v11, :cond_2

    .line 85
    :try_start_0
    const-string v12, "activity_monitoring_new_key_value"

    new-instance v13, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    invoke-direct {v13}, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;-><init>()V

    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    .end local v11    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    :goto_0
    const v12, 0x7f090021

    invoke-virtual {p0, v12}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 100
    .local v1, "backImageLayout":Landroid/widget/LinearLayout;
    new-instance v12, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity$1;

    invoke-direct {v12, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;)V

    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;->showDateDetails(Landroid/os/Bundle;)V

    .line 113
    invoke-direct {p0, v7, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;->showDayGraph(Lcom/qualcomm/toq/smartwatch/activitytracker/Day;Landroid/os/Bundle;)V

    .line 114
    invoke-direct {p0, v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;->showActivityGoalGraph(Lcom/qualcomm/toq/smartwatch/activitytracker/Day;)V

    .line 115
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;->registerUIReceiver()V

    .line 117
    return-void

    .line 88
    .end local v1    # "backImageLayout":Landroid/widget/LinearLayout;
    .restart local v11    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v8

    .line 90
    .local v8, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v8}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 92
    .end local v8    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v8

    .line 94
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;->mUIReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDayScreenActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 135
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "t":Ljava/lang/Exception;
    const-string v1, "ActivityDayScreenActivity"

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
    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 123
    return-void
.end method

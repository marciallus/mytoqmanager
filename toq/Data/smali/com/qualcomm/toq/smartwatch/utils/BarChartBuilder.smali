.class public Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;
.super Ljava/lang/Object;
.source "BarChartBuilder.java"


# static fields
.field private static final DAY_GRAPH_BAR_WIDTH_SCALE:F = 0.02f

.field private static final DAY_GRAPH_HIGH_ACTIVITY_POINTS_RANGE:D = 1000.0

.field private static final DAY_GRAPH_LABEL_TEXT_SIZE_SCALE:F = 0.035f

.field private static final DAY_GRAPH_LOW_ACTIVITY_POINTS_RANGE:D = 500.0

.field private static final DAY_GRAPH_YAXIS_LEFT_MARGIN_BUFFER_SCALE:F = 0.015f

.field private static final DAY_GRAPH_YAXIS_LEFT_MARGIN_SCALE_PER_DIGIT:F = 0.021f

.field private static final GOAL_POINT_VALUE:Ljava/lang/String; = "goal_point_value"

.field private static final HIGH_VALUE:Ljava/lang/String; = "high"

.field private static final LOW_VALUE:Ljava/lang/String; = "low"

.field private static final MAINACTIVITY_DAY_GRAPH_BAR_WIDTH_SCALE:F = 0.0145f

.field private static final MEDIUM_VALUE:Ljava/lang/String; = "medium"

.field private static final ONE_TENTH_FRACTION_VALUE:D = 0.1

.field private static final ONE_THIRD_FRACTION_VALUE:D = 0.33

.field private static final THREE_TENTH_FRACTION_VALUE:D = 0.3

.field private static final TOTAL_DAY_HOURS_WITH_DUMMY_POINTS:I = 0x30

.field private static final TOTAL_WEEK_DAYS:I = 0x7

.field private static final TRANSPARENT_VALUE:Ljava/lang/String; = "transparent_value"

.field private static final WEEK_GRAPH_LABEL_TEXT_SIZE_SCALE:F = 0.041f

.field private static final XY_COMBINED_CHART_LABEL:Ljava/lang/String; = "xy_combined_chart"

.field private static final ZERO_VALUE:Ljava/lang/String; = "zero"


# instance fields
.field private activityGoalPoint:I

.field private higherLimitActivityPoint:D

.field private isLastWeekOfMonth:Z

.field private lowerLimitActivityPoint:D

.field private mBarChartType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDay:Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mWeek:Lcom/qualcomm/toq/smartwatch/activitytracker/Week;

.field private mYAxisMaxValue:D

.field private maxActivityPoint:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/qualcomm/toq/smartwatch/activitytracker/Day;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "day"    # Lcom/qualcomm/toq/smartwatch/activitytracker/Day;
    .param p3, "barChartType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mBarChartType:Ljava/lang/String;

    .line 40
    iput-wide v1, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->maxActivityPoint:D

    .line 41
    iput-boolean v3, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->isLastWeekOfMonth:Z

    .line 73
    iput v3, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->activityGoalPoint:I

    .line 75
    iput-wide v1, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->lowerLimitActivityPoint:D

    .line 76
    iput-wide v1, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->higherLimitActivityPoint:D

    .line 81
    iput-wide v1, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mYAxisMaxValue:D

    .line 61
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mDay:Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    .line 63
    iput-object p3, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mBarChartType:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qualcomm/toq/smartwatch/activitytracker/Week;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "week"    # Lcom/qualcomm/toq/smartwatch/activitytracker/Week;
    .param p3, "barChartType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mBarChartType:Ljava/lang/String;

    .line 40
    iput-wide v1, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->maxActivityPoint:D

    .line 41
    iput-boolean v3, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->isLastWeekOfMonth:Z

    .line 73
    iput v3, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->activityGoalPoint:I

    .line 75
    iput-wide v1, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->lowerLimitActivityPoint:D

    .line 76
    iput-wide v1, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->higherLimitActivityPoint:D

    .line 81
    iput-wide v1, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mYAxisMaxValue:D

    .line 55
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mWeek:Lcom/qualcomm/toq/smartwatch/activitytracker/Week;

    .line 57
    iput-object p3, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mBarChartType:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private buildDayBarChartRenderer([IIZ)Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .locals 10
    .param p1, "colors"    # [I
    .param p2, "backgroundColor"    # I
    .param p3, "showXYLabels"    # Z

    .prologue
    .line 212
    new-instance v4, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-direct {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;-><init>()V

    .line 214
    .local v4, "renderer":Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    const-wide/high16 v5, -0x4000000000000000L

    invoke-virtual {v4, v5, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMin(D)V

    .line 218
    const-wide/high16 v5, 0x404a000000000000L

    invoke-virtual {v4, v5, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    .line 219
    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMin(D)V

    .line 220
    iget-wide v5, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mYAxisMaxValue:D

    invoke-virtual {v4, v5, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMax(D)V

    .line 221
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabels(I)V

    .line 222
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYLabels(I)V

    .line 223
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setInScroll(Z)V

    .line 224
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setPanEnabled(ZZ)V

    .line 225
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setZoomEnabled(ZZ)V

    .line 226
    const/high16 v5, 0x3f800000

    invoke-virtual {v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setScale(F)V

    .line 227
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setClickEnabled(Z)V

    .line 228
    const-wide/high16 v5, 0x3ff0000000000000L

    invoke-virtual {v4, v5, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBarSpacing(D)V

    .line 229
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setDisplayChartValues(Z)V

    .line 230
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setApplyBackgroundColor(Z)V

    .line 231
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setShowLegend(Z)V

    .line 232
    invoke-virtual {v4, p2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMarginsColor(I)V

    .line 233
    invoke-virtual {v4, p2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBackgroundColor(I)V

    .line 234
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setAxesColor(I)V

    .line 236
    if-eqz p3, :cond_0

    .line 238
    iget-wide v5, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mYAxisMaxValue:D

    double-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 239
    .local v2, "maxNumOfDigits":I
    const/4 v5, 0x4

    new-array v0, v5, [I

    const/4 v5, 0x0

    const/16 v6, 0x19

    aput v6, v0, v5

    const/4 v5, 0x1

    const v6, 0x3cac0831

    int-to-float v7, v2

    mul-float/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->getCompatibleSize(F)I

    move-result v6

    const v7, 0x3c75c28f

    invoke-direct {p0, v7}, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->getCompatibleSize(F)I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v0, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v0, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput v6, v0, v5

    .line 245
    .local v0, "array":[I
    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMargins([I)V

    .line 246
    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabelsAlign(Landroid/graphics/Paint$Align;)V

    .line 247
    const/4 v5, 0x0

    const v6, -0x777778

    invoke-virtual {v4, v5, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYLabelsColor(II)V

    .line 248
    const v5, -0x777778

    invoke-virtual {v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabelsColor(I)V

    .line 249
    const v5, 0x3d0f5c29

    invoke-direct {p0, v5}, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->getCompatibleSize(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLabelsTextSize(F)V

    .line 250
    const/high16 v5, 0x41200000

    invoke-virtual {v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabelsPadding(F)V

    .line 251
    const/high16 v5, 0x41200000

    invoke-virtual {v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYLabelsPadding(F)V

    .line 252
    const/high16 v5, -0x3f200000

    invoke-virtual {v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYLabelsVerticalPadding(F)V

    .line 253
    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYLabelsAlign(Landroid/graphics/Paint$Align;)V

    .line 254
    const-wide/high16 v5, 0x3ff0000000000000L

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "12"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a01fe

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addXTextLabel(DLjava/lang/String;)V

    .line 258
    const-wide/high16 v5, 0x4022000000000000L

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "4"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a01fe

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addXTextLabel(DLjava/lang/String;)V

    .line 262
    const-wide/high16 v5, 0x4031000000000000L

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "8"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a01fe

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addXTextLabel(DLjava/lang/String;)V

    .line 266
    const-wide/high16 v5, 0x4039000000000000L

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "12"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a01ff

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addXTextLabel(DLjava/lang/String;)V

    .line 270
    const-wide v5, 0x4040800000000000L

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "4"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a01ff

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addXTextLabel(DLjava/lang/String;)V

    .line 274
    const-wide v5, 0x4044800000000000L

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "8"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a01ff

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addXTextLabel(DLjava/lang/String;)V

    .line 278
    const-wide v5, 0x4048800000000000L

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "12"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a01fe

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addXTextLabel(DLjava/lang/String;)V

    .line 282
    const v5, 0x3ca3d70a

    invoke-direct {p0, v5}, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->getCompatibleSize(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBarWidth(F)V

    .line 292
    .end local v2    # "maxNumOfDigits":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, p1

    if-ge v1, v5, :cond_1

    .line 293
    new-instance v3, Lorg/achartengine/renderer/SimpleSeriesRenderer;

    invoke-direct {v3}, Lorg/achartengine/renderer/SimpleSeriesRenderer;-><init>()V

    .line 294
    .local v3, "r":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    aget v5, p1, v1

    invoke-virtual {v3, v5}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->setColor(I)V

    .line 295
    invoke-virtual {v4, v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addSeriesRenderer(Lorg/achartengine/renderer/SimpleSeriesRenderer;)V

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 285
    .end local v0    # "array":[I
    .end local v1    # "i":I
    .end local v3    # "r":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    :cond_0
    const/4 v5, 0x4

    new-array v0, v5, [I

    fill-array-data v0, :array_0

    .line 286
    .restart local v0    # "array":[I
    invoke-virtual {v4, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMargins([I)V

    .line 287
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYLabelsColor(II)V

    .line 288
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabelsColor(I)V

    .line 289
    const v5, 0x3c6d9168

    invoke-direct {p0, v5}, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->getCompatibleSize(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBarWidth(F)V

    goto :goto_0

    .line 297
    .restart local v1    # "i":I
    :cond_1
    return-object v4

    .line 285
    nop

    :array_0
    .array-data 4
        0x19
        -0x1
        0x0
        0x0
    .end array-data
.end method

.method private buildWeekBarChartRenderer([II)Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    .locals 12
    .param p1, "colors"    # [I
    .param p2, "backgroundColor"    # I

    .prologue
    const/high16 v11, 0x3f800000

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 302
    new-instance v3, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-direct {v3}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;-><init>()V

    .line 304
    .local v3, "renderer":Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    const-wide v5, 0x3fe428f5c28f5c29L

    invoke-virtual {v3, v5, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMin(D)V

    .line 308
    const-wide/high16 v5, 0x401e000000000000L

    invoke-virtual {v3, v5, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXAxisMax(D)V

    .line 309
    const-wide v5, 0x3f647ae147ae147bL

    iget-wide v7, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mYAxisMaxValue:D

    mul-double/2addr v5, v7

    neg-double v5, v5

    invoke-virtual {v3, v5, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMin(D)V

    .line 310
    iget-wide v5, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mYAxisMaxValue:D

    invoke-virtual {v3, v5, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYAxisMax(D)V

    .line 311
    invoke-virtual {v3, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setAxesColor(I)V

    .line 312
    invoke-virtual {v3, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabels(I)V

    .line 313
    invoke-virtual {v3, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setInScroll(Z)V

    .line 314
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070023

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setXLabelsColor(I)V

    .line 316
    const v5, 0x3d27ef9e

    invoke-direct {p0, v5}, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->getCompatibleSize(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setLabelsTextSize(F)V

    .line 317
    invoke-virtual {v3, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setYLabels(I)V

    .line 318
    const-wide/high16 v5, 0x3ff0000000000000L

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a01f7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addXTextLabel(DLjava/lang/String;)V

    .line 321
    const-wide/high16 v5, 0x4000000000000000L

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a01f8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addXTextLabel(DLjava/lang/String;)V

    .line 324
    const-wide/high16 v5, 0x4008000000000000L

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a01f9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addXTextLabel(DLjava/lang/String;)V

    .line 327
    const-wide/high16 v5, 0x4010000000000000L

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a01fa

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addXTextLabel(DLjava/lang/String;)V

    .line 330
    const-wide/high16 v5, 0x4014000000000000L

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a01fb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addXTextLabel(DLjava/lang/String;)V

    .line 333
    const-wide/high16 v5, 0x4018000000000000L

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a01fc

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addXTextLabel(DLjava/lang/String;)V

    .line 336
    const-wide/high16 v5, 0x401c000000000000L

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a01fd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addXTextLabel(DLjava/lang/String;)V

    .line 339
    invoke-virtual {v3, v9, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setPanEnabled(ZZ)V

    .line 340
    invoke-virtual {v3, v9, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setZoomEnabled(ZZ)V

    .line 341
    invoke-virtual {v3, v11}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setScale(F)V

    .line 342
    invoke-virtual {v3, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setClickEnabled(Z)V

    .line 343
    const/high16 v5, 0x42a00000

    invoke-virtual {v3, v5}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBarWidth(F)V

    .line 344
    const-wide v5, 0x3fc99999a0000000L

    invoke-virtual {v3, v5, v6}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBarSpacing(D)V

    .line 345
    invoke-virtual {v3, v10}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setApplyBackgroundColor(Z)V

    .line 346
    invoke-virtual {v3, v9}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setShowLegend(Z)V

    .line 347
    invoke-virtual {v3, p2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMarginsColor(I)V

    .line 348
    const/4 v5, 0x4

    new-array v0, v5, [I

    fill-array-data v0, :array_0

    .line 349
    .local v0, "array":[I
    invoke-virtual {v3, v0}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setMargins([I)V

    .line 350
    invoke-virtual {v3, p2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBackgroundColor(I)V

    .line 352
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_0

    .line 353
    new-instance v2, Lorg/achartengine/renderer/SimpleSeriesRenderer;

    invoke-direct {v2}, Lorg/achartengine/renderer/SimpleSeriesRenderer;-><init>()V

    .line 354
    .local v2, "r":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    aget v5, p1, v1

    invoke-virtual {v2, v5}, Lorg/achartengine/renderer/SimpleSeriesRenderer;->setColor(I)V

    .line 355
    invoke-virtual {v3, v2}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addSeriesRenderer(Lorg/achartengine/renderer/SimpleSeriesRenderer;)V

    .line 352
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    .end local v2    # "r":Lorg/achartengine/renderer/SimpleSeriesRenderer;
    :cond_0
    new-instance v4, Lorg/achartengine/renderer/XYSeriesRenderer;

    invoke-direct {v4}, Lorg/achartengine/renderer/XYSeriesRenderer;-><init>()V

    .line 360
    .local v4, "xySeriesRenderer":Lorg/achartengine/renderer/XYSeriesRenderer;
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070024

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/achartengine/renderer/XYSeriesRenderer;->setColor(I)V

    .line 362
    sget-object v5, Lorg/achartengine/chart/PointStyle;->POINT:Lorg/achartengine/chart/PointStyle;

    invoke-virtual {v4, v5}, Lorg/achartengine/renderer/XYSeriesRenderer;->setPointStyle(Lorg/achartengine/chart/PointStyle;)V

    .line 363
    invoke-virtual {v4, v11}, Lorg/achartengine/renderer/XYSeriesRenderer;->setLineWidth(F)V

    .line 364
    invoke-virtual {v4, v10}, Lorg/achartengine/renderer/XYSeriesRenderer;->setFillPoints(Z)V

    .line 365
    invoke-virtual {v3, v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->addSeriesRenderer(Lorg/achartengine/renderer/SimpleSeriesRenderer;)V

    .line 366
    return-object v3

    .line 348
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private getCompatibleSize(F)I
    .locals 2
    .param p1, "scale"    # F

    .prologue
    .line 545
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 546
    .local v0, "screenWidth":I
    int-to-float v1, v0

    mul-float/2addr v1, p1

    float-to-int v1, v1

    return v1
.end method


# virtual methods
.method public buildBarDataset([Ljava/lang/String;)Lorg/achartengine/model/XYMultipleSeriesDataset;
    .locals 20
    .param p1, "titles"    # [Ljava/lang/String;

    .prologue
    .line 370
    new-instance v2, Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-direct {v2}, Lorg/achartengine/model/XYMultipleSeriesDataset;-><init>()V

    .line 372
    .local v2, "dataset":Lorg/achartengine/model/XYMultipleSeriesDataset;
    move-object/from16 v0, p1

    array-length v12, v0

    .line 373
    .local v12, "length":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v12, :cond_1b

    .line 374
    new-instance v13, Lorg/achartengine/model/CategorySeries;

    aget-object v16, p1, v7

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Lorg/achartengine/model/CategorySeries;-><init>(Ljava/lang/String;)V

    .line 376
    .local v13, "series":Lorg/achartengine/model/CategorySeries;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mBarChartType:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "day_bar_chart"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mDay:Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mDay:Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;->getHourDataList()Ljava/util/ArrayList;

    move-result-object v16

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mDay:Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;->getHourDataList()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_7

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mDay:Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;->getHourDataList()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;

    .line 382
    .local v6, "hour":Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;
    aget-object v16, p1, v7

    const-string v17, "low"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 383
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;->getPoints()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x407f400000000000L

    cmpg-double v16, v16, v18

    if-gez v16, :cond_1

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;->getPoints()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_1

    .line 386
    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;->getPoints()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/achartengine/model/CategorySeries;->add(D)V

    .line 387
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/achartengine/model/CategorySeries;->add(D)V

    goto :goto_1

    .line 390
    :cond_1
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/achartengine/model/CategorySeries;->add(D)V

    .line 391
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/achartengine/model/CategorySeries;->add(D)V

    goto :goto_1

    .line 394
    :cond_2
    aget-object v16, p1, v7

    const-string v17, "medium"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 395
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;->getPoints()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x407f400000000000L

    cmpl-double v16, v16, v18

    if-ltz v16, :cond_3

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;->getPoints()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x408f400000000000L

    cmpg-double v16, v16, v18

    if-gtz v16, :cond_3

    .line 398
    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;->getPoints()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/achartengine/model/CategorySeries;->add(D)V

    .line 399
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/achartengine/model/CategorySeries;->add(D)V

    goto/16 :goto_1

    .line 402
    :cond_3
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/achartengine/model/CategorySeries;->add(D)V

    .line 403
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/achartengine/model/CategorySeries;->add(D)V

    goto/16 :goto_1

    .line 406
    :cond_4
    aget-object v16, p1, v7

    const-string v17, "high"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 407
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;->getPoints()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x408f400000000000L

    cmpl-double v16, v16, v18

    if-lez v16, :cond_5

    .line 409
    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;->getPoints()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/achartengine/model/CategorySeries;->add(D)V

    .line 410
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/achartengine/model/CategorySeries;->add(D)V

    goto/16 :goto_1

    .line 413
    :cond_5
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/achartengine/model/CategorySeries;->add(D)V

    .line 414
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/achartengine/model/CategorySeries;->add(D)V

    goto/16 :goto_1

    .line 417
    :cond_6
    aget-object v16, p1, v7

    const-string v17, "zero"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 418
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/achartengine/model/CategorySeries;->add(D)V

    .line 419
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/achartengine/model/CategorySeries;->add(D)V

    goto/16 :goto_1

    .line 424
    .end local v6    # "hour":Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_7
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_2
    const/16 v16, 0x30

    move/from16 v0, v16

    if-ge v11, v0, :cond_1a

    .line 425
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/achartengine/model/CategorySeries;->add(D)V

    .line 424
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 430
    .end local v11    # "k":I
    :cond_8
    const/4 v11, 0x0

    .restart local v11    # "k":I
    :goto_3
    const/16 v16, 0x30

    move/from16 v0, v16

    if-ge v11, v0, :cond_1a

    .line 431
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/achartengine/model/CategorySeries;->add(D)V

    .line 430
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 436
    .end local v11    # "k":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mWeek:Lcom/qualcomm/toq/smartwatch/activitytracker/Week;

    move-object/from16 v16, v0

    if-eqz v16, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mWeek:Lcom/qualcomm/toq/smartwatch/activitytracker/Week;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/qualcomm/toq/smartwatch/activitytracker/Week;->getDayDataList()Ljava/util/ArrayList;

    move-result-object v16

    if-eqz v16, :cond_19

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mWeek:Lcom/qualcomm/toq/smartwatch/activitytracker/Week;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/qualcomm/toq/smartwatch/activitytracker/Week;->getDayDataList()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 440
    .local v5, "daysCounter":I
    aget-object v16, p1, v7

    const-string v17, "goal_point_value"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 441
    const/4 v4, 0x0

    .local v4, "dayIndex":I
    :goto_4
    const/16 v16, 0x7

    move/from16 v0, v16

    if-ge v4, v0, :cond_b

    .line 442
    move-object/from16 v0, p0

    iget v0, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->activityGoalPoint:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/achartengine/model/CategorySeries;->add(D)V

    .line 441
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 445
    .end local v4    # "dayIndex":I
    :cond_a
    const/16 v16, 0x7

    move/from16 v0, v16

    if-ge v5, v0, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->isLastWeekOfMonth:Z

    move/from16 v16, v0

    if-nez v16, :cond_b

    .line 446
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_5
    rsub-int/lit8 v16, v5, 0x7

    move/from16 v0, v16

    if-ge v10, v0, :cond_b

    .line 449
    const-wide/high16 v16, 0x3ff0000000000000L

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/achartengine/model/CategorySeries;->add(D)V

    .line 446
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 452
    .end local v10    # "j":I
    :cond_b
    aget-object v16, p1, v7

    const-string v17, "zero"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 455
    const/4 v4, 0x0

    .restart local v4    # "dayIndex":I
    :goto_6
    const/16 v16, 0x7

    move/from16 v0, v16

    if-ge v4, v0, :cond_c

    .line 456
    const-wide/high16 v16, 0x3ff0000000000000L

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/achartengine/model/CategorySeries;->add(D)V

    .line 455
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 459
    .end local v4    # "dayIndex":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mWeek:Lcom/qualcomm/toq/smartwatch/activitytracker/Week;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/qualcomm/toq/smartwatch/activitytracker/Week;->getDayDataList()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_d
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_18

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    .line 460
    .local v3, "day":Lcom/qualcomm/toq/smartwatch/activitytracker/Day;
    if-eqz v3, :cond_17

    .line 461
    const-wide/16 v14, 0x0

    .line 462
    .local v14, "sumOfActivityPoints":D
    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;->getHourDataList()Ljava/util/ArrayList;

    move-result-object v16

    if-eqz v16, :cond_e

    .line 463
    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/activitytracker/Day;->getHourDataList()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;

    .line 464
    .restart local v6    # "hour":Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;
    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;->getPoints()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    goto :goto_8

    .line 468
    .end local v6    # "hour":Lcom/qualcomm/toq/smartwatch/activitytracker/Hour;
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_e
    aget-object v16, p1, v7

    const-string v17, "low"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_11

    .line 469
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->lowerLimitActivityPoint:D

    move-wide/from16 v16, v0

    cmpg-double v16, v14, v16

    if-gtz v16, :cond_10

    const-wide/16 v16, 0x0

    cmpl-double v16, v14, v16

    if-lez v16, :cond_10

    .line 474
    const-wide v16, 0x3f747ae147ae147bL

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mYAxisMaxValue:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    cmpg-double v16, v14, v16

    if-gez v16, :cond_f

    .line 475
    const-wide v16, 0x3f747ae147ae147bL

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mYAxisMaxValue:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/achartengine/model/CategorySeries;->add(D)V

    goto :goto_7

    .line 478
    :cond_f
    invoke-virtual {v13, v14, v15}, Lorg/achartengine/model/CategorySeries;->add(D)V

    goto :goto_7

    .line 482
    :cond_10
    const-wide/high16 v16, 0x3ff0000000000000L

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/achartengine/model/CategorySeries;->add(D)V

    goto :goto_7

    .line 485
    :cond_11
    aget-object v16, p1, v7

    const-string v17, "medium"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_13

    .line 486
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->lowerLimitActivityPoint:D

    move-wide/from16 v16, v0

    cmpl-double v16, v14, v16

    if-lez v16, :cond_12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->higherLimitActivityPoint:D

    move-wide/from16 v16, v0

    cmpg-double v16, v14, v16

    if-gtz v16, :cond_12

    .line 488
    invoke-virtual {v13, v14, v15}, Lorg/achartengine/model/CategorySeries;->add(D)V

    goto/16 :goto_7

    .line 491
    :cond_12
    const-wide/high16 v16, 0x3ff0000000000000L

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/achartengine/model/CategorySeries;->add(D)V

    goto/16 :goto_7

    .line 494
    :cond_13
    aget-object v16, p1, v7

    const-string v17, "high"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_15

    .line 495
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->higherLimitActivityPoint:D

    move-wide/from16 v16, v0

    cmpl-double v16, v14, v16

    if-lez v16, :cond_14

    .line 496
    invoke-virtual {v13, v14, v15}, Lorg/achartengine/model/CategorySeries;->add(D)V

    goto/16 :goto_7

    .line 499
    :cond_14
    const-wide/high16 v16, 0x3ff0000000000000L

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/achartengine/model/CategorySeries;->add(D)V

    goto/16 :goto_7

    .line 502
    :cond_15
    aget-object v16, p1, v7

    const-string v17, "transparent_value"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 503
    const-wide/16 v16, 0x0

    cmpl-double v16, v14, v16

    if-eqz v16, :cond_16

    .line 504
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mYAxisMaxValue:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/achartengine/model/CategorySeries;->add(D)V

    goto/16 :goto_7

    .line 507
    :cond_16
    const-wide/high16 v16, 0x3ff0000000000000L

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/achartengine/model/CategorySeries;->add(D)V

    goto/16 :goto_7

    .line 512
    .end local v14    # "sumOfActivityPoints":D
    :cond_17
    const-wide/high16 v16, 0x3ff0000000000000L

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/achartengine/model/CategorySeries;->add(D)V

    goto/16 :goto_7

    .line 517
    .end local v3    # "day":Lcom/qualcomm/toq/smartwatch/activitytracker/Day;
    :cond_18
    aget-object v16, p1, v7

    const-string v17, "goal_point_value"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->isLastWeekOfMonth:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1a

    const/16 v16, 0x7

    move/from16 v0, v16

    if-ge v5, v0, :cond_1a

    .line 519
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_9
    rsub-int/lit8 v16, v5, 0x7

    move/from16 v0, v16

    if-ge v10, v0, :cond_1a

    .line 520
    const-wide/high16 v16, 0x3ff0000000000000L

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/achartengine/model/CategorySeries;->add(D)V

    .line 519
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 525
    .end local v5    # "daysCounter":I
    .end local v10    # "j":I
    :cond_19
    const/4 v11, 0x0

    .restart local v11    # "k":I
    :goto_a
    const/16 v16, 0x7

    move/from16 v0, v16

    if-ge v11, v0, :cond_1a

    .line 526
    const-wide/high16 v16, 0x3ff0000000000000L

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Lorg/achartengine/model/CategorySeries;->add(D)V

    .line 525
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 530
    .end local v11    # "k":I
    :cond_1a
    invoke-virtual {v13}, Lorg/achartengine/model/CategorySeries;->toXYSeries()Lorg/achartengine/model/XYSeries;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lorg/achartengine/model/XYMultipleSeriesDataset;->addSeries(Lorg/achartengine/model/XYSeries;)V

    .line 373
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 532
    .end local v13    # "series":Lorg/achartengine/model/CategorySeries;
    :cond_1b
    return-object v2
.end method

.method public getBarChart(IZ)Lorg/achartengine/GraphicalView;
    .locals 20
    .param p1, "backgroundColor"    # I
    .param p2, "showXYLabels"    # Z

    .prologue
    .line 102
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "activity_monitoring_pref"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 106
    .local v6, "prefs":Landroid/content/SharedPreferences;
    if-eqz v6, :cond_0

    .line 107
    const-string v14, "activity_monitoring_goal_points_key"

    const/16 v15, 0x2710

    invoke-interface {v6, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->activityGoalPoint:I

    .line 111
    :cond_0
    new-instance v14, Landroid/util/DisplayMetrics;

    invoke-direct {v14}, Landroid/util/DisplayMetrics;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 112
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    const-string v15, "window"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 113
    .local v12, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v14, v15}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 115
    new-instance v7, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-direct {v7}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;-><init>()V

    .line 116
    .local v7, "renderer":Lorg/achartengine/renderer/XYMultipleSeriesRenderer;
    new-instance v13, Lorg/achartengine/model/XYMultipleSeriesDataset;

    invoke-direct {v13}, Lorg/achartengine/model/XYMultipleSeriesDataset;-><init>()V

    .line 118
    .local v13, "xyDataSeriesDataset":Lorg/achartengine/model/XYMultipleSeriesDataset;
    const/4 v5, 0x0

    .line 124
    .local v5, "graphicalView":Lorg/achartengine/GraphicalView;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->activityGoalPoint:I

    int-to-double v14, v14

    const-wide v16, 0x3fd51eb851eb851fL

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->lowerLimitActivityPoint:D

    .line 126
    move-object/from16 v0, p0

    iget v14, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->activityGoalPoint:I

    int-to-double v14, v14

    const-wide/high16 v16, 0x4008000000000000L

    mul-double v14, v14, v16

    const-wide v16, 0x3fd51eb851eb851fL

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->higherLimitActivityPoint:D

    .line 129
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mBarChartType:Ljava/lang/String;

    const-string v15, "day_bar_chart"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 131
    const/4 v14, 0x4

    new-array v4, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "low"

    aput-object v15, v4, v14

    const/4 v14, 0x1

    const-string v15, "medium"

    aput-object v15, v4, v14

    const/4 v14, 0x2

    const-string v15, "high"

    aput-object v15, v4, v14

    const/4 v14, 0x3

    const-string v15, "zero"

    aput-object v15, v4, v14

    .line 134
    .local v4, "dayGraphTitles":[Ljava/lang/String;
    const/4 v14, 0x4

    new-array v3, v14, [I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070020

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    aput v15, v3, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070021

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    aput v15, v3, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070022

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    aput v15, v3, v14

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070019

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    aput v15, v3, v14

    .line 145
    .local v3, "dayGraphColors":[I
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->maxActivityPoint:D

    const-wide v16, 0x3fb999999999999aL

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->maxActivityPoint:D

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mYAxisMaxValue:D

    .line 148
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v3, v1, v2}, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->buildDayBarChartRenderer([IIZ)Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-result-object v7

    .line 151
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->buildBarDataset([Ljava/lang/String;)Lorg/achartengine/model/XYMultipleSeriesDataset;

    move-result-object v13

    .line 153
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    sget-object v15, Lorg/achartengine/chart/BarChart$Type;->STACKED:Lorg/achartengine/chart/BarChart$Type;

    invoke-static {v14, v13, v7, v15}, Lorg/achartengine/ChartFactory;->getBarChartView(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/chart/BarChart$Type;)Lorg/achartengine/GraphicalView;

    move-result-object v5

    .line 206
    .end local v3    # "dayGraphColors":[I
    .end local v4    # "dayGraphTitles":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v5

    .line 158
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mBarChartType:Ljava/lang/String;

    const-string v15, "week_bar_chart"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 160
    const/4 v14, 0x6

    new-array v11, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "goal_point_value"

    aput-object v15, v11, v14

    const/4 v14, 0x1

    const-string v15, "low"

    aput-object v15, v11, v14

    const/4 v14, 0x2

    const-string v15, "medium"

    aput-object v15, v11, v14

    const/4 v14, 0x3

    const-string v15, "high"

    aput-object v15, v11, v14

    const/4 v14, 0x4

    const-string v15, "transparent_value"

    aput-object v15, v11, v14

    const/4 v14, 0x5

    const-string v15, "zero"

    aput-object v15, v11, v14

    .line 167
    .local v11, "weekGraphTitles":[Ljava/lang/String;
    const/4 v14, 0x6

    new-array v10, v14, [I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070025

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    aput v15, v10, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070020

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    aput v15, v10, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070021

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    aput v15, v10, v14

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f070022

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    aput v15, v10, v14

    const/4 v14, 0x4

    const/4 v15, 0x0

    aput v15, v10, v14

    const/4 v14, 0x5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f07000c

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    aput v15, v10, v14

    .line 183
    .local v10, "weekGraphColors":[I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->activityGoalPoint:I

    int-to-double v14, v14

    const-wide v16, 0x3fd3333333333333L

    move-object/from16 v0, p0

    iget v0, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->activityGoalPoint:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mYAxisMaxValue:D

    .line 186
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v10, v1}, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->buildWeekBarChartRenderer([II)Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-result-object v7

    .line 188
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->buildBarDataset([Ljava/lang/String;)Lorg/achartengine/model/XYMultipleSeriesDataset;

    move-result-object v13

    .line 190
    new-instance v8, Lorg/achartengine/model/XYSeries;

    const-string v14, "xy_combined_chart"

    invoke-direct {v8, v14}, Lorg/achartengine/model/XYSeries;-><init>(Ljava/lang/String;)V

    .line 192
    .local v8, "series":Lorg/achartengine/model/XYSeries;
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->activityGoalPoint:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v8, v14, v15, v0, v1}, Lorg/achartengine/model/XYSeries;->add(DD)V

    .line 193
    const-wide/high16 v14, 0x401e000000000000L

    move-object/from16 v0, p0

    iget v0, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->activityGoalPoint:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v8, v14, v15, v0, v1}, Lorg/achartengine/model/XYSeries;->add(DD)V

    .line 195
    invoke-virtual {v13, v8}, Lorg/achartengine/model/XYMultipleSeriesDataset;->addSeries(Lorg/achartengine/model/XYSeries;)V

    .line 197
    const/4 v14, 0x7

    new-array v9, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "Bar"

    aput-object v15, v9, v14

    const/4 v14, 0x1

    const-string v15, "Bar"

    aput-object v15, v9, v14

    const/4 v14, 0x2

    const-string v15, "Bar"

    aput-object v15, v9, v14

    const/4 v14, 0x3

    const-string v15, "Bar"

    aput-object v15, v9, v14

    const/4 v14, 0x4

    const-string v15, "Bar"

    aput-object v15, v9, v14

    const/4 v14, 0x5

    const-string v15, "Bar"

    aput-object v15, v9, v14

    const/4 v14, 0x6

    const-string v15, "Line"

    aput-object v15, v9, v14

    .line 201
    .local v9, "types":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->mContext:Landroid/content/Context;

    invoke-static {v14, v13, v7, v9}, Lorg/achartengine/ChartFactory;->getCombinedXYChartView(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;[Ljava/lang/String;)Lorg/achartengine/GraphicalView;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public getMaxActivityPoint()D
    .locals 2

    .prologue
    .line 536
    iget-wide v0, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->maxActivityPoint:D

    return-wide v0
.end method

.method public isLastWeekOfMonth()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->isLastWeekOfMonth:Z

    return v0
.end method

.method public setLastWeekOfMonth(Z)V
    .locals 0
    .param p1, "isLastWeekOfMonth"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->isLastWeekOfMonth:Z

    .line 49
    return-void
.end method

.method public setMaxActivityPoint(D)V
    .locals 0
    .param p1, "maxActivityPoint"    # D

    .prologue
    .line 540
    iput-wide p1, p0, Lcom/qualcomm/toq/smartwatch/utils/BarChartBuilder;->maxActivityPoint:D

    .line 541
    return-void
.end method

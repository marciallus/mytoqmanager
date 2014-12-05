.class public Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;
.super Landroid/app/Activity;
.source "ActivityMonitoringActivity.java"

# interfaces
.implements Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;


# static fields
.field private static final ACTIVITY_POINTS_INCREMENTAL_VALUE:I = 0x1f4

.field private static final GOALPOINT_DIALOG_MARGIN:I = 0x32

.field private static final GOALPOINT_MAXIMUM_VALUE:F = 25000.0f

.field private static final GOALPOINT_MINIMUM_VALUE:F = 3000.0f

.field private static final GOALPOINT_RECOMMENDED_VALUE:F = 10000.0f

.field private static final SEEKBAR_LEFT_MARGIN:I = 0x14

.field private static TAG:Ljava/lang/String;


# instance fields
.field private activitydialogButtonsListener:Landroid/view/View$OnClickListener;

.field private clearDialog:Landroid/app/Dialog;

.field private dialog:Landroid/app/Dialog;

.field private isActivityMonitoringSettingsOn:Z

.field private isReminderOn:Z

.field private mActivityGoalPoints:I

.field private mActivityGoalSettingLayout:Landroid/widget/LinearLayout;

.field private mActivityGoalSettingSecondaryText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

.field private mActivityInfoView:Landroid/widget/ImageView;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDoneLayout:Landroid/widget/LinearLayout;

.field private mGoalReminderNotificationLayout:Landroid/widget/LinearLayout;

.field private mGoalReminderOnOffSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

.field private mGoalReminderSecondaryText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

.field private mGoalSettingDialog:Landroid/app/Dialog;

.field private mNotificationsSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

.field private mOverFlowMenuLayout:Landroid/widget/LinearLayout;

.field private mPopUpWindow:Landroid/widget/PopupWindow;

.field private mReminderTimesSettingLayout:Landroid/widget/LinearLayout;

.field private mTempActivityGoalpoints:I

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "ActivityMonitoringActivity"

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mNotificationsSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    .line 66
    iput v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mActivityGoalPoints:I

    .line 67
    iput v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mTempActivityGoalpoints:I

    .line 68
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mActivityInfoView:Landroid/widget/ImageView;

    .line 70
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->dialog:Landroid/app/Dialog;

    .line 71
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->clearDialog:Landroid/app/Dialog;

    .line 72
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mGoalSettingDialog:Landroid/app/Dialog;

    .line 82
    iput-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->isReminderOn:Z

    .line 98
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 99
    iput-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->isActivityMonitoringSettingsOn:Z

    .line 100
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity_monitoring_pref"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->prefs:Landroid/content/SharedPreferences;

    .line 519
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$8;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$8;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->activitydialogButtonsListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->isActivityMonitoringSettingsOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->isReminderOn:Z

    return p1
.end method

.method static synthetic access$102(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;
    .param p1, "x1"    # Landroid/widget/PopupWindow;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->updateGoalReminderSettings()V

    return-void
.end method

.method static synthetic access$1200(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mGoalSettingDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getActivityGoalSettingSecondaryText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->clearDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->initiateDoneChanges()V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/util/DisplayMetrics;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getActivityGoalSettingDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    .prologue
    .line 58
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mActivityGoalPoints:I

    return v0
.end method

.method static synthetic access$702(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mActivityGoalPoints:I

    return p1
.end method

.method static synthetic access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    .prologue
    .line 58
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mTempActivityGoalpoints:I

    return v0
.end method

.method static synthetic access$802(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mTempActivityGoalpoints:I

    return p1
.end method

.method static synthetic access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->activitydialogButtonsListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private getActivityGoalSettingDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mGoalSettingDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mGoalSettingDialog:Landroid/app/Dialog;

    .line 89
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mGoalSettingDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 91
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mGoalSettingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v1, v1, -0x32

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mGoalSettingDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private getActivityGoalSettingLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mActivityGoalSettingLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 263
    const v0, 0x7f09004a

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mActivityGoalSettingLayout:Landroid/widget/LinearLayout;

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mActivityGoalSettingLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getActivityGoalSettingSecondaryText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mActivityGoalSettingSecondaryText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    if-nez v0, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getActivityGoalSettingLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mActivityGoalSettingSecondaryText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mActivityGoalSettingSecondaryText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    return-object v0
.end method

.method private getActivityInfoView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mActivityInfoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 252
    const v0, 0x7f090042

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mActivityInfoView:Landroid/widget/ImageView;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mActivityInfoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getDoneLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mDoneLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 232
    const v0, 0x7f09003c

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mDoneLayout:Landroid/widget/LinearLayout;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mDoneLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getGoalReminderNotificationLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mGoalReminderNotificationLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 282
    const v0, 0x7f09004b

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mGoalReminderNotificationLayout:Landroid/widget/LinearLayout;

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mGoalReminderNotificationLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getGoalReminderTimesLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mReminderTimesSettingLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 294
    const v0, 0x7f09004d

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mReminderTimesSettingLayout:Landroid/widget/LinearLayout;

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mReminderTimesSettingLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getGoalReminderTimesSecondaryText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mGoalReminderSecondaryText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    if-nez v0, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getGoalReminderTimesLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mGoalReminderSecondaryText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mGoalReminderSecondaryText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    return-object v0
.end method

.method private getNotificationsSwitch()Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mNotificationsSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    if-nez v0, :cond_0

    .line 242
    const v0, 0x7f090048

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mNotificationsSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mNotificationsSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    return-object v0
.end method

.method private getOverFlowMenuLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mOverFlowMenuLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 222
    const v0, 0x7f09003f

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mOverFlowMenuLayout:Landroid/widget/LinearLayout;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mOverFlowMenuLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private initializeViews()V
    .locals 2

    .prologue
    .line 554
    const v0, 0x7f090048

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mNotificationsSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    .line 555
    const v0, 0x7f09003c

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mDoneLayout:Landroid/widget/LinearLayout;

    .line 556
    const v0, 0x7f09003f

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mOverFlowMenuLayout:Landroid/widget/LinearLayout;

    .line 557
    const v0, 0x7f090042

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mActivityInfoView:Landroid/widget/ImageView;

    .line 558
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getGoalReminderNotificationLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f09025a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mGoalReminderOnOffSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    .line 559
    return-void
.end method

.method private initiateDoneChanges()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 619
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->setActivitySettingsState()V

    .line 621
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->prefs:Landroid/content/SharedPreferences;

    if-eqz v9, :cond_6

    .line 622
    const/4 v0, 0x0

    .line 624
    .local v0, "bSendUserSettings":Z
    iget v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mActivityGoalPoints:I

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v11, "activity_monitoring_goal_points_key"

    const/16 v12, 0x2710

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-eq v9, v10, :cond_0

    .line 626
    const/4 v0, 0x1

    .line 628
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 629
    .local v5, "goalEditor":Landroid/content/SharedPreferences$Editor;
    const-string v9, "activity_monitoring_goal_points_key"

    iget v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mActivityGoalPoints:I

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 631
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 638
    .end local v5    # "goalEditor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-boolean v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->isActivityMonitoringSettingsOn:Z

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v11, "activity_monitoring_settings_toggle_key"

    invoke-interface {v10, v11, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eq v9, v10, :cond_4

    .line 640
    const/4 v0, 0x1

    .line 642
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 643
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v9, "activity_monitoring_settings_toggle_key"

    iget-boolean v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->isActivityMonitoringSettingsOn:Z

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 645
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 647
    sget-object v9, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isActivityMonitoringSettingsOn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->isActivityMonitoringSettingsOn:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    sget-object v9, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mActivityGoalPoints = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mActivityGoalPoints:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-boolean v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->isActivityMonitoringSettingsOn:Z

    if-nez v9, :cond_4

    .line 655
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "clock_settings_pref"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 659
    .local v2, "clock_prefs":Landroid/content/SharedPreferences;
    const-string v9, "clock_settings_types"

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    .line 661
    .local v8, "mClockSettingsSelectionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v8, :cond_4

    const-string v9, "Activity"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 663
    sget-object v9, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mClockSettingsSelectionMap.get(Constants.CLOCK_ACTIVITY)."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Activity"

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const-string v9, "Activity"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    const/4 v7, 0x0

    .line 671
    .local v7, "isAtleastOneClockSelected":Z
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 673
    .local v1, "clockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 674
    const/4 v7, 0x1

    .line 679
    .end local v1    # "clockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_2
    if-nez v7, :cond_3

    .line 680
    const-string v9, "Bold"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    :cond_3
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 685
    const-string v9, "clock_settings_types"

    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 687
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 689
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->getClockSettingsController()Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;

    move-result-object v9

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->sendClockSettingsToWD(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 699
    .end local v2    # "clock_prefs":Landroid/content/SharedPreferences;
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "isAtleastOneClockSelected":Z
    .end local v8    # "mClockSettingsSelectionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_4
    :goto_0
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v10, "activity_goal_reminder_switch_state_key"

    invoke-interface {v9, v10, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iget-boolean v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->isReminderOn:Z

    if-eq v9, v10, :cond_5

    .line 701
    const/4 v0, 0x1

    .line 703
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 704
    .restart local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v9, "activity_goal_reminder_switch_state_key"

    iget-boolean v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->isReminderOn:Z

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 706
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 709
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5
    if-eqz v0, :cond_6

    .line 710
    const/4 v0, 0x0

    .line 711
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;->getUserSettingsController()Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;

    move-result-object v9

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;->sendUserSettingsToWD(Landroid/content/Context;)V

    .line 713
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a00fa

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 724
    .end local v0    # "bSendUserSettings":Z
    :cond_6
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->finish()V

    .line 725
    return-void

    .line 693
    .restart local v0    # "bSendUserSettings":Z
    .restart local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v3

    .line 694
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private loadGoalReminderSwitchState()V
    .locals 3

    .prologue
    .line 562
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "activity_goal_reminder_switch_state_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->isReminderOn:Z

    .line 564
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mGoalReminderOnOffSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    iget-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->isReminderOn:Z

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->setChecked(Z)V

    .line 565
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->updateGoalReminderSettings()V

    .line 566
    return-void
.end method

.method private loadNotificationSwitchState()V
    .locals 3

    .prologue
    .line 544
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->prefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "activity_monitoring_settings_toggle_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->isActivityMonitoringSettingsOn:Z

    .line 548
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getNotificationsSwitch()Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->isActivityMonitoringSettingsOn:Z

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->setChecked(Z)V

    .line 551
    :cond_0
    return-void
.end method

.method private setActivitySettingsState()V
    .locals 2

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->isActivityMonitoringSettingsOn:Z

    if-eqz v0, :cond_0

    .line 606
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->TAG:Ljava/lang/String;

    const-string v1, "Activity Monitoring Turned ON"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    :goto_0
    return-void

    .line 610
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->TAG:Ljava/lang/String;

    const-string v1, "Activity Monitoring Turned OFF"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setGoalReminderTimesSecondaryText()V
    .locals 11

    .prologue
    .line 827
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 828
    .local v5, "sBuilder":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "activity_monitoring_pref"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 832
    .local v2, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v7

    .line 833
    .local v7, "utils":Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    const-string v8, "activity_goal_reminder_times_set_key"

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getDefaultReminderTimes()Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {v9}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-static {v8}, Lcom/qualcomm/toq/base/utils/Utils;->cleanReminderTimes(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 836
    .local v4, "reminderTimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Calendar;>;"
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v8, "h:mm "

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v6, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 840
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    const-string v8, "GMT+00:00"

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 842
    if-eqz v4, :cond_0

    .line 843
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    .line 844
    .local v3, "reminderTime":Ljava/util/Calendar;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Lcom/qualcomm/toq/base/utils/Utils;->getLocalizedAMPMText(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 866
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "reminderTime":Ljava/util/Calendar;
    .end local v4    # "reminderTimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Calendar;>;"
    .end local v6    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v7    # "utils":Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    :catch_0
    move-exception v0

    .line 867
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 874
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getGoalReminderTimesSecondaryText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 875
    return-void

    .line 849
    .restart local v4    # "reminderTimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Calendar;>;"
    .restart local v6    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v7    # "utils":Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    :cond_0
    :try_start_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 851
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v9, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 852
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    const-string v10, ""

    invoke-virtual {v5, v8, v9, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 869
    .end local v4    # "reminderTimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Calendar;>;"
    .end local v6    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v7    # "utils":Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    :catch_1
    move-exception v0

    .line 870
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 857
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "reminderTimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Calendar;>;"
    .restart local v6    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v7    # "utils":Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    const-string v10, "."

    invoke-virtual {v5, v8, v9, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 863
    :cond_2
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00d1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getNotificationsSwitch()Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)V

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 329
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getOverFlowMenuLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$2;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getDoneLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$3;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$3;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getActivityInfoView()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$4;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$4;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getActivityGoalSettingLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$5;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mGoalReminderOnOffSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$6;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$6;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)V

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 501
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getGoalReminderTimesLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$7;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$7;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 517
    return-void
.end method

.method private showClearActivityDialog()V
    .locals 9

    .prologue
    const v8, 0x7f02009d

    .line 758
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->clearDialog:Landroid/app/Dialog;

    if-nez v5, :cond_4

    .line 759
    new-instance v5, Landroid/app/Dialog;

    invoke-direct {v5, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->clearDialog:Landroid/app/Dialog;

    .line 760
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->clearDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 762
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03001c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 764
    .local v0, "clearDialogLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 765
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->clearDialog:Landroid/app/Dialog;

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 766
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->clearDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v6, v6, -0x32

    const/4 v7, -0x2

    invoke-virtual {v5, v6, v7}, Landroid/view/Window;->setLayout(II)V

    .line 769
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->clearDialog:Landroid/app/Dialog;

    const v6, 0x7f090102

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 770
    .local v2, "dialogTitle":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 771
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00c8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    :cond_0
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->clearDialog:Landroid/app/Dialog;

    const v6, 0x7f090108

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 775
    .local v1, "dialogContent":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 776
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00c9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 779
    :cond_1
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->clearDialog:Landroid/app/Dialog;

    const v6, 0x7f09010a

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 780
    .local v3, "mDialogCancelButton":Landroid/widget/Button;
    if-eqz v3, :cond_2

    .line 781
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 782
    new-instance v5, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$9;

    invoke-direct {v5, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$9;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 794
    :cond_2
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->clearDialog:Landroid/app/Dialog;

    const v6, 0x7f09010b

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 795
    .local v4, "mDialogDeleteButton":Landroid/widget/Button;
    if-eqz v4, :cond_3

    .line 796
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 797
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00c7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 798
    new-instance v5, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$10;

    invoke-direct {v5, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$10;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 812
    :cond_3
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 813
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 815
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 820
    .end local v0    # "clearDialogLayout":Landroid/widget/LinearLayout;
    .end local v1    # "dialogContent":Landroid/widget/TextView;
    .end local v2    # "dialogTitle":Landroid/widget/TextView;
    .end local v3    # "mDialogCancelButton":Landroid/widget/Button;
    .end local v4    # "mDialogDeleteButton":Landroid/widget/Button;
    :cond_4
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->clearDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_5

    .line 821
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->clearDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 823
    :cond_5
    return-void
.end method

.method private unbindDrawables(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 736
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 737
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 739
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 740
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-object v1, p1

    .line 741
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->unbindDrawables(Landroid/view/View;)V

    .line 740
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 743
    :cond_1
    instance-of v1, p1, Landroid/widget/AdapterView;

    if-eqz v1, :cond_3

    .line 744
    check-cast p1, Landroid/widget/AdapterView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->removeAllViewsInLayout()V

    .line 749
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 747
    .restart local v0    # "i":I
    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_1
.end method

.method private updateGoalReminderSettings()V
    .locals 2

    .prologue
    .line 572
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->isReminderOn:Z

    if-eqz v0, :cond_0

    .line 573
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getGoalReminderTimesLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 578
    :goto_0
    return-void

    .line 576
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getGoalReminderTimesLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 729
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 730
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->initiateDoneChanges()V

    .line 732
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x7f090066

    const/high16 v10, 0x41200000

    const/high16 v9, 0x40800000

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 110
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 111
    sget-object v3, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->TAG:Ljava/lang/String;

    const-string v4, "Register activityReceiver BroadcastReceiver"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->prefs:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "activity_monitoring_settings_toggle_key"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    sget-object v3, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->TAG:Ljava/lang/String;

    const-string v4, "sendGetActivityInd() called from ActivityMonitoringActivity"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->getActivityMonitoringController()Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->sendActivityUpdateInd()V

    .line 124
    :cond_0
    const v3, 0x7f030009

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->setContentView(I)V

    .line 125
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->prefs:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_1

    .line 126
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v4, "activity_monitoring_goal_points_key"

    const/16 v5, 0x2710

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mActivityGoalPoints:I

    .line 128
    iget v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mActivityGoalPoints:I

    iput v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mTempActivityGoalpoints:I

    .line 131
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getActivityGoalSettingSecondaryText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mActivityGoalPoints:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00b1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getActivityGoalSettingLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 135
    .local v0, "activityGoalSettingTitle":Landroid/widget/TextView;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00ca

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getGoalReminderTimesLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 140
    .local v1, "goalReminderTitle":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getActivityGoalSettingLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    const v4, 0x7f090068

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 144
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v8, v9, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v8, v10, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 152
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getGoalReminderTimesLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    const v4, 0x7f090068

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 154
    .restart local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v8, v9, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v8, v10, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 165
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getGoalReminderNotificationLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    const v4, 0x7f090258

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a00cd

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 166
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->getGoalReminderNotificationLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    const v4, 0x7f090259

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a00ce

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 169
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->initializeViews()V

    .line 172
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->loadNotificationSwitchState()V

    .line 175
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->loadGoalReminderSwitchState()V

    .line 177
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->setListeners()V

    .line 200
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 205
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy(): Unregister activityReceiver"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const v0, 0x7f09003a

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->unbindDrawables(Landroid/view/View;)V

    .line 207
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->dialog:Landroid/app/Dialog;

    .line 208
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->clearDialog:Landroid/app/Dialog;

    .line 209
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mGoalSettingDialog:Landroid/app/Dialog;

    .line 210
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 211
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    .line 212
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mNotificationsSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    .line 213
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mDoneLayout:Landroid/widget/LinearLayout;

    .line 214
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mOverFlowMenuLayout:Landroid/widget/LinearLayout;

    .line 215
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 879
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 882
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->setGoalReminderTimesSecondaryText()V

    .line 883
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 887
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 889
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mGoalSettingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mGoalSettingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mGoalSettingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 893
    :cond_0
    return-void
.end method

.method public processPopUpItemClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 585
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 590
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->finish()V

    .line 600
    :cond_1
    :goto_0
    return-void

    .line 593
    :cond_2
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->showClearActivityDialog()V

    goto :goto_0
.end method

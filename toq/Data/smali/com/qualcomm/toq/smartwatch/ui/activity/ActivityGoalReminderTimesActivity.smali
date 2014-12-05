.class public Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;
.super Landroid/app/ListActivity;
.source "ActivityGoalReminderTimesActivity.java"

# interfaces
.implements Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog$CustomTimePickerDialogInterface;
.implements Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityGoalReminderTimesActivity"


# instance fields
.field private mAddReminderTimeLayout:Landroid/widget/LinearLayout;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDoneLayout:Landroid/widget/LinearLayout;

.field private mOverFlowMenuLayout:Landroid/widget/LinearLayout;

.field private mPopUpWindow:Landroid/widget/PopupWindow;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mReminderTimePickerDialog:Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;

.field private mReminderTimesAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;

.field private mReminderTimesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private mSimpleDateformat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimesAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;

    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm "

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mSimpleDateformat:Ljava/text/SimpleDateFormat;

    .line 61
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity_monitoring_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 282
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$002(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;
    .param p1, "x1"    # Landroid/widget/PopupWindow;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;)Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimePickerDialog:Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;)Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;
    .param p1, "x1"    # Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimePickerDialog:Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->initiateDoneChanges()V

    return-void
.end method

.method static synthetic access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;)Ljava/text/SimpleDateFormat;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mSimpleDateformat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;)Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimesAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;

    return-object v0
.end method

.method private initialize()V
    .locals 5

    .prologue
    .line 82
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 83
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 86
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mSimpleDateformat:Ljava/text/SimpleDateFormat;

    const-string v3, "GMT+00:00"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 90
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v1

    .line 91
    .local v1, "utils":Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "activity_goal_reminder_times_set_key"

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getDefaultReminderTimes()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/qualcomm/toq/base/utils/Utils;->cleanReminderTimes(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimesList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    .end local v1    # "utils":Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimesAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;

    if-nez v2, :cond_0

    .line 104
    new-instance v2, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimesList:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, p0, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;Ljava/util/List;)V

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimesAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;

    .line 107
    :cond_0
    const v2, 0x7f090033

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mOverFlowMenuLayout:Landroid/widget/LinearLayout;

    .line 108
    const v2, 0x7f090034

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mAddReminderTimeLayout:Landroid/widget/LinearLayout;

    .line 109
    const v2, 0x7f090030

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mDoneLayout:Landroid/widget/LinearLayout;

    .line 110
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 98
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private initiateDoneChanges()V
    .locals 7

    .prologue
    .line 225
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimesList:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 227
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v2

    .line 230
    .local v2, "utils":Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimesList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "activity_goal_reminder_times_set_key"

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getDefaultReminderTimes()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {v6}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 233
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 235
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "activity_goal_reminder_times_set_key"

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimesList:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 237
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 239
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;->getUserSettingsController()Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;

    move-result-object v3

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;->sendUserSettingsToWD(Landroid/content/Context;)V

    .line 241
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00fa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 257
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "utils":Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    :cond_0
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 254
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 255
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private setListenerToViews()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mOverFlowMenuLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mAddReminderTimeLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$2;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mDoneLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$3;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$3;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 261
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    .line 263
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->initiateDoneChanges()V

    .line 264
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->setContentView(I)V

    .line 71
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->initialize()V

    .line 73
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->setListenerToViews()V

    .line 75
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimesAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    return-void
.end method

.method public onNegetiveButtonClicked()V
    .locals 2

    .prologue
    .line 407
    const-string v0, "ActivityGoalReminderTimesActivity"

    const-string v1, "Cancel button pressed"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public onPositiveButtonClicked()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 368
    const-string v2, "ActivityGoalReminderTimesActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reminder requested : Hour : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimePickerDialog:Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->getTimePicker()Landroid/widget/TimePicker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Minute : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimePickerDialog:Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->getTimePicker()Landroid/widget/TimePicker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v2, "GMT+00:00"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 376
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 377
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimePickerDialog:Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->getTimePicker()Landroid/widget/TimePicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimePickerDialog:Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->getTimePicker()Landroid/widget/TimePicker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v2, v1

    move v3, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 384
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 386
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a010f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 400
    :cond_0
    :goto_0
    const-string v1, "ActivityGoalReminderTimesActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of Reminder Times : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return-void

    .line 393
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 394
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimesAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;->add(Ljava/lang/Object;)V

    .line 396
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mReminderTimesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    const-string v1, "ActivityGoalReminderTimesActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reminder added : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processPopUpItemClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 271
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

    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->finish()V

    .line 279
    :cond_1
    return-void
.end method

.class public Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "NotificationSettingsActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$PackageIntentReceiver;,
        Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$InterestingConfigChanges;,
        Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;,
        Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;,
        Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/FragmentActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;",
        ">;>;",
        "Landroid/widget/SearchView$OnCloseListener;",
        "Landroid/widget/SearchView$OnQueryTextListener;",
        "Landroid/view/View$OnCreateContextMenuListener;",
        "Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;"
    }
.end annotation


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "NotificationSettingsActivity"

.field private static mHandler:Landroid/os/Handler;

.field private static mNotificationsSettingsListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static prefs:Landroid/content/SharedPreferences;

.field private static sNotificationsMenuImageLayout:Landroid/widget/LinearLayout;

.field private static sNotificationsSearchImageLayout:Landroid/widget/LinearLayout;


# instance fields
.field actionBarButtonsListener:Landroid/view/View$OnClickListener;

.field private isAnyChangeDoneInNotifications:Z

.field private isAppLoadingComplete:Z

.field private isAppsListHidden:Z

.field private isAppsSearchViewShown:Z

.field private mAccessibilityPromptLayout:Landroid/widget/LinearLayout;

.field private mAccessibilityPromptSubHeader:Landroid/widget/TextView;

.field mAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mListForegroundBlurLayout:Landroid/widget/LinearLayout;

.field private mLoadingLayout:Landroid/widget/LinearLayout;

.field private mLoadingProgrees:Landroid/widget/ProgressBar;

.field private mLoadingText:Landroid/widget/TextView;

.field private mNotificationDefaultActionBar:Landroid/widget/RelativeLayout;

.field private mNotificationOnButton:Landroid/widget/Button;

.field private mNotificationOnSubTextView:Landroid/widget/TextView;

.field private mNotificationOnTextView:Landroid/widget/TextView;

.field private mNotificationSearchActionBar:Landroid/widget/RelativeLayout;

.field private mNotificationSearchView:Landroid/widget/SearchView;

.field private mNotificationSettingsDoneLayout:Landroid/widget/LinearLayout;

.field private mNotificationSettingsListView:Landroid/widget/ListView;

.field private mNotificationsSearchImage:Landroid/widget/ImageView;

.field private mPopUpWindow:Landroid/widget/PopupWindow;

.field private mResources:Landroid/content/res/Resources;

.field private mSearchBackImageLayout:Landroid/widget/LinearLayout;

.field private mSearchViewText:Landroid/widget/TextView;

.field notificationItemsClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field notificationSettingsScreenListeners:Landroid/view/View$OnClickListener;

.field overFlowImageListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->prefs:Landroid/content/SharedPreferences;

    .line 1145
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$6;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$6;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 86
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mResources:Landroid/content/res/Resources;

    .line 110
    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->isAppsSearchViewShown:Z

    .line 114
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 121
    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->isAppsListHidden:Z

    .line 122
    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->isAppLoadingComplete:Z

    .line 135
    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->isAnyChangeDoneInNotifications:Z

    .line 574
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->notificationItemsClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 607
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$3;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->overFlowImageListener:Landroid/view/View$OnClickListener;

    .line 645
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$4;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$4;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->notificationSettingsScreenListeners:Landroid/view/View$OnClickListener;

    .line 663
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$5;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$5;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->actionBarButtonsListener:Landroid/view/View$OnClickListener;

    .line 1179
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationsSettingsListMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$102(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;
    .param p1, "x1"    # Landroid/widget/PopupWindow;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->initiateDoneChanges()V

    return-void
.end method

.method static synthetic access$302(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->isAppsSearchViewShown:Z

    return p1
.end method

.method static synthetic access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$700()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->sNotificationsMenuImageLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->sNotificationsSearchImageLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private createInitialNotificationSettings()V
    .locals 4

    .prologue
    .line 484
    sget-object v1, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->prefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 488
    :try_start_0
    sget-object v1, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "notification_settings_key"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    sput-object v1, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationsSettingsListMap:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 541
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 542
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private disableNotificationViews()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1521
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->getAccessibilityPromptLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1522
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->getListForegroundBlurLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1523
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSettingsListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClickable(Z)V

    .line 1524
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSettingsListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1525
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->sNotificationsMenuImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1526
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->sNotificationsSearchImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1527
    return-void
.end method

.method private enableNotificationViews()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1505
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->getAccessibilityPromptLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1506
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->getListForegroundBlurLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1507
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->isAppLoadingComplete:Z

    if-eqz v0, :cond_0

    .line 1508
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->sNotificationsMenuImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1509
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->sNotificationsSearchImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1511
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSettingsListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setClickable(Z)V

    .line 1512
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSettingsListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1513
    return-void
.end method

.method private getAccessibilityPromptLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mAccessibilityPromptLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 152
    const v0, 0x7f090223

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mAccessibilityPromptLayout:Landroid/widget/LinearLayout;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mAccessibilityPromptLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getAccessibilityPromptSubHeader()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mAccessibilityPromptSubHeader:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 170
    const v0, 0x7f090225

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mAccessibilityPromptSubHeader:Landroid/widget/TextView;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mAccessibilityPromptSubHeader:Landroid/widget/TextView;

    return-object v0
.end method

.method private getListForegroundBlurLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mListForegroundBlurLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 161
    const v0, 0x7f09022b

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mListForegroundBlurLayout:Landroid/widget/LinearLayout;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mListForegroundBlurLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getNotificationSearchBackImage()Landroid/widget/LinearLayout;
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mSearchBackImageLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSearchActionBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSearchActionBar:Landroid/widget/RelativeLayout;

    const v1, 0x7f090014

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mSearchBackImageLayout:Landroid/widget/LinearLayout;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mSearchBackImageLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private initialiseNotificationScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 321
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mResources:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    .line 322
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mResources:Landroid/content/res/Resources;

    .line 325
    :cond_0
    const v1, 0x7f09022a

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSettingsListView:Landroid/widget/ListView;

    .line 326
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationsSettingsListMap:Ljava/util/HashMap;

    .line 329
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03002c

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationDefaultActionBar:Landroid/widget/RelativeLayout;

    .line 331
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationDefaultActionBar:Landroid/widget/RelativeLayout;

    const v2, 0x7f0901af

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSettingsDoneLayout:Landroid/widget/LinearLayout;

    .line 332
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationDefaultActionBar:Landroid/widget/RelativeLayout;

    const v2, 0x7f0901b2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sput-object v1, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->sNotificationsMenuImageLayout:Landroid/widget/LinearLayout;

    .line 333
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationDefaultActionBar:Landroid/widget/RelativeLayout;

    const v2, 0x7f0901b3

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sput-object v1, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->sNotificationsSearchImageLayout:Landroid/widget/LinearLayout;

    .line 334
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationDefaultActionBar:Landroid/widget/RelativeLayout;

    const v2, 0x7f0901b4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationsSearchImage:Landroid/widget/ImageView;

    .line 335
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationsSearchImage:Landroid/widget/ImageView;

    const v2, 0x7f020133

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 339
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030001

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSearchActionBar:Landroid/widget/RelativeLayout;

    .line 341
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSearchActionBar:Landroid/widget/RelativeLayout;

    const v2, 0x7f090015

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSearchView:Landroid/widget/SearchView;

    .line 343
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 344
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 349
    sget-object v1, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->sNotificationsSearchImageLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->sNotificationsMenuImageLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->getNotificationSearchBackImage()Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 352
    sget-object v1, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->sNotificationsSearchImageLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->actionBarButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    sget-object v1, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->sNotificationsMenuImageLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->overFlowImageListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->getNotificationSearchBackImage()Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->actionBarButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSettingsDoneLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSettingsListView:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    .line 365
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSettingsDoneLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->notificationSettingsScreenListeners:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSettingsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->notificationItemsClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 372
    :cond_2
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 374
    const v1, 0x7f090227

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mLoadingLayout:Landroid/widget/LinearLayout;

    .line 375
    const v1, 0x7f090228

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mLoadingProgrees:Landroid/widget/ProgressBar;

    .line 376
    const v1, 0x7f090229

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mLoadingText:Landroid/widget/TextView;

    .line 378
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification_settings_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->prefs:Landroid/content/SharedPreferences;

    .line 382
    const v1, 0x7f090224

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationOnTextView:Landroid/widget/TextView;

    .line 383
    const v1, 0x7f090225

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationOnSubTextView:Landroid/widget/TextView;

    .line 384
    const v1, 0x7f090226

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationOnButton:Landroid/widget/Button;

    .line 386
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_3

    .line 387
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationOnTextView:Landroid/widget/TextView;

    const v2, 0x7f0a006f

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationOnSubTextView:Landroid/widget/TextView;

    const v2, 0x7f0a0070

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationOnButton:Landroid/widget/Button;

    const v2, 0x7f0a0071

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 392
    :cond_3
    sget-object v1, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->prefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_4

    .line 394
    :try_start_0
    sget-object v1, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "notification_settings_key"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    sput-object v1, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationsSettingsListMap:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 413
    :cond_4
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    sput-object v1, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mHandler:Landroid/os/Handler;

    .line 417
    return-void

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 400
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private initiateDoneChanges()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1291
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "notification_settings_pref"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1295
    .local v2, "prefs":Landroid/content/SharedPreferences;
    if-eqz v2, :cond_1

    :try_start_0
    const-string v4, "notification_settings_key"

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationsSettingsListMap:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_1

    .line 1305
    :try_start_1
    const-string v4, "notification_settings_key"

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 1307
    .local v3, "tempHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_0

    .line 1308
    sget-object v4, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationsSettingsListMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1310
    const-string v4, "NotificationSettingsActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The current notification settings list is compared with the notifications list from the shared preference"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationsSettingsListMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->setAnyChangeDoneInNotifications(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1324
    .end local v3    # "tempHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1326
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "notification_settings_key"

    sget-object v5, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationsSettingsListMap:Ljava/util/HashMap;

    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1329
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1339
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->isAnyChangeDoneInNotifications()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1340
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00fa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1347
    :cond_2
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->finish()V

    .line 1348
    return-void

    .line 1319
    :catch_0
    move-exception v0

    .line 1320
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1334
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1335
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private isSearchBarDismissed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1538
    iget-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->isAppsSearchViewShown:Z

    if-eqz v1, :cond_1

    .line 1541
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    if-eqz v1, :cond_0

    .line 1542
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1546
    :cond_0
    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->isAppsSearchViewShown:Z

    .line 1547
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->invalidateOptionsMenu()V

    .line 1551
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private selectORClearAllTheAppListItems(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 550
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 551
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 572
    :cond_0
    return-void
.end method

.method private setUpDefaultActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 468
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 469
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationDefaultActionBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 472
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 473
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 474
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 475
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 476
    return-void
.end method

.method private setUpSearchActionBar()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 435
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 436
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v5}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 437
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSearchView:Landroid/widget/SearchView;

    const-string v3, ""

    invoke-virtual {v2, v3, v5}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 438
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSearchView:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0a0068

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "android:id/search_src_text"

    invoke-virtual {v2, v3, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 446
    .local v1, "id":I
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v1}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mSearchViewText:Landroid/widget/TextView;

    .line 447
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mSearchViewText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 448
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mSearchViewText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 449
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mSearchViewText:Landroid/widget/TextView;

    const/high16 v3, 0x41800000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 450
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 451
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mSearchViewText:Landroid/widget/TextView;

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 456
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSearchActionBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 457
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 458
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 459
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 460
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 461
    return-void
.end method

.method private unbindDrawables(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 306
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 307
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-object v1, p1

    .line 308
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->unbindDrawables(Landroid/view/View;)V

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_1
    instance-of v1, p1, Landroid/widget/AdapterView;

    if-eqz v1, :cond_3

    .line 311
    check-cast p1, Landroid/widget/AdapterView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->removeAllViewsInLayout()V

    .line 316
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 314
    .restart local v0    # "i":I
    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_1
.end method


# virtual methods
.method public isAnyChangeDoneInNotifications()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->isAnyChangeDoneInNotifications:Z

    return v0
.end method

.method public isPhubAccessibilityServiceEnabled()Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    .line 1381
    const/4 v2, 0x0

    .line 1382
    .local v2, "accessibilityEnabled":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/qualcomm/toq/base/utils/Constants;->APPLICATION_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/qualcomm/toq/base/utils/Constants;->APPLICATION_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".smartwatch.service.NotificationAccessibilityService"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1386
    .local v0, "PERSONAL_HUB_ACCESSIBILITY_SERVICE":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1388
    .local v3, "accessibilityFound":Z
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "accessibility_enabled"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 1391
    const-string v9, "NotificationSettingsActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACCESSIBILITY: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1399
    :goto_0
    new-instance v5, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v9, 0x3a

    invoke-direct {v5, v9}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1401
    .local v5, "mStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    if-ne v2, v8, :cond_2

    .line 1403
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enabled_accessibility_services"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1405
    .local v6, "sAccessibilitySettingsValue":Ljava/lang/String;
    const-string v9, "NotificationSettingsActivity"

    const-string v10, "***ACCESSIBILIY IS ENABLED***: "

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    const-string v9, "NotificationSettingsActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    if-eqz v6, :cond_1

    .line 1409
    move-object v7, v5

    .line 1410
    .local v7, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v7, v6}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1411
    :cond_0
    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1412
    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 1413
    .local v1, "accessabilityService":Ljava/lang/String;
    const-string v9, "NotificationSettingsActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1415
    const-string v9, "NotificationSettingsActivity"

    const-string v10, "We\'ve found the correct setting - accessibility is switched on!"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v8

    .line 1427
    .end local v1    # "accessabilityService":Ljava/lang/String;
    .end local v3    # "accessibilityFound":Z
    .end local v6    # "sAccessibilitySettingsValue":Ljava/lang/String;
    .end local v7    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :goto_1
    return v3

    .line 1393
    .end local v5    # "mStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .restart local v3    # "accessibilityFound":Z
    :catch_0
    move-exception v4

    .line 1394
    .local v4, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v9, "NotificationSettingsActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error finding setting, default accessibility to not found: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1422
    .end local v4    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v5    # "mStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .restart local v6    # "sAccessibilitySettingsValue":Ljava/lang/String;
    :cond_1
    const-string v8, "NotificationSettingsActivity"

    const-string v9, "***END***"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1425
    .end local v6    # "sAccessibilitySettingsValue":Ljava/lang/String;
    :cond_2
    const-string v8, "NotificationSettingsActivity"

    const-string v9, "***ACCESSIBILIY IS DISABLED***"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public launchAccessibilitySettings(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v4, 0x40000000

    const/high16 v3, 0x10000000

    .line 1437
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 1438
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1439
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1440
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1441
    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 1449
    :goto_0
    return-void

    .line 1444
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1445
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1446
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1447
    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->isSearchBarDismissed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    const-string v0, "NotificationSettingsActivity"

    const-string v1, "On Back Pressed"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 263
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->initiateDoneChanges()V

    .line 265
    :cond_0
    return-void
.end method

.method public onClose()Z
    .locals 3

    .prologue
    .line 1453
    const-string v0, "NotificationSettingsActivity"

    const-string v1, "Inside on close"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1456
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1461
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSettingsListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    if-eqz v0, :cond_1

    .line 1462
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->notifyDataSetChanged()V

    .line 1463
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSettingsListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 1466
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->isAppsSearchViewShown:Z

    .line 1467
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->invalidateOptionsMenu()V

    .line 1469
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 178
    const v1, 0x7f03003f

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->setContentView(I)V

    .line 180
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->initialiseNotificationScreen()V

    .line 183
    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    .line 184
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 188
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0066

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 190
    .local v0, "type":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    .line 191
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a0073

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->getAccessibilityPromptSubHeader()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->changeTypeFace(Ljava/lang/String;Landroid/graphics/Typeface;Landroid/widget/TextView;)V

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->setUpDefaultActionBar()V

    .line 198
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1215
    const-string v0, "NotificationSettingsActivity"

    const-string v1, "Notification Settings...."

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 421
    const-string v0, "NotificationSettingsActivity"

    const-string v1, "Inside on create options menu"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->isAppsSearchViewShown:Z

    if-eqz v0, :cond_0

    .line 423
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->setUpSearchActionBar()V

    .line 428
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 426
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->setUpDefaultActionBar()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 269
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 275
    sput-object v1, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->sNotificationsMenuImageLayout:Landroid/widget/LinearLayout;

    .line 276
    sput-object v1, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->sNotificationsSearchImageLayout:Landroid/widget/LinearLayout;

    .line 278
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->clear()V

    .line 280
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    .line 283
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->prefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 284
    sput-object v1, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->prefs:Landroid/content/SharedPreferences;

    .line 287
    :cond_1
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationsSettingsListMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 288
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationsSettingsListMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 289
    sput-object v1, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationsSettingsListMap:Ljava/util/HashMap;

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSettingsListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    .line 293
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSettingsListView:Landroid/widget/ListView;

    .line 296
    :cond_3
    const v0, 0x7f090220

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->unbindDrawables(Landroid/view/View;)V

    .line 297
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 298
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 75
    check-cast p2, Ljava/util/List;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;>;>;"
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;>;"
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1223
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mLoadingProgrees:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mLoadingProgrees:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1225
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mLoadingProgrees:Landroid/widget/ProgressBar;

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mLoadingText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1228
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1229
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mLoadingText:Landroid/widget/TextView;

    .line 1231
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mLoadingLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 1232
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mLoadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1233
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mLoadingLayout:Landroid/widget/LinearLayout;

    .line 1239
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_6

    .line 1240
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils;->isNotificationListenerServiceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1241
    iput-boolean v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->isAppsListHidden:Z

    .line 1255
    :goto_0
    iput-boolean v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->isAppLoadingComplete:Z

    .line 1260
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->sNotificationsMenuImageLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->sNotificationsSearchImageLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->isAppsListHidden:Z

    if-nez v0, :cond_8

    .line 1262
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->sNotificationsMenuImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1263
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->sNotificationsSearchImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1272
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->createInitialNotificationSettings()V

    .line 1274
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    invoke-virtual {v0, p2}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->setAppsList(Ljava/util/List;)V

    .line 1276
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    invoke-virtual {v0, p2}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->setAllAppsList(Ljava/util/List;)V

    .line 1277
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSettingsListView:Landroid/widget/ListView;

    if-eqz v0, :cond_4

    .line 1278
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSettingsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1281
    :cond_4
    return-void

    .line 1244
    :cond_5
    iput-boolean v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->isAppsListHidden:Z

    goto :goto_0

    .line 1248
    :cond_6
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->isPhubAccessibilityServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1249
    iput-boolean v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->isAppsListHidden:Z

    goto :goto_0

    .line 1252
    :cond_7
    iput-boolean v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->isAppsListHidden:Z

    goto :goto_0

    .line 1266
    :cond_8
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->sNotificationsMenuImageLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 1267
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->sNotificationsMenuImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1268
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->sNotificationsSearchImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1286
    .local p1, "data":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/util/List<Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppEntry;>;>;"
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->setAppsList(Ljava/util/List;)V

    .line 1287
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .param p1, "constraint"    # Ljava/lang/String;

    .prologue
    .line 1474
    const-string v0, "NotificationSettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inside on query text change "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mSearchViewText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mSearchViewText:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1479
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mSearchViewText:Landroid/widget/TextView;

    const/high16 v1, 0x41900000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1482
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSettingsListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    if-eqz v0, :cond_1

    .line 1484
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 1485
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mAdapter:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListAdapter;->notifyDataSetChanged()V

    .line 1486
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mNotificationSettingsListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 1488
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 1493
    const-string v0, "NotificationSettingsActivity"

    const-string v1, "Inside on Query Text Submit "

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 213
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 219
    invoke-static {p0}, Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils;->isNotificationListenerServiceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->enableNotificationViews()V

    .line 245
    :goto_0
    return-void

    .line 224
    :cond_0
    const-string v0, "NotificationSettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreferencesListActivity - api: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", launch settings for NotificationListenerService..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->disableNotificationViews()V

    goto :goto_0

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->isPhubAccessibilityServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->enableNotificationViews()V

    goto :goto_0

    .line 240
    :cond_2
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->disableNotificationViews()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 202
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 203
    const-string v0, "NotificationSettingsActivity"

    const-string v1, "NotificationSettingsActivity is started"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 208
    :cond_0
    const-string v0, "NotificationSettingsActivity"

    const-string v1, "OnStart"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 250
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 251
    const-string v0, "NotificationSettingsActivity"

    const-string v1, "NotificationSettingsActivity is stopped"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public processPopUpItemClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1355
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0133

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1359
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->selectORClearAllTheAppListItems(Z)V

    .line 1374
    :cond_1
    :goto_0
    return-void

    .line 1361
    :cond_2
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1365
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->selectORClearAllTheAppListItems(Z)V

    goto :goto_0

    .line 1367
    :cond_3
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

    .line 1372
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->finish()V

    goto :goto_0
.end method

.method public setAnyChangeDoneInNotifications(Z)V
    .locals 0
    .param p1, "isAnyChangeDoneInNotifications"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->isAnyChangeDoneInNotifications:Z

    .line 143
    return-void
.end method

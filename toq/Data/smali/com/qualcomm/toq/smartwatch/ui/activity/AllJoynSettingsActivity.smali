.class public Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;
.super Landroid/app/Activity;
.source "AllJoynSettingsActivity.java"

# interfaces
.implements Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private isAlljoynSettingsOn:Z

.field private mDoneLayout:Landroid/widget/LinearLayout;

.field private mLinkMovementCustomMethod:Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;

.field private mNotificationsSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

.field private mOverFlowMenuLayout:Landroid/widget/LinearLayout;

.field private mPopUpWindow:Landroid/widget/PopupWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "AllJoynSettingsActivity"

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->mNotificationsSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    .line 37
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->mDoneLayout:Landroid/widget/LinearLayout;

    .line 38
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->mOverFlowMenuLayout:Landroid/widget/LinearLayout;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->isAlljoynSettingsOn:Z

    return-void
.end method

.method static synthetic access$002(Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->isAlljoynSettingsOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$102(Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;
    .param p1, "x1"    # Landroid/widget/PopupWindow;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->initiateDoneChanges()V

    return-void
.end method

.method private getDoneLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->mDoneLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 88
    const v0, 0x7f090078

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->mDoneLayout:Landroid/widget/LinearLayout;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->mDoneLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getNotificationsSwitch()Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->mNotificationsSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    if-nez v0, :cond_0

    .line 95
    const v0, 0x7f090081

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->mNotificationsSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->mNotificationsSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    return-object v0
.end method

.method private getOverFlowMenuLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->mOverFlowMenuLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 81
    const v0, 0x7f09007b

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->mOverFlowMenuLayout:Landroid/widget/LinearLayout;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->mOverFlowMenuLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private initializeViews()V
    .locals 3

    .prologue
    .line 159
    const v1, 0x7f090081

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->mNotificationsSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    .line 160
    const v1, 0x7f090078

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->mDoneLayout:Landroid/widget/LinearLayout;

    .line 161
    const v1, 0x7f09007b

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->mOverFlowMenuLayout:Landroid/widget/LinearLayout;

    .line 162
    new-instance v1, Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;

    invoke-direct {v1}, Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->mLinkMovementCustomMethod:Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;

    .line 168
    const v1, 0x7f090084

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 170
    .local v0, "learnMoreView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->mLinkMovementCustomMethod:Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 173
    return-void
.end method

.method private initiateDoneChanges()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 223
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "alljoyn_notification_settings_pref"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 227
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->setAlljoynSettingsState()Z

    move-result v0

    .line 229
    .local v0, "changedAllJoynSettings":Z
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 234
    iget-boolean v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->isAlljoynSettingsOn:Z

    const-string v4, "alljoyn_notification_settings_toggle_key"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eq v3, v4, :cond_0

    .line 237
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

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

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 247
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 248
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "alljoyn_notification_settings_toggle_key"

    iget-boolean v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->isAlljoynSettingsOn:Z

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 250
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 251
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->finish()V

    .line 254
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method private loadNotificationSwitchState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 145
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alljoyn_notification_settings_pref"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 149
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 151
    const-string v1, "alljoyn_notification_settings_toggle_key"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->isAlljoynSettingsOn:Z

    .line 153
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->getNotificationsSwitch()Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->isAlljoynSettingsOn:Z

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->setChecked(Z)V

    .line 156
    :cond_0
    return-void
.end method

.method private setAlljoynSettingsState()Z
    .locals 4

    .prologue
    .line 193
    const/4 v0, 0x1

    .line 194
    .local v0, "retval":Z
    iget-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->isAlljoynSettingsOn:Z

    if-eqz v1, :cond_1

    .line 195
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    sget-object v1, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->TAG:Ljava/lang/String;

    const-string v2, "Alljoyn is started "

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->startAllJoyn()V

    .line 217
    :goto_0
    return v0

    .line 202
    :cond_0
    const/4 v0, 0x0

    .line 203
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 214
    :cond_1
    sget-object v1, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->TAG:Ljava/lang/String;

    const-string v2, "Alljoyn is stopped "

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/alljoyn/AllJoynBusHandler;->stopAllJoyn()V

    goto :goto_0
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->getNotificationsSwitch()Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 118
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->getOverFlowMenuLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->getDoneLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity$3;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity$3;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->initiateDoneChanges()V

    .line 263
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->setContentView(I)V

    .line 49
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->initializeViews()V

    .line 51
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->loadNotificationSwitchState()V

    .line 52
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->setListeners()V

    .line 53
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 72
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->mLinkMovementCustomMethod:Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->mLinkMovementCustomMethod:Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;->isOnTouchEventEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->mLinkMovementCustomMethod:Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;->setOnTouchEventEnabled(Z)V

    .line 77
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 59
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->mLinkMovementCustomMethod:Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->mLinkMovementCustomMethod:Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;->isOnTouchEventEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->mLinkMovementCustomMethod:Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;->setOnTouchEventEnabled(Z)V

    .line 64
    :cond_0
    return-void
.end method

.method public processPopUpItemClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 180
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

    .line 185
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->finish()V

    .line 189
    :cond_1
    return-void
.end method

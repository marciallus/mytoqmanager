.class public Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;
.super Landroid/app/Activity;
.source "PreferencesListActivity.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mChildItemsIconArray:[[I

.field private mChildItemsTextArray:[[I

.field private mGroupItemsArray:[Ljava/lang/String;

.field private mPreferenceDownArrow:Landroid/widget/ImageView;

.field private mPreferencesTopPreferenceBarLayout:Landroid/widget/LinearLayout;

.field private mPrefsExpandableView:Landroid/widget/ExpandableListView;

.field private mPrefsScreenAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;

.field private mResources:Landroid/content/res/Resources;

.field prefsArrowClickDownListener:Landroid/view/View$OnClickListener;

.field prefsChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "PreferencesListActivity"

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;

    .line 44
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mGroupItemsArray:[Ljava/lang/String;

    move-object v0, v1

    .line 46
    check-cast v0, [[I

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mChildItemsTextArray:[[I

    move-object v0, v1

    check-cast v0, [[I

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mChildItemsIconArray:[[I

    .line 50
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mPreferencesTopPreferenceBarLayout:Landroid/widget/LinearLayout;

    .line 52
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mPreferenceDownArrow:Landroid/widget/ImageView;

    .line 346
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->prefsChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 466
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->prefsArrowClickDownListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)[[I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mChildItemsTextArray:[[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mPreferenceDownArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/widget/ExpandableListView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mPrefsExpandableView:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method private getActivityMonitoringState()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 219
    const/4 v1, 0x0

    .line 220
    .local v1, "state":Z
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity_monitoring_pref"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 224
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 226
    const-string v2, "activity_monitoring_settings_toggle_key"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 230
    :cond_0
    return v1
.end method

.method private getAllJoynState()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 204
    const/4 v1, 0x0

    .line 205
    .local v1, "state":Z
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alljoyn_notification_settings_pref"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 209
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 211
    const-string v2, "alljoyn_notification_settings_toggle_key"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 215
    :cond_0
    return v1
.end method

.method private getSelectedMusicPlayer()Ljava/lang/String;
    .locals 4

    .prologue
    .line 186
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getInstance()Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->updateDefaultMusicPlayerPreference()V

    .line 188
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getPhubPreference(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v1

    const-string v2, "music_player_selection_key"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "playerPkg":Ljava/lang/String;
    sget-object v1, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSelectedMusicPlayer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    const v1, 0x7f0a00f8

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 198
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getInstance()Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getAppNamefromPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private initPrefsScreen()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 234
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mPrefsScreenAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;

    .line 236
    const v0, 0x7f090243

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mPreferencesTopPreferenceBarLayout:Landroid/widget/LinearLayout;

    .line 238
    const v0, 0x7f090244

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mPreferenceDownArrow:Landroid/widget/ImageView;

    .line 240
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;

    .line 245
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getAPKVariant()Ljava/lang/String;

    move-result-object v0

    const-string v1, "release"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    new-array v0, v7, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v4, [I

    const v2, 0x7f0a016e

    aput v2, v1, v3

    aput-object v1, v0, v4

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v5, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mChildItemsTextArray:[[I

    .line 295
    :goto_0
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getAPKVariant()Ljava/lang/String;

    move-result-object v0

    const-string v1, "release"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    new-array v0, v7, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    new-array v1, v4, [I

    const v2, 0x7f020103

    aput v2, v1, v3

    aput-object v1, v0, v4

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v5

    new-array v1, v5, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mChildItemsIconArray:[[I

    .line 340
    :goto_1
    return-void

    .line 271
    :cond_0
    new-array v0, v7, [[I

    new-array v1, v7, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v3

    new-array v1, v4, [I

    const v2, 0x7f0a016e

    aput v2, v1, v3

    aput-object v1, v0, v4

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v5

    new-array v1, v5, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mChildItemsTextArray:[[I

    goto :goto_0

    .line 320
    :cond_1
    new-array v0, v7, [[I

    new-array v1, v7, [I

    fill-array-data v1, :array_9

    aput-object v1, v0, v3

    new-array v1, v4, [I

    const v2, 0x7f020103

    aput v2, v1, v3

    aput-object v1, v0, v4

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v5

    new-array v1, v5, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mChildItemsIconArray:[[I

    goto :goto_1

    .line 249
    nop

    :array_0
    .array-data 4
        0x7f0a016b
        0x7f0a0170
        0x7f0a0166
    .end array-data

    :array_1
    .array-data 4
        0x7f0a016c
        0x7f0a016f
        0x7f0a0165
        0x7f0a0168
        0x7f0a016d
        0x7f0a0169
        0x7f0a016a
    .end array-data

    :array_2
    .array-data 4
        0x7f0a0171
        0x7f0a0172
    .end array-data

    .line 299
    :array_3
    .array-data 4
        0x7f0200fe
        0x7f020105
        0x7f020100
    .end array-data

    :array_4
    .array-data 4
        0x7f0200ff
        0x7f020102
        0x7f020106
        0x7f020104
        0x7f0200fd
        0x7f0200f9
        0x7f020101
    .end array-data

    :array_5
    .array-data 4
        0x7f0200fa
        0x7f0200fb
    .end array-data

    .line 271
    :array_6
    .array-data 4
        0x7f0a016b
        0x7f0a0170
        0x7f0a0166
        0x7f0a0167
    .end array-data

    :array_7
    .array-data 4
        0x7f0a016c
        0x7f0a016f
        0x7f0a0165
        0x7f0a0168
        0x7f0a016d
        0x7f0a0169
        0x7f0a016a
    .end array-data

    :array_8
    .array-data 4
        0x7f0a0171
        0x7f0a0172
    .end array-data

    .line 320
    :array_9
    .array-data 4
        0x7f0200fe
        0x7f020105
        0x7f020100
        0x7f0200fc
    .end array-data

    :array_a
    .array-data 4
        0x7f0200ff
        0x7f020102
        0x7f020106
        0x7f020104
        0x7f0200fd
        0x7f0200f9
        0x7f020101
    .end array-data

    :array_b
    .array-data 4
        0x7f0200fa
        0x7f0200fb
    .end array-data
.end method

.method private loadGroupStatesFromPref()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 98
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "preferences_expandable_list_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 101
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 104
    const/4 v0, 0x0

    .local v0, "groupPosition":I
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mGroupItemsArray:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 105
    packed-switch v0, :pswitch_data_0

    .line 104
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :pswitch_0
    const-string v2, "preference_appearance_group_key"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->setPrefsGroupItemsState(ZI)V

    goto :goto_1

    .line 114
    :pswitch_1
    const-string v2, "preference_notification_group_key"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->setPrefsGroupItemsState(ZI)V

    goto :goto_1

    .line 121
    :pswitch_2
    const-string v2, "preference_applet_group_key"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->setPrefsGroupItemsState(ZI)V

    goto :goto_1

    .line 127
    :pswitch_3
    const-string v2, "preference_advanced_group_key"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->setPrefsGroupItemsState(ZI)V

    goto :goto_1

    .line 134
    .end local v0    # "groupPosition":I
    :cond_0
    return-void

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setPrefsGroupItemsState(ZI)V
    .locals 1
    .param p1, "isExpanded"    # Z
    .param p2, "groupPos"    # I

    .prologue
    .line 147
    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->getPrefsExpandableView()Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->getPrefsExpandableView()Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    goto :goto_0
.end method

.method private unbindDrawables(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 502
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 503
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 506
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 507
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-object v1, p1

    .line 508
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->unbindDrawables(Landroid/view/View;)V

    .line 507
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 510
    :cond_1
    instance-of v1, p1, Landroid/widget/AdapterView;

    if-eqz v1, :cond_3

    .line 511
    check-cast p1, Landroid/widget/AdapterView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->removeAllViewsInLayout()V

    .line 516
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 514
    .restart local v0    # "i":I
    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_1
.end method


# virtual methods
.method public getPrefsExpandableView()Landroid/widget/ExpandableListView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mPrefsExpandableView:Landroid/widget/ExpandableListView;

    if-nez v0, :cond_0

    .line 57
    const v0, 0x7f090246

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mPrefsExpandableView:Landroid/widget/ExpandableListView;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mPrefsExpandableView:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->setContentView(I)V

    .line 68
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->initPrefsScreen()V

    .line 71
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->getPrefsExpandableView()Landroid/widget/ExpandableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mPrefsScreenAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 74
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mChildItemsTextArray:[[I

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mPrefsScreenAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mChildItemsTextArray:[[I

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->loadPrefsChildText([[I)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mChildItemsIconArray:[[I

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mPrefsScreenAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mChildItemsIconArray:[[I

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->loadPrefsChildIcons([[I)V

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mPreferencesTopPreferenceBarLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mPreferencesTopPreferenceBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mPreferencesTopPreferenceBarLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mPreferencesTopPreferenceBarLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->prefsArrowClickDownListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    :cond_3
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->getPrefsExpandableView()Landroid/widget/ExpandableListView;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->prefsChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 91
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 520
    const v0, 0x7f090242

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->unbindDrawables(Landroid/view/View;)V

    .line 521
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mPrefsScreenAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->clearAdapter()V

    move-object v0, v1

    .line 523
    check-cast v0, [[I

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mChildItemsIconArray:[[I

    move-object v0, v1

    .line 524
    check-cast v0, [[I

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mChildItemsTextArray:[[I

    .line 525
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mGroupItemsArray:[Ljava/lang/String;

    .line 526
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mPrefsExpandableView:Landroid/widget/ExpandableListView;

    .line 527
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mPrefsScreenAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;

    .line 528
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;

    .line 530
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 531
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 159
    const v1, 0x7f090245

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 160
    .local v0, "prefScreenTitle":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0a0161

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0a0162

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0a0163

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0a0164

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mGroupItemsArray:[Ljava/lang/String;

    .line 167
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mGroupItemsArray:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mPrefsScreenAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mGroupItemsArray:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->loadPrefsGroupItems([Ljava/lang/String;)V

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->loadGroupStatesFromPref()V

    .line 174
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mPrefsScreenAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->getSelectedMusicPlayer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->loadSelectedMusicPlayer(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mPrefsScreenAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->getAllJoynState()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->loadSelectedAlljoynState(Z)V

    .line 176
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mPrefsScreenAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->getActivityMonitoringState()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->loadSelectedActivityMonitoringState(Z)V

    .line 180
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mPrefsScreenAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/PrefsScreenExpandableAdapter;->notifyDataSetChanged()V

    .line 181
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->getPrefsExpandableView()Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->invalidateViews()V

    .line 182
    return-void
.end method

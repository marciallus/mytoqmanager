.class public Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;
.super Landroid/app/Activity;
.source "ClockSettingsActivity.java"

# interfaces
.implements Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;


# static fields
.field private static final TAG:Ljava/lang/String; = "ClockSettingsActivity"


# instance fields
.field clockSettingsAcceptListener:Landroid/view/View$OnClickListener;

.field gridViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private isAnyChangeDoneClockSettings:Z

.field private isOpenActivityPrefButtonClicked:Z

.field private isOpenDegreePrefButtonClicked:Z

.field private isOpenStockPrefButtonClicked:Z

.field private isOpenWeatherPrefButtonClicked:Z

.field private isOpenWorldPrefButtonClicked:Z

.field private mClockImageDrawables:[Ljava/lang/Integer;

.field private mClockNames:[Ljava/lang/String;

.field private mClockSettingsAcceptLayout:Landroid/widget/LinearLayout;

.field private mClockSettingsAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;

.field private mClockSettingsGridView:Landroid/widget/GridView;

.field private mClockSettingsSelectionMap:Ljava/util/HashMap;
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

.field private mDialog:Landroid/app/Dialog;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mMenuButton:Landroid/widget/LinearLayout;

.field private mPopUpWindow:Landroid/widget/PopupWindow;

.field private mResources:Landroid/content/res/Resources;

.field private mTempHashMap:Ljava/util/HashMap;
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

.field maxSelctionPromptSecondaryTextView:Landroid/widget/TextView;

.field maxSelctionPromptTextView:Landroid/widget/TextView;

.field maxSelectionPromptView:Landroid/widget/LinearLayout;

.field menuButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isAnyChangeDoneClockSettings:Z

    .line 86
    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isOpenWeatherPrefButtonClicked:Z

    .line 87
    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isOpenStockPrefButtonClicked:Z

    .line 88
    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isOpenWorldPrefButtonClicked:Z

    .line 89
    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isOpenActivityPrefButtonClicked:Z

    .line 90
    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isOpenDegreePrefButtonClicked:Z

    .line 335
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$3;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->menuButtonListener:Landroid/view/View$OnClickListener;

    .line 367
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$4;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$4;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->clockSettingsAcceptListener:Landroid/view/View$OnClickListener;

    .line 384
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->gridViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isOpenStockPrefButtonClicked:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isLocalWeatherEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->showDialogForClockList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateMaxClockSelectionPromptView(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isStockExists()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isCitiesExists()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isOpenWeatherPrefButtonClicked:Z

    return p1
.end method

.method static synthetic access$402(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isOpenWorldPrefButtonClicked:Z

    return p1
.end method

.method static synthetic access$502(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isOpenActivityPrefButtonClicked:Z

    return p1
.end method

.method static synthetic access$602(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isOpenDegreePrefButtonClicked:Z

    return p1
.end method

.method static synthetic access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$702(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;
    .param p1, "x1"    # Landroid/widget/PopupWindow;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->initiateDoneChanges()V

    return-void
.end method

.method private createInitialClockSettings()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    const/4 v13, 0x0

    .line 734
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "clock_settings_pref"

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 737
    .local v10, "prefs":Landroid/content/SharedPreferences;
    if-eqz v10, :cond_2

    .line 739
    :try_start_0
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 741
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v11, "clock_settings_types"

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    invoke-static {v12}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    iput-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    .line 744
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    if-eqz v11, :cond_2

    .line 746
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 748
    const-string v11, "ClockSettingsActivity"

    const-string v12, "Clock hashmap is empty"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockNames:[Ljava/lang/String;

    array-length v11, v11

    if-ge v7, v11, :cond_4

    .line 754
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockNames:[Ljava/lang/String;

    aget-object v1, v11, v7

    .line 757
    .local v1, "clockName":Ljava/lang/String;
    const-string v11, "Bold"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "Weather Grid"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "Prism"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "Agenda"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "Typographic"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 765
    :cond_0
    const-string v11, "Weather Grid"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 767
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    const-string v12, "Weather Grid"

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isLocalWeatherEnabled()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 772
    :cond_1
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 895
    .end local v1    # "clockName":Ljava/lang/String;
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "i":I
    :catch_0
    move-exception v5

    .line 896
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 905
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    return-void

    .line 779
    .restart local v1    # "clockName":Ljava/lang/String;
    .restart local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v7    # "i":I
    :cond_3
    :try_start_1
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 899
    .end local v1    # "clockName":Ljava/lang/String;
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "i":I
    :catch_1
    move-exception v5

    .line 900
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 784
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v7    # "i":I
    :cond_4
    if-eqz v6, :cond_5

    .line 785
    :try_start_2
    const-string v11, "clock_settings_types"

    iget-object v12, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-static {v12}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 787
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 882
    :cond_5
    :goto_3
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-direct {p0, v11}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->getSelectedClockCount(Ljava/util/HashMap;)I

    move-result v11

    if-le v11, v14, :cond_6

    .line 883
    const-string v11, "ClockSettingsActivity"

    const-string v12, "Selection count greater than 8, disabling discard changes"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mMenuButton:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_6

    .line 886
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mMenuButton:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 891
    :cond_6
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-direct {p0, v11}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateMaxClockSelectionPromptView(Ljava/util/HashMap;)V

    goto :goto_2

    .line 794
    .end local v7    # "i":I
    :cond_7
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-static {v11}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->isAtleastOneClockSeleted(Ljava/util/HashMap;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 796
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    const-string v12, "Bold"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    if-eqz v6, :cond_8

    .line 799
    const-string v11, "clock_settings_types"

    iget-object v12, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-static {v12}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 801
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 807
    :cond_8
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockNames:[Ljava/lang/String;

    array-length v11, v11

    if-ge v7, v11, :cond_f

    .line 809
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockNames:[Ljava/lang/String;

    aget-object v1, v11, v7

    .line 811
    .restart local v1    # "clockName":Ljava/lang/String;
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 812
    const-string v11, "ClockSettingsActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Entry for Clock exist in array"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " state "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-virtual {v13, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const-string v11, "Weather Grid"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 819
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateWeatherInfoInMap()V

    .line 807
    :cond_9
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 821
    :cond_a
    const-string v11, "Stocks"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 822
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateStockInfoInMap()V

    goto :goto_5

    .line 824
    :cond_b
    const-string v11, "World Time"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 825
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateWorldClockInfoInMap()V

    goto :goto_5

    .line 827
    :cond_c
    const-string v11, "Activity"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 828
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateActivityInfoInMap()V

    goto :goto_5

    .line 830
    :cond_d
    const-string v11, "Degrees"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 831
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateDegreeInfoInMap()V

    goto :goto_5

    .line 835
    :cond_e
    const-string v11, "ClockSettingsActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Entry for Clock does not exist in array"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " adding in Map"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 844
    .end local v1    # "clockName":Ljava/lang/String;
    :cond_f
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 846
    .local v4, "deleteClocksFromHashMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_10
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 847
    .local v0, "clockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    .line 848
    .local v2, "clockNameExists":Z
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 849
    .local v3, "clockNameInHashMap":Ljava/lang/String;
    const/4 v7, 0x0

    :goto_7
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockNames:[Ljava/lang/String;

    array-length v11, v11

    if-ge v7, v11, :cond_11

    .line 850
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockNames:[Ljava/lang/String;

    aget-object v11, v11, v7

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 851
    const/4 v2, 0x1

    .line 855
    :cond_11
    if-nez v2, :cond_10

    .line 856
    const-string v11, "ClockSettingsActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Entry for Clock does not exist in array"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " removing from Map"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 849
    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 864
    .end local v0    # "clockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v2    # "clockNameExists":Z
    .end local v3    # "clockNameInHashMap":Ljava/lang/String;
    :cond_13
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_14

    .line 865
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 869
    :cond_14
    if-eqz v6, :cond_5

    .line 870
    const-string v11, "clock_settings_types"

    iget-object v12, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-static {v12}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 872
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3
.end method

.method private getSelectedClockCount(Ljava/util/HashMap;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1273
    .local p1, "clockMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v1, 0x0

    .line 1274
    .local v1, "selectedClockCount":I
    if-eqz p1, :cond_1

    .line 1276
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 1277
    .local v2, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 1278
    aget-object v3, v2, v0

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1279
    add-int/lit8 v1, v1, 0x1

    .line 1277
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1283
    .end local v0    # "i":I
    .end local v2    # "values":[Ljava/lang/Object;
    :cond_1
    return v1
.end method

.method private initialise()V
    .locals 13

    .prologue
    .line 952
    const v9, 0x7f0900f7

    invoke-virtual {p0, v9}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/GridView;

    iput-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsGridView:Landroid/widget/GridView;

    .line 954
    const v9, 0x7f0900ed

    invoke-virtual {p0, v9}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsAcceptLayout:Landroid/widget/LinearLayout;

    .line 956
    const v9, 0x7f0900f0

    invoke-virtual {p0, v9}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mMenuButton:Landroid/widget/LinearLayout;

    .line 957
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "clock_settings_pref"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 961
    .local v8, "prefs":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 963
    .local v1, "clockInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;>;"
    :try_start_0
    const-string v9, "clock_data"

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 973
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 974
    .local v2, "clockListSize":I
    new-array v9, v2, [Ljava/lang/String;

    iput-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockNames:[Ljava/lang/String;

    .line 975
    new-array v9, v2, [Ljava/lang/Integer;

    iput-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockImageDrawables:[Ljava/lang/Integer;

    .line 979
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_1

    .line 981
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;

    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->getIconName()Ljava/lang/String;

    move-result-object v7

    .line 982
    .local v7, "iconName":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;

    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/utils/ClockInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 984
    .local v3, "displayName":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 987
    const-string v9, ".png"

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 989
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockImageDrawables:[Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "drawable"

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v7, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    .line 993
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockNames:[Ljava/lang/String;

    aput-object v3, v9, v6

    .line 995
    const-string v9, "ClockSettingsActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockImageDrawables:[Ljava/lang/Integer;

    aget-object v11, v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockNames:[Ljava/lang/String;

    aget-object v11, v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 966
    .end local v2    # "clockListSize":I
    .end local v3    # "displayName":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "iconName":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 967
    .local v5, "e1":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    .line 969
    .end local v5    # "e1":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v5

    .line 970
    .local v5, "e1":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 1000
    .end local v5    # "e1":Ljava/io/IOException;
    .restart local v2    # "clockListSize":I
    .restart local v6    # "i":I
    :cond_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    .line 1004
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockImageDrawables:[Ljava/lang/Integer;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockImageDrawables:[Ljava/lang/Integer;

    array-length v9, v9

    if-eqz v9, :cond_2

    .line 1005
    new-instance v9, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockImageDrawables:[Ljava/lang/Integer;

    iget-object v12, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockNames:[Ljava/lang/String;

    invoke-direct {v9, v10, v11, v12}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Integer;[Ljava/lang/String;)V

    iput-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;

    .line 1012
    :cond_2
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsGridView:Landroid/widget/GridView;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;

    if-eqz v9, :cond_3

    .line 1013
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsGridView:Landroid/widget/GridView;

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;

    invoke-virtual {v9, v10}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1016
    :cond_3
    new-instance v9, Landroid/app/Dialog;

    invoke-direct {v9, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mDialog:Landroid/app/Dialog;

    .line 1018
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/Window;->requestFeature(I)Z

    .line 1020
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 1022
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v9, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1024
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iput-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mResources:Landroid/content/res/Resources;

    .line 1026
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsGridView:Landroid/widget/GridView;

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->gridViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v9, v10}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1027
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsAcceptLayout:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->clockSettingsAcceptListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1028
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mMenuButton:Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->menuButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1031
    const v9, 0x7f0900f3

    invoke-virtual {p0, v9}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->maxSelectionPromptView:Landroid/widget/LinearLayout;

    .line 1033
    const v9, 0x7f0900f5

    invoke-virtual {p0, v9}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->maxSelctionPromptTextView:Landroid/widget/TextView;

    .line 1034
    const v9, 0x7f0900f6

    invoke-virtual {p0, v9}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->maxSelctionPromptSecondaryTextView:Landroid/widget/TextView;

    .line 1037
    :try_start_1
    const-string v9, "clock_settings_types"

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-static {v10}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    iput-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mTempHashMap:Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1047
    :goto_2
    return-void

    .line 1040
    :catch_2
    move-exception v4

    .line 1041
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1043
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 1044
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method private initiateDoneChanges()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 1084
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->maxSelectionPromptView:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    if-nez v10, :cond_1

    .line 1085
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-direct {p0, v10}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->getSelectedClockCount(Ljava/util/HashMap;)I

    move-result v10

    add-int/lit8 v2, v10, -0x8

    .line 1088
    .local v2, "cnt":I
    if-ne v2, v13, :cond_0

    const v10, 0x7f0a008f

    invoke-virtual {p0, v10}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v11, v13, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v14

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1092
    .local v8, "msg":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v8, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 1216
    .end local v2    # "cnt":I
    .end local v8    # "msg":Ljava/lang/String;
    :goto_1
    return-void

    .line 1088
    .restart local v2    # "cnt":I
    :cond_0
    const v10, 0x7f0a008e

    invoke-virtual {p0, v10}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v11, v13, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v14

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 1097
    .end local v2    # "cnt":I
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "clock_settings_pref"

    invoke-virtual {v10, v11, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 1101
    .local v9, "prefs":Landroid/content/SharedPreferences;
    const/4 v7, 0x0

    .line 1102
    .local v7, "isAtleastOneClockSelected":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockNames:[Ljava/lang/String;

    array-length v10, v10

    if-ge v6, v10, :cond_2

    .line 1104
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockNames:[Ljava/lang/String;

    aget-object v11, v11, v6

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-ne v10, v13, :cond_3

    .line 1105
    const/4 v7, 0x1

    .line 1111
    :cond_2
    if-nez v7, :cond_4

    .line 1113
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1114
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0a007f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1115
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f0a0080

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1116
    invoke-virtual {v1, v14}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1117
    const-string v10, "OK"

    new-instance v11, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$6;

    invoke-direct {v11, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$6;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1125
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1126
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 1102
    .end local v0    # "alert":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1131
    :cond_4
    if-eqz v9, :cond_5

    :try_start_0
    const-string v10, "clock_settings_types"

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-static {v11}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 1138
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mTempHashMap:Ljava/util/HashMap;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mTempHashMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 1139
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mTempHashMap:Ljava/util/HashMap;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1141
    const-string v10, "ClockSettingsActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The current clocks settings list is compared with the clocks from the shared preference file"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mTempHashMap:Ljava/util/HashMap;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "=="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    const-string v10, "World Time"

    invoke-direct {p0, v10}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->postTaskToIntentService(Ljava/lang/String;)V

    .line 1149
    const-string v10, "Degrees"

    invoke-direct {p0, v10}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->postTaskToIntentService(Ljava/lang/String;)V

    .line 1152
    const-string v10, "Weather Grid"

    invoke-direct {p0, v10}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->postTaskToIntentService(Ljava/lang/String;)V

    .line 1154
    const-string v10, "Stocks"

    invoke-direct {p0, v10}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->postTaskToIntentService(Ljava/lang/String;)V

    .line 1156
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->setAnyChangeDoneClockSettings(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1167
    :cond_5
    :goto_3
    if-eqz v9, :cond_6

    .line 1168
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 1171
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_1
    const-string v10, "clock_settings_types"

    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-static {v11}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1178
    :goto_4
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    const-string v11, "Weather Grid"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    const-string v11, "Weather Grid"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1180
    const-string v10, "clock_weather_grid_state"

    invoke-interface {v5, v10, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1188
    :goto_5
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    const-string v11, "Stocks"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    const-string v11, "Stocks"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1190
    const-string v10, "clock_stock_state"

    invoke-interface {v5, v10, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1198
    :goto_6
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    const-string v11, "Degrees"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    const-string v11, "Degrees"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1200
    const-string v10, "clock_degree_state"

    invoke-interface {v5, v10, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1208
    :goto_7
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1210
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateClockSettings()V

    .line 1212
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_6
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->finish()V

    goto/16 :goto_1

    .line 1162
    :catch_0
    move-exception v4

    .line 1163
    .local v4, "e1":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1174
    .end local v4    # "e1":Ljava/io/IOException;
    .restart local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_1
    move-exception v3

    .line 1175
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1184
    .end local v3    # "e":Ljava/io/IOException;
    :cond_7
    const-string v10, "clock_weather_grid_state"

    invoke-interface {v5, v10, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_5

    .line 1194
    :cond_8
    const-string v10, "clock_stock_state"

    invoke-interface {v5, v10, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_6

    .line 1204
    :cond_9
    const-string v10, "clock_degree_state"

    invoke-interface {v5, v10, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_7
.end method

.method private isCitiesExists()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 530
    const-string v4, "ambient__pref"

    invoke-virtual {p0, v4, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 532
    .local v2, "prefs":Landroid/content/SharedPreferences;
    if-eqz v2, :cond_0

    .line 535
    :try_start_0
    const-string v4, "WeatherCities"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 537
    .local v0, "citiesAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_0

    .line 538
    const/4 v3, 0x1

    .line 550
    .end local v0    # "citiesAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :cond_0
    :goto_0
    return v3

    .line 541
    :catch_0
    move-exception v1

    .line 542
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 545
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 546
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isLocalWeatherEnabled()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 473
    const-string v5, "ambient__pref"

    invoke-virtual {p0, v5, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 475
    .local v2, "prefs":Landroid/content/SharedPreferences;
    if-eqz v2, :cond_0

    .line 478
    :try_start_0
    const-string v5, "WeatherCurrentCityUpdate"

    const/4 v6, 0x1

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 481
    .local v1, "isCurrentCityUpdateEnabled":Z
    if-eqz v1, :cond_0

    .line 490
    .end local v1    # "isCurrentCityUpdateEnabled":Z
    :goto_0
    return v3

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move v3, v4

    .line 490
    goto :goto_0
.end method

.method private isStockExists()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 504
    const-string v4, "ambient__pref"

    invoke-virtual {p0, v4, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 506
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 509
    :try_start_0
    const-string v4, "StockSymbols"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 511
    .local v2, "stockAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_0

    .line 512
    const/4 v3, 0x1

    .line 524
    .end local v2    # "stockAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    :cond_0
    :goto_0
    return v3

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 519
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 520
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private postTaskToIntentService(Ljava/lang/String;)V
    .locals 7
    .param p1, "clockType"    # Ljava/lang/String;

    .prologue
    .line 1051
    const/4 v0, 0x0

    .line 1052
    .local v0, "b1":Z
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mTempHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1053
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mTempHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1055
    :cond_0
    const/4 v1, 0x0

    .line 1056
    .local v1, "b2":Z
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1057
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1060
    :cond_1
    if-eq v0, v1, :cond_2

    .line 1061
    const-string v4, "ClockSettingsActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Clock setting got changed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockUtils()Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;

    move-result-object v4

    const-string v5, "packageName"

    invoke-virtual {v4, p1, v5}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1068
    .local v3, "packageName":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/qualcomm/toq/smartwatch/service/AmbientIntentService;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1069
    .local v2, "clockIntent":Landroid/content/Intent;
    const-string v4, "service_task"

    const-string v5, "generate_world_clock_file"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1071
    const-string v4, "clock_type"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1072
    const-string v4, "clock_package_name"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1073
    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1078
    .end local v2    # "clockIntent":Landroid/content/Intent;
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_0
    return-void

    .line 1076
    :cond_2
    const-string v4, "ClockSettingsActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No change in  Clock settings for clock"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showDialogForClockList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "dialogTitle"    # Ljava/lang/String;
    .param p2, "dialogDescText"    # Ljava/lang/String;
    .param p3, "dialogPreferenceText"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "cancelButton":Landroid/widget/Button;
    const/4 v3, 0x0

    .local v3, "dialogTitleTextView":Landroid/widget/TextView;
    const/4 v2, 0x0

    .local v2, "dialogSecondaryTextView":Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 233
    .local v1, "dialogPreferenceTextView":Landroid/widget/TextView;
    const/4 v4, 0x0

    .line 236
    .local v4, "divider":Landroid/view/View;
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_4

    .line 238
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03001b

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 241
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v6, v6, -0x32

    const/4 v7, -0x2

    invoke-virtual {v5, v6, v7}, Landroid/view/Window;->setLayout(II)V

    .line 245
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mDialog:Landroid/app/Dialog;

    const v6, 0x7f0900fd

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "dialogTitleTextView":Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 246
    .restart local v3    # "dialogTitleTextView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mDialog:Landroid/app/Dialog;

    const v6, 0x7f0900ff

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "dialogSecondaryTextView":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 247
    .restart local v2    # "dialogSecondaryTextView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mDialog:Landroid/app/Dialog;

    const v6, 0x7f090101

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "dialogPreferenceTextView":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 248
    .restart local v1    # "dialogPreferenceTextView":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mDialog:Landroid/app/Dialog;

    const v6, 0x7f0900fe

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 250
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mDialog:Landroid/app/Dialog;

    const v6, 0x7f090100

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "cancelButton":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 252
    .restart local v0    # "cancelButton":Landroid/widget/Button;
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 255
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 257
    if-eqz p2, :cond_0

    .line 258
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :cond_0
    if-eqz p1, :cond_1

    .line 262
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_1
    if-eqz p3, :cond_2

    .line 266
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :cond_2
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 271
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 276
    :cond_3
    new-instance v5, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;

    invoke-direct {v5, p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 323
    new-instance v5, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$2;

    invoke-direct {v5, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    :cond_4
    return-void
.end method

.method private unbindDrawables(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 177
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-object v1, p1

    .line 179
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->unbindDrawables(Landroid/view/View;)V

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_1
    instance-of v1, p1, Landroid/widget/AdapterView;

    if-eqz v1, :cond_3

    .line 182
    check-cast p1, Landroid/widget/AdapterView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->removeAllViewsInLayout()V

    .line 187
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 185
    .restart local v0    # "i":I
    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_1
.end method

.method private updateActivityInfoInMap()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 593
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isActivityOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 594
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    const-string v1, "Activity"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateMaxClockSelectionPromptView(Ljava/util/HashMap;)V

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isOpenActivityPrefButtonClicked:Z

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    const-string v1, "Activity"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    iput-boolean v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isOpenActivityPrefButtonClicked:Z

    .line 603
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateMaxClockSelectionPromptView(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private updateClockSettings()V
    .locals 3

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isAnyChangeDoneClockSettings()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 202
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->getClockSettingsController()Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    const-string v0, "ClockSettingsActivity"

    const-string v1, "storeUpdateClockSettingsToFile() called from ClockSettingsActivity"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->getClockSettingsController()Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;

    move-result-object v0

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->sendClockSettingsToWD(Landroid/content/Context;)V

    .line 210
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->getClockSettingsController()Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;

    move-result-object v0

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/ClockSettingsController;->sendClockAppsZipToWD(Landroid/content/Context;)V

    .line 213
    :cond_1
    return-void
.end method

.method private updateDegreeInfoInMap()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 610
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isLocalWeatherEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 612
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    const-string v2, "Degrees"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateMaxClockSelectionPromptView(Ljava/util/HashMap;)V

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clock_settings_pref"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 627
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 629
    const-string v1, "clock_degree_state"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 631
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    const-string v2, "Degrees"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateMaxClockSelectionPromptView(Ljava/util/HashMap;)V

    goto :goto_0

    .line 637
    :cond_2
    iget-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isOpenDegreePrefButtonClicked:Z

    if-eqz v1, :cond_0

    .line 638
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    const-string v2, "Degrees"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    iput-boolean v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isOpenDegreePrefButtonClicked:Z

    .line 642
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateMaxClockSelectionPromptView(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private updateMaxClockSelectionPromptView(Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "clockMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 1235
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->getSelectedClockCount(Ljava/util/HashMap;)I

    move-result v3

    .line 1237
    .local v3, "selectedClockCount":I
    if-le v3, v7, :cond_1

    .line 1239
    add-int/lit8 v0, v3, -0x8

    .line 1243
    .local v0, "deselectClockCount":I
    const v4, 0x7f0a0090

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1248
    .local v1, "msg":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0a0091

    invoke-virtual {p0, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ne v0, v9, :cond_0

    const v4, 0x7f0a0093

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1255
    .local v2, "secMsg":Ljava/lang/String;
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->maxSelctionPromptTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1256
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->maxSelctionPromptSecondaryTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1257
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->maxSelectionPromptView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1264
    .end local v0    # "deselectClockCount":I
    .end local v1    # "msg":Ljava/lang/String;
    .end local v2    # "secMsg":Ljava/lang/String;
    :goto_1
    return-void

    .line 1248
    .restart local v0    # "deselectClockCount":I
    .restart local v1    # "msg":Ljava/lang/String;
    :cond_0
    const v4, 0x7f0a0092

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1262
    .end local v0    # "deselectClockCount":I
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->maxSelectionPromptView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateStockInfoInMap()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 556
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isStockExists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 557
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    const-string v2, "Stocks"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateMaxClockSelectionPromptView(Ljava/util/HashMap;)V

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clock_settings_pref"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 571
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 572
    const-string v1, "clock_stock_state"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 574
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    const-string v2, "Stocks"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateMaxClockSelectionPromptView(Ljava/util/HashMap;)V

    goto :goto_0

    .line 579
    :cond_2
    iget-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isOpenStockPrefButtonClicked:Z

    if-eqz v1, :cond_0

    .line 580
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    const-string v2, "Stocks"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    iput-boolean v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isOpenStockPrefButtonClicked:Z

    .line 584
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateMaxClockSelectionPromptView(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private updateStockWeatherOverlayView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 909
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isStockExists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 911
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->setStockOverlay(Z)V

    .line 922
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isLocalWeatherEnabled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 924
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;

    if-eqz v0, :cond_1

    .line 925
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->setLocalWeatherOverlay(Z)V

    .line 936
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isCitiesExists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 937
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;

    if-eqz v0, :cond_2

    .line 938
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->setWorldClockOverlay(Z)V

    .line 947
    :cond_2
    :goto_2
    return-void

    .line 917
    :cond_3
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;

    invoke-virtual {v0, v2}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->setStockOverlay(Z)V

    goto :goto_0

    .line 931
    :cond_4
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;

    if-eqz v0, :cond_1

    .line 932
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;

    invoke-virtual {v0, v2}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->setLocalWeatherOverlay(Z)V

    goto :goto_1

    .line 942
    :cond_5
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;

    if-eqz v0, :cond_2

    .line 943
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;

    invoke-virtual {v0, v2}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->setWorldClockOverlay(Z)V

    goto :goto_2
.end method

.method private updateWeatherInfoInMap()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 652
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isLocalWeatherEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 654
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    const-string v2, "Weather Grid"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateMaxClockSelectionPromptView(Ljava/util/HashMap;)V

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clock_settings_pref"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 669
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 671
    const-string v1, "clock_weather_grid_state"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 673
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    const-string v2, "Weather Grid"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateMaxClockSelectionPromptView(Ljava/util/HashMap;)V

    goto :goto_0

    .line 679
    :cond_2
    iget-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isOpenWeatherPrefButtonClicked:Z

    if-eqz v1, :cond_0

    .line 680
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    const-string v2, "Weather Grid"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    iput-boolean v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isOpenWeatherPrefButtonClicked:Z

    .line 684
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateMaxClockSelectionPromptView(Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private updateWorldClockInfoInMap()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 694
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isCitiesExists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 696
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    const-string v2, "World Time"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateMaxClockSelectionPromptView(Ljava/util/HashMap;)V

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clock_settings_pref"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 710
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 711
    const-string v1, "clock_world_state"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 713
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    const-string v2, "World Time"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateMaxClockSelectionPromptView(Ljava/util/HashMap;)V

    goto :goto_0

    .line 718
    :cond_2
    iget-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isOpenWorldPrefButtonClicked:Z

    if-eqz v1, :cond_0

    .line 719
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    const-string v2, "World Time"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    iput-boolean v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isOpenWorldPrefButtonClicked:Z

    .line 723
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateMaxClockSelectionPromptView(Ljava/util/HashMap;)V

    goto :goto_0
.end method


# virtual methods
.method protected isActivityOn()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 495
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity_monitoring_pref"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 498
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "activity_monitoring_settings_toggle_key"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isAnyChangeDoneClockSettings()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isAnyChangeDoneClockSettings:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->setContentView(I)V

    .line 107
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->initialise()V

    .line 108
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->createInitialClockSettings()V

    .line 110
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 167
    const v0, 0x7f0900eb

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->unbindDrawables(Landroid/view/View;)V

    .line 168
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 169
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 129
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockNames:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->initiateDoneChanges()V

    .line 141
    :goto_0
    const/4 v0, 0x1

    .line 143
    :goto_1
    return v0

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->finish()V

    goto :goto_0

    .line 143
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 149
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateStockWeatherOverlayView()V

    .line 150
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateWeatherInfoInMap()V

    .line 151
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateStockInfoInMap()V

    .line 152
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateWorldClockInfoInMap()V

    .line 153
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateActivityInfoInMap()V

    .line 154
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateDegreeInfoInMap()V

    .line 156
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->updateClocksHashMap(Ljava/util/HashMap;)V

    .line 158
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ClockSettingsGridViewAdapter;->notifyDataSetChanged()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->invalidateViews()V

    .line 163
    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 115
    const-string v0, "ClockSettingsActivity"

    const-string v1, "ClockSettingsActivity is started"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 123
    const-string v0, "ClockSettingsActivity"

    const-string v1, "ClockSettingsActivity is stopped"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public processPopUpItemClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1221
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->finish()V

    .line 1226
    :cond_0
    return-void
.end method

.method public setAnyChangeDoneClockSettings(Z)V
    .locals 0
    .param p1, "isAnyChangeDoneClockSettings"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isAnyChangeDoneClockSettings:Z

    .line 99
    return-void
.end method

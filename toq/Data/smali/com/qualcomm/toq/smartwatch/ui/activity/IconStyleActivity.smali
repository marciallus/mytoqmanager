.class public Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;
.super Landroid/app/Activity;
.source "IconStyleActivity.java"

# interfaces
.implements Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;


# static fields
.field private static final TAG:Ljava/lang/String; = "IconStyleActivity"


# instance fields
.field private DEFAULT_ICON_STYLE:Ljava/lang/String;

.field private gridViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private iconStyleAcceptListener:Landroid/view/View$OnClickListener;

.field private mIconImageDrawables:[Ljava/lang/Integer;

.field private mIconStyleAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;

.field private mIconStyleGridView:Landroid/widget/GridView;

.field private mIconStyleLayout:Landroid/widget/LinearLayout;

.field private mMenuButtonLayout:Landroid/widget/LinearLayout;

.field private mPopUpWindow:Landroid/widget/PopupWindow;

.field private mSelectedIconStyle:Ljava/lang/String;

.field private menuButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const-string v0, "Optima"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->DEFAULT_ICON_STYLE:Ljava/lang/String;

    .line 132
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->menuButtonListener:Landroid/view/View$OnClickListener;

    .line 147
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->iconStyleAcceptListener:Landroid/view/View$OnClickListener;

    .line 156
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity$3;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity$3;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->gridViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$002(Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;
    .param p1, "x1"    # Landroid/widget/PopupWindow;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->initiateDoneChanges()V

    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mSelectedIconStyle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mSelectedIconStyle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mIconStyleGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method private initialise()V
    .locals 5

    .prologue
    .line 216
    const v1, 0x7f0901c7

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mIconStyleGridView:Landroid/widget/GridView;

    .line 218
    const v1, 0x7f0901c1

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mIconStyleLayout:Landroid/widget/LinearLayout;

    .line 220
    const v1, 0x7f0901c4

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mMenuButtonLayout:Landroid/widget/LinearLayout;

    .line 221
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const v3, 0x7f0200e1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0200e0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f0200e2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const v3, 0x7f0200e3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const v3, 0x7f0200de

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const v3, 0x7f0200df

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mIconImageDrawables:[Ljava/lang/Integer;

    .line 228
    invoke-static {p0}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getPhubPreference(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v0

    .line 229
    .local v0, "phubPreference":Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
    if-eqz v0, :cond_0

    .line 231
    const-string v1, "icon_theme_key_v1"

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->DEFAULT_ICON_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mSelectedIconStyle:Ljava/lang/String;

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mIconImageDrawables:[Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mIconImageDrawables:[Ljava/lang/Integer;

    array-length v1, v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mSelectedIconStyle:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 238
    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mIconImageDrawables:[Ljava/lang/Integer;

    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->iconImagesText:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Integer;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mIconStyleAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;

    .line 242
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mIconStyleAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mSelectedIconStyle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;->setSelectedIconStyle(Ljava/lang/String;)V

    .line 245
    :cond_1
    return-void
.end method

.method private initiateDoneChanges()V
    .locals 5

    .prologue
    .line 249
    const/4 v1, 0x0

    .line 250
    .local v1, "prevSelectedIconStyleInPref":Ljava/lang/String;
    invoke-static {p0}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getPhubPreference(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v0

    .line 251
    .local v0, "phubPreference":Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
    if-eqz v0, :cond_0

    .line 253
    const-string v2, "icon_theme_key_v1"

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->DEFAULT_ICON_STYLE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    const-string v2, "icon_theme_key_v1"

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mSelectedIconStyle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v2, "IconStyleActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating Icon Style in Preference:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mSelectedIconStyle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;->getUserSettingsController()Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 263
    const-string v2, "IconStyleActivity"

    const-string v3, "storeUpdateUserSettingsToFile() called from IconStyleActivity"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;->getUserSettingsController()Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;

    move-result-object v2

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;->sendUserSettingsToWD(Landroid/content/Context;)V

    .line 271
    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mSelectedIconStyle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00fa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 283
    :cond_1
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->finish()V

    .line 284
    return-void
.end method

.method private unbindDrawables(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 105
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    move-object v1, p1

    .line 107
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->unbindDrawables(Landroid/view/View;)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_1
    instance-of v1, p1, Landroid/widget/AdapterView;

    if-eqz v1, :cond_3

    .line 110
    check-cast p1, Landroid/widget/AdapterView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->removeAllViewsInLayout()V

    .line 115
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 113
    .restart local v0    # "i":I
    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 68
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->initiateDoneChanges()V

    .line 69
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->setContentView(I)V

    .line 45
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->initialise()V

    .line 47
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mIconStyleGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mIconStyleAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mIconStyleGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mIconStyleAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 95
    const v0, 0x7f0900eb

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->unbindDrawables(Landroid/view/View;)V

    .line 96
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 97
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 75
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mIconStyleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mIconStyleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->iconStyleAcceptListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mMenuButtonLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mMenuButtonLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->menuButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mIconStyleAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mIconStyleAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mSelectedIconStyle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;->setSelectedIconStyle(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mIconStyleAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;->notifyDataSetChanged()V

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mIconStyleGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mIconStyleGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->gridViewItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mIconStyleGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->invalidateViews()V

    .line 91
    :cond_3
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 55
    const-string v0, "IconStyleActivity"

    const-string v1, "IconStyleActivity is started"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 62
    const-string v0, "IconStyleActivity"

    const-string v1, "IconStyleActivity is stopped"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public processPopUpItemClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->mPopUpWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 289
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;->finish()V

    .line 297
    :cond_0
    return-void
.end method
